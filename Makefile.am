## Process this file with automake to produce Makefile.in

ACLOCAL_AMFLAGS		= -I meta/autotools
AUTOMAKE_OPTIONS	= foreign
EXTRA_DIST		= INSTALL
dist_doc_DATA		= README COPYING
CLEANFILES		=


#### documentation

EXTRA_DIST		+= doc/mmux-cyclone-docs.style.css
CLEANFILES		+= doc/mmux-cyclone-docs.css

AM_MAKEINFOFLAGS	= --no-split
AM_MAKEINFOHTMLFLAGS	= --split=node -c WORDS_IN_PAGE=0 --css-ref=mmux-cyclone-docs.css \
	-c PRE_BODY_CLOSE="<p>This document describes version <tt>$(PACKAGE_VERSION)</tt> of <em>$(PACKAGE_NAME)</em>.</p>"

info_TEXINFOS				= doc/mmux-cyclone-pregexp.texi
doc_mmux_cyclone_pregexp_TEXINFOS	= doc/macros.texi

## --------------------------------------------------------------------

doc/mmux-cyclone-pregexp.html/$(am__dirstamp): doc/$(am__dirstamp)
	@$(MKDIR_P) doc/mmux-cyclone-pregexp.html/
	@: > doc/mmux-cyclone-pregexp.html/$(am__dirstamp)

doc/mmux-cyclone-pregexp.html/mmux-cyclone-docs.css: doc/mmux-cyclone-docs.style.css doc/mmux-cyclone-pregexp.html/$(am__dirstamp)
	$(INSTALL) -m 0444 "$(top_srcdir)/doc/mmux-cyclone-docs.style.css" "$(builddir)/doc/mmux-cyclone-pregexp.html/mmux-cyclone-docs.css"

## --------------------------------------------------------------------

html-local: doc/mmux-cyclone-pregexp.html/mmux-cyclone-docs.css

install-html-local:
	$(MKDIR_P) "$(DESTDIR)$(htmldir)/mmux-cyclone-pregexp.html/"
	$(INSTALL) -m 0444 $(builddir)/doc/mmux-cyclone-pregexp.html/mmux-cyclone-docs.css "$(DESTDIR)$(htmldir)/mmux-cyclone-pregexp.html/"


#### library build targets

MMUX_CYCLONE_PREGEXP_LIBS_SRCS		=		\
	lib/mmux.cyclone.pregexp.version.sld		\
	lib/mmux.cyclone.pregexp.helpers.sld		\
	lib/mmux.cyclone.pregexp.sld

MMUX_CYCLONE_PREGEXP_LIBS_LIBS		=		\
	build-lib/mmux.cyclone.pregexp.version.so	\
	build-lib/mmux.cyclone.pregexp.helpers.so	\
	build-lib/mmux.cyclone.pregexp.so

MMUX_CYCLONE_PREGEXP_LIBS_PREREQ	= build-lib/config.scm build-lib/$(am__dirstamp)

EXTRA_DIST		+=				\
	$(MMUX_CYCLONE_PREGEXP_LIBS_SRCS)		\
	lib/mmux.cyclone.checks.sld

