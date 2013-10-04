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

/* This file is designed for use with ISim build 0x8ef4fb42 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Zeck/Desktop/Repositorio_Kenneth/Laboratorio3/MEMORIA.v";
static unsigned int ng1[] = {2U, 0U};
static unsigned int ng2[] = {15U, 0U};
static unsigned int ng3[] = {1U, 0U};
static unsigned int ng4[] = {0U, 15U};



static void Cont_31_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 1720U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 1196);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2112);
    t6 = (t5 + 32U);
    t7 = *((char **)t6);
    t8 = (t7 + 40U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 15U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 3);
    t18 = (t0 + 2060);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Always_33_1(char *t0)
{
    char t6[8];
    char t29[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    unsigned int t41;
    unsigned int t42;
    char *t43;
    unsigned int t44;
    unsigned int t45;
    char *t46;
    char *t47;
    char *t48;
    int t49;
    int t50;
    int t51;
    int t52;
    int t53;

LAB0:    t1 = (t0 + 1864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 2068);
    *((int *)t2) = 1;
    t3 = (t0 + 1892);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(34, ng0);

LAB5:    xsi_set_current_line(35, ng0);
    t4 = (t0 + 784U);
    t5 = *((char **)t4);
    t4 = (t0 + 1104);
    xsi_vlogvar_assign_value(t4, t5, 0, 0, 4);
    xsi_set_current_line(36, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng1)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB9;

LAB6:    if (t16 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB10;

LAB11:
LAB12:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 600U);
    t3 = *((char **)t2);
    t2 = ((char*)((ng3)));
    memset(t6, 0, 8);
    t4 = (t3 + 4);
    t5 = (t2 + 4);
    t7 = *((unsigned int *)t3);
    t8 = *((unsigned int *)t2);
    t9 = (t7 ^ t8);
    t10 = *((unsigned int *)t4);
    t11 = *((unsigned int *)t5);
    t12 = (t10 ^ t11);
    t13 = (t9 | t12);
    t14 = *((unsigned int *)t4);
    t15 = *((unsigned int *)t5);
    t16 = (t14 | t15);
    t17 = (~(t16));
    t18 = (t13 & t17);
    if (t18 != 0)
        goto LAB16;

LAB13:    if (t16 != 0)
        goto LAB15;

LAB14:    *((unsigned int *)t6) = 1;

LAB16:    t20 = (t6 + 4);
    t21 = *((unsigned int *)t20);
    t22 = (~(t21));
    t23 = *((unsigned int *)t6);
    t24 = (t23 & t22);
    t25 = (t24 != 0);
    if (t25 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(38, ng0);

LAB21:    xsi_set_current_line(38, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 3164);
    memset(t5, 0, 8);
    t7 = 15U;
    t8 = t7;
    t19 = (t4 + 4);
    t9 = *((unsigned int *)t4);
    t7 = (t7 & t9);
    t10 = *((unsigned int *)t19);
    t8 = (t8 & t10);
    t20 = (t5 + 4);
    t11 = *((unsigned int *)t5);
    *((unsigned int *)t5) = (t11 | t7);
    t12 = *((unsigned int *)t20);
    *((unsigned int *)t20) = (t12 | t8);
    t26 = (t0 + 1764);
    xsi_process_wait(t26, 80000LL);
    *((char **)t1) = &&LAB22;
    goto LAB1;

LAB8:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(36, ng0);
    t26 = ((char*)((ng2)));
    t27 = (t0 + 1104);
    xsi_vlogvar_assign_value(t27, t26, 0, 0, 4);
    goto LAB12;

LAB15:    t19 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t19) = 1;
    goto LAB16;

LAB17:    xsi_set_current_line(37, ng0);
    t26 = (t0 + 1012);
    t27 = (t26 + 36U);
    t28 = *((char **)t27);
    t30 = (t0 + 1012);
    t31 = (t30 + 44U);
    t32 = *((char **)t31);
    t33 = (t0 + 1012);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    t36 = (t0 + 692U);
    t37 = *((char **)t36);
    xsi_vlog_generic_get_array_select_value(t29, 4, t28, t32, t35, 2, 1, t37, 4, 2);
    t36 = (t0 + 3132);
    memset(t36, 0, 8);
    t38 = 15U;
    t39 = t38;
    t40 = (t29 + 4);
    t41 = *((unsigned int *)t29);
    t38 = (t38 & t41);
    t42 = *((unsigned int *)t40);
    t39 = (t39 & t42);
    t43 = (t36 + 4);
    t44 = *((unsigned int *)t36);
    *((unsigned int *)t36) = (t44 | t38);
    t45 = *((unsigned int *)t43);
    *((unsigned int *)t43) = (t45 | t39);
    t46 = (t0 + 1764);
    xsi_process_wait(t46, 150000LL);
    *((char **)t1) = &&LAB20;
    goto LAB1;

LAB19:    goto LAB2;

LAB20:    t47 = (t0 + 3132);
    t48 = (t0 + 1196);
    xsi_vlogvar_assign_value(t48, t47, 0, 0, 4);
    goto LAB19;

LAB22:    t27 = (t0 + 3164);
    t28 = (t0 + 1012);
    t30 = (t0 + 1012);
    t31 = (t30 + 44U);
    t32 = *((char **)t31);
    t33 = (t0 + 1012);
    t34 = (t33 + 40U);
    t35 = *((char **)t34);
    t36 = (t0 + 692U);
    t37 = *((char **)t36);
    xsi_vlog_generic_convert_array_indices(t6, t29, t32, t35, 2, 1, t37, 4, 2);
    t36 = (t6 + 4);
    t13 = *((unsigned int *)t36);
    t49 = (!(t13));
    t40 = (t29 + 4);
    t14 = *((unsigned int *)t40);
    t50 = (!(t14));
    t51 = (t49 && t50);
    if (t51 == 1)
        goto LAB23;

LAB24:    xsi_set_current_line(38, ng0);
    t2 = ((char*)((ng4)));
    t3 = (t0 + 1196);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB19;

LAB23:    t15 = *((unsigned int *)t6);
    t16 = *((unsigned int *)t29);
    t52 = (t15 - t16);
    t53 = (t52 + 1);
    xsi_vlogvar_assign_value(t28, t27, 0, *((unsigned int *)t29), t53);
    goto LAB24;

}


extern void work_m_00000000000304950028_2476874479_init()
{
	static char *pe[] = {(void *)Cont_31_0,(void *)Always_33_1};
	xsi_register_didat("work_m_00000000000304950028_2476874479", "isim/TEST_isim_beh.exe.sim/work/m_00000000000304950028_2476874479.didat");
	xsi_register_executes(pe);
}
