#import "@preview/itemize:0.2.0"
#import "../math.typ":*
== 基本积分表<基本积分表>
#let mark(
	mark-array:(),
	mark-color:black,
	body,
)={
	let to-be-marked=it=>{
		if mark-array.contains(it.n) {
			mark-color
		} else {
			black
		}
	}
	show:itemize.default-enum-list.with(
		item-spacing:1.5em,
		fill:to-be-marked,
		body-format:(
			style:(
				fill:to-be-marked,
			)
		)
	)
	body
}
#show:mark.with(
	mark-array:(1,2,3,5,6,8,9,11,14,15,17,18,),
	mark-color:red,
)
以下基本积分是读者应知应会的。其中标红色者为重中之重，必背。
+ $integral x^a dif x=1/(a+1)x^(a+1)+C space (a!=1)$
+ $integral 1/x dif x=log abs(x)+C$
+ $integral ee^x dif x=ee^x+C$
+ $integral a^x dif x=1/(log a) a^x+C$
+ $integral sin x dif x=-cos x+C$
+ $integral cos x dif x=sin x+C$
+ $integral csc^2x dif x=-cot x+C$
+ $integral sec^2x dif x=tan x+C$
+ $integral tan x sec x dif x=sec x+C$
+ $integral cot x csc x dif x=-csc x+C$
+ $integral tan x dif x=-log abs(cos x)+C$
+ $integral cot x dif x=log abs(sin x)+C$
+ $integral csc x dif x=log abs(tan x/2)+C=-artanh cos x+C$
+ $integral sec x dif x=log abs(tan(x/2+pi/4))+C=log abs(sec x+tan x)+C=artanh sin x+C$
+ $integral 1/(1+x^2)dif x=arctan x+C=-arccot x+C_1$
+ $integral 1/(1-x^2)dif x=artanh x+C=1/2 log abs((1+x)/(1-x))+C$
+ $integral 1/sqrt(x^2+1)dif x=arsinh x+C=log(x+sqrt(x^2+1))+C$
+ $integral 1/sqrt(x^2-1)dif x=arcosh abs(x) sgn x+C=log abs(x+sqrt(x^2-1))+C$
== 常用恒等变换<常用恒等变换>
#show:mark.with(
	mark-array:(3,4,5,10,11,12,17,18,),
	mark-color:blue,
)
以下恒等变换常见于各类积分问题中，足以帮助读者解决绝大多数问题。对于标蓝色者，建议读者记忆；对于其它变换，也建议读者能够熟练推导。
+ $sqrt(x^2)=abs(x)=x sgn x$
+ $x=abs(x) sgn x$
+ $x^3+1=(x+1)(x^2-x+1)$
+ $x^3-1=(x-1)(x^2+x+1)$
+ $sin^2x+cos^2x=sec^2x-tan^2x=csc^2x-cot^2x=1$
+ $sin(a+b)=sin a cos b+cos a sin b$
+ $sin(a-b)=sin a cos b-cos a sin b$
+ $cos(a+b)=cos a cos b-sin a sin b$
+ $cos(a-b)=cos a cos b+sin a sin b$
+ $sin 2x=2sin x cos x=(2tan x)/(tan^2x+1)$
+ $cos 2x=cos^2x-sin^2x=1-2sin^2x=2cos^2x-1=(1-tan^2x)/(1+tan^2x)$
+ $a sin x+b cos x=sqrt(a^2+b^2)sin(x+arctan b/a) space (a>0)$
+ $1+sin x=(sin x/2+cos x/2)^2$
+ $1-sin x=(sin x/2-cos x/2)^2$
+ $1+cos x=2cos^2x/2$
+ $1-cos x=2sin^2x/2$
+ $sin^2x=(1-cos 2x)/2$
+ $cos^2x=(1+cos 2x)/2$
+ $sin a cos b=(sin(a+b)+sin(a-b))/2$
+ $cos a sin b=(sin(a+b)-sin(a-b))/2$
+ $cos a cos b=(cos(a+b)+cos(a-b))/2$
+ $sin a sin b=(cos(a+b)-cos(a-b))/2$
+ $sin a+sin b=2sin (a+b)/2 cos (a-b)/2$
+ $sin a-sin b=2cos (a+b)/2 sin (a-b)/2$
+ $cos a+cos b=2cos (a+b)/2 cos (a-b)/2$
+ $cos a-cos b=-2sin (a+b)/2 sin (a-b)/2$
+ $sin x cos x=((sin x+cos x)^2-1)/2=(1-(sin x+cos x)^2)/2$
+ $(a sin x+b cos x)^2+(b sin x-a cos x)^2=a^2+b^2$
== 通题通解<通题通解>
#show:mark
我们知道，有些形式的积分是必定有解的。在研究一个积分时，我们只需要把原积分化成诸如此的形式，知道它们必定有解足矣。但它们的原函数究竟是多少，我们可不想反复应用那些熟知又麻烦的通法了。#parbreak()
下面的几个积分是对基本积分表的扩充。你不必记忆，但应当掌握它们的解法。
+ 记$Y=a x^2+b x+c space(a!=0), Delta=b^2-4a c, x_1, x_2=(-b plus.minus sqrt(Delta))/(2a)$，则$
	integral (dif x)/Y=cases(
		2/sqrt(-Delta)arctan Y'/sqrt(-Delta)+C\,&Delta<0\,,
		-1/(a x+b)+C\,&Delta=0\,,
		1/(a(x_1-x_2))log abs((x-x_1)/(x-x_2))+C\,&Delta>0.
	)
