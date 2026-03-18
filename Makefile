bin := buildpkg
macros := $(wildcard macros.*)

PREFIX ?= /usr/local
BINDIR ?= $(PREFIX)/bin
DATADIR ?= $(PREFIX)/share
MACRODIR ?= $(DATADIR)/buildpkg/macros.d

all: $(bin) $(macros)

install: $(bin) $(macros)
	install -d $(DESTDIR)$(BINDIR)
	install -d $(DESTDIR)$(MACRODIR)
	install -m 0755 $(bin) $(DESTDIR)$(BINDIR)
	install -m 0644 $(macros) $(DESTDIR)$(MACRODIR)

