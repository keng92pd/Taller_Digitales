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
    work_m_00000000000231088934_2118202359_init();
    work_m_00000000003109709880_2523135212_init();
    work_m_00000000001505730684_1692778485_init();
    work_m_00000000001085734932_0178011939_init();
    work_m_00000000002236663559_3704945645_init();
    work_m_00000000003157316123_0198176952_init();
    work_m_00000000003517697842_3194359920_init();
    work_m_00000000003776028705_0995577822_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003776028705_0995577822");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
