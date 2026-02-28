#import "../utils.typ":question,comment,subst,ref
#import "../math.typ":ee,ii
#question(
	tag:"sin^5x",
	category:blue,
	question:$integral sin^5x dif x$,
	answer:$
		integral sin^5x dif x=&integral (1/(2ii)ee^(ii x)-1/(2ii)ee^(-ii x))^5 dif x\
		=&1/(32ii)integral[(ee^(5ii x)-ee^(-5ii x))-5(ee^(3ii x)-ee^(-3ii x))+10(ee^(ii x)-ee^(-ii x))]dif x\
		=&1/16integral sin 5x dif x-5/16integral sin 3x dif x+5/8integral sin x dif x\
		=&-1/80 cos 5x+5/48 cos 3x-5/8 cos x+C
	$,
)
