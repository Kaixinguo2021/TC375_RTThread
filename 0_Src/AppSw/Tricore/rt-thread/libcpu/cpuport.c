/*
 * Copyright (c) 2006-2018, RT-Thread Development Team
 *rt_interrupt_from_thread
 * SPDX-License-Identifier: GPL-2.0 License
 *
 * Change Logs:
 * Date           Author       Notes
 * 2021/02/01     BalanceTWK   The unify TriCore porting code.
 */

#include <rthw.h>
#include <rtthread.h>
#include "cpuport.h"
#include "IfxCpu_Trap.h"

static IfxStm_Timer tricore_timers[2];
static volatile Ifx_STM *const STMs[2] = {&MODULE_STM0, &MODULE_STM1};
static volatile Ifx_SRC_SRCR *const GPSR[2] = {&SRC_GPSR_GPSR0_SR0, &SRC_GPSR_GPSR1_SR0};

static volatile rt_ubase_t rt_interrupt_from_thread = RT_NULL;
static volatile rt_ubase_t rt_interrupt_to_thread = RT_NULL;
static volatile rt_ubase_t rt_thread_switch_interrupt_flag = RT_NULL;

typedef struct UpperCtxInfo{
    unsigned long  _PCXI;
    unsigned long  _PSW;
    unsigned long*  _A10;
    unsigned long*  _A11;
    unsigned long  _D8;
    unsigned long  _D9;
    unsigned long  _D10;
    unsigned long  _D11;
    unsigned long*  _A12;
    unsigned long*  _A13;
    unsigned long*  _A14;
    unsigned long*  _A15;
    unsigned long  _D12;
    unsigned long  _D13;
    unsigned long  _D14;
    unsigned long  _D15;
}UpperCtx_T,*UpperCtx_Ptr;

App_Cpu g_AppCpu0; //频率信息变量

rt_base_t rt_hw_interrupt_disable(void)
{
    rt_base_t level;
    level = IfxCpu_disableInterrupts();
    return level;
}

void rt_hw_interrupt_enable(rt_base_t level)
{
    restoreInterrupts((boolean)level);
}

void rt_hw_systick_init( void )
{
  IfxStm_Timer_Config timer_config;
  IfxStm_Timer_initConfig(&timer_config, STMs[TRICORE_CPU_ID]);

  timer_config.base.frequency = RT_TICK_PER_SECOND;
  timer_config.base.isrPriority = 2;
  IfxStm_Timer_init(&tricore_timers[TRICORE_CPU_ID], &timer_config);
  IfxStm_Timer_run(&tricore_timers[TRICORE_CPU_ID]);
}


inline void trigger_scheduling(void)
{
    UpperCtx_Ptr ptUpperCtx = NULL;
    uint8 idx = 0x00;

    __dsync();
    /* 获取当前线程的 CSA上层上下文地址 */
    ptUpperCtx = LINKWORD_TO_ADDRESS( __mfcr( CPU_PCXI ) );

    __isync();
    /* 如果from线程不为空 */
    if(rt_interrupt_from_thread)
    {
        __dsync();

        /* 将当前线程的Linkwork保存到From线程 */
        *( (unsigned long *)rt_interrupt_from_thread ) = ptUpperCtx->_PCXI;
        GPSR[TRICORE_CPU_ID]->B.SETR = 0;

    }
    /* 将to线程的linkword赋给当前线程的LinkWord*/
    ptUpperCtx->_PCXI = *( (unsigned long *)rt_interrupt_to_thread );
    /* 如果中断触发Flag置位，则复位 */
    if(rt_thread_switch_interrupt_flag)
    {
        rt_thread_switch_interrupt_flag = 0;
    }

    __isync();
}

__attribute__((noinline)) static void tricore_systick_handler( void )
{
    /* enter interrupt */
    rt_interrupt_enter();

    IfxStm_Timer_acknowledgeTimerIrq(&tricore_timers[TRICORE_CPU_ID]);

    rt_tick_increase();
    /* leave interrupt */
    rt_interrupt_leave();
}


IFX_INTERRUPT(KERNEL_INTERRUPT, 0, 2)
{
    tricore_systick_handler();
}

IFX_INTERRUPT(KERNEL_YIELD, 0, 1)
{
    trigger_scheduling();
}

/**
 * This function will initial STM32 board.
 */
#ifdef RT_USING_HEAP
extern unsigned int __HEAP[];
extern unsigned int __HEAP_END[];
#endif
void rt_hw_board_init()
{
    IfxStm_setSuspendMode(STMs[TRICORE_CPU_ID], IfxStm_SuspendMode_hard);
#ifdef RT_USING_HEAP
    /* initialize heap */
    rt_system_heap_init(__HEAP, __HEAP_END);
#endif

    /* Set-up the timer interrupt. */
    rt_hw_systick_init();
    /* USART driver initialization is open by default */
#ifdef RT_USING_SERIAL
    // rt_hw_usart_init();
#endif

    /* Set the shell console output device */
#ifdef RT_USING_CONSOLE
    // rt_console_set_device(RT_CONSOLE_DEVICE_NAME);
#endif

    /* Board underlying hardware initialization */
#ifdef RT_USING_COMPONENTS_INIT
    rt_components_board_init();
#endif

    IfxSrc_init(GPSR[TRICORE_CPU_ID], (IfxSrc_Tos)TRICORE_CPU_ID, 1);
    IfxSrc_enable(GPSR[TRICORE_CPU_ID]);
}

