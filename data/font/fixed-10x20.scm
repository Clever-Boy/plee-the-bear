;
;  Plee the Bear -- gfx script tools
;
;  Copyright (C) 2005-2010 Julien Jorge, Sebastien Angibaud
;
;  This program is free software; you can redistribute it and/or modify it
;  under the terms of the GNU General Public License as published by the
;  Free Software Foundation; either version 2 of the License, or (at your
;  option) any later version.
;
;  This program is distributed in the hope that it will be useful, but WITHOUT
;  ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
;  FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
;  more details.
;
;  You should have received a copy of the GNU General Public License along
;  with this program; if not, write to the Free Software Foundation, Inc.,
;  51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
;
;  contact: plee-the-bear@gamned.org
;
;  Please add the tag [PTB] in the subject of your mails.
;
; --
;
; This script is intended to be run in this directory and via gimp-console:
;
;   gimp-console -b - < this_script.scm
;
(load "../common.scm")

(define compute-x
  (lambda (index char-width width)
    (modulo (* index char-width) width)
    ); lambda
  ); compute-x

(define compute-y
  (lambda (index char-width char-height width)
    (* (floor (/ (* index char-width) width)) char-height)
    ); lambda
  ); compute-y

(define copy-glyph
  (lambda (src_image dest_image index layers)
    (let ( (direct_copy_count 103)
           (width 510) )
      (create-layer src_image layers
                    (compute-x index 10 width)
                    (compute-y index 10 20 width)
                    10 20 dest_image)
      ) ; let
    ) ; lambda
  ); copy-glyph

(define copy-glyphes
  (lambda (src_image dest_image)
    (let ( (direct_copy_count 103)
           (width 510) )
      (let loop ((i 0))
        (unless (= i direct_copy_count)
                (copy-glyph src_image dest_image i (list i))
                (loop (+ i 1))
                ) ; unless
        ) ; let loop

      (let ( (i direct_copy_count)
             (A-s direct_copy_count)
             (E-s (+ direct_copy_count 1))
             (I-s (+ direct_copy_count 2))
             (O-s (+ direct_copy_count 3))
             (U-s (+ direct_copy_count 4))
             (i-sp (+ direct_copy_count 5))
             (tilde (+ direct_copy_count 6))
             (cedilla (+ direct_copy_count 7))
             (ring-cap (+ direct_copy_count 8))
             (umlaut-cap (+ direct_copy_count 9))
             (circ-cap (+ direct_copy_count 10))
             (grave-cap (+ direct_copy_count 11))
             (acute-cap (+ direct_copy_count 12))
             (ring (+ direct_copy_count 13))
             (umlaut (+ direct_copy_count 14))
             (circ (+ direct_copy_count 15))
             (grave (+ direct_copy_count 16))
             (acute (+ direct_copy_count 17))
             )

        (copy-glyph src_image dest_image (+ i 0) (list 13 tilde)) ; �
        (copy-glyph src_image dest_image (+ i 1) (list 2 cedilla)) ; �
        (copy-glyph src_image dest_image (+ i 2) (list 28 cedilla)) ; �

        (copy-glyph src_image dest_image (+ i 3) (list 0 ring)) ; �
        (copy-glyph src_image dest_image (+ i 4) (list 0 umlaut)) ; �
        (copy-glyph src_image dest_image (+ i 5) (list 0 circ)) ; �
        (copy-glyph src_image dest_image (+ i 6) (list 0 grave)) ; �
        (copy-glyph src_image dest_image (+ i 7) (list 0 acute)) ; �

        (copy-glyph src_image dest_image (+ i 8) (list 4 umlaut)) ; �
        (copy-glyph src_image dest_image (+ i 9) (list 4 circ)) ; �
        (copy-glyph src_image dest_image (+ i 10) (list 4 grave)) ; �
        (copy-glyph src_image dest_image (+ i 11) (list 4 acute)) ; �

        (copy-glyph src_image dest_image (+ i 12) (list i-sp umlaut)) ; �
        (copy-glyph src_image dest_image (+ i 13) (list i-sp circ)) ; �
        (copy-glyph src_image dest_image (+ i 14) (list i-sp grave)) ; �
        (copy-glyph src_image dest_image (+ i 15) (list i-sp acute)) ; �

        (copy-glyph src_image dest_image (+ i 16) (list 14 umlaut)) ; �
        (copy-glyph src_image dest_image (+ i 17) (list 14 circ)) ; �
        (copy-glyph src_image dest_image (+ i 18) (list 14 grave)) ; �
        (copy-glyph src_image dest_image (+ i 19) (list 14 acute)) ; �

        (copy-glyph src_image dest_image (+ i 20) (list 20 umlaut)) ; �
        (copy-glyph src_image dest_image (+ i 21) (list 20 circ)) ; �
        (copy-glyph src_image dest_image (+ i 22) (list 20 grave)) ; �
        (copy-glyph src_image dest_image (+ i 23) (list 20 acute)) ; �

        (copy-glyph src_image dest_image (+ i 24) (list A-s ring-cap)) ; �
        (copy-glyph src_image dest_image (+ i 25) (list A-s umlaut-cap)) ; �
        (copy-glyph src_image dest_image (+ i 26) (list A-s circ-cap)) ; �
        (copy-glyph src_image dest_image (+ i 27) (list A-s grave-cap)) ; �
        (copy-glyph src_image dest_image (+ i 28) (list A-s acute-cap)) ; �

        (copy-glyph src_image dest_image (+ i 29) (list E-s umlaut-cap)) ; �
        (copy-glyph src_image dest_image (+ i 30) (list E-s circ-cap)) ; �
        (copy-glyph src_image dest_image (+ i 31) (list E-s grave-cap)) ; �
        (copy-glyph src_image dest_image (+ i 32) (list E-s acute-cap)) ; �

        (copy-glyph src_image dest_image (+ i 33) (list I-s umlaut-cap)) ; �
        (copy-glyph src_image dest_image (+ i 34) (list I-s circ-cap)) ; �
        (copy-glyph src_image dest_image (+ i 35) (list I-s grave-cap)) ; �
        (copy-glyph src_image dest_image (+ i 36) (list I-s acute-cap)) ; �

        (copy-glyph src_image dest_image (+ i 37) (list O-s umlaut-cap)) ; �
        (copy-glyph src_image dest_image (+ i 38) (list O-s circ-cap)) ; �
        (copy-glyph src_image dest_image (+ i 39) (list O-s grave-cap)) ; �
        (copy-glyph src_image dest_image (+ i 40) (list O-s acute-cap)) ; �

        (copy-glyph src_image dest_image (+ i 41) (list U-s umlaut-cap)) ; �
        (copy-glyph src_image dest_image (+ i 42) (list U-s circ-cap)) ; �
        (copy-glyph src_image dest_image (+ i 43) (list U-s grave-cap)) ; �
        (copy-glyph src_image dest_image (+ i 44) (list U-s acute-cap)) ; �

        );let
      ); let
    ); lambda
  ); define

(let ( (src_name "fixed-10x20.xcf.bz2")
       (dest_name "fixed-10x20.png") )
  (let ( (src_image (car (gimp-file-load 1 src_name src_name)))
         (dest_image (new-image 512 64)) )

    (copy-glyphes src_image dest_image)

    (save-frames-and-exit dest_name dest_image)
    ) ; let
  ) ; let
