;;; -*- coding: utf-8-unix  -*-
;;;
;;;Part of: MMUX Cyclone Pregexp
;;;Contents: helpers module
;;;Date: May 16, 2020
;;;
;;;Abstract
;;;
;;;	This unit defines the helpers module.
;;;
;;;Copyright (C) 2020 Marco Maggi <mrc.mgg@gmail.com>
;;;All rights reserved.
;;;
;;;Permission to copy,  modify, distribute, and use this  work or a modified copy of  this work, for
;;;any purpose, is hereby granted, provided that the copy includes this copyright notice, and in the
;;;case of a  modified copy, also includes a  notice of modification.  This work is  provided as is,
;;;with no warranty of any kind.
;;;


;;;; units and module header

(define-library (mmux.cyclone.pregexp.helpers)
  (export
    assertion-violation
    debug-print)
  (import (scheme base)
    (scheme write)
    (scheme cyclone pretty-print))
  (begin


;;;; miscellaneous

(define (assertion-violation who message . irritants)
  (error message (cons who irritants)))

(define (debug-print . args)
  (pretty-print args (current-error-port)))


;;;; done

#| end of module |# ))

;;; end of file

