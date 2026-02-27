typ=main.typ
default:main.pdf
main.pdf:$(typ)
	typst c $^ --ignore-system-fonts --font-path ./fonts
watch:
	typst w $(typ) --ignore-system-fonts --font-path ./fonts
