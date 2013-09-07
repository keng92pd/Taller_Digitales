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
static const char *ng0 = "C:/Users/Zeck/Desktop/Laboratorio2/ParametrosTemporales.v";
static unsigned int ng1[] = {6U, 0U};
static unsigned int ng2[] = {3U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {0U, 0U};
static unsigned int ng5[] = {1U, 0U};
static unsigned int ng6[] = {15U, 0U};



static void Initial_36_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;

LAB0:    xsi_set_current_line(37, ng0);

LAB2:    xsi_set_current_line(38, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 1380);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(39, ng0);
    t1 = ((char*)((ng2)));
    t2 = (t0 + 1564);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(40, ng0);
    t1 = ((char*)((ng3)));
    t2 = (t0 + 1472);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);
    xsi_set_current_line(41, ng0);
    t1 = (t0 + 1380);
    t2 = (t1 + 36U);
    t3 = *((char **)t2);
    t4 = (t0 + 1656);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);

LAB1:    return;
}

static void Always_44_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned int t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    int t13;

LAB0:    t1 = (t0 + 2324U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(44, ng0);
    t2 = (t0 + 2808);
    *((int *)t2) = 1;
    t3 = (t0 + 2352);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(45, ng0);

LAB5:    xsi_set_current_line(46, ng0);
    t4 = (t0 + 1060U);
    t5 = *((char **)t4);
    t4 = (t5 + 4);
    t6 = *((unsigned int *)t4);
    t7 = (~(t6));
    t8 = *((unsigned int *)t5);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB6;

LAB7:
LAB8:    xsi_set_current_line(52, ng0);
    t2 = (t0 + 876U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t6 = *((unsigned int *)t2);
    t7 = (~(t6));
    t8 = *((unsigned int *)t3);
    t9 = (t8 & t7);
    t10 = (t9 != 0);
    if (t10 > 0)
        goto LAB10;

LAB11:
LAB12:    goto LAB2;

LAB6:    xsi_set_current_line(47, ng0);

LAB9:    xsi_set_current_line(48, ng0);
    t11 = ((char*)((ng1)));
    t12 = (t0 + 1380);
    xsi_vlogvar_assign_value(t12, t11, 0, 0, 4);
    xsi_set_current_line(49, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    xsi_set_current_line(50, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);
    goto LAB8;

LAB10:    xsi_set_current_line(53, ng0);

LAB13:    xsi_set_current_line(54, ng0);
    t4 = (t0 + 692U);
    t5 = *((char **)t4);

LAB14:    t4 = ((char*)((ng4)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t4, 2);
    if (t13 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng5)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t13 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng3)));
    t13 = xsi_vlog_unsigned_case_compare(t5, 2, t2, 2);
    if (t13 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:
LAB23:    goto LAB12;

LAB15:    xsi_set_current_line(55, ng0);
    t11 = (t0 + 784U);
    t12 = *((char **)t11);
    t11 = (t0 + 1380);
    xsi_vlogvar_assign_value(t11, t12, 0, 0, 4);
    goto LAB23;

LAB17:    xsi_set_current_line(56, ng0);
    t3 = (t0 + 784U);
    t4 = *((char **)t3);
    t3 = (t0 + 1564);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 4);
    goto LAB23;

LAB19:    xsi_set_current_line(57, ng0);
    t3 = (t0 + 784U);
    t4 = *((char **)t3);
    t3 = (t0 + 1472);
    xsi_vlogvar_assign_value(t3, t4, 0, 0, 4);
    goto LAB23;

}

static void Always_63_2(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 2468U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2816);
    *((int *)t2) = 1;
    t3 = (t0 + 2496);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(64, ng0);

LAB5:    xsi_set_current_line(65, ng0);
    t4 = ((char*)((ng6)));
    t5 = (t0 + 1656);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 968U);
    t3 = *((char **)t2);

LAB6:    t2 = ((char*)((ng4)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t3, 2, t2, 2);
    if (t6 == 1)
        goto LAB11;

LAB12:
LAB14:
LAB13:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(67, ng0);
    t4 = (t0 + 1380);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1656);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB15;

LAB9:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 1564);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1656);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB15;

LAB11:    xsi_set_current_line(69, ng0);
    t4 = (t0 + 1472);
    t5 = (t4 + 36U);
    t7 = *((char **)t5);
    t8 = (t0 + 1656);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 4);
    goto LAB15;

}

static void Cont_74_3(char *t0)
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

LAB0:    t1 = (t0 + 2612U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 1656);
    t3 = (t2 + 36U);
    t4 = *((char **)t3);
    t5 = (t0 + 2868);
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
    t18 = (t0 + 2824);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000001985205127_3266814207_init()
{
	static char *pe[] = {(void *)Initial_36_0,(void *)Always_44_1,(void *)Always_63_2,(void *)Cont_74_3};
	xsi_register_didat("work_m_00000000001985205127_3266814207", "isim/ControladorLucesSemaforo_isim_beh.exe.sim/work/m_00000000001985205127_3266814207.didat");
	xsi_register_executes(pe);
}
