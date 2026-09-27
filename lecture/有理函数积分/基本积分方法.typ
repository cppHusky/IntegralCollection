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
		（打断）停，停，停。（苦笑）你算的真挺快，你叫什么名字？
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
		$#parbreak()
		再来一题：$
			integral x/(x^2+1)dif x.
		$#noindent 这列第五排的男生，你来回答一下。
	]),
	(chara.章拒,[
		（起身）我认为考虑到我们解决积分问题贯穿始终的的原则就是要把困难的积分变换成简单的积分而根据我对这个积分结构的观察我认为在这里应当使用某种换元来进行化简而换元的选取就成为了解决这个问题的重中之重……
	]),
	(chara.严佩,[
		（打断）停，停，停。你直接列公式好吧。
	]),
	(chara.章拒,[$
		integral blue(x)/red(x^2+1)blue(dif x)=1/2integral 1/red(x^2+1)blue(dif x^2)=1/2integral 1/red(x^2+1)blue(dif(x^2+1))=1/2log red((x^2+1))+C.
	$]),
	(chara.严佩,[
		正确，你叫什么名字？
	]),
	(chara.章拒,[
		我姓章单名一个拒字其中章是出口成章的章而拒是来者不拒的拒……
	]),
	(chara.严佩,[
		（打断）停，停，停。我知道了，你坐吧。#parbreak()
		在本题中，分母虽然是$x^2+1$，但分子不是常数，所以不能直接套基本积分公式。但是我们不难发现，如果把$blue(x dif x)$整理成$blue(1/2dif x^2)$，那就相当于令$red(u=x^2)$，这样分母就变成$1/(u+1)$，刚好是我们可以解决的类型。在这里，章拒同学没有明确写出换元的中间变量$u$，只是凑了一个微分，但这种思路的本质依旧是换元积分法。
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
		$#noindent 这列第五排的女生，你来回答一下。
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
		#noindent 所以就有$
			x/(a x+b)=1/a-b/(a(a x+b)).
		$#noindent 接下来就可以整理被积函数，再套用目前已有的积分公式，这题就能解出来了：$
			integral x/(a x+b) dif x=1/a integral dif x-b/a integral (dif x)/(a x+b)=x/a-b/a^2log abs(a x+b)+C.
		$
	]),
)
==== 通过部分分式分解来分项
#lesson(
	(chara.严佩,[
		下面我再给大家出一道题：$
			integral (dif x)/(x(x+a))space(a!=0).
		$#noindent 这列第五排的同学，你来回答一下。
	]),
	(chara.沈嗣,[
		（起身）我记得，这种问题好像是通过裂项来解决的。
	]),
	(chara.严佩,[
		对，那么怎么裂项呢？
	]),
	(chara.沈嗣,[
		我想一下……可以设待定系数$A,space B$，把$1/(x(x+a))$拆成$A/x+B/(x+a)$，再反过来解出$A,space B$就好。
	]),
	(chara.严佩,[
		正确。你叫什么名字？
	]),
	(chara.沈嗣,[
		我叫沈嗣。
	]),
	(chara.严佩,[
		坐吧。上节课杨教授已经给大家讲过了裂项的方法，现在我们就要用这个方法来解决更复杂的积分问题。#parbreak()
		先来观察一下被积函数：$1/(x^2+a x)$是一个分母次数为2的有理函数。但是，对于分母次数为2的有理函数的积分，我们目前还只能解决一种，就是那个（指黑板）：$
			integral (dif x)/(x^2+a^2)=1/a arctan x/a+C.
		$#noindent 既然现成的公式不能用，那我们就必须另辟蹊径，去想办法简化这个积分。而我们知道，裂项可以把分母次数较高的有理函数，转化成若干个分母次数较低的有理函数的和，所以解法就是：把一个分母次数高的、复杂的有理函数积分，变换成多个分母次数低的、简单的有理函数积分，用分项积分法的思路去逐个攻破。#parbreak()
		上节课杨教授已经讲解了如何用待定系数法来裂项——其实这也是大家在高数课上已经学过的做法，所以我就不多废话了，直接写：$
			1/(x(x+a))=&A/x+B/(x+a)\
			1=&(A+B)x+A a.
		$#noindent 解得$A=1/a,space B=-1/a$，代入到原积分中，就是$
			integral (dif x)/(x(x+a))=1/a integral (dif x)/x-1/a integral (dif x)/(x+a)=1/a log abs(x)-1/a log abs(x+a)+C.
		$#noindent 当然这个形式还可以进一步整理一下，写成$1/a log abs(x/(x+a))+C$。#parbreak()
		然后我们再看一下这道题：$
			integral (dif x)/(x^2-a^2)space (a!=0).
		$#noindent 这列倒数第一排的同学，你来回答一下。
	]),
	(chara.万籁,[
		（起身）应该可以用平方差公式分解一下分母$1/((x-a)(x+a))$，再裂项成$A/(x-a)+B/(x+a)$来做。
	]),
	(chara.严佩,[
		正确，你叫什么名字？
	]),
	(chara.万籁,[
		我叫万籁。
	]),
	(chara.严佩,[
		好，坐吧。我把万籁同学的思路写一下：$
			1/(x^2-a^2)=1/((x-a)(x+a))=&A/(x-a)+B/(x+a)\
			1=&(A+B)x+(A-B)a.
		$#noindent 解得$A=1/(2a),space B=-1/(2a)$，代入到原积分中，就是$
			integral (dif x)/(x^2-a^2)=1/(2a)integral (dif x)/(x-a)-1/(2a)integral (dif x)/(x+a)=&1/(2a)log abs(x-a)-1/(2a)log abs(x+a)+C\
			=&1/(2a)log abs((x-a)/(x+a))+C.
		$#parbreak()
		现在我们比较一下这两个形式十分相似的积分：$
			&integral (dif x)/(x^2+a^2)=1/a arctan x/a+C\
			&integral (dif x)/(x^2-a^2)=1/(2a)log abs((x-a)/(x+a))+C
		$#noindent 我们会看到，二者只是在分母上有一个微小的差异，但我们采取的做法以及最终的结果居然大不相同。所以大家以后做题时也一定要注意这些细节，观察题目的结构，选择合理的做法，才能既正确、又快速地解决问题。#parbreak()
		现在我们是时候回来看这个积分了：$
			integral (dif x)/(x(a x^2+b))space(a,b!=0).
		$#noindent 赵超同学，你能记得住这个积分的结果，但你能做出这个积分的过程吗？
	]),
	(chara.赵超,[
		我不行我不行。
	]),
	(chara.严佩,[
		我给大家一分钟的时间考虑一下，谁有想法的话就可以举手回答。（开始等候）
	]),
	[
		有人举起了手。
	],
	(chara.严佩,[
		来，朱异，你有什么想法？
	]),
	(chara.朱异,[
		我有一个思路：先对分子分母同乘$x$，然后换元$red(u=x^2)$，就能把这道积分变成$
			integral (x blue(dif x))/(red(x)^2(a red(x)^2+b))=1/2integral blue(dif u)/(red(u)(a red(u)+b)).
		$#noindent 接下来就可以直接裂项解决（翻演草纸）：$
			1/2integral (dif u)/(u(a u+b))=&1/(2b)integral (dif u)/u-a/(2b)integral (dif u)/(a u+b)\
			=&1/(2b)log abs(red(u)/(a red(u)+b))+C\
			=&1/(2b)log abs(red(x)^2/(a red(x)^2+b))+C.
		$
	]),
	(chara.严佩,[
		好，非常好，坐吧，这是本题的最佳做法。被积函数的分母是三次，如果非要裂项的话，计算起来会非常困难；但通过巧妙地换元$red(u=x^2)$就可以把被积函数变成分母是二次的类型，从而简化问题。#parbreak()
		那么接下来我们就开始讲下一部分，这也是本堂课的重点。
	]),
	(chara.魏荷,[
		等等！（举手）我有个问题。
	]),
)
==== 原函数的等价问题
#lesson(
	(chara.严佩,[
		是魏荷啊，你有什么问题？
	]),
	(chara.魏荷,[
		（起身）刚才我试着强行裂项，结果有了一个新的发现。
	]),
	(chara.严佩,[
		强行裂项啊……当然可以。但是有个问题，如果你想在实数域内分解$a x^2+b$，那就必须要求$a$和$b$是异号的。
	]),
	(chara.魏荷,[
		我确实想到了这个问题，不过可以通过分类讨论来约束一下。我们就先只讨论$a>0,space b<0$这一种情况吧。
	]),
	(chara.严佩,[
		行，你接着说。
	]),
	(chara.魏荷,[
		我裂项的结果是这样的：$
			1/(x(a x^2+b))=1/(b x)-sqrt(a)/(2b(sqrt(a)x-sqrt(-b)))-sqrt(a)/(2b(sqrt(a)x+sqrt(-b))).
		$#noindent 对这个式子积分，得到$
			1/b log abs(x)-1/(2b)log abs(sqrt(a)x-sqrt(-b))-1/(2b)log abs(sqrt(a)x+sqrt(-b))+C.
		$#noindent 为什么它和刚才的结果完全不一样呢？
	]),
	(chara.严佩,[
		哦，原来是这个问题。那我就来给你解答一下——#parbreak()
		首先，你们在中学都学过一个对数的运算法则$log x+log y=log(x y)$。所以我们可以把第二、三两项先合并一下：$
			&-1/(2b)log abs(sqrt(a)x-sqrt(-b))-1/(2b)log abs(sqrt(a)x+sqrt(-b))\
			=&-1/(2b)log abs((sqrt(a)x-sqrt(-b))(sqrt(a)x+sqrt(-b)))\
			=&-1/(2b)log abs(a x^2+b).
		$#noindent 到这一步还有问题吗？
	]),
	(chara.魏荷,[
		没有。
	]),
	(chara.严佩,[
		你们在中学时又学过一个对数运算法则$a log x=log x^a$，所以你算出的第一步其实也可以改写成$
			1/b log abs(x)=2/(2b)log abs(x)=1/(2b)log abs(x^2).
		$
	]),
	(chara.魏荷,[
		噢——我好像懂了……
	]),
	(chara.严佩,[
		再然后就可以进一步整理整个式子：$
			1/(2b)log abs(x^2)-1/(2b)log abs(a x^2+b)+C=1/(2b)log abs(x^2/(a x^2+b))+C.
		$#noindent 所以你的结果和朱异的结果其实完全是相等的，只不过长得样子有些区别而已，现在明白了吗？
	]),
	(chara.魏荷,[
		懂了。那我没问题了。
	]),
	(chara.严佩,[
		那坐吧。顺着魏荷的问题我再往下讲点，我们看一下这道题：$
			integral x/(x^4+1)dif x.
		$#noindent 有了前面题目的经验大家应该都能想到凑成$dif x^2$的做法：$
			integral x/(x^4+1)dif x=1/2integral 1/((x^2)^2+1)dif x^2=red(1/2arctan x^2+C).
		$#parbreak()
		但是本题还有一个做法：先将被积函数裂项——来，肖虑，你来算一下。
	]),
	(chara.肖虑,[$
		x/(x^4+1)=1/(2sqrt(2)(x^2-sqrt(2)x+1))-1/(2sqrt(2)(x^2+sqrt(2)x+1)).
	$]),
	(chara.严佩,[
		非常好，坐吧。接下来分别解决这两个被积函数的积分就可以，因为它们形式高度相似，我就用$+-$号来写，把它们一次性都做了，你们应该能懂我意思：$
			integral 1/(x^2+-sqrt(2)x+1)dif x=&integral 1/((x+-1/sqrt(2))^2+(1/sqrt(2))^2)dif(x+-1/sqrt(2))\
			=&sqrt(2)arctan(sqrt(2)x+-1)+C.
		$#noindent 最后回代这个积分结果，得到$
			integral x/(x^4+1)dif =blue(1/2arctan(sqrt(2)x-1)-1/2arctan(sqrt(2)x+1)+C).
		$#parbreak()
		现在，问题来了：同一个积分出现了两个截然不同的结果，到底该信谁？给大家一分钟的时间思考一下，想到的同学可以举手回答。（开始等候）#parbreak()
		看来还没有人完全想清楚，我先提问一个人吧。这列第三排的女生，你来回答一下。
	]),
	(chara.金缡,[
		（起身）我试了一下代入$x=0$分别到这两个式子当中，发现$
			&1/2arctan 0^2=0,\
			&1/2arctan(0-1)-1/2arctan(0+1)=-pi/4.
		$#noindent 所以它们两个确实不一样，那应该有一个错了……我能想到的就这么多。
	]),
	(chara.严佩,[
		非常好，你刚才犯了一个十分典型的错误。（指着第一个结果）注意看，这个结果里的原函数，不是$1/2arctan x^2$，而是$1/2arctan x^2red(+C)$。这里的$C$是什么呢，是“任意常数”。换句话说，凡是与$1/2arctan x^2$相差任意常数的函数，都是这个被积函数的原函数。#parbreak()
		而你的做法是取了$x=0$这一个点，算出两个原函数的值发现不一样，就断定原函数有错误，这合理吗？
	]),
	(chara.金缡,[
		呃……有道理啊……
	]),
	(chara.严佩,[
		你先坐。在不定积分当中，要验证两个原函数是否等价，绝对不能取单点的值来验证，这样做根本没有意义。正确的做法是，对两个原函数作差，化简之后看是不是只剩下常数，如果是常数，那这两个原函数就是等价的。#parbreak()
		就拿这道题来说，我们算出了两个原函数，一个是$F_1(x)=1/2arctan x^2+C_1$，一个是$F_2(x)=1/2arctan(sqrt(2)x-1)-1/2arctan(sqrt(2)x+1)+C_2$。这里用$C_1,C_2$来区分一下，因为两个任意常数是相互独立的，可以取不同的值。#parbreak()
		现在我们要做的就是，去验证$
			F_1(x)-F_2(x)=1/2arctan x^2+1/2arctan(sqrt(2)x+1)-1/2arctan(sqrt(2)x-1)+C_1-C_2
		$#noindent 是不是常数，就这么简单。#parbreak()
		大家在中学或者在高数课上有学过反三角函数的和差公式吗？（众人摇头）那我教一下吧。#parbreak()
		$tan$和$arctan$是一对反函数，前者把弧度值变成正切值，而后者把正切值变成弧度值。大家在中学时都学过了和角公式，举个例子：$
			tan(alpha-beta)=(tan alpha-tan beta)/(1+tan alpha tan beta).
		$#noindent 这里的$alpha,beta$都是弧度值。我们设想这两个弧度值都是由反正切函数通过两个正切值算出来的，所以我们就令$red(alpha=arctan x),space blue(beta=arctan y)$，把这个换元代入到上面的等式，得到：$
			tan(red(arctan x)-blue(arctan y))=(tan red(arctan x)-tan blue(arctan y))/(1+tan red(arctan x)tan blue(arctan y)).
		$#noindent 现在给大家出一个问题：$tan arctan X$能不能化简，化简出来是什么？刚才那个女生，你来回答一下。
	]),
	(chara.金缡,[
		（起身）化简出来其实就是$X$吧。
	]),
	(chara.严佩,[
		正确，你叫什么名字？
	]),
	(chara.金缡,[
		我叫金缡。
	]),
	(chara.严佩,[
		好，坐吧。所以可以把这个等式化简成$
			tan(arctan x-arctan y)=(x-y)/(1+x y).
		$#noindent 接下来我们再对等号两边分别取$arctan$，就是$
			arctan tan(arctan x-arctan y)=arctan (x-y)/(1+x y).
		$#noindent 再给大家出一个问题：$arctan tan A$化简出来是什么？
	]),
	(chara.吉峰,[
		（抢答）$A$！
	]),
	(chara.严佩,[
		刚才谁答的$A$？是你吧。来，你叫什么名字？
	]),
	(chara.吉峰,[
		（起身）我叫吉峰。
	]),
	(chara.严佩,[
		好，我问你一个问题：$arctan tan pi$等于多少？
	]),
	(chara.吉峰,[
		等于……等于$0$……（拍大腿）哎呀我知道了！（揉大腿）应该是$A+k pi space(k in ZZ)$。
	]),
	(chara.严佩,[
		这样才是正确的，坐吧。很多人都容易犯下一个错误，理所应当地认为$arctan tan A=A$。这个等式只在$-pi/2<A<pi/2$的时候才成立，如果换成这个范围外的值，就必须加上相应的$k pi$才能成立。而因为$arctan x-arctan y$它的取值范围可以达到$(-pi,pi)$，所以我们必须这么写：$
			arctan (x-y)/(1+x y)=&cases(
				arctan x-arctan y\,&-pi/2<arctan x-arctan y<pi/2\,,
				arctan x-arctan y+pi\,&-pi<arctan x-arctan y<-pi/2\,,
				arctan x-arctan y-pi\,&pi/2<arctan x-arctan y<pi.
			)
		$#noindent 看起来比较复杂，但是别忘了，我们求出这个公式的根本目的是为了解决那个（指）：$
			F_1(x)-F_2(x)=1/2arctan x^2+red(1/2arctan(sqrt(2)x+1)-1/2arctan(sqrt(2)x-1))+C_1-C_2.
		$#noindent 那我们就来看一下，$arctan(sqrt(2)x+1)-arctan(sqrt(2)x-1)$它的值域到底是多少。#parbreak()
		在高数课上大家都学过通过导数来求函数的极值和最值。我们令$
			g(x)=arctan(sqrt(2)x+1)-arctan(sqrt(2)x-1).
		$#noindent 求出它的导数$
			g'(x)=-(2x)/(x^4+1).
		$#noindent 可以看出，这个函数只有一个驻点$x=0$，而在$x<0$时导数为正，函数递增；在$x>0$时导数为负，函数递减。我们又可以算出$
			&lim_(x->+infinity)g(x)=pi/2-pi/2=0,\
			&lim_(x->-infinity)g(x)=-pi/2-(-pi/2)=0,\
			&g(0)=pi/4-(-pi/4)=pi/2.
		$#noindent 所以$g(x)=arctan(sqrt(2)x+1)-arctan(sqrt(2)x-1)$的取值范围只在$(0,pi/2]$之间，那我们直接套公式第一行就行了：$
			red(1/2arctan(sqrt(2)x+1)-1/2arctan(sqrt(2)x-1))=1/2arctan (sqrt(2)x+1-sqrt(2)x+1)/(1+2x^2-1)=1/2arctan 1/x^2.
		$最后代回$F_1(x)-F_2(x)$的表达式，得到$
			F_1(x)-F_2(x)=1/2arctan x^2+1/2arctan 1/x^2+C_1-C_2.
		$#parbreak()
		刚才的公式算的是两个反正切的差，但现在我们需要两个反正切的和。不过大家别急着推公式，现在我们还有更简单的方法。#parbreak()
		大家看，$x^2$和$1/x^2$都是正数对吧。所以它们的反正切也都是正数，换言之，角是正数。而你们在中学都学过平面几何，应该知道，如果两个角互为余角，那么它们的正切值满足什么关系。吉峰？
	]),
	(chara.吉峰,[
		（起身）互为倒数。
	]),
	(chara.严佩,[
		对。这两者之间其实是充分必要条件，不信你们自己证。所以你来告诉我，现在我有$x^2$和$1/x^2$这两个互为倒数的正切值，那么它们——
	]),
	(chara.吉峰,[
		（抢话）加起来等于$pi/2$！
	]),
	(chara.严佩,[
		对，所以$arctan x^2+arctan 1/x^2=pi/2$，坐吧。#parbreak()
		因此我们整理到最后会发现，$
			F_1(x)-F_2(x)=pi/4+C_1-C_2.
		$#noindent 说明这两个原函数的差是一个常数，所以这两个原函数其实是等价的。#parbreak()
		还有别的问题吗？没有的话我就往下讲，时间不多了。
	]),
)
==== 最终问题
#lesson(
	(chara.严佩,[
		现在我再来出道题：$
			integral (dif x)/(a x^2+b x+c)space(a!=0).
		$#noindent 本来想给大家留点时间思考，但时间不多了，我直接提问。魏荷，你有思路吗？
	]),
	(chara.魏荷,[
		（起身）这个式子也许能裂项，也许不能，所以得先分类讨论一下。
	]),
	(chara.严佩,[
		对，那你来告诉我，什么时候它能裂项，什么时候不能？
	]),
	(chara.魏荷,[
		如果要因式分解，那它得有实根，而这个$a x^2+b x+c$有实根的条件是$Delta=b^2-4a c>=0$。
	]),
	(chara.严佩,[
		一定是这样吗？比如说$1/(x^2+2x+1)$，它的分母也有实零点，但是你要怎么对它裂项呢？
	]),
	(chara.魏荷,[
		哦……那也就是说，只有在$Delta>0$时才能裂项。如果$Delta=0$，只能配方，但没有办法裂项。
	]),
	(chara.严佩,[
		那$Delta=0$不能裂项的话，你要怎么做呢？
	]),
	(chara.魏荷,[
		这个……
	]),
	(chara.严佩,[
		朱异，你有想法吗？
	]),
	(chara.朱异,[
		其实注意到$Delta=0$时配方结果就是$1/(sqrt(a)x+b/(2sqrt(a)))^2$，所以可以换元$red(u=sqrt(a)x+b/(2sqrt(a)))$把这个积分变成$
			1/sqrt(a)integral (dif u)/u^2=-1/(sqrt(a)u)+C.
		$
	]),
	(chara.严佩,[
		正确，你先坐吧。魏荷，现在还剩$Delta<0$的情况没有分析，你的思路是什么？
	]),
	(chara.魏荷,[
		当$Delta<0$时，配方之后还剩下一个正的常数项，所以可以按照$integral (dif u)/(u^2+a^2)$的思路来做。
	]),
	(chara.严佩,[
		非常好，你也坐吧。刚才我们已经通过分类讨论，把所有情况都涵盖了，现在我来给大家重新整理一下。#parbreak()
		#let u=$(sqrt(a)x+b/(2sqrt(a)))$
		当$Delta>0$时，这个分母有两个实零点，用求根公式可以算出$x_1,x_2=(-b+-sqrt(Delta))/(2a)$。于是就可以对分母因式分解，变成$1/(a(x-x_1)(x-x_2))$，再裂项，得到$1/(a(x_1-x_2)(x-x_1))-1/(a(x_1-x_2)(x-x_2))$。最终结果是$
			1/(a(x_1-x_2))log abs((x-x_1)/(x-x_2))+C.
		$#parbreak()
		当$Delta=0$时，这个分母有一个二重实零点，所以直接配方可以得到$1/#u^2$，然后就凑$dif#u$，算出$
			1/sqrt(a)integral (dif#u)/#u^2=-1/(sqrt(a)#u)+C=-1/(a x+b/2)+C.
		$#parbreak()
		而当$Delta<0$时，这个分母没有实零点，我们需要把它配方，化成分母是平方式加正常数的结构，也就是$1/(#u^2+(-Delta)/(4a))$。接下来同样是凑$dif#u$，算出$
			1/sqrt(a)integral (dif#u)/(#u^2+(sqrt(-Delta)/(2sqrt(a)))^2)=&2/sqrt(-Delta)arctan (2sqrt(a)#u)/sqrt(-Delta)+C\
			=&2/sqrt(-Delta)arctan (2a x+b)/sqrt(-Delta)+C.
		$#parbreak()
		以上就是本题的完整做法。写了这么多含参积分，可能有人已经糊涂了，所以我再来几道具体问题给大家感受一下：$
			&integral 1/(x^2+2x+2)dif x\
			&integral 1/(x^2+2x+1)dif x\
			&integral 1/(x^2+2x)dif x.
		$#parbreak()
		第一题，$Delta=-4<0$，所以分母配方成$(x+1)^2+1$，然后凑微分$dif(x+1)$。$
			integral 1/(x^2+2x+2)dif x=integral 1/((x+1)^2+1)dif(x+1)=arctan(x+1)+C.
		$#parbreak()
		第二题，$Delta=0$，所以分母配方成$(x+1)^2$，然后凑微分$dif(x+1)$。$
			integral 1/(x^2+2x+1)dif x=integral 1/(x+1)^2dif(x+1)=-1/(x+1)+C.
		$#parbreak()
		第三题，$Delta=4>0$，所以分母因式分解成$x(x+2)$，然后裂项。$
			integral 1/(x^2+2x)dif x=integral 1/(x(x+2))dif x=1/2integral 1/x dif x-1/2integral 1/(x+2)dif x=1/2log abs(x/(x+2))+C.
		$#parbreak()
		这三个被积函数看起来非常相似，但采用的做法却大相径庭，关键就在分母的结构上。#parbreak()
		有了这个作为基础，我们再来看最后一道题。最后一道题了啊，第八排打哈欠的同学再坚持一下。另外，打哈欠的时候麻烦捂着嘴。$
			integral (d x+e)/(a x^2+b x+c)dif x space(a,d!=0).
		$#noindent 这列倒数第四排的女生，你有思路吗？
	]),
	(chara.吴郁,[
		（起身）……（摇头）
	]),
	(chara.严佩,[
		那坐吧。还有人有思路吗？吕顺？
	]),
	(chara.吕顺,[
		我觉得首先我们可以把这个积分拆成两部分，$integral (d x)/(a x^2+b x+c)dif x$和$integral e/(a x^2+b x+c)dif x$。第二项可以使用刚才推导的公式来解决，至于第一项（仰头思考）……我暂时还没想好怎么处理。
	]),
	(chara.严佩,[
		关于$integral (d x)/(a x^2+b x+c)dif x$这个积分你完全没思路吗？
	]),
	(chara.吕顺,[
		如果分母没有$b x$的话就很简单，那样的话凑成$dif x^2$就可以解决了。
	]),
	(chara.严佩,[
		那好，我暂时把这个$b x$擦掉，你来做一下$integral (d x)/(a x^2+c)dif x$。
	]),
	(chara.吕顺,[
		这个很好做：$
			integral (d x)/(a x^2+c)dif x=d/(2a)integral 1/(a x^2+c)dif(a x^2+c)=d/(2a)log abs(a x^2+c)+C.
		$
	]),
	(chara.严佩,[
		所以你心里非常清楚，应该根据分母的形式来凑这个微分。那难道我现在把$b x$加回去，你就想不到了吗？
	]),
	(chara.李清,[
		（举手）老师，我有个思路。
	]),
	(chara.严佩,[
		你来说说。
	]),
	(chara.李清,[
		（起身）既然要根据分母的形式来凑这个微分，那我们的目标就是凑出一个$dif(a x^2+b x+c)$来。反过来想，我们需要在分子上构造出$2a x+b$才能达成这样的目标。
	]),
	(chara.严佩,[
		但现在的分子是$d x+e$，或者分项之后拆出的$d x$，你确定有办法构造出你设想的$2a x+b$吗？
	]),
	(chara.李清,[
		这个……呃，我想一下……
	]),
	(chara.吕顺,[
		我懂了……
	]),
	(chara.李清,[
		（抢话）我也懂了。让我说。
	]),
	(chara.严佩,[
		你说吧。（对吕顺）你先坐。
	]),
	(chara.李清,[
		由$d x+e$构造出$2a x+b$并不难。我们可以设待定系数$m,n$，列出方程$
			d x+e=m(2a x+b)+n.
		$#noindent 解这个方程组，把$m,n$求出来，因此原积分就可以写成$
			m integral (2a x+b)/(a x^2+b x+c)dif x+n integral 1/(a x^2+b x+c)dif x
		$#noindent 其中第一项可以直接凑微分$dif(a x^2+b x+c)$解决，第二项可以用之前的方法解决。
	]),
	(chara.严佩,[
		非常好，坐吧。相比于前面我们遇到的题目来说，这道题的分项方法要更巧妙一些。在这里，我们不应该根据$x$的次数来分项，而应该根据真实的需要来分项。#parbreak()
		这题要消除分子上的$x$只有一种方法，就是凑微分，但直接凑$dif x^2$的话仍然不可解，所以我们才需要合理地分配常数项到不同的积分项中，使其能凑出$dif(a x^2+b x+c)$。之后的习题课上助教还会给大家讲类似的问题，今天时间不够了我先讲到这。#parbreak()
		最后我们来回顾一下今天的内容。#parbreak()
		我们今天围绕有理函数的积分讲解了一些基本的积分方法。由始至终，我们的解题都是以那三个基本积分公式为根基的。通过分项、换元、裂项——本质上也是分项——这些方法，我们可以推导出一系列更为常用的通式。这可以看作我们对基本积分公式的拓展。#parbreak()
		这些通式呢，如果你们能像赵超同学那样全都记下来，那也没问题；但我也要告诉大家，你们只要学会了积分的方法，那三个基本公式以外的公式全都不用记。根本没有这个必要。#parbreak()
	]),
	[
		下课铃开始响起。
	],
	(chara.严佩,[
		还有几句。（大声）裂项，是有理函数积分的重点。裂项的目的，是把分母次数高的式子，变换成若干个分母次数低的式子。一般来说，通过裂项能得到若干个$integral 1/(a x+b)dif x$和$integral (d x+e)/(a x^2+b x+c)dif x$的式子。前者我们已经很熟悉了；而后者比较复杂，需要我们进一步分项成$integral (2a x+b)/(a x^2+b x+c)dif x$和$integral 1/(a x^2+b x+c)dif x$。其中第一项也很容易解决，而第二项呢，需要我们分析具体的情况，看$Delta=b^2-4a c$的值，再决定怎么做。这类问题需要重点复习。#parbreak()
		下节课，我们讲解裂项的进阶方法，不涉及具体的积分，所以大家回去，一定要好好复习积分，避免遗忘。好了，下课！
	]),
)
