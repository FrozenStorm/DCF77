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
static const char *ng0 = "C:/Users/Daniel/Dropbox/DCF77/DCF_77_Endversion/DCF_77/Counter_3_9.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1258338084_503743352(char *, char *, unsigned int , unsigned int );
unsigned char ieee_p_2592010699_sub_1605435078_503743352(char *, unsigned char , unsigned char );
unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
unsigned char ieee_p_2592010699_sub_2545490612_503743352(char *, unsigned char , unsigned char );


static void work_a_2039185022_3212880686_p_0(char *t0)
{
    char t15[16];
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
    int t16;
    unsigned int t17;
    unsigned char t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    int t24;
    unsigned char t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t31;
    unsigned int t32;

LAB0:    xsi_set_current_line(53, ng0);
    t1 = (t0 + 992U);
    t2 = ieee_p_2592010699_sub_1258338084_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t2 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 4448);
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
    t3 = (t0 + 7249);
    t8 = (t0 + 4560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 4U);
    xsi_driver_first_trans_fast(t8);
    goto LAB6;

LAB8:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1832U);
    t4 = *((char **)t1);
    t1 = (t0 + 4560);
    t7 = (t1 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t4, 4U);
    xsi_driver_first_trans_fast(t1);
    goto LAB6;

LAB10:    xsi_set_current_line(59, ng0);
    t1 = (t0 + 1992U);
    t7 = *((char **)t1);
    t1 = (t0 + 7176U);
    t8 = (t0 + 7253);
    t10 = (t15 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 3;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t17;
    t18 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t7, t1, t8, t15);
    if (t18 != 0)
        goto LAB15;

LAB17:    t1 = (t0 + 1992U);
    t3 = *((char **)t1);
    t1 = (t0 + 7176U);
    t4 = (t0 + 7265);
    t8 = (t15 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 0;
    t9 = (t8 + 4U);
    *((int *)t9) = 3;
    t9 = (t8 + 8U);
    *((int *)t9) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t17;
    t2 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t3, t1, t4, t15);
    if (t2 != 0)
        goto LAB23;

LAB24:
LAB16:    goto LAB6;

LAB12:    t1 = (t0 + 1672U);
    t4 = *((char **)t1);
    t13 = *((unsigned char *)t4);
    t14 = (t13 == (unsigned char)3);
    t2 = t14;
    goto LAB14;

LAB15:    xsi_set_current_line(60, ng0);
    t11 = (t0 + 2472U);
    t12 = *((char **)t11);
    t11 = (t0 + 7208U);
    t19 = (t0 + 7257);
    t22 = (t21 + 0U);
    t23 = (t22 + 0U);
    *((int *)t23) = 0;
    t23 = (t22 + 4U);
    *((int *)t23) = 3;
    t23 = (t22 + 8U);
    *((int *)t23) = 1;
    t24 = (3 - 0);
    t17 = (t24 * 1);
    t17 = (t17 + 1);
    t23 = (t22 + 12U);
    *((unsigned int *)t23) = t17;
    t25 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t12, t11, t19, t21);
    if (t25 != 0)
        goto LAB18;

LAB20:    xsi_set_current_line(63, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 7208U);
    t4 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t15, t3, t1, 1);
    t7 = (t15 + 12U);
    t17 = *((unsigned int *)t7);
    t32 = (1U * t17);
    t2 = (4U != t32);
    if (t2 == 1)
        goto LAB21;

LAB22:    t8 = (t0 + 4560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t8);

LAB19:    goto LAB16;

LAB18:    xsi_set_current_line(61, ng0);
    t23 = (t0 + 7261);
    t27 = (t0 + 4560);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    memcpy(t31, t23, 4U);
    xsi_driver_first_trans_fast(t27);
    goto LAB19;

LAB21:    xsi_size_not_matching(4U, t32, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(66, ng0);
    t9 = (t0 + 2472U);
    t10 = *((char **)t9);
    t9 = (t0 + 7208U);
    t11 = (t0 + 7269);
    t19 = (t21 + 0U);
    t20 = (t19 + 0U);
    *((int *)t20) = 0;
    t20 = (t19 + 4U);
    *((int *)t20) = 3;
    t20 = (t19 + 8U);
    *((int *)t20) = 1;
    t24 = (3 - 0);
    t17 = (t24 * 1);
    t17 = (t17 + 1);
    t20 = (t19 + 12U);
    *((unsigned int *)t20) = t17;
    t5 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t10, t9, t11, t21);
    if (t5 != 0)
        goto LAB25;

LAB27:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 2472U);
    t3 = *((char **)t1);
    t1 = (t0 + 7208U);
    t4 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t15, t3, t1, 1);
    t7 = (t15 + 12U);
    t17 = *((unsigned int *)t7);
    t32 = (1U * t17);
    t2 = (4U != t32);
    if (t2 == 1)
        goto LAB28;

LAB29:    t8 = (t0 + 4560);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    t11 = (t10 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 4U);
    xsi_driver_first_trans_fast(t8);

LAB26:    goto LAB16;

LAB25:    xsi_set_current_line(67, ng0);
    t20 = (t0 + 7273);
    t23 = (t0 + 4560);
    t26 = (t23 + 56U);
    t27 = *((char **)t26);
    t28 = (t27 + 56U);
    t29 = *((char **)t28);
    memcpy(t29, t20, 4U);
    xsi_driver_first_trans_fast(t23);
    goto LAB26;

LAB28:    xsi_size_not_matching(4U, t32, 0);
    goto LAB29;

}

static void work_a_2039185022_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(77, ng0);

