#let preset(body)={
	import "@preview/itemize:0.2.0"
	set page(
		paper:"a4",
		margin:(
			top:25mm,
			bottom:30mm,
			outside:22mm,
			inside:32mm,
		),
		numbering:"1",
		footer:context{
			if calc.odd(counter(page).get().first()) {
				h(1fr)
				counter(page).display()
			} else {
				counter(page).display()
				h(1fr)
			}
		},
		number-align:center+bottom,
	)
	set text(
		lang:"zh",
		region:"CN",
		font:(
			"Noto Serif CJK SC",
			"Noto Serif",
		),
		size:10.5pt,
	)
	set par(
		justify:true,
		leading:1.2em,
		spacing:1.2em,
	)
	//句号应使用句点，且需维持标点挤压
	show regex("[，。．、：；？！》）』」】〗〕〉］｝“‘《（『「【〖〔〈［｛，。．、：；]+"):it=>it.text.replace("。","．")
	show math.equation:set text(
		font:"New Computer Modern Math",
	)
	//行内数学公式均使用行间格式，且保持CJK间距
	show math.equation.where(block:false):it=>math.display(it)
	show math.equation.where(block:false):it=>{
		let ghost=text(font:"Adobe Blank","\u{375}")
		ghost;it;ghost
	}
	show heading.where(level:1):it=>{
		set text(
			size:30pt,
			weight:"extrabold",
		)
		align(center,it)
	}
	show link:underline
	body
}
#let preset-frontmatter(body)={
	set page(
		numbering:"i",
		footer:context{
			if calc.odd(counter(page).get().first()) {
				h(1fr)
				counter(page).display("i")
			} else {
				counter(page).display("i")
				h(1fr)
			}
		}
	)
	body
}
#let preset-collection(body)={
	show:preset
	set page(
		footer:context{
			if calc.odd(counter(page).get().first()) {
				h(1fr)
				counter(page).display()
			} else {
				counter(page).display()
				h(1fr)
			}
		}
	)
	show heading.where(level:2):it=>{
		set text(
			size:21pt,
			weight:"extrabold",
		)
		align(center,it)
	}
	body
}
#let preset-lecture(body)={
	show:preset
	set page(
		footer:context{
			if calc.odd(counter(page).get().first()) {
				h(1fr)
				counter(page).display()
			} else {
				counter(page).display()
				h(1fr)
			}
		}
	)
	show heading.where(level:2):it=>{
		set text(
			size:21pt,
			weight:"extrabold",
		)
		align(center,it)
	}
	show heading.where(level:2):set heading(
		numbering:(..nums)=>[阶段#numbering("一",nums.at(1))]
	)
	body
}
#let preset-appendix(body)={
	show:preset
	set par(
		first-line-indent:(
			amount:2em,
			all:true,
		)
	)
	show heading.where(level:1):it=>{
		set text(
			size:21pt,
			weight:"extrabold",
		)
		align(center,it)
	}
	show heading.where(level:1):set heading(
		numbering:"附录A",
	)
	show heading.where(level:2):it=>{
		set text(
			size:18pt,
			weight:"extrabold",
		)
		align(center,it)
	}
	show heading.where(level:2):set heading(
		numbering:"A.1",
	)
	set heading(
		supplement:"附录",
	)
	body
	}
}
