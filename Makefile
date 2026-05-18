NAME    := Vladyslav_Lebediev_Resume
SRC     := resume.md
BUILD   := build

.PHONY: pdf clean

pdf: $(BUILD)/$(NAME).pdf

$(BUILD)/$(NAME).pdf: $(SRC) resume.css templates/resume.html
	mkdir -p $(BUILD)
	cp resume.css $(BUILD)/resume.css
	pandoc $(SRC) \
		--template=templates/resume.html \
		--metadata title="Vladyslav Lebediev — Resume" \
		-o $(BUILD)/index.html
	weasyprint $(BUILD)/index.html $(BUILD)/$(NAME).pdf

clean:
	rm -rf $(BUILD)
