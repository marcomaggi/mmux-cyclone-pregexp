;;; -*- coding: utf-8-unix  -*-
;;;
;;;Part of: MMUX Cyclone Pregexp
;;;Contents: test program for version functions
;;;Date: May 12, 2020
;;;
;;;Abstract
;;;
;;;	This program tests version functions.
;;;
;;;Copyright (C) 2020 Marco Maggi <mrc.mgg@gmail.com>
;;;
;;;Permission to copy,  modify, distribute, and use this  work or a modified copy of  this work, for
;;;any purpose, is hereby granted, provided that the copy includes this copyright notice, and in the
;;;case of a  modified copy, also includes a  notice of modification.  This work is  provided as is,
;;;with no warranty of any kind.
;;;


;;;; units and module header

(import (scheme base)
  (scheme write)
  (scheme cyclone pretty-print)
  (srfi 28)
  (mmux.cyclone.pregexp.version)
  (mmux.cyclone.checks))

(check-set-mode! 'report-failed)
(check-display "*** testing library: pregexp, version functions\n")


;;;; tests

(check-for-true		(number? (mmux-cyclone-pregexp-package-major-version)))
(check-for-true		(number? (mmux-cyclone-pregexp-package-minor-version)))
(check-for-true		(number? (mmux-cyclone-pregexp-package-patch-level)))
(check-for-true		(string? (mmux-cyclone-pregexp-package-prerelease-tag)))
(check-for-true		(string? (mmux-cyclone-pregexp-package-build-metadata)))
(check-for-true		(string? (mmux-cyclone-pregexp-package-version)))
(check-for-true		(string? (mmux-cyclone-pregexp-package-semantic-version)))


;;;; done

(check-report)

;;; end of file
