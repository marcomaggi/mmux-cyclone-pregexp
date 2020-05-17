## Process this file with automake to produce Makefile.in

include meta/automake/cyclone-scheme-prelude.mk


#### documentation

MMUX_CYCLONE_DOCSTEM			= mmux-cyclone-pregexp

info_TEXINFOS				= doc/mmux-cyclone-pregexp.texi
doc_mmux_cyclone_pregexp_TEXINFOS	= doc/macros.texi


#### library build targets

MMUX_CYCLONE_LIBS_SRCS		=			\
	lib/mmux.cyclone.pregexp.version.sld		\
	lib/mmux.cyclone.pregexp.helpers.sld		\
	lib/mmux.cyclone.pregexp.sld

MMUX_CYCLONE_LIBS_LIBS		=			\
	build-lib/mmux.cyclone.pregexp.version.so	\
	build-lib/mmux.cyclone.pregexp.helpers.so	\
	build-lib/mmux.cyclone.pregexp.so

MMUX_CYCLONE_LIBS_METAS		=			\
	build-lib/mmux.cyclone.pregexp.version.meta	\
	build-lib/mmux.cyclone.pregexp.helpers.meta	\
	build-lib/mmux.cyclone.pregexp.meta

MMUX_CYCLONE_LIBS_OBJS		=			\
	build-lib/mmux.cyclone.pregexp.version.o	\
	build-lib/mmux.cyclone.pregexp.helpers.o	\
	build-lib/mmux.cyclone.pregexp.o

## --------------------------------------------------------------------

build-lib/mmux.cyclone.pregexp.version.so: 			\
		build-lib/mmux.cyclone.pregexp.version.sld	\
		$(MMUX_CYCLONE_LIBS_PREREQ)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)

build-lib/mmux.cyclone.pregexp.helpers.so: 			\
		build-lib/mmux.cyclone.pregexp.helpers.sld	\
		$(MMUX_CYCLONE_LIBS_PREREQ)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)

build-lib/mmux.cyclone.pregexp.so: 				\
		build-lib/mmux.cyclone.pregexp.sld		\
		build-lib/mmux.cyclone.pregexp.helpers.so	\
		build-lib/mmux.cyclone.pregexp.version.so	\
		$(MMUX_CYCLONE_LIBS_PREREQ)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)


#### interface to "make check"
#
# Read "Parallel Test Harness" in the documentation of GNU Automake to
# understand how to use this interface for "make check".
#

EXTRA_DIST			+= lib/mmux.cyclone.checks.sld

MMUX_CYCLONE_CHECK_SRCS		=		\
	tests/test-version.scm			\
	tests/test-pregexp.scm

MMUX_CYCLONE_CHECK_PROGS	=		\
	build-tests/test-version.exe		\
	build-tests/test-pregexp.exe

MMUX_CYCLONE_CHECK_PREREQ	+= build-lib/mmux.cyclone.checks.so

## --------------------------------------------------------------------

build-lib/mmux.cyclone.checks.so: build-lib/mmux.cyclone.checks.sld build-lib/$(am__dirstamp)
	$(CYCLONE_COMPILE_LIBS_LIB) $(<)


#### common stuff

include meta/automake/cyclone-scheme-postlude.mk

### end of file
