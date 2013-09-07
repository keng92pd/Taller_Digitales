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
char *VL_P_2533777724;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000004134447467_2073120511_init();
    simprims_ver_m_00000000000126354981_0818475687_init();
    simprims_ver_u_00000000002212670773_1323274903_init();
    simprims_ver_m_00000000001160127574_0897309690_init();
    simprims_ver_m_00000000001255213976_2021654676_init();
    simprims_ver_m_00000000002872589513_2309584270_init();
    simprims_ver_m_00000000000126354981_1080494567_init();
    simprims_ver_m_00000000002872589513_3118641787_init();
    simprims_ver_m_00000000003359274523_2662658903_init();
    simprims_ver_m_00000000000648012491_3151998091_init();
    simprims_ver_m_00000000001867363923_1692233196_init();
    simprims_ver_m_00000000003719362827_1840704098_init();
    simprims_ver_m_00000000001255213976_3226743947_init();
    simprims_ver_u_00000000003032403156_2366604397_init();
    simprims_ver_m_00000000002910948294_1630855271_init();
    simprims_ver_m_00000000002910948294_0076253249_init();
    simprims_ver_m_00000000003598591109_0090251771_init();
    simprims_ver_m_00000000003598591109_3256702861_init();
    simprims_ver_m_00000000003598591109_0769604787_init();
    simprims_ver_m_00000000003598591109_2129103041_init();
    simprims_ver_m_00000000003598591109_1145179157_init();
    simprims_ver_m_00000000003598591109_1961700434_init();
    simprims_ver_m_00000000003598591109_0489842329_init();
    simprims_ver_m_00000000003598591109_3116693443_init();
    simprims_ver_m_00000000003598591109_2575691455_init();
    simprims_ver_m_00000000003598591109_2371179551_init();
    simprims_ver_m_00000000003598591109_2072776288_init();
    simprims_ver_m_00000000003598591109_1237692704_init();
    simprims_ver_m_00000000003598591109_0498577443_init();
    simprims_ver_m_00000000003598591109_2381172385_init();
    simprims_ver_m_00000000003598591109_0919814946_init();
    simprims_ver_m_00000000003598591109_1172843158_init();
    simprims_ver_m_00000000003598591109_3360225898_init();
    simprims_ver_m_00000000003598591109_0328855223_init();
    simprims_ver_m_00000000003598591109_3389710221_init();
    simprims_ver_m_00000000003598591109_3851932110_init();
    simprims_ver_m_00000000003598591109_3563537662_init();
    simprims_ver_m_00000000003598591109_0195502421_init();
    simprims_ver_m_00000000003598591109_0978826341_init();
    simprims_ver_m_00000000003598591109_3674629836_init();
    simprims_ver_u_00000000001790370653_1131516744_init();
    simprims_ver_m_00000000000452859522_3643135096_init();
    simprims_ver_m_00000000000452859522_3752318385_init();
    work_m_00000000002388260485_3768637899_init();
    ieee_p_2592010699_init();
    vl_p_2533777724_init();
    work_a_2309414265_2372691052_init();


    xsi_register_tops("work_a_2309414265_2372691052");
    xsi_register_tops("work_m_00000000004134447467_2073120511");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    VL_P_2533777724 = xsi_get_engine_memory("vl_p_2533777724");

    return xsi_run_simulation(argc, argv);

}
