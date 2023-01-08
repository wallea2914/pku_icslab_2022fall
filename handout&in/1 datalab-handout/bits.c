/*
 * CS:APP Data Lab
 *
 * <Please put your name and userid here>
 *
 * bits.c - Source file with your solutions to the Lab.
 *          This is the file you will hand in to your instructor.
 *
 * WARNING: Do not include the <stdio.h> header; it confuses the dlc
 * compiler. You can still use printf for debugging without including
 * <stdio.h>, although you might get a compiler warning. In general,
 * it's not good practice to ignore compiler warnings, but in this
 * case it's OK.
 */

#if 0
/*
 * Instructions to Students:
 *
 * STEP 1: Read the following instructions carefully.
 */

You will provide your solution to the Data Lab by
editing the collection of functions in this source file.

INTEGER CODING RULES:
 
  Replace the "return" statement in each function with one
  or more lines of C code that implements the function. Your code 
  must conform to the following style:
 
  int Funct(arg1, arg2, ...) {
      /* brief description of how your implementation works */
      int var1 = Expr1;
      ...
      int varM = ExprM;

      varJ = ExprJ;
      ...
      varN = ExprN;
      return ExprR;
  }

  Each "Expr" is an expression using ONLY the following:
  1. Integer constants 0 through 255 (0xFF), inclusive. You are
      not allowed to use big constants such as 0xffffffff.
  2. Function arguments and local variables (no global variables).
  3. Unary integer operations ! ~
  4. Binary integer operations & ^ | + << >>
    
  Some of the problems restrict the set of allowed operators even further.
  Each "Expr" may consist of multiple operators. You are not restricted to
  one operator per line.

  You are expressly forbidden to:
  1. Use any control constructs such as if, do, while, for, switch, etc.
  2. Define or use any macros.
  3. Define any additional functions in this file.
  4. Call any functions.
  5. Use any other operations, such as &&, ||, -, or ?:
  6. Use any form of casting.
  7. Use any data type other than int.  This implies that you
     cannot use arrays, structs, or unions.

 
  You may assume that your machine:
  1. Uses 2s complement, 32-bit representations of integers.
  2. Performs right shifts arithmetically.
  3. Has unpredictable behavior when shifting an integer by more
     than the word size.

EXAMPLES OF ACCEPTABLE CODING STYLE:
  /*
   * pow2plus1 - returns 2^x + 1, where 0 <= x <= 31
   */
  int pow2plus1(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     return (1 << x) + 1;
  }

  /*
   * pow2plus4 - returns 2^x + 4, where 0 <= x <= 31
   */
  int pow2plus4(int x) {
     /* exploit ability of shifts to compute powers of 2 */
     int result = (1 << x);
     result += 4;
     return result;
  }

FLOATING POINT CODING RULES

For the problems that require you to implent floating-point operations,
the coding rules are less strict.  You are allowed to use looping and
conditional control.  You are allowed to use both ints and unsigneds.
You can use arbitrary integer and unsigned constants.

You are expressly forbidden to:
  1. Define or use any macros.
  2. Define any additional functions in this file.
  3. Call any functions.
  4. Use any form of casting.
  5. Use any data type other than int or unsigned.  This means that you
     cannot use arrays, structs, or unions.
  6. Use any floating point data types, operations, or constants.


NOTES:
  1. Use the dlc (data lab checker) compiler (described in the handout) to 
     check the legality of your solutions.
  2. Each function has a maximum number of operators (! ~ & ^ | + << >>)
     that you are allowed to use for your implementation of the function. 
     The max operator count is checked by dlc. Note that '=' is not 
     counted; you may use as many of these as you want without penalty.
  3. Use the btest test harness to check your functions for correctness.
  4. Use the BDD checker to formally verify your functions
  5. The maximum number of ops for each function is given in the
     header comment for each function. If there are any inconsistencies 
     between the maximum ops in the writeup and in this file, consider
     this file the authoritative source.

/*
 * STEP 2: Modify the following functions according the coding rules.
 * 
 *   IMPORTANT. TO AVOID GRADING SURPRISES:
 *   1. Use the dlc compiler to check that your solutions conform
 *      to the coding rules.
 *   2. Use the BDD checker to formally verify that your solutions produce 
 *      the correct answers.
 */

#endif
/* Copyright (C) 1991-2022 Free Software Foundation, Inc.
   This file is part of the GNU C Library.

   The GNU C Library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2.1 of the License, or (at your option) any later version.

   The GNU C Library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with the GNU C Library; if not, see
   <https://www.gnu.org/licenses/>.  */
/* This header is separate from features.h so that the compiler can
   include it implicitly at the start of every compilation.  It must
   not itself include <features.h> or any other header that includes
   <features.h> because the implicit include comes before any feature
   test macros that may be defined in a source file before it first
   explicitly includes a system header.  GCC knows the name of this
   header in order to preinclude it.  */
