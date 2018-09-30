.PHONY: all clean help

SRC = SRD-OGL_V5.1.pdf

define HELP
all		Extract data in all formats
clean		Remove extracted data files

srd5.json	Export all data to JSON
srd5.sqlite3	Export all data to SQLite3 database

spells.csv	Export spells as CSV
spells.json	Export spells as JSON
spells.txt	Export spells as plain text
endef

all: srd5.json srd5.sqlite3

clean:
	$(RM) spells.{csv,json,txt}
	$(RM) srd5.{json,sqlite3}

help:
	@echo $(info $(HELP))

spells.txt:
	# pp. 114-194
	./bin/extract $(SRC) 114 194 | ./libexec/spells.awk > $@

spells.json: spells.txt
	./bin/transform -f json $< | jq -s . > $@

spells.csv: spells.txt
	./bin/transform -f csv $< > $@

srd5.sqlite3: spells.csv
	cat $< | ./bin/load $@

srd5.json: spells.json
	jq '{spells: .}' $< > $@
