#import "/utils.typ":lesson,chara,noindent,ruby
#import "/math.typ":*
#import "@preview/cetz:0.5.2"
#let red(body)=text(fill:color.red,body)
#let blue(body)=text(fill:color.blue,body)
#lesson(
	(chara.严佩,[
		咳咳，我们上课了，保持安静。#parbreak()
		首先，我要对上节课突然离开教室的同学提出批评——他今天还没有来，如果有同学认识他，麻烦转达给他。此同学无视课堂纪律，当众大摇大摆走出教室也就算了；还目中无人，我叫他都全然不理会，甚至出了教室就开始跑，我那天从下午追到晚上，追了42公里都没追上。
	]),
	(chara.牛弘,[
		（用口罩遮住大半张脸，在口罩的掩护下偷偷地笑）
		//这事是牛弘安排的
	]),
	(chara.严佩,[
		希望那位同学好自为之。不说废话了，我们进入正题。
	]),
)
==== 分项积分法
#lesson(
	(chara.严佩,[
		上节课，杨教授给大家讲解了什么是有理函数，以及如何进行有理函数的裂项。今天我们就会用到这些知识。我在这里先把本节课会用到的积分公式写一下。（捡起一节粉笔）$
			&integral x^n dif x=1/(n+1)x^(n+1)+C space(n!=-1)\
			&integral 1/x dif x=log x+C\
			&integral 1/(x^2+1)dif x=arctan x+C.
		$#noindent 我可以很明确地告诉大家，在一切有理函数积分的问题中，我们需要用到的公式都只有这三个。我以这道题为例——$
			integral (x+1)dif x.
		$#noindent 这列第三排的男生，你来回答一下。#parbreak()
	]),
	(chara.窦法,[
		（起身）嗯，我可以把它拆成两个积分，也就是$
			integral (x+1)dif x=integral x dif x+integral dif x=x^2/2+x+C.
		$
	]),
	(chara.严佩,[
		正确。你叫什么名字？
	]),
	(chara.窦法,[
		我叫窦法，今天也给严老师带来一道题目。
	]),
	(chara.严佩,[
		你还给我出上题目了？也行，你说吧。
	]),
	(chara.窦法,[$
			integral (x+1)^18dif x.
	$]),
	(chara.严佩,[
		你这个题……（点头）还不错。我先给你记下，待会可以用，你先坐吧。（抄到黑板上）#parbreak()
		在此之前呢，我们先出点比较简单的题目——$
			integral (x+1)/x dif x
		$#noindent 这列倒数第二排的女生，你来回答一下。
	]),
	(chara.隋欣,[
		（完全没听到，仍在自顾自摸鱼）
	]),
	(chara.严佩,[
		我说（拿起一枝笔，在讲桌上用力戳了几下），倒数第二排那个穿lululemon红色夹克戴Airpods Max正在边看iPhone Pro Max边笑的女生，你听见没？
		//lululemon指License to Train女士运动纹理夹克-蔓越莓魅力红/浅象牙白，这是为数不多在衣服上印有logo的款式
		//iPhone Pro Max的11到14代背面都一样，无法进一步判断型号
	]),
	(chara.隋欣,[
		（被旁边的同学轻拍两下，慌忙摘下耳机起身）啊，什……什么？
	]),
	(chara.严佩,[
		你来回答一下这道题（指黑板上的题目）。
	]),
	(chara.隋欣,[
		我想想……可以把$(x+1)/x$变成$1+1/x$，然后分成两个积分来做……
	]),
	(chara.严佩,[
		……上课不要玩手机，（摆手）坐吧。$
			integral (x+1)/x dif x=integral (1+1/x)dif x=integral dif x+integral 1/x dif x=x+log x+C.
		$#noindent 我们来回看这两道题，它们有一个共同的思路，就是：原本的积分不在我们的三个基本积分公式之中；但是如果把它拆成多个积分，我们就可以分别解决它们。这种分而治之的思路普遍存在于各类积分问题中，我们把它叫做分项积分法。#parbreak()
		现在我再给大家出道题：$
			integral (3x-1)^2 dif x.
		$#noindent 这列第四排的男生，你来回答一下。
	]),
	(chara.吕顺,[
		（起身）可以把完全平方公式展开，变成$
			integral (9x^2-6x+1)dif x,
		$#noindent 然后再分项，化为$
			&9integral x^2dif x-6integral x dif x+integral dif x\
			=&3x^3-3x^2+x+C.
		$
	]),
	(chara.严佩,[
		正确。你叫什么名字。
	]),
	(chara.吕顺,[
		我叫吕顺。
	]),
	(chara.严佩,[
		好，坐吧。此类问题的套路比较简单，大家肯定都会做了。未来我们还会讲到分项积分法更复杂、更有技巧性的运用，到时候再说。
	]),
)
==== 换元积分法
#lesson(
	(chara.严佩,[
		现在我们再回到窦法同学的这道题：$
			integral (x+1)^18dif x.
		$#noindent 这列第二排的男生，你来回答一下。
	]),
	(chara.肖虑,[$
			(x+1)^18=1+18x+153x^2+816x^3+3060x^4+dots.c dots.c
	$]),
	(chara.严佩,[
		（打住）停，停，停。（苦笑）你算的真挺快，你叫什么名字？
	]),
	(chara.肖虑,[
		肖虑。
	]),
	(chara.严佩,[
		肖虑同学，你的做法当然是正确的，但是不够好——正常人解题时都做不到像你这样，在这么短时间内就把二项式展开全算出来。#parbreak()
		这道题其实有一个更取巧的方法，你能想到吗？或者还有其他人能想到更巧妙的思路吗？（看到有人举手）来，举手那位同学。
	]),
	(chara.朱异,[
		（起身）我有个想法，如果把$x+1$用$u$来代换，然后……
	]),
	(chara.严佩,[
		对啦！我要的就是这个。你叫什么名字？
	]),
	(chara.朱异,[
		我叫朱异。
	]),
	(chara.严佩,[
		你们俩都坐吧。刚才朱异同学提到了这个$red(u=x+1)$的代换，这是大家在高数课上都学过的换元积分法。对这个式子两边取微分，得到$blue(dif u=dif x)$，现在我们把原来那个积分中出现的$x$都用$u$来替代：$
			integral red((x+1))^18 blue(dif x)=integral red(u)^18blue(dif u).
		$#noindent 接下来就可以直接套那三个基本积分公式中的第一个，算出$
			integral u^18 dif u=1/19red(u)^19+C=1/19red((x+1))^19+C.
		$#parbreak()
		刚才这道由窦法同学提出的问题非常好。$integral (x+1)^18dif x$看起来是一个很难解决的积分问题，但是通过换元，可以把它变成一个非常容易解决的$integral u^18dif u$。这也是我们在整个不定积分学习过程中贯穿始终的原则：*把困难的积分变换成简单的积分*。#parbreak()
		接下来我再给大家出一题：$
			integral 1/(2x^2+2x+1)dif x.
		$#noindent 这列第四排的女生，你来回答一下。
	]),
	(chara.李清,[
		（起身）这个……如果分母是$x^2+2x+1$的话，可以配完全平方公式变成$(x+1)^2$，但分母上是$2x^2+2x+1$，配方变成$x^2+(x+1)^2$似乎也没有什么意义……
	]),
	(chara.严佩,[
		（指着三个基本积分公式）回到这节课一上来就讲过的三个公式，想想？
	]),
	(chara.李清,[
		噢，我懂了。可以先对分子分母同乘$2$，变成$integral 2/(4x^2+4x+2)dif x$，然后用完全平方公式，变成$integral 2/((2x+1)^2+1)dif x$，这样只要换元$u=2x+1$就可以做了，结果应该是$arctan(2x+1)$。
	]),
	(chara.严佩,[
		非常好。你叫什么名字？
	]),
	(chara.李清,[
		我叫李清。
	]),
	(chara.严佩,[
		好，坐吧。刚才李清同学说的计算过程我给大家写一下——#parbreak()
		这道题拿到之后，首要思路就是朝着三个基本积分公式的方向去靠。显然第一个和第二个都靠不上，那就去想第三个。它的分母是$1/(u^2+1)$的形式，所以我们就在分母上配方。#parbreak()
		这个$2x^2+2x+1$配方起来是$(sqrt(2)x+1/sqrt(2))^2+1/2$，写起来、算起来都麻烦，但是$4x^2+4x+2=(2x+1)^2+1$很简洁，那我们就这么写。#parbreak()
		现在来看这个式子$integral 2/((2x+1)^2+1)dif x$，很显然只要用换元$red(u=2x+1)$就能把被积函数化成基本积分公式中的结构。而我们对这个换元式两边取微分，算出$blue(dif u=2dif x)$，然后就可以开始换元了：$
			integral 1/(2x^2+2x+1)dif x=integral 2/(red((2x+1))^2+1)blue(dif x)=integral 1/(red(u)^2+1)blue(dif u)=&arctan red(u)+C\
			=&arctan red((2x+1))+C.
		$
	]),
)
==== 扩展基本积分公式
#lesson(
	(chara.严佩,[
		有了换元积分法之后，我们再回看这三个基本积分公式，就会觉得仅靠这三个公式，加上各种换元，就足够应对很多积分问题了。#parbreak()
		大家上高数的时候应该或多或少都背过积分表，我来问问——有没有把积分表全背下来的人？
	]),
	[
		一个男生小心翼翼地举起了手。
	],
	(chara.严佩,[
		诶，还真有——你叫什么名字？
	]),
	(chara.赵超,[
		（起身）我叫赵超。
	]),
	(chara.严佩,[
		我带了九年学生，敢说把积分表全背下来的，我一只手都数得过来。（拿起粉笔）那我从高数书上随便挑一个，你来答一下：$
			integral (dif x)/x(a x^2+b)space(a,b!=0).
		$
	]),
	(chara.赵超,[
		（挠头）这个这个，我想一想啊……好像是$
			1/(2b)log x^2/abs(a x^2+b)+C.
		$
	]),
	(chara.严佩,[
		答对了，坐吧。现在我得用两只手数了。#parbreak()
		其实，掌握了目前为止的知识，已经够我们推导出基本积分表中的一部分内容，包括这个。那么现在，我们就从三个基本积分公式开始，先推导几个简单的含参不定积分。首先是$
			integral (dif x)/(a x+b)space(a!=0).
		$#noindent 这列第二排的男生，你来回答一下。
	]),
	(chara.魏荷,[
		（起身）可以令$red(u=a x+b)$，这样$blue(dif u=a dif x)$，把这个积分变成$
			integral blue(dif x)/red(a x+b)=1/a integral blue(dif u)/red(u)=1/a log abs(red(u))+C=1/a log abs(red(a x+b))+C.
		$
	]),
	(chara.严佩,[
		正确，你叫什么名字？
	]),
	(chara.魏荷,[
		我叫魏荷。
	]),
	(chara.严佩,[
		坐吧。下一题：$
			integral (dif x)/(x^2+a^2)space(a>0).
		$#noindent 这第五排的女生，你来回答一下。
	]),
	(chara.史姝,[
		（起身）应该可以令$red(u=x/a)$，然后$blue(dif u=(dif x)/a)$，把这个积分变成$
			integral blue(dif x)/(red(x)^2+a^2)=a integral blue(dif u)/(red(a)^2red(u)^2+a^2)=1/a integral blue(dif u)/(red(u)^2+1)=&1/a arctan red(u)+C\
			=&1/a arctan red(x)/a+C.
		$
	]),
	(chara.严佩,[
		正确，你叫什么名字？
	]),
	(chara.史姝,[
		我叫史姝。
	]),
	(chara.严佩,[
		好，刚才你用了一种换元方法，写成$red(u=x/a)$；现在我给你变变形，写成$red(x=a u)$，你觉得它们的区别是什么？
	]),
	(chara.史姝,[
		这……没有区别啊。
	]),
	(chara.严佩,[
		你们在高数课上的时候肯定讲过，我给你个提示吧：$red(u=x/a)$这种换元的形式是$u=f(x)$，而$red(x=a u)$这种换元的形式是$x=g(u)$……
	]),
	(chara.史姝,[
		噢，我知道了。前一种叫第一类换元法，后一种叫第二类换元法。
	]),
	(chara.严佩,[
		正确，坐吧。高数课对于不定积分的讲解一般都局限于把换元法分成一类和二类，要大家根据具体问题来选择。但在我们的课堂上，没有这个分别。同样的一个换元，你正着写成$u=x/a$就是第一类换元，反着写成$x=a u$就是第二类换元，本质完全一样，都叫“换元”。#parbreak()
		言归正传，再来看下一道题：$
			integral x/(a x+b)dif x space(a!=0).
		$#noindent 倒数第三排的男生，你来回答一下。
	]),
	(chara.王霁,[
		（起身）这个……
	]),
	(chara.严佩,[
		上节课杨教授讲过了分式的分类，你回忆一下。
	]),
	(chara.王霁,[
		呃……我忘了……
	]),
	(chara.严佩,[
		你回去好好复习。后面那个男生你来回答一下，分式分为哪两类？
	]),
	(chara.杜颛,[
		（起身）好像叫第一类分式和第二类分式……
	]),
	(chara.严佩,[
		（恼火）你上节课到底来没来？还瞎编起来了。后面那个男生你来回答。
	]),
	(chara.牛弘,[
		我——我吗？
	]),
	(chara.严佩,[
		哦，是你啊，戴着口罩我差点没认出来。算了，不提问了，我直接讲，你们都坐吧。#parbreak()
		这个被积函数是一个假分式，目前我们的积分公式中还没有这种形式的积分，但有一个和它形式非常接近的积分，就是$
			integral (dif x)/(a x+b)=1/a log abs(a x+b)+C.
		$#noindent 它们二者的关键区别就在于，一个是分子为$x$的假分式，一个是分子为$1$的真分式。#parbreak()
		上节课杨教授给你们讲过了如何用多项式的带余除法把假分式化成真分式，现在我给大家一分钟的时间自己做一下把$x/(a x+b)$化成真分式，我在黑板上写过程。
		#figure(
			cetz.canvas(x:9mm,y:6mm,{
				import cetz.draw:*
				line((-.7,.5),(1,.5))
				bezier-through((-.7,.5),(-.7,0),(-.9,-.5))
				let content=content.with(anchor:"east")
				content((0,0),$x$)
				content((-1,0),$a x+b$)
				content((1,1),$inline(++1/a)$)
				content((0,-1),$x$)
				content((1,-1),$inline(++b/a)$)
				line((-.7,-1.5),(1,-1.5))
				content((1,-2),$inline(--b/a)$)
			})
		)
		所以就有$
			x/(a x+b)=1/a-b/(a(a x+b)).
		$#noindent 接下来就可以整理被积函数，再套用目前已有的积分公式，这题就能解出来了：$
			integral x/(a x+b) dif x=1/a integral dif x-b/a integral (dif x)/(a x+b)=x/a-b/a^2log abs(a x+b)+C.
		$
	]),
)