void rt_hw_context_switch(rt_ubase_t from, rt_ubase_t to)
{
    rt_base_t level;

    level = rt_hw_interrupt_disable();
    /* 将from和to线程保存到对应的全局变量中，以便于后续线程切换 */
    rt_interrupt_from_thread = (*( (unsigned long *)from ));
    rt_interrupt_to_thread = (*((unsigned long *)to));
    rt_hw_interrupt_enable(level);

    /* 主动触发异常，进入Trap0，进行线程切换 */
    __syscall( 0 );
}

void rt_hw_context_switch_interrupt(rt_ubase_t from, rt_ubase_t to)
{
    if(rt_thread_switch_interrupt_flag == 0)
    {
        /* 将from和to线程保存到对应的全局变量中，以便于后续线程切换 */
        rt_interrupt_from_thread = (*( (unsigned long *)from ));
        rt_interrupt_to_thread = (*((unsigned long *)to));
        /* 置位中断切换线程Flag */
        rt_thread_switch_interrupt_flag = 1;
        __dsync();
        /* SETR置位，触发中断，在中断函数中请求线程切换 */
        GPSR[TRICORE_CPU_ID]->B.SETR = 1;
        __isync();
    }
}

void rt_hw_context_switch_to(rt_ubase_t to)
{
    rt_base_t level;

    level = rt_hw_interrupt_disable();
    /* 启动第一个线程 */
    rt_interrupt_to_thread = (*((unsigned long *)to));

    /* 主动触发异常，进入Trap0，进行线程切换 */
    __syscall( 0 );
    rt_hw_interrupt_enable(level);
}

/**
 * This function will initialize thread stack
 *
 * @param tentry the entry of thread
 * @param parameter the parameter of entry
 * @param stack_addr the beginning stack address
 * @param texit the function will be called when thread exit
 *
 * @return stack address
 */
rt_uint8_t *rt_hw_stack_init(void       *tentry,
                             void       *parameter,
                             rt_uint8_t *stack_addr,
                             void       *texit)
{
    unsigned long *lower_csa = NULL;
    unsigned long *upper_csa = NULL;

    UpperCtx_Ptr upperCtxPtr = NULL;

    rt_hw_interrupt_disable();
    {
        __dsync();
        /* 使用两个空闲CSA存储线程上层上下文和下层上下文 */
        upper_csa = LINKWORD_TO_ADDRESS(__mfcr(CPU_FCX));

        if( NULL != upper_csa )
        {
            /* 查找上层上下文链接的下一个CSA地址 */
            lower_csa = LINKWORD_TO_ADDRESS( upper_csa[ 0 ] );
        }

        /* 如果成功分配两个CSA，则移动FCX */
        if( ( NULL != lower_csa ) && ( NULL != upper_csa ))
        {
            /* 将已经使用的两个CSA，从FCX列表中移除 */
            __disable();
            __dsync();
            __mtcr( CPU_FCX, lower_csa[ 0 ] );

            __isync();
            __enable();
        }
        else
        {
            __svlcx();
        }
    }
    rt_hw_interrupt_enable((rt_base_t)RT_NULL);

    /* 保存线程退出函数入口 */
    upper_csa[ 3 ] = ( unsigned long )texit;
    /* 保存栈指针，对应A[10]寄存器 */
    upper_csa[ 2 ] = ( unsigned long )stack_addr;
    /* 保存当前线程PSW寄存器的初始状态 */
    upper_csa[ 1 ] = TRICORE_SYSTEM_PROGRAM_STATUS_WORD;

    /* 保存函数入参，对应全局寄存器A[4] */
    lower_csa[ 8 ] = ( unsigned long ) parameter;
    /* 保存 PC 指针，A[11]*/
    lower_csa[ 1 ] = ( unsigned long ) tentry;
    /* PCXI指向上层上下文 */
    lower_csa[ 0 ] = ( TRICORE_INITIAL_PCXI_UPPER_CONTEXT_WORD | ( unsigned long ) ADDRESS_TO_LINKWORD( upper_csa ) );
    /* 将下层上下文的地址保存到栈顶 */
    *((unsigned long * )stack_addr) = (unsigned long) ADDRESS_TO_LINKWORD( lower_csa );
    __dsync();

    return ((unsigned long)stack_addr);
}

void get_clk(void)
{
	disableInterrupts();
	//禁用看门狗
    IfxScuWdt_disableCpuWatchdog(IfxScuWdt_getCpuWatchdogPassword());
    IfxScuWdt_disableSafetyWatchdog(IfxScuWdt_getSafetyWatchdogPassword());

    //获取时钟频率，便于查看当前系统运行频率
    g_AppCpu0.info.pllFreq = IfxScuCcu_getPllFrequency();
    g_AppCpu0.info.cpuFreq = IfxScuCcu_getCpuFrequency(IfxCpu_getCoreIndex());
    g_AppCpu0.info.sysFreq = IfxScuCcu_getSpbFrequency();
    g_AppCpu0.info.stmFreq = IfxStm_getFrequency(&MODULE_STM0);
}


