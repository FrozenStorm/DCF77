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
static const char *ng0 = "C:/Users/Daniel/Dropbox/DCF77/DCF_77_Endversion/DCF_77/counter.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_853553178_503743352(char *, unsigned char , unsigned char );


static void work_a_3482499634_3212880686_p_0(char *t0)
{
    char t21[16];
    char *t1;
    unsigned char t2;
    char *t3;
    char *t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    unsigned int t22;
    unsigned int t23;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4408);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    t6 = (t5 == (unsigned char)2);
    if (t6 != 0)
        goto LAB5;

LAB7:    t1 = (t0 + 1192U);
    t3 = *((char **)t1);
    t2 = *((unsigned char *)t3);
    t5 = (t2 == (unsigned char)3);
    if (t5 != 0)
        goto LAB8;

LAB9:    t1 = (t0 + 1512U);
    t3 = *((char **)t1);
    t5 = *((unsigned char *)t3);
    t6 = (t5 == (unsigned char)3);
    if (t6 == 1)
        goto LAB12;

LAB13:    t2 = (unsigned char)0;

LAB14:    if (t2 != 0)
        goto LAB10;

LAB11:
LAB6:    goto LAB3;

LAB5:    xsi_set_current_line(55, ng0);
    t3 = (t0 + 7137);
    t8 = (t0 + 4520);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t1 = (t0 + 4520);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 2312U);
    t7 = *((char **)t1);
    t1 = (t0 + 7096U);
    t8 = (t0 + 7141);
    t10 = (t0 + 7048U);
    t15 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t7, t1, t8, t10);
    if (t15 != 0)
        goto LAB15;

LAB17:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2312U);
    t3 = *((char **)t1);
    t1 = (t0 + 7096U);
    t4 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t21, t3, t1, 1);
    t7 = (t21 + 12U);
    t22 = *((unsigned int *)t7);
    t23 = (1U * t22);
    t2 = (4U != t23);
    if (t2 == 1)
        goto LAB18;

LAB19:    t8 = (t0 + 4520);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t8);

LAB16:    goto LAB6;

LAB12:    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t2 = t14;
    goto LAB14;

LAB15:    xsi_set_current_line(60, ng0);
    t11 = (t0 + 7145);
    t16 = (t0 + 4520);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    memcpy(t20, t11, 4U);
    xsi_driver_first_trans_fast(t16);
    goto LAB16;

LAB18:    xsi_size_not_matching(4U, t23, 0);
    goto LAB19;

}

static void work_a_3482499634_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(68, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4584);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4424);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3482499634_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    char *t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    unsigned char t18;
    unsigned char t19;
    char *t20;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    unsigned char t27;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    unsigned char t34;
    unsigned char t35;
    unsigned char t36;
    char *t37;
    int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned char t44;
    char *t45;
    char *t46;
    int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    unsigned char t51;
    unsigned char t52;
    unsigned char t53;
    char *t54;
    int t56;
    unsigned int t57;
    unsigned int t58;
    unsigned int t59;
    char *t60;
    unsigned char t61;
    char *t62;
    char *t63;
    int t64;
    unsigned int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned char t68;
    unsigned char t69;
    unsigned char t70;
    char *t71;
    char *t72;
    char *t73;
    char *t74;
    char *t75;
    char *t76;

LAB0:    xsi_set_current_line(69, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 7149);
    t5 = (0 - 3);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t9 = (t1 + t8);
    t10 = *((unsigned char *)t9);
    t11 = (t0 + 2312U);
    t12 = *((char **)t11);
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t11 = (t12 + t16);
    t17 = *((unsigned char *)t11);
    t18 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t10, t17);
    t19 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t18);
    t20 = (t0 + 7153);
    t22 = (1 - 3);
    t23 = (t22 * -1);
    t24 = (1U * t23);
    t25 = (0 + t24);
    t26 = (t20 + t25);
    t27 = *((unsigned char *)t26);
    t28 = (t0 + 2312U);
    t29 = *((char **)t28);
    t30 = (1 - 3);
    t31 = (t30 * -1);
    t32 = (1U * t31);
    t33 = (0 + t32);
    t28 = (t29 + t33);
    t34 = *((unsigned char *)t28);
    t35 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t27, t34);
    t36 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t19, t35);
    t37 = (t0 + 7157);
    t39 = (2 - 3);
    t40 = (t39 * -1);
    t41 = (1U * t40);
    t42 = (0 + t41);
    t43 = (t37 + t42);
    t44 = *((unsigned char *)t43);
    t45 = (t0 + 2312U);
    t46 = *((char **)t45);
    t47 = (2 - 3);
    t48 = (t47 * -1);
    t49 = (1U * t48);
    t50 = (0 + t49);
    t45 = (t46 + t50);
    t51 = *((unsigned char *)t45);
    t52 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t44, t51);
    t53 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t36, t52);
    t54 = (t0 + 7161);
    t56 = (3 - 3);
    t57 = (t56 * -1);
    t58 = (1U * t57);
    t59 = (0 + t58);
    t60 = (t54 + t59);
    t61 = *((unsigned char *)t60);
    t62 = (t0 + 2312U);
    t63 = *((char **)t62);
    t64 = (3 - 3);
    t65 = (t64 * -1);
    t66 = (1U * t65);
    t67 = (0 + t66);
    t62 = (t63 + t67);
    t68 = *((unsigned char *)t62);
    t69 = ieee_p_2592010699_sub_853553178_503743352(IEEE_P_2592010699, t61, t68);
    t70 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t53, t69);
    t71 = (t0 + 4648);
    t72 = (t71 + 56U);
    t73 = *((char **)t72);
    t74 = (t73 + 56U);
    t75 = *((char **)t74);
    *((unsigned char *)t75) = t70;
    xsi_driver_first_trans_fast_port(t71);

LAB2:    t76 = (t0 + 4440);
    *((int *)t76) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3482499634_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3482499634_3212880686_p_0,(void *)work_a_3482499634_3212880686_p_1,(void *)work_a_3482499634_3212880686_p_2};
	xsi_register_didat("work_a_3482499634_3212880686", "isim/Clock_Clock_sch_tb_isim_beh.exe.sim/work/a_3482499634_3212880686.didat");
	xsi_register_executes(pe);
}