CLEANFILES		+=				\
	build-lib/$(am__dirstamp)			\
	build-lib/*.sld					\
	build-lib/*.so					\
	build-lib/*.o					\
	build-lib/*.c					\
	build-lib/*.meta

CYCLONE_COMPILE_LIBS_FLAGS	= -I $(builddir)/build-lib
CYCLONE_COMPILE_LIBS_LIB	= $(CYCLONE_COMPILER) $(CYCLONE_COMPILE_LIBS_FLAGS) $(CYCLONE_FLAGS)

## --------------------------------------------------------------------

build-lib/$(am__dirstamp):
	@$(MKDIR_P) build-lib
	@: > build-lib/$(am__dirstamp)

build-lib/%.sld: lib/%.sld build-lib/$(am__dirstamp)
	cp $(<) $(@)

## --------------------------------------------------------------------

build-lib/mmux.cyclone.pregexp.version.so: 			\
		build-lib/mmux.cyclone.pregexp.version.sld	\
		$(MMUX_CYCLONE_PREGEXP_LIBS_PREREQ)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)

build-lib/mmux.cyclone.pregexp.helpers.so: 			\
		build-lib/mmux.cyclone.pregexp.helpers.sld	\
		$(MMUX_CYCLONE_PREGEXP_LIBS_PREREQ)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)

build-lib/mmux.cyclone.pregexp.so: 				\
		build-lib/mmux.cyclone.pregexp.sld		\
		build-lib/mmux.cyclone.pregexp.helpers.so	\
		build-lib/mmux.cyclone.pregexp.version.so	\
		$(MMUX_CYCLONE_PREGEXP_LIBS_PREREQ)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)

## --------------------------------------------------------------------

sharedlibdir		= $(libdir)
sharedlib_SCRIPTS	= $(MMUX_CYCLONE_PREGEXP_LIBS_LIBS)


#### interface to "make check"
#
# Read "Parallel Test Harness" in the documentation of GNU Automake to
# understand how to use this interface for "make check".
#

MMUX_CYCLONE_PREGEXP_CHECK_SRCS	=	\
	tests/test-version.scm		\
	tests/test-pregexp.scm

MMUX_CYCLONE_PREGEXP_CHECK_PROGS =	\
	build-tests/test-version.exe	\
	build-tests/test-pregexp.exe

EXTRA_DIST	+= $(MMUX_CYCLONE_PREGEXP_CHECK_SRCS)
CLEANFILES	+=			\
	build-tests/$(am__dirstamp)	\
	build-tests/*.scm		\
	build-tests/*.so		\
	build-tests/*.o			\
	build-tests/*.c			\
	build-tests/*.meta		\
	build-tests/*.exe

AM_TESTS_ENVIRONMENT	= export LD_LIBRARY_PATH=$(builddir)/build-lib:$(LD_LIBRARY_PATH);
TESTS			= $(MMUX_CYCLONE_PREGEXP_CHECK_PROGS)

CYCLONE_COMPILE_CHECK_ENV	= export LD_LIBRARY_PATH=$(builddir)/build-lib:$(LD_LIBRARY_PATH);
CYCLONE_COMPILE_CHECK_FLAGS	= -I $(builddir)/build-lib
CYCLONE_COMPILE_CHECK_PROG	= $(CYCLONE_COMPILE_CHECK_ENV) $(CYCLONE_COMPILER) $(CYCLONE_COMPILE_CHECK_FLAGS) $(CYCLONE_FLAGS)

MMUX_CYCLONE_PREGEXP_CHECK_PREREQ= build-lib/mmux.cyclone.checks.so build-tests/$(am__dirstamp)

## --------------------------------------------------------------------

build-tests/$(am__dirstamp):
	@$(MKDIR_P) build-tests
	@: > build-tests/$(am__dirstamp)

build-lib/mmux.cyclone.checks.so: build-lib/mmux.cyclone.checks.sld build-tests/$(am__dirstamp)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)

## --------------------------------------------------------------------

build-tests/%.scm: tests/%.scm $(MMUX_CYCLONE_PREGEXP_CHECK_PREREQ)
	cp $(<) $(@)

build-tests/%: build-tests/%.scm
	$(CYCLONE_COMPILE_CHECK_PROG) $(<)

build-tests/%.exe: build-tests/%
	mv $(<) $(@)

## --------------------------------------------------------------------

.PHONY: test

test:
	for f in build-tests/*$(file)*.exe ; do $(AM_TESTS_ENVIRONMENT) $$f ; done


#### installcheck rule

MMUX_CYCLONE_INSTALLCHECK_ENV	=
MMUX_CYCLONE_INSTALLCHECK_ENV	+= LD_LIBRARY_PATH=$(DESTDIR)$(libdir):$(LD_LIBRARY_PATH); export LD_LIBRARY_PATH;
MMUX_CYCLONE_INSTALLCHECK_ENV	+= DYLD_LIBRARY_PATH=$(DESTDIR)$(libdir):$(DYLD_LIBRARY_PATH); export DYLD_LIBRARY_PATH;

installcheck-local:
	for f in $(TESTS) ; do $(MMUX_CYCLONE_INSTALLCHECK_ENV) $$f ; done

### end of file
