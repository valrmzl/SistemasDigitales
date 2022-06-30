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
    work_m_00000000001620894916_3959061474_init();
    work_m_00000000003526883379_4216190688_init();
    work_m_00000000000508170192_3079310000_init();
    work_m_00000000002673451816_3823007873_init();
    work_m_00000000003373015679_3020238895_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000003373015679_3020238895");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
