# ---- settings ----
-include Makefile.local
# sätt i Makefile.local eller miljövariabel
# HTMLDIR=<folder>

# ---- files ----
HTML=routes.hi
OBJ=$(HTML)

# ---- dependencies ----
.PHONY : default build install clean
default : build

routes.hi : scripts/convert routes.csv colors.csv operators.csv
	scripts/convert

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
