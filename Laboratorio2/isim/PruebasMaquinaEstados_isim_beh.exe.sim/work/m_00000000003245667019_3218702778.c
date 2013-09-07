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
static const char *ng0 = "C:/Users/Kenneth/Laboratorio2/MaquinaEstadosFinitos.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static int ng4[] = {0, 0};
static unsigned int ng5[] = {3U, 0U};
static int ng6[] = {1, 0};
static unsigned int ng7[] = {4U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {24U, 0U};
static unsigned int ng10[] = {6U, 0U};
static unsigned int ng11[] = {7U, 0U};
static unsigned int ng12[] = {25U, 0U};
static unsigned int ng13[] = {8U, 0U};
static unsigned int ng14[] = {9U, 0U};
static unsigned int ng15[] = {10U, 0U};
static unsigned int ng16[] = {11U, 0U};
static unsigned int ng17[] = {12U, 0U};
static unsigned int ng18[] = {13U, 0U};
static unsigned int ng19[] = {16U, 0U};
static unsigned int ng20[] = {14U, 0U};
static unsigned int ng21[] = {15U, 0U};
static unsigned int ng22[] = {17U, 0U};
static unsigned int ng23[] = {18U, 0U};
static unsigned int ng24[] = {19U, 0U};
static unsigned int ng25[] = {23U, 0U};
static unsigned int ng26[] = {20U, 0U};
static unsigned int ng27[] = {21U, 0U};
static unsigned int ng28[] = {22U, 0U};
static unsigned int ng29[] = {26U, 0U};
static unsigned int ng30[] = {27U, 0U};
static unsigned int ng31[] = {66U, 0U};
static unsigned int ng32[] = {34U, 0U};



static void Always_80_0(char *t0)
{
    char t9[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 8416U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 10472);
    *((int *)t2) = 1;
    t3 = (t0 + 8448);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(81, ng0);

LAB5:    xsi_set_current_line(82, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 5);
    xsi_set_current_line(83, ng0);
    t2 = (t0 + 7176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t5, 5);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB61;

LAB62:
LAB64:
LAB63:    xsi_set_current_line(112, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB65:    goto LAB2;

LAB7:    xsi_set_current_line(84, ng0);
    t7 = ((char*)((ng2)));
    t8 = (t0 + 7336);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 5);
    goto LAB65;

LAB9:    xsi_set_current_line(85, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB11:    xsi_set_current_line(86, ng0);
    t3 = (t0 + 5176U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB69;

LAB66:    if (t19 != 0)
        goto LAB68;

LAB67:    *((unsigned int *)t9) = 1;

LAB69:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB70;

LAB71:    xsi_set_current_line(86, ng0);
    t2 = ((char*)((ng5)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB72:    goto LAB65;

LAB13:    xsi_set_current_line(87, ng0);
    t3 = (t0 + 5336U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng6)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB76;

LAB73:    if (t19 != 0)
        goto LAB75;

LAB74:    *((unsigned int *)t9) = 1;

LAB76:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB77;

LAB78:    xsi_set_current_line(87, ng0);
    t2 = ((char*)((ng8)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB79:    goto LAB65;

LAB15:    xsi_set_current_line(88, ng0);
    t3 = ((char*)((ng9)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB17:    xsi_set_current_line(89, ng0);
    t3 = ((char*)((ng10)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB19:    xsi_set_current_line(90, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB21:    xsi_set_current_line(91, ng0);
    t3 = ((char*)((ng12)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB23:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 5176U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB83;

LAB80:    if (t19 != 0)
        goto LAB82;

LAB81:    *((unsigned int *)t9) = 1;

LAB83:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB84;

LAB85:    xsi_set_current_line(92, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB86:    goto LAB65;

LAB25:    xsi_set_current_line(93, ng0);
    t3 = (t0 + 5176U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB90;

LAB87:    if (t19 != 0)
        goto LAB89;

LAB88:    *((unsigned int *)t9) = 1;

LAB90:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB91;

LAB92:    xsi_set_current_line(93, ng0);
    t2 = ((char*)((ng13)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB93:    goto LAB65;

LAB27:    xsi_set_current_line(94, ng0);
    t3 = ((char*)((ng14)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB29:    xsi_set_current_line(95, ng0);
    t3 = ((char*)((ng15)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB31:    xsi_set_current_line(96, ng0);
    t3 = ((char*)((ng16)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB33:    xsi_set_current_line(97, ng0);
    t3 = (t0 + 5176U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB97;

LAB94:    if (t19 != 0)
        goto LAB96;

LAB95:    *((unsigned int *)t9) = 1;

LAB97:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB98;

LAB99:    xsi_set_current_line(97, ng0);
    t2 = ((char*)((ng17)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB100:    goto LAB65;

LAB35:    xsi_set_current_line(98, ng0);
    t3 = (t0 + 5496U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng6)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB104;

LAB101:    if (t19 != 0)
        goto LAB103;

LAB102:    *((unsigned int *)t9) = 1;

LAB104:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB105;

LAB106:    xsi_set_current_line(98, ng0);
    t2 = ((char*)((ng19)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB107:    goto LAB65;

LAB37:    xsi_set_current_line(99, ng0);
    t3 = ((char*)((ng20)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB39:    xsi_set_current_line(100, ng0);
    t3 = ((char*)((ng21)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB41:    xsi_set_current_line(101, ng0);
    t3 = (t0 + 5176U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB111;

LAB108:    if (t19 != 0)
        goto LAB110;

LAB109:    *((unsigned int *)t9) = 1;

LAB111:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB112;

LAB113:    xsi_set_current_line(101, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB114:    goto LAB65;

LAB43:    xsi_set_current_line(102, ng0);
    t3 = ((char*)((ng22)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB45:    xsi_set_current_line(103, ng0);
    t3 = ((char*)((ng23)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB47:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 5176U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB118;

LAB115:    if (t19 != 0)
        goto LAB117;

LAB116:    *((unsigned int *)t9) = 1;

LAB118:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB119;

LAB120:    xsi_set_current_line(104, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB121:    goto LAB65;

LAB49:    xsi_set_current_line(105, ng0);
    t3 = (t0 + 5336U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB125;

LAB122:    if (t19 != 0)
        goto LAB124;

LAB123:    *((unsigned int *)t9) = 1;

LAB125:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB126;

LAB127:    xsi_set_current_line(105, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB128:    goto LAB65;

LAB51:    xsi_set_current_line(106, ng0);
    t3 = ((char*)((ng27)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB53:    xsi_set_current_line(107, ng0);
    t3 = ((char*)((ng28)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB55:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 5176U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB132;

LAB129:    if (t19 != 0)
        goto LAB131;

LAB130:    *((unsigned int *)t9) = 1;

LAB132:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB133;

LAB134:    xsi_set_current_line(108, ng0);
    t2 = ((char*)((ng25)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB135:    goto LAB65;

LAB57:    xsi_set_current_line(109, ng0);
    t3 = ((char*)((ng29)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB59:    xsi_set_current_line(110, ng0);
    t3 = ((char*)((ng30)));
    t5 = (t0 + 7336);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 5);
    goto LAB65;

LAB61:    xsi_set_current_line(111, ng0);
    t3 = (t0 + 5176U);
    t5 = *((char **)t3);
    t3 = ((char*)((ng4)));
    memset(t9, 0, 8);
    t7 = (t5 + 4);
    t8 = (t3 + 4);
    t10 = *((unsigned int *)t5);
    t11 = *((unsigned int *)t3);
    t12 = (t10 ^ t11);
    t13 = *((unsigned int *)t7);
    t14 = *((unsigned int *)t8);
    t15 = (t13 ^ t14);
    t16 = (t12 | t15);
    t17 = *((unsigned int *)t7);
    t18 = *((unsigned int *)t8);
    t19 = (t17 | t18);
    t20 = (~(t19));
    t21 = (t16 & t20);
    if (t21 != 0)
        goto LAB139;

LAB136:    if (t19 != 0)
        goto LAB138;

LAB137:    *((unsigned int *)t9) = 1;

LAB139:    t23 = (t9 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t9);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB140;

LAB141:    xsi_set_current_line(111, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7336);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 5);

LAB142:    goto LAB65;

LAB68:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB69;

LAB70:    xsi_set_current_line(86, ng0);
    t29 = ((char*)((ng3)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB72;

LAB75:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB76;

LAB77:    xsi_set_current_line(87, ng0);
    t29 = ((char*)((ng7)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB79;

LAB82:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB83;

LAB84:    xsi_set_current_line(92, ng0);
    t29 = ((char*)((ng11)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB86;

LAB89:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB90;

LAB91:    xsi_set_current_line(93, ng0);
    t29 = ((char*)((ng12)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB93;

LAB96:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB97;

LAB98:    xsi_set_current_line(97, ng0);
    t29 = ((char*)((ng16)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB100;

LAB103:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB104;

LAB105:    xsi_set_current_line(98, ng0);
    t29 = ((char*)((ng18)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB107;

LAB110:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB111;

LAB112:    xsi_set_current_line(101, ng0);
    t29 = ((char*)((ng21)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB114;

LAB117:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB118;

LAB119:    xsi_set_current_line(104, ng0);
    t29 = ((char*)((ng23)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB121;

LAB124:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB125;

LAB126:    xsi_set_current_line(105, ng0);
    t29 = ((char*)((ng25)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB128;

LAB131:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB132;

LAB133:    xsi_set_current_line(108, ng0);
    t29 = ((char*)((ng28)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB135;

LAB138:    t22 = (t9 + 4);
    *((unsigned int *)t9) = 1;
    *((unsigned int *)t22) = 1;
    goto LAB139;

LAB140:    xsi_set_current_line(111, ng0);
    t29 = ((char*)((ng30)));
    t30 = (t0 + 7336);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 5);
    goto LAB142;

}

static void Always_116_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    int t6;
    char *t7;
    char *t8;

LAB0:    t1 = (t0 + 8664U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 10488);
    *((int *)t2) = 1;
    t3 = (t0 + 8696);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(117, ng0);

LAB5:    xsi_set_current_line(118, ng0);
    t4 = ((char*)((ng1)));
    t5 = (t0 + 6856);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 1);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 7176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);

LAB6:    t5 = ((char*)((ng1)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t5, 5);
    if (t6 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng7)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB19;

LAB20:    t2 = ((char*)((ng9)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB21;

LAB22:    t2 = ((char*)((ng11)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB23;

LAB24:    t2 = ((char*)((ng12)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB25;

LAB26:    t2 = ((char*)((ng13)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB27;

LAB28:    t2 = ((char*)((ng14)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB29;

LAB30:    t2 = ((char*)((ng15)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng16)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng17)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng18)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB37;

LAB38:    t2 = ((char*)((ng20)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB39;

LAB40:    t2 = ((char*)((ng21)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB41;

LAB42:    t2 = ((char*)((ng19)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB43;

LAB44:    t2 = ((char*)((ng22)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB45;

LAB46:    t2 = ((char*)((ng23)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB47;

LAB48:    t2 = ((char*)((ng24)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB49;

LAB50:    t2 = ((char*)((ng26)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB51;

LAB52:    t2 = ((char*)((ng27)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB53;

LAB54:    t2 = ((char*)((ng28)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng25)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng29)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng30)));
    t6 = xsi_vlog_unsigned_case_compare(t4, 5, t2, 5);
    if (t6 == 1)
        goto LAB61;

LAB62:
LAB64:
LAB63:    xsi_set_current_line(148, ng0);

LAB94:    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 6856);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(148, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7016);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);

LAB65:    goto LAB2;

LAB7:    xsi_set_current_line(120, ng0);

LAB66:    xsi_set_current_line(120, ng0);
    t7 = ((char*)((ng31)));
    t8 = (t0 + 6696);
    xsi_vlogvar_assign_value(t8, t7, 0, 0, 7);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(120, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7016);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    goto LAB65;

LAB9:    xsi_set_current_line(121, ng0);

LAB67:    xsi_set_current_line(121, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(121, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB11:    xsi_set_current_line(122, ng0);

LAB68:    xsi_set_current_line(122, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(122, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB13:    xsi_set_current_line(123, ng0);

LAB69:    xsi_set_current_line(123, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(123, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB15:    xsi_set_current_line(124, ng0);

LAB70:    xsi_set_current_line(124, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(124, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB17:    xsi_set_current_line(125, ng0);

LAB71:    xsi_set_current_line(125, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(125, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB19:    xsi_set_current_line(126, ng0);

LAB72:    xsi_set_current_line(126, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(126, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB21:    xsi_set_current_line(127, ng0);

LAB73:    xsi_set_current_line(127, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(127, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB23:    xsi_set_current_line(128, ng0);

LAB74:    xsi_set_current_line(128, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(128, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB25:    xsi_set_current_line(129, ng0);

LAB75:    xsi_set_current_line(129, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(129, ng0);
    t2 = ((char*)((ng31)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB27:    xsi_set_current_line(130, ng0);

LAB76:    xsi_set_current_line(130, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(130, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB29:    xsi_set_current_line(131, ng0);

LAB77:    xsi_set_current_line(131, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(131, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB31:    xsi_set_current_line(132, ng0);

LAB78:    xsi_set_current_line(132, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(132, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB33:    xsi_set_current_line(133, ng0);

LAB79:    xsi_set_current_line(133, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(133, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB35:    xsi_set_current_line(134, ng0);

LAB80:    xsi_set_current_line(134, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(134, ng0);
    t2 = ((char*)((ng32)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB37:    xsi_set_current_line(135, ng0);

LAB81:    xsi_set_current_line(135, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    xsi_set_current_line(135, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    goto LAB65;

LAB39:    xsi_set_current_line(136, ng0);

LAB82:    xsi_set_current_line(136, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 6856);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(136, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB41:    xsi_set_current_line(137, ng0);

LAB83:    xsi_set_current_line(137, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng24)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(137, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB43:    xsi_set_current_line(138, ng0);

LAB84:    xsi_set_current_line(138, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(138, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB45:    xsi_set_current_line(139, ng0);

LAB85:    xsi_set_current_line(139, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(139, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB47:    xsi_set_current_line(140, ng0);

LAB86:    xsi_set_current_line(140, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(140, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB49:    xsi_set_current_line(141, ng0);

LAB87:    xsi_set_current_line(141, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(141, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB51:    xsi_set_current_line(142, ng0);

LAB88:    xsi_set_current_line(142, ng0);
    t3 = ((char*)((ng1)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(142, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB53:    xsi_set_current_line(143, ng0);

LAB89:    xsi_set_current_line(143, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(143, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB55:    xsi_set_current_line(144, ng0);

LAB90:    xsi_set_current_line(144, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng9)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(144, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB57:    xsi_set_current_line(145, ng0);

LAB91:    xsi_set_current_line(145, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(145, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB59:    xsi_set_current_line(146, ng0);

LAB92:    xsi_set_current_line(146, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(146, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

LAB61:    xsi_set_current_line(147, ng0);

LAB93:    xsi_set_current_line(147, ng0);
    t3 = ((char*)((ng2)));
    t5 = (t0 + 7016);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 1);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng26)));
    t3 = (t0 + 6696);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 7);
    xsi_set_current_line(147, ng0);
    t2 = ((char*)((ng3)));
    t3 = (t0 + 7496);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 2);
    goto LAB65;

}

static void Always_153_2(char *t0)
{
    char t6[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
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
    unsigned int t19;
    unsigned int t20;
    char *t21;
    char *t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    char *t28;
    char *t29;

LAB0:    t1 = (t0 + 8912U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(153, ng0);
    t2 = (t0 + 10504);
    *((int *)t2) = 1;
    t3 = (t0 + 8944);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(154, ng0);

LAB5:    xsi_set_current_line(155, ng0);
    t4 = (t0 + 5016U);
    t5 = *((char **)t4);
    t4 = ((char*)((ng2)));
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t8 = (t4 + 4);
    t9 = *((unsigned int *)t5);
    t10 = *((unsigned int *)t4);
    t11 = (t9 ^ t10);
    t12 = *((unsigned int *)t7);
    t13 = *((unsigned int *)t8);
    t14 = (t12 ^ t13);
    t15 = (t11 | t14);
    t16 = *((unsigned int *)t7);
    t17 = *((unsigned int *)t8);
    t18 = (t16 | t17);
    t19 = (~(t18));
    t20 = (t15 & t19);
    if (t20 != 0)
        goto LAB9;

LAB6:    if (t18 != 0)
        goto LAB8;

LAB7:    *((unsigned int *)t6) = 1;

LAB9:    t22 = (t6 + 4);
    t23 = *((unsigned int *)t22);
    t24 = (~(t23));
    t25 = *((unsigned int *)t6);
    t26 = (t25 & t24);
    t27 = (t26 != 0);
    if (t27 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(158, ng0);
    t2 = (t0 + 7336);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 7176);
    xsi_vlogvar_wait_assign_value(t5, t4, 0, 0, 5, 0LL);

LAB12:    goto LAB2;

LAB8:    t21 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t21) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(156, ng0);
    t28 = ((char*)((ng1)));
    t29 = (t0 + 7176);
    xsi_vlogvar_wait_assign_value(t29, t28, 0, 0, 5, 0LL);
    goto LAB12;

}

static void Cont_162_3(char *t0)
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

LAB0:    t1 = (t0 + 9160U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(162, ng0);
    t2 = (t0 + 6696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10664);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 127U;
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
    xsi_driver_vfirst_trans(t5, 0, 6);
    t18 = (t0 + 10520);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_163_4(char *t0)
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

LAB0:    t1 = (t0 + 9408U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(163, ng0);
    t2 = (t0 + 6856);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10728);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
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
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 10536);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_164_5(char *t0)
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

LAB0:    t1 = (t0 + 9656U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(164, ng0);
    t2 = (t0 + 7016);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10792);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
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
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 10552);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_165_6(char *t0)
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

LAB0:    t1 = (t0 + 9904U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(165, ng0);
    t2 = (t0 + 7496);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10856);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 3U;
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
    xsi_driver_vfirst_trans(t5, 0, 1);
    t18 = (t0 + 10568);
    *((int *)t18) = 1;

LAB1:    return;
}

static void Cont_166_7(char *t0)
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

LAB0:    t1 = (t0 + 10152U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(166, ng0);
    t2 = (t0 + 7176);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 10920);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 31U;
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
    xsi_driver_vfirst_trans(t5, 0, 4);
    t18 = (t0 + 10584);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_00000000003245667019_3218702778_init()
{
	static char *pe[] = {(void *)Always_80_0,(void *)Always_116_1,(void *)Always_153_2,(void *)Cont_162_3,(void *)Cont_163_4,(void *)Cont_164_5,(void *)Cont_165_6,(void *)Cont_166_7};
	xsi_register_didat("work_m_00000000003245667019_3218702778", "isim/PruebasMaquinaEstados_isim_beh.exe.sim/work/m_00000000003245667019_3218702778.didat");
	xsi_register_executes(pe);
}
