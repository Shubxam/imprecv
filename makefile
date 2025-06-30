.PHONY: watch compile

ifeq ($(OS),Windows_NT)
    # Windows
    watch:
		@PowerShell -Command "typst watch template/template.typ --root ."

    compile:
		@PowerShell -Command "typst compile template/template.typ"

    lint:
		@PowerShell -Command "typstyle -i ./"
else
    # WSL or Unix-like system
    watch:
		@bash -c "typst watch template/template.typ --root ."

    compile:
		@bash -c "typst compile template/template.typ --root ../"

    lint:
		@bash -c "typstyle -i ./"
endif
