#import "../utils.typ":question,comment,subst,ref
#import "../math.typ":ee
#question(
	tag:"cot^2xtan((1+xtanx)/tanx)",
	category:blue,
	question:$integral cot^2 x tan((1+x tan x)/(tan x)) dif x$,
	answer:$
		integral cot^2 x tan((1+x tan x)/(tan x)) dif x=&integral(csc^2 x-1)tan(cot x+x) dif x\
		=&-integral tan(cot x+x) dif(cot x+x)\
		=&log abs(cos(x+cot x))+C
	$,
)
#comment[
	这题的难点在于$tan (1+x tan x)/(tan x)$。要处理这个复合函数，一方面要尽量想办法将其化简，另一方面应当尽可能从其它部分挖掘出能凑微分成$u=(1+x tan x)/(tan x)$的部分。
]
