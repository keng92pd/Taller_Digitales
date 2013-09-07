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



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    work_m_00000000001716199615_3714290015_init();
    work_m_00000000001911437869_2782103923_init();
    work_m_00000000001627614218_2118202359_init();
    work_m_00000000001271513483_0183742806_init();
    work_m_00000000001985205127_3266814207_init();
    work_m_00000000001028576717_3218702778_init();
    work_m_00000000003087020850_3768637899_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003087020850_3768637899");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
