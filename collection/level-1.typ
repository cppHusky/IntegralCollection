#import "../utils.typ":question,comment,subst,ref
#import "../math.typ":ee
#question(
	tag:"(x+1)^3",
	category:red,
	question:$integral (x+1)^3 dif x$,
	answer:$
		integral (x+1)^3 dif x=&integral (x^3+3x^2+3x+1) dif x\
		=&integral x^3 dif x+3 integral x^2 dif x+3 integral x dif x+integral dif x\
		=&x^4/4+x^3+3/2 x^2+x+C
	$,
)
#comment[
	将$(x^3+3x^2+3x+1)$这样的多项式分成若干个单项式加和的形式，是很自然的思路。
]
#question(
	tag:"(x+1)^3~",
	category:red,
	question:$integral (x+1)^3 dif x$,
	answer:[令#subst[$u=x+1$]，则#subst[$x=u-1$]，所以$
		integral (x+1)^3 dif x=integral u^3 dif (u-1)=integral u^3 dif u=u^4/4+C=(x+1)^4/4+C
	$],
)
#comment[
	读者倘若对#ref("(x+1)^3~")的结果进行二项式展开，就会发现$x^4/4+x^3+3/2x^2+x+1/4+C$和#ref("(x+1)^3")的结果是不同的，它们之间差了一个$1/4$项。#parbreak()
	然而，这两个结果是等价的。因为不定积分的结果都自带任意常数$+C$，所以计算不定积分得到的其实是一组原函数。因而，彼此相差固定常数的结果可以都是正确答案。#parbreak()
	再举个例子，$log x+C$和$log x/2+C$也是等价的，因为$log x/2=log x-log 2$。
]
#question(
	tag:"csc^2(x+1)/2",
	category:red,
	question:$integral csc^2(x+1)/2 dif x$,
	answer:$
		integral csc^2(x+1)/2 dif x=&integral csc^2(x+1)/2 dif (x+1)\
		=&2 integral csc^2(x+1)/2 dif (x+1)/2\
		=&2 integral csc^2 u dif u,subst(u=(x+1)/2)\
		=&-2 cot u+C\
		=&-2 cot (x+1)/2+C
	$,
)
#question(
	tag:"xe^(-x^2)",
	category:red,
	question:$integral x ee^(-x^2) dif x$,
	answer:$
		integral x ee^(-x^2) dif x=1/2 integral ee^(-x^2) dif x^2=-1/2 integral ee^(-x^2) dif(-x^2)=-1/2 ee^(-x^2)+C
	$,
)
#comment[
	这两道题目是典型的凑微分问题。凑微分的方法一般会用在包含复合函数的积分问题中，比如#ref("xe^(-x^2)")当中的$ee^(-x^2)$就是一个典型的复合函数。换元的好处是把无关紧要的被复合部分抽象为一个简单的记号（$u, v$或者别的），从而减少不必要的干扰，让我们更好地理解整个被积函数的结构。#parbreak()
	凑微分的思路也通常由复合函数的部分得来。在#ref("csc^2(x+1)/2")中被复合的部分是$(x+1)/2$，那么应当在其它地方都凑出$(x+1)/2$的结构，这样才能把$(x+1)/2$当作整体去参与积分运算。#parbreak()
	同理，#ref("xe^(-x^2)")当中被复合的部分是$-x^2$，那么应当在其它地方都凑出$-x^2$的结构，这样才能把$-x^2$当作整体去参与积分运算。于是凑微分的思路就是$x dif x=1/2 dif x^2=-1/2 dif(-x^2)$。
]
#question(
	tag:"(1+cosx)/(x+sinx)",
	category:red,
	question:$integral (1+cos x)/(x+sin x)dif x$,
	answer:$
		integral (1+cos x)/(x+sin x)dif x
		=integral (dif(x+sin x))/(x+sin x)=log abs(x+sin x)+C
	$,
)
#comment[
	本题要比前面的情况更复杂一些。在这里，我们需要将分子当作一个整体去凑微分，而不是如同#ref("(x+1)^3")那样把分子分成两项。#parbreak()
	在更复杂的问题中，整体凑微分方法也通常与各色恒等变换相互结合（比如#ref("cot^2xtan((1+xtanx)/tanx)")）。
]
