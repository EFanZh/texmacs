
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; MODULE      : init-pycomplete.scm
;; DESCRIPTION : Initialize the pycomplete plugin
;; COPYRIGHT   : (C) 2019  Darcy Shen
;;
;; This software falls under the GNU general public license version 3 or later.
;; It comes WITHOUT ANY WARRANTY WHATSOEVER. For details, see the file LICENSE
;; in the root directory or <http://www.gnu.org/licenses/gpl-3.0.html>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (python-launcher)
  (if (url-exists? "$TEXMACS_HOME_PATH/plugins/pyprompt")
      (string-append "python \""
                     (getenv "TEXMACS_HOME_PATH")
                     "/plugins/pyprompt/src/prompt.py\"")
      (string-append "python \""
                     (getenv "TEXMACS_PATH")
                     "/plugins/pyprompt/src/prompt.py\"")))

(plugin-configure pyprompt
  (:require (url-exists-in-path? "python"))
  (:launch ,(python-launcher))
  (:session "Prompt Implemented in Python"))
