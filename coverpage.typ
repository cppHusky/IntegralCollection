#let coverpage={
	set text(
		font:(
			"Noto Sans CJK SC",
			"Noto Sans",
		)
	)
	page(
		align(center+horizon)[
			#text(
				size:40pt,
				weight:"medium",
			)[积分精选]
			#parbreak()
			#text(
				size:25pt,
				weight:"regular",
				fill:gray,
			)[重制版]
		]
	)
}
#coverpage
#pagebreak(weak:true,to:"odd")
