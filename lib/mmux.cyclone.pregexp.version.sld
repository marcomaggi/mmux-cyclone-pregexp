;;; -*- coding: utf-8-unix  -*-
;;;
;;;Part of: MMUX Cyclone Pregexp
;;;Contents: version functions
;;;Date: May 16, 2020
;;;
;;;Abstract
;;;
;;;	This unit defines version functions.
;;;
;;;Copyright (C) 2020 Marco Maggi <mrc.mgg@gmail.com>
;;;
;;;Permission to copy,  modify, distribute, and use this  work or a modified copy of  this work, for
;;;any purpose, is hereby granted, provided that the copy includes this copyright notice, and in the
;;;case of a  modified copy, also includes a  notice of modification.  This work is  provided as is,
;;;with no warranty of any kind.
;;;


;;;; units and module header

(define-library (mmux.cyclone.pregexp.version)
  (export mmux-cyclone-pregexp-package-major-version
	  mmux-cyclone-pregexp-package-minor-version
	  mmux-cyclone-pregexp-package-patch-level
	  mmux-cyclone-pregexp-package-prerelease-tag
	  mmux-cyclone-pregexp-package-build-metadata
	  mmux-cyclone-pregexp-package-version
	  mmux-cyclone-pregexp-package-semantic-version)
  (import (scheme base))
  (include "build-lib/config.scm")
  (begin


;;;; version functions

(define (mmux-cyclone-pregexp-package-major-version)	MMUX_PKG_MAJOR_VERSION)
(define (mmux-cyclone-pregexp-package-minor-version)	MMUX_PKG_MINOR_VERSION)
(define (mmux-cyclone-pregexp-package-patch-level)	MMUX_PKG_PATCH_LEVEL)
(define (mmux-cyclone-pregexp-package-prerelease-tag)	MMUX_PKG_PRERELEASE_TAG)
(define (mmux-cyclone-pregexp-package-build-metadata)	MMUX_PKG_BUILD_METADATA)
(define (mmux-cyclone-pregexp-package-version)		MMUX_PKG_VERSION)
(define (mmux-cyclone-pregexp-package-semantic-version)	MMUX_PKG_SEMANTIC_VERSION)


;;;; done

#| end of library |# ))

;;; end of file
;; Local Variables:
;; mode: scheme
;; End:
