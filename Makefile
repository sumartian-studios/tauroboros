# Common
# -----------------------------------------------------------------------------

BOOK_NAME   = tauroboros
TEX_TMPL    = ./layouts/default.tex
CONTENT_DIR = ./books
PANDOC      = pandoc --toc --pdf-engine=pdflatex --template=$(TEX_TMPL)
OUTPUT_DIR  = ./public/books

# Book: Part 1
# -----------------------------------------------------------------------------

P1_DIR        = $(CONTENT_DIR)/book-1
P1_COVER      = $(P1_DIR)/images/cover.png
P1_PROLOGUE   = $(P1_DIR)/prologue/index.md
P1_CHAPTERS   = $(P1_DIR)/chapters/*.md
P1_META       = $(P1_DIR)/index.yml
P1_EPILOGUE   = $(P1_DIR)/epilogue/index.md
P1_GLOSSARY   = $(P1_DIR)/glossary/index.md
P1_COMMAND    = --metadata-file $(P1_META) $(P1_PROLOGUE) \
	                                       $(P1_CHAPTERS) \
										   $(P1_EPILOGUE) \
	                                       $(P1_GLOSSARY)
book-1-pdf:
	$(PANDOC) -o ${OUTPUT_DIR}/${BOOK_NAME}-1.pdf $(P1_COMMAND)

book-1-epub:
	$(PANDOC) -o ${OUTPUT_DIR}/${BOOK_NAME}-1.epub $(P1_COMMAND)

# Book: Part 2
# -----------------------------------------------------------------------------

P2_DIR        = $(CONTENT_DIR)/book-2
P2_COVER      = $(P2_DIR)/images/cover.png
P2_PROLOGUE   = $(P2_DIR)/prologue/index.md
P2_CHAPTERS   = $(P2_DIR)/chapters/*.md
P2_META       = $(P2_DIR)/index.yml
P2_EPILOGUE   = $(P2_DIR)/epilogue/index.md
P2_GLOSSARY   = $(P2_DIR)/glossary/index.md
P2_COMMAND    = --metadata-file $(P2_META) $(P2_PROLOGUE) \
	                                       $(P2_CHAPTERS) \
										   $(P2_EPILOGUE) \
	                                       $(P2_GLOSSARY)
book-2-pdf:
	$(PANDOC) -o ${OUTPUT_DIR}/${BOOK_NAME}-2.pdf $(P2_COMMAND)

book-2-epub:
	$(PANDOC) -o ${OUTPUT_DIR}/${BOOK_NAME}-2.epub $(P2_COMMAND)


# Book: Part 3
# -----------------------------------------------------------------------------

P3_DIR        = $(CONTENT_DIR)/book-3
P3_COVER      = $(P3_DIR)/images/cover.png
P3_PROLOGUE   = $(P3_DIR)/prologue/index.md
P3_CHAPTERS   = $(P3_DIR)/chapters/*.md
P3_META       = $(P3_DIR)/index.yml
P3_EPILOGUE   = $(P3_DIR)/epilogue/index.md
P3_GLOSSARY   = $(P3_DIR)/glossary/index.md
P3_COMMAND    = --metadata-file $(P3_META) $(P3_PROLOGUE) \
	                                       $(P3_CHAPTERS) \
										   $(P3_EPILOGUE) \
	                                       $(P3_GLOSSARY)
book-3-pdf:
	$(PANDOC) -o ${OUTPUT_DIR}/${BOOK_NAME}-3.pdf $(P3_COMMAND)

book-3-epub:
	$(PANDOC) -o ${OUTPUT_DIR}/${BOOK_NAME}-3.epub $(P3_COMMAND)
