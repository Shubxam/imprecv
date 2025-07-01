.PHONY: watch compile

ifeq ($(OS),Windows_NT)
    # Windows
    watch:
		@PowerShell -Command "typst watch --font-path ./fonts template/template.typ --root ../"

    compile:
		@PowerShell -Command "typst compile --font-path ./fonts template/template.typ --root ../"

    lint:
		@PowerShell -Command "typstyle -i ./"
else
    # WSL or Unix-like system
    watch:
		@bash -c "typst watch --font-path ./fonts template/template.typ --root ../"

    compile:
		@bash -c "typst compile --font-path ./fonts template/template.typ --root ../"

    lint:
		@bash -c "typstyle -i ./"
endif