LAB3:    t1 = (t0 + 2472U);
    t2 = *((char **)t1);
    t1 = (t0 + 4624);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4464);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2039185022_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    int t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned char t17;
    unsigned char t18;
    char *t19;
    char *t20;
    int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned char t25;
    unsigned char t26;
    char *t27;
    char *t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned char t33;
    unsigned char t34;
    unsigned char t35;
    char *t36;
    char *t37;
    int t38;
    unsigned int t39;
    unsigned int t40;
    unsigned int t41;
    unsigned char t42;
    unsigned char t43;
    unsigned char t44;
    char *t45;
    char *t46;
    unsigned char t47;
    char *t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    unsigned int t52;
    unsigned char t53;
    unsigned char t54;
    char *t55;
    char *t56;
    int t57;
    unsigned int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned char t61;
    unsigned char t62;
    char *t63;
    char *t64;
    int t65;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    unsigned char t69;
    unsigned char t70;
    unsigned char t71;
    char *t72;
    char *t73;
    int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned char t78;
    unsigned char t79;
    unsigned char t80;
    char *t81;
    char *t82;
    int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    unsigned char t87;
    unsigned char t88;
    unsigned char t89;
    char *t90;
    char *t91;
    char *t92;
    char *t93;
    char *t94;
    char *t95;

LAB0:    xsi_set_current_line(79, ng0);

LAB3:    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 1992U);
    t4 = *((char **)t1);
    t5 = (1 - 3);
    t6 = (t5 * -1);
    t7 = (1U * t6);
    t8 = (0 + t7);
    t1 = (t4 + t8);
    t9 = *((unsigned char *)t1);
    t10 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t3, t9);
    t11 = (t0 + 2472U);
    t12 = *((char **)t11);
    t13 = (0 - 3);
    t14 = (t13 * -1);
    t15 = (1U * t14);
    t16 = (0 + t15);
    t11 = (t12 + t16);
    t17 = *((unsigned char *)t11);
    t18 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t10, t17);
    t19 = (t0 + 2472U);
    t20 = *((char **)t19);
    t21 = (1 - 3);
    t22 = (t21 * -1);
    t23 = (1U * t22);
    t24 = (0 + t23);
    t19 = (t20 + t24);
    t25 = *((unsigned char *)t19);
    t26 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t18, t25);
    t27 = (t0 + 2472U);
    t28 = *((char **)t27);
    t29 = (2 - 3);
    t30 = (t29 * -1);
    t31 = (1U * t30);
    t32 = (0 + t31);
    t27 = (t28 + t32);
    t33 = *((unsigned char *)t27);
    t34 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t33);
    t35 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t26, t34);
    t36 = (t0 + 2472U);
    t37 = *((char **)t36);
    t38 = (3 - 3);
    t39 = (t38 * -1);
    t40 = (1U * t39);
    t41 = (0 + t40);
    t36 = (t37 + t41);
    t42 = *((unsigned char *)t36);
    t43 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t42);
    t44 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t35, t43);
    t45 = (t0 + 1512U);
    t46 = *((char **)t45);
    t47 = *((unsigned char *)t46);
    t45 = (t0 + 1992U);
    t48 = *((char **)t45);
    t49 = (0 - 3);
    t50 = (t49 * -1);
    t51 = (1U * t50);
    t52 = (0 + t51);
    t45 = (t48 + t52);
    t53 = *((unsigned char *)t45);
    t54 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t47, t53);
    t55 = (t0 + 2472U);
    t56 = *((char **)t55);
    t57 = (0 - 3);
    t58 = (t57 * -1);
    t59 = (1U * t58);
    t60 = (0 + t59);
    t55 = (t56 + t60);
    t61 = *((unsigned char *)t55);
    t62 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t54, t61);
    t63 = (t0 + 2472U);
    t64 = *((char **)t63);
    t65 = (1 - 3);
    t66 = (t65 * -1);
    t67 = (1U * t66);
    t68 = (0 + t67);
    t63 = (t64 + t68);
    t69 = *((unsigned char *)t63);
    t70 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t69);
    t71 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t62, t70);
    t72 = (t0 + 2472U);
    t73 = *((char **)t72);
    t74 = (2 - 3);
    t75 = (t74 * -1);
    t76 = (1U * t75);
    t77 = (0 + t76);
    t72 = (t73 + t77);
    t78 = *((unsigned char *)t72);
    t79 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t78);
    t80 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t71, t79);
    t81 = (t0 + 2472U);
    t82 = *((char **)t81);
    t83 = (3 - 3);
    t84 = (t83 * -1);
    t85 = (1U * t84);
    t86 = (0 + t85);
    t81 = (t82 + t86);
    t87 = *((unsigned char *)t81);
    t88 = ieee_p_2592010699_sub_1605435078_503743352(IEEE_P_2592010699, t80, t87);
    t89 = ieee_p_2592010699_sub_2545490612_503743352(IEEE_P_2592010699, t44, t88);
    t90 = (t0 + 4688);
    t91 = (t90 + 56U);
    t92 = *((char **)t91);
    t93 = (t92 + 56U);
    t94 = *((char **)t93);
    *((unsigned char *)t94) = t89;
    xsi_driver_first_trans_fast_port(t90);

LAB2:    t95 = (t0 + 4480);
    *((int *)t95) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_2039185022_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2039185022_3212880686_p_0,(void *)work_a_2039185022_3212880686_p_1,(void *)work_a_2039185022_3212880686_p_2};
	xsi_register_didat("work_a_2039185022_3212880686", "isim/Counter_3_9_TB_isim_beh.exe.sim/work/a_2039185022_3212880686.didat");
	xsi_register_executes(pe);
}
