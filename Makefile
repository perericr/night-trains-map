# ---- settings ----
-include Makefile.local
# sätt i Makefile.local eller miljövariabel
# HTMLDIR=<folder>

# ---- files ----
HTML=routes.hi
SMALL=map-1200.png
IMG=map.png $(SMALL)
OBJ=$(HTML) $(SMALL)

# ---- dependencies ----
.PHONY : default build install clean
default : build

routes.hi : scripts/convert routes.csv colors.csv operators.csv
	scripts/convert

map-1200.png : map.png
	convert -resize 1200x $< $@

# ---- commands ----
build : $(OBJ)

clean :
    ifdef OBJ
	rm -f $(OBJ)
    endif

install : build
    ifdef HTML
	install -m 644 $(HTML) $(INSTALL_PREFIX)$(HTMLDIR)
    endif
    ifdef IMG
	install -m 644 $(IMG) $(INSTALL_PREFIX)$(HTMLDIR)
    endif
