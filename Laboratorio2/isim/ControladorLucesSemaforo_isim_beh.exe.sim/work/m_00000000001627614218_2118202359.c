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
static const char *ng0 = "C:/Users/Zeck/Desktop/Laboratorio2/Sincronizador.v";
static unsigned int ng1[] = {8U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {4U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {0U, 0U};



static void Always_30_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 1628U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 2112);
    *((int *)t2) = 1;
    t3 = (t0 + 1656);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);

LAB6:    t4 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t4, 4);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t5, 4, t2, 4);
    if (t6 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(37, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 3);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(33, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 1012);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 3);
    goto LAB17;

LAB9:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB17;

LAB11:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB17;

LAB13:    xsi_set_current_line(36, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1012);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 3);
    goto LAB17;

}

static void Always_41_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 1772U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(41, ng0);
    t2 = (t0 + 2120);
    *((int *)t2) = 1;
    t3 = (t0 + 1800);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(42, ng0);

LAB5:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1012);
    t5 = (t4 + 36U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t7, 3);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 3, t2, 3);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB16:
LAB15:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng6)));
    t3 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t3, t2, 0, 0, 4, 0LL);

LAB17:    goto LAB2;

LAB7:    xsi_set_current_line(44, ng0);
    t9 = ((char*)((ng1)));
    t10 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t10, t9, 0, 0, 4, 0LL);
    goto LAB17;

LAB9:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB17;

LAB11:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB17;

LAB13:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 1104);
    xsi_vlogvar_wait_assign_value(t4, t3, 0, 0, 4, 0LL);
    goto LAB17;

}

static void Cont_52_2(char *t0)
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

LAB0:    t1 = (t0 + 1916U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 1104);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2172);
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
    t18 = (t0 + 2128);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001627614218_2118202359_init()
{
	static char *pe[] = {(void *)Always_30_0,(void *)Always_41_1,(void *)Cont_52_2};
	xsi_register_didat("work_m_00000000001627614218_2118202359", "isim/ControladorLucesSemaforo_isim_beh.exe.sim/work/m_00000000001627614218_2118202359.didat");
	xsi_register_executes(pe);
}