$
+ 记$Y=a x^2+b x+c space(a!=0), Delta=b^2-4a c, x_1, x_2=(-b plus.minus sqrt(Delta))/(2a)$，则$
	integral (dif x)/sqrt(Y)=cases(
		1/sqrt(a)log abs(Y'+2sqrt(a Y))+C\,a>0\,,
		1/sqrt(-a)arcsin (-Y')/sqrt(Delta)+C\,a<0.
	)
$
+ $integral (dif x)/(a x^n+b)^((n+1)/n)=x/(b root(n,a x^n+b))+C space(n in NN_+)$
== 常见的非初等积分<常见的非初等积分>
以下积分的原函数是非初等函数。当它们单独存在时，我们不可能得到初等函数的结果。话虽如此，我们仍有可能通过应用分部积分法，抵消两个非初等积分并得到初等函数的结果。
+ $integral (sin x)/x dif x=op("Si")(x)+C$
+ $integral (cos x)/x dif x=op("Ci")(x)+C$
+ $integral (sinh x)/x dif x=op("Shi")(x)+C$
+ $integral (cosh x)/x dif x=op("Chi")(x)+C$
+ $integral (ee^x)/x dif x=op("Ei")(x)+C$
+ $integral (dif x)/(log x)=op("li")(x)+C$
+ $integral sin x^2 dif x=sqrt(pi/2)S(sqrt(2/pi)x)+C$
+ $integral cos x^2 dif x=sqrt(pi/2)C(sqrt(2/pi)x)+C_1$#text(fill:gray)[注#footnote[这里的$C$是菲涅耳积分函数，而$C_1$是任意常数。]]
+ $integral ee^x^2 dif x=sqrt(pi)/2op("erfi")(x)+C$
+ $integral_0^phi (dif theta)/sqrt(1-k^2sin^2theta)=F(sin phi;k)$
+ $integral_0_x (dif t)/sqrt((1-t^2)(1-k^2t^2))=F(x;k)$
+ $integral_0^phi sqrt(1-k^2sin^2theta)dif theta=E(phi;k)$
+ $integral_0^x sqrt(1-k^2t^2)/sqrt(1-t^2)dif t=E(x;k)$
+ $integral_0^phi t^(p-1)(1-t)^(q-1)dif t=B(x;p,q)$