/* glibc's intent is to support the IEC 559 math functionality, real
   and complex.  If the GCC (4.9 and later) predefined macros
   specifying compiler intent are available, use them to determine
   whether the overall intent is to support these features; otherwise,
   presume an older compiler has intent to support these features and
   define these macros by default.  */
/* wchar_t uses Unicode 10.0.0.  Version 10.0 of the Unicode Standard is
   synchronized with ISO/IEC 10646:2017, fifth edition, plus
   the following additions from Amendment 1 to the fifth edition:
   - 56 emoji characters
   - 285 hentaigana
   - 3 additional Zanabazar Square characters */
/*
 * bitAnd - x&y using only ~ and |
 *   Example: bitAnd(6, 5) = 4
 *   Legal ops: ~ |
 *   Max ops: 8
 *   Rating: 1
 */
int bitAnd(int x, int y)
{
  return ~(~x | ~y);
}
/*
 * bitConditional - x ? y : z for each bit respectively
 *   Example: bitConditional(0b00110011, 0b01010101, 0b00001111) = 0b00011101
 *   Legal ops: & | ^ ~
 *   Max ops: 8
 *   Rating: 1
 */
int bitConditional(int x, int y, int z)
{
  return (x & y) | (~x & z);
}
/*
 * byteSwap - swaps the nth byte and the mth byte
 *  Examples: byteSwap(0x12345678, 1, 3) = 0x56341278
 *            byteSwap(0xDEADBEEF, 0, 2) = 0xDEEFBEAD
 *  You may assume that 0 <= n <= 3, 0 <= m <= 3
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 2
 */
int byteSwap(int x, int n, int m)
{
  int bitn = n << 3;
  int bitm = m << 3;
  return ((x & (~(0xff << bitm))) & (~(0xff << bitn))) | (((x >> bitm) << bitn) & (0xff << bitn)) | (((x >> bitn) << bitm) & (0xff << bitm));
}
/*
 * logicalShift - shift x to the right by n, using a logical shift
 *   Can assume that 0 <= n <= 31
 *   Examples: logicalShift(0x87654321,4) = 0x08765432
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int logicalShift(int x, int n)
{ 
  int flag = !n + ~1 + 1;
  return (~flag & x) | (flag & ((x >> n) & ~(~0 << (32 + ~n + 1))));
  // 0xffffffff << (32 - n)再取反
  //注意讨论n为0的情况！！！n为0，就会移32位，错误的
  //若n为0，flag就为全0；非0，则为全1
}
/*
 * cleanConsecutive1 - change any consecutive 1 to zeros in the binary form of x.
 *   Consecutive 1 means a set of 1 that contains more than one 1.
 *   Examples cleanConsecutive1(0x10) = 0x10
 *            cleanConsecutive1(0xF0) = 0x0
 *            cleanConsecutive1(0xFFFF0001) = 0x1
 *            cleanConsecutive1(0x4F4F4F4F) = 0x40404040
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 25
 *   Rating: 4
 */
int cleanConsecutive1(int x)
{
  int logicshift = (x >> 1) & ~(~0 << (32 + ~1 + 1));
  return x ^ (((x & logicshift) | (x & (x << 1))));
  //容易将单独的1清0，再异或得到单独的1
  //这个方法需要逻辑右移,直接用的上面的代码
}
/*
 * countTrailingZero - return the number of consecutive 0 from the lowest bit of
 *   the binary form of x.
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   YOU MAY USE BIG CONST IN THIS PROBLEM, LIKE 0xFFFF0000
 *   Examples countTrailingZero(0x0) = 32, countTrailingZero(0x1) = 0,
 *            countTrailingZero(0xFFFF0000) = 16,
 *            countTrailingZero(0xFFFFFFF0) = 8,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 40
 *   Rating: 4
 */
int countTrailingZero(int x)
{
  int flag = !x + ~1 + 1;//判断非0否
  int cnt = 0;
  int tmp = 0;

  int judge = !(x & 0x0000ffff);
  tmp = (judge << 4);
  cnt = cnt + tmp;
  x = x >> tmp;

  judge = !(x & 0x000000ff);
  tmp = (judge << 3);
  cnt = cnt + tmp;
  x = x >> tmp;

  judge = !(x & 0x0000000f);
  tmp = (judge << 2);
  cnt = cnt + tmp;
  x = x >> tmp;

  judge = !(x & 0x00000003);
  tmp = (judge << 1);
  cnt = cnt + tmp;
  x = x >> tmp;

  judge = !(x & 0x00000001);
  tmp = judge;
  cnt = cnt + tmp;
  x = x >> tmp;

  return (~flag & 32) | (flag & cnt);
}
/*
 * divpwr2 - Compute x/(2^n), for 0 <= n <= 30
 *  Round toward zero
 *   Examples: divpwr2(15,1) = 7, divpwr2(-33,4) = -2
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int divpwr2(int x, int n)
{
  int xx = x >> 31;
  return (xx & ((x + (1 << n) + ~0) >> n)) | (~xx & (x >> n));
  //实现对正负的讨论
}
/*
 * oneMoreThan - return 1 if y is one more than x, and 0 otherwise
 *   Examples oneMoreThan(0, 1) = 1, oneMoreThan(-1, 1) = 0
 *   Legal ops: ~ & ! ^ | + << >>
 *   Max ops: 15
 *   Rating: 2
 */
