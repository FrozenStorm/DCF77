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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *STD_STANDARD;
char *IEEE_P_0774719531;
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *IEEE_P_1242562249;
char *UNISIM_P_0947159679;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    unisim_p_0947159679_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    unisim_a_2562466605_1496654361_init();
    work_a_2039185022_3212880686_init();
    work_a_0941579844_3212880686_init();
    work_a_1647266946_3212880686_init();
    work_a_3482499634_3212880686_init();
    unisim_a_1717296735_4086321779_init();
    work_a_2852123718_3212880686_init();
    work_a_2304684704_3212880686_init();
    work_a_3807161390_3212880686_init();
    unisim_a_3870564484_3219970547_init();
    work_a_3773539043_3212880686_init();
    unisim_a_2782630213_1361109519_init();
    unisim_a_0680745308_3966425309_init();
    work_a_2873082350_3212880686_init();
    work_a_3926497698_3212880686_init();
    work_a_4100526890_3212880686_init();
    work_a_4000882902_3212880686_init();
    work_a_1891585018_3212880686_init();


    xsi_register_tops("work_a_1891585018_3212880686");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    UNISIM_P_0947159679 = xsi_get_engine_memory("unisim_p_0947159679");

    return xsi_run_simulation(argc, argv);

}
