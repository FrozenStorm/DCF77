/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Daniel/Dropbox/DCF77/DCF_77_Endversion/DCF_77/top_schema_tb.vhd";



void work_a_1891585018_3212880686_sub_3371266835_3057020925(char *t0, char *t1, char *t2, unsigned int t3, unsigned int t4, char *t5, unsigned int t6, unsigned int t7, char *t8)
{
    char t11[16];
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    int t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;
    int64 t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    int t29;
    int t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    unsigned char t35;
    unsigned int t36;

LAB0:    t12 = (t11 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 58;
    t13 = (t12 + 4U);
    *((int *)t13) = 0;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t14 = (0 - 58);
    t15 = (t14 * -1);
    t15 = (t15 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t15;
    t16 = 58;
    t17 = 0;

LAB2:    if (t16 >= t17)
        goto LAB3;

LAB5:    t21 = (1000 * 1000000000LL);
    xsi_process_wait(t1, t21);

LAB37:    t12 = (t1 + 88U);
    t13 = *((char **)t12);
    t18 = (t13 + 2480U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t22 = (t20 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t15 = *((unsigned int *)t25);
    if (t15 == 1)
        goto LAB38;

LAB39:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB35:
LAB36:
LAB34:
LAB1:    return;
LAB3:    t15 = (0 + t6);
    t13 = (t8 + 56U);
    t18 = *((char **)t13);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_delta(t8, t15, 1, 0LL);
    t21 = (100 * 1000000000LL);
    xsi_process_wait(t1, t21);

LAB9:    t12 = (t1 + 88U);
    t13 = *((char **)t12);
    t18 = (t13 + 2480U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t22 = (t20 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t15 = *((unsigned int *)t25);
    if (t15 == 1)
        goto LAB10;

LAB11:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB7:
LAB8:
LAB6:    t12 = (t2 + 40U);
    t13 = *((char **)t12);
    t12 = (t13 + t4);
    t13 = (t11 + 0U);
    t14 = *((int *)t13);
    t18 = (t11 + 8U);
    t29 = *((int *)t18);
    t30 = (t16 - t14);
    t15 = (t30 * t29);
    t19 = (t11 + 4U);
    t31 = *((int *)t19);
    xsi_vhdl_check_range_of_index(t14, t31, t29, t16);
    t32 = (1U * t15);
    t33 = (0 + t32);
    t20 = (t12 + t33);
    t34 = *((unsigned char *)t20);
    t35 = (t34 == (unsigned char)2);
    if (t35 != 0)
        goto LAB12;

LAB14:    t21 = (100 * 1000000000LL);
    xsi_process_wait(t1, t21);

LAB24:    t12 = (t1 + 88U);
    t13 = *((char **)t12);
    t18 = (t13 + 2480U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t22 = (t20 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t15 = *((unsigned int *)t25);
    if (t15 == 1)
        goto LAB25;

LAB26:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB22:
LAB23:
LAB21:    t15 = (0 + t6);
    t12 = (t8 + 56U);
    t13 = *((char **)t12);
    t18 = (t13 + 56U);
    t19 = *((char **)t18);
    *((unsigned char *)t19) = (unsigned char)2;
    xsi_driver_first_trans_delta(t8, t15, 1, 0LL);
    t21 = (800 * 1000000000LL);
    xsi_process_wait(t1, t21);

LAB30:    t12 = (t1 + 88U);
    t13 = *((char **)t12);
    t18 = (t13 + 2480U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t22 = (t20 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t15 = *((unsigned int *)t25);
    if (t15 == 1)
        goto LAB31;

LAB32:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB28:
LAB29:
LAB27:
LAB13:
LAB4:    if (t16 == t17)
        goto LAB5;

LAB33:    t14 = (t16 + -1);
    t16 = t14;
    goto LAB2;

LAB10:    xsi_saveStackAndSuspend(t1);
    goto LAB11;

LAB12:    t36 = (0 + t6);
    t22 = (t8 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)2;
    xsi_driver_first_trans_delta(t8, t36, 1, 0LL);
    t21 = (900 * 1000000000LL);
    xsi_process_wait(t1, t21);

LAB18:    t12 = (t1 + 88U);
    t13 = *((char **)t12);
    t18 = (t13 + 2480U);
    *((unsigned int *)t18) = 1U;
    t19 = (t1 + 88U);
    t20 = *((char **)t19);
    t22 = (t20 + 0U);
    getcontext(t22);
    t23 = (t1 + 88U);
    t24 = *((char **)t23);
    t25 = (t24 + 2480U);
    t15 = *((unsigned int *)t25);
    if (t15 == 1)
        goto LAB19;

LAB20:    t26 = (t1 + 88U);
    t27 = *((char **)t26);
    t28 = (t27 + 2480U);
    *((unsigned int *)t28) = 3U;

LAB16:
LAB17:
LAB15:    goto LAB13;

LAB19:    xsi_saveStackAndSuspend(t1);
    goto LAB20;

LAB25:    xsi_saveStackAndSuspend(t1);
    goto LAB26;

LAB31:    xsi_saveStackAndSuspend(t1);
    goto LAB32;

LAB38:    xsi_saveStackAndSuspend(t1);
    goto LAB39;

}

static void work_a_1891585018_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 5192U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 5872);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5000);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 5872);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 5000);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_1891585018_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 5440U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 4);
    t2 = (t0 + 5248);
    xsi_process_wait(t2, t5);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(124, ng0);
    t2 = (t0 + 5936);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 4);
    t2 = (t0 + 5248);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(126, ng0);
    t2 = (t0 + 5936);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 4);
    t2 = (t0 + 5248);
    xsi_process_wait(t2, t5);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 6000);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(129, ng0);
    t4 = (1000 * 1000000000LL);
    t2 = (t0 + 5248);
    xsi_process_wait(t2, t4);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(130, ng0);
    t2 = (t0 + 9867);
    t6 = (t0 + 6064);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t2, 59U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 5248);
    t3 = (t0 + 3872U);
    t6 = (t0 + 3712U);
    t7 = (t0 + 6128);
    work_a_1891585018_3212880686_sub_3371266835_3057020925(t0, t2, t3, 0U, 0U, t6, 0U, 0U, t7);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 5248);
    t3 = (t0 + 3872U);
    t6 = (t0 + 3712U);
    t7 = (t0 + 6128);
    work_a_1891585018_3212880686_sub_3371266835_3057020925(t0, t2, t3, 0U, 0U, t6, 0U, 0U, t7);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 5248);
    t3 = (t0 + 3872U);
    t6 = (t0 + 3712U);
    t7 = (t0 + 6128);
    work_a_1891585018_3212880686_sub_3371266835_3057020925(t0, t2, t3, 0U, 0U, t6, 0U, 0U, t7);
    xsi_set_current_line(135, ng0);

LAB22:    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    goto LAB2;

LAB21:    goto LAB20;

LAB23:    goto LAB21;

}


extern void work_a_1891585018_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1891585018_3212880686_p_0,(void *)work_a_1891585018_3212880686_p_1};
	static char *se[] = {(void *)work_a_1891585018_3212880686_sub_3371266835_3057020925};
	xsi_register_didat("work_a_1891585018_3212880686", "isim/Top_Schema_Top_Schema_sch_tb_isim_beh.exe.sim/work/a_1891585018_3212880686.didat");
	xsi_register_executes(pe);
	xsi_register_subprogram_executes(se);
}