int oneMoreThan(int x, int y)
{
  int flag = !(x + (1 << 31) + 1);
  //注意考虑溢出！！！！！！若x为TMax，必不可能
  int tmp = x + 1;
  int res = !(tmp ^ y); //用!转化成0或者1
  return ((flag & 0) | (~flag & (res & 1)) | (~res & 0));
}
/*
 * satMul3 - multiplies by 3, saturating to Tmin or Tmax if overflow
 *  Examples: satMul3(0x10000000) = 0x30000000
 *            satMul3(0x30000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0x70000000) = 0x7FFFFFFF (Saturate to TMax)
 *            satMul3(0xD0000000) = 0x80000000 (Saturate to TMin)
 *            satMul3(0xA0000000) = 0x80000000 (Saturate to TMin)
 *  Legal ops: ! ~ & ^ | + << >>
 *  Max ops: 25
 *  Rating: 3
 */
int satMul3(int x)
{
  int x2 = x << 1;
  int x3 = x2 + x;
  int x_sign = x >> 31;
  int x2_sign = x2 >> 31;
  int x3_sign = x3 >> 31;
  //两倍即溢出 溢出全1 没溢出全0
  int overflow2 = x_sign ^ x2_sign;
  //三倍才溢出
  int overflow3 = x_sign ^ x3_sign;
  // 2，3有一个溢出就溢出，res全1溢出
  int res = overflow2 | overflow3;

  int TMin = 0x80 << 24;
  int TMax = TMin ^ (~0);
  return (res & ((x_sign & TMin) | (~x_sign & TMax))) | (~res & x3);
}
/*
 * subOK - Determine if can compute x-y without overflow
 *   Example: subOK(0x80000000,0x80000000) = 1,
 *            subOK(0x80000000,0x70000000) = 0,
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 3
 */
int subOK(int x, int y)
{
  int yy = ~y + 1;
  int sum = x + yy; //转化为加法
  int x_sign = x >> 31;
  int y_sign = y >> 31;
  int sum_sign = sum >> 31;

  //一正一负不可能溢出，正正负 or 负负正 才会溢出
  //先看x y符号是否一致,全1则相反，全0一致
  // ps：x、y同号不可能溢出，，，但不能说x、yy异号才不可能溢出，TMIN是例子
  int is_same_x_y = x_sign ^ y_sign;
  int is_same_x_sum = x_sign ^ sum_sign; // x、sum符号相反即溢出
  //可以合并写：溢出 当且仅当 符号位x、y异号且x、sum异号
  return (~is_same_x_y & 1) | (is_same_x_y & ((is_same_x_sum & 0) | (~is_same_x_sum & 1)));
}
/*
 * isLessOrEqual - if x <= y  then return 1, else return 0
 *   Example: isLessOrEqual(4,5) = 1.
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 24
 *   Rating: 3
 */
int isLessOrEqual(int x, int y)
{
  //符号位不同直接判断
  //符号位相同直接做减法，不会溢出
  int x_sign = (x >> 31) & 1;
  int y_sign = (y >> 31) & 1;
  int sub = y + ~x + 1;//用y-x不用讨论
  int subsign = (sub >> 31) & 1;
  int xor = x_sign ^ y_sign;

  return (xor & x_sign) | ((!xor) & (!subsign));
}
/*
 * trueThreeFourths - multiplies by 3/4 rounding toward 0,
 *   avoiding errors due to overflow
 *   Examples: trueThreeFourths(11) = 8
 *             trueThreeFourths(-9) = -6
 *             trueThreeFourths(1073741824) = 805306368 (no overflow)
 *   Legal ops: ! ~ & ^ | + << >>
 *   Max ops: 20
 *   Rating: 4
 */
int trueThreeFourths(int x)
{
  int x_sign = x >> 31;
  int end2 = x & 3; //取出后两位
  int tmp = x >> 2;
  int ttmp = (tmp << 2) + (~tmp + 1); //除以4再乘3

  //向0取整，如果负数就表达为 x(1-1/4) ,如果正数就表达为 x = x>>2<<2 + z
  return (x_sign & (x + ~tmp + 1)) | (~x_sign & (ttmp + (((end2 << 2) + ~end2 + 1) >> 2)));
  //移位运算优先级比较特殊！！！括号
}
/*
 * float_twice - Return bit-level equivalent of expression 2*f for
 *   floating point argument f.
 *   Both the argument and result are passed as unsigned int's, but
 *   they are to be interpreted as the bit-level representation of
 *   single-precision floating point values.
 *   When argument is NaN, return argument
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_twice(unsigned uf)
{
  unsigned s = uf & 0x80000000;
  unsigned exp = uf & 0x7f800000;
  unsigned frac = uf & 0x007fffff;

  if (exp > 0 && exp < 0x7f800000) //规格化
  {
    // exp+1即可
    if (exp == 0x7f000000)
      frac = 0; //置无穷
    exp += 0x00800000;
  }
  else if (exp == 0) //非规格化
  {
    frac = frac << 1;
    //这里契合了两种情况
    // 1.若frac为0xxxxxxxx的形式，乘以2依然为非规格化值，因此直接左移
    // 2.若frac为1xxxxxxxx的形式，乘以2会变为规格化值，而最高位的1恰好移到了exp上，满足
  }
  else //特殊值
  {
    //不做处理，若为无穷，乘2依然无穷，若为nan，依然返回nan
  }
  return s | exp | frac;
}
/*
 * float_i2f - Return bit-level equivalent of expression (float) x
 *   Result is returned as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point values.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_i2f(int x)
{
  //非0 int型转化为float必定是个规格化值
  //下面只讨论规格化值
  unsigned exp,frac,end,ans;
  unsigned tmp = 1 << 31;
  unsigned s = 0;
  unsigned abs = x;
  int cnt = 0;
  if (x == 0)
    return 0;
  if (x < 0)
  {
    abs = -x;
    s = tmp;
  }
  //找首一
  cnt = 0;
  while((tmp & abs) == 0)
  {
    abs <<= 1;
    cnt++;
  }
  //得到x的首一左边有cnt个0 以及 最高位为1的x
  
  exp = 127 + (31 - cnt);//31-cnt 为首一右边的位数
  end = 0xff & abs;//取移动后的x的低八位
  frac = (~(tmp >> 8)) & (abs >> 8);//截取23位，且把前9位置0
  ans = s | (exp << 23) | frac;
  if(end > 0x80)
    ans += 1;
  if(end == 0x80 && (frac & 1))//frac&1 是向偶舍入，若结尾为0，就不加1，若结尾为1，就加1
    ans += 1;
  return ans;
}
/*
 * float_f2i - Return bit-level equivalent of expression (int) f
 *   for floating point argument f.
 *   Argument is passed as unsigned int, but
 *   it is to be interpreted as the bit-level representation of a
 *   single-precision floating point value.
 *   Anything out of range (including NaN and infinity) should return
 *   0x80000000u.
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. also if, while
 *   Max ops: 30
 *   Rating: 4
 */
int float_f2i(unsigned uf)
{
  unsigned s = uf & 0x80000000;
  unsigned exp = uf & 0x7f800000;
  unsigned frac = uf & 0x007fffff;
  int e = 0;

  if (exp > 0 && exp < 0x7f800000) //规格化
  {
    frac = frac | 0x00800000;
    e = (exp >> 23) - 127;
    if(e >= 31)
      return 0x80000000u;
    else if(e < 0)
      return 0;
    else if(e > 23)
      frac = frac << (e - 23);
    else
      frac = frac >> (23 - e);
    if(s)
      return ~frac + 1;
    else
      return frac;

  }
  else if (exp == 0) //非规格化
  {
    return 0;
  }
  else //特殊值
  {
    return 0x80000000u;
  }
}
/*
 * float_pwr2 - Return bit-level equivalent of the expression 2.0^x
 *   (2.0 raised to the power x) for any 32-bit integer x.
 *
 *   The unsigned value that is returned should have the identical bit
 *   representation as the single-precision floating-point number 2.0^x.
 *   If the result is too small to be represented as a denorm, return
 *   0. If too large, return +INF.
 *
 *   Legal ops: Any integer/unsigned operations incl. ||, &&. Also if, while
 *   Max ops: 30
 *   Rating: 4
 */
unsigned float_pwr2(int x)
{
  int frac = 0;
  if(x < -149)
    return 0;
  if(x > 127)
    return 0xff << 23;//正无穷

  if(x < -126)//非规格化数
  {
    x = -x - 126;
    frac = 1 << (23 - x);
    return frac;
  }
  else//规格化数
  
  {
    x += 127;
    x <<= 23;
    return x;
  }
}
