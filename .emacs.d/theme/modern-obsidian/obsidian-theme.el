;;; obsidian-theme.el --- port of the eclipse obsidian theme
;; Author: martin haesler
;; URL: http://github.com/mswift42/obsidian-theme
;; Package-Version: 20140420.943
;;; Version: 0.1
;;; Commentary:
;; original eclipse theme by Morinar
;;(http://eclipsecolorthemes.org/?view=theme&id=21)

;;; Code:
(deftheme obsidian)

;;; Color Palette
(defvar obsidian-colors-alist
  '(("om-base"         . "#e2e2e2")
    ("om-cursor"       . "#edab0e")
    ("om-bg1"          . "#292b2e")
    ("om-bg2"          . "#212026")
    ("om-bg3"          . "#100a14")
    ("om-bg4"          . "#0a0814")
    ("om-key1"         . "#4f97d7")
    ("om-key2"         . "#277bb8")
    ("om-builtin"      . "#1f71ab")
    ("om-keyword"      . "#237fbf")
    ("om-const"        . "#a45bad")
    ("om-comment"      . "#2aa198")
    ("om-comment-bg"   . "#293234")
    ("om-func"         . "#bc6ec5")
    ("om-str"          . "#2d9574")
    ("om-type"         . "#ce537a")
    ("om-comp"         . "#c56ec3")
    ("om-var"          . "#7590db")
    ("om-err"          . "#e0211d")
    ("om-war"          . "#dc752f")
    ("om-inf"          . "#2f96dc")
    ("om-suc"          . "#86dc2f")
    ("om-green"        . "#67b11d")
    ("om-yellow"       . "#b1951d")
    ("om-cyan"         . "#28def0")
    ("om-violet"       . "#a31db1")
    ("om-red"          . "#f2241f")
    ("om-active1"      . "#222226")
    ("om-active2"      . "#5d4d7a")
    ("om-inactive"     . "#5d4d7a")
    ("om-m-line-brdr"  . "#5d4d7a")
    ("om-org-block-bg" . "#232528")
    ("om-org-h1-bg"    . "#293239")
    ("om-org-h2-bg"    . "#293235")
    ("om-org-h3-bg"    . "#2d332c")
    ("om-org-h4-bg"    . "#32322c")
    ("om-highlight"    . "#333c45")
    ("om-lnum"         . "#333c45")
    ("om-green-bg"     . "#29422d")
    ("om-red-bg"       . "#512e31")))

(defmacro obsidian-with-color-variables (&rest body)
  "`let' bind all colors defined in `obsidian-colors-alist' around BODY.
Also bind `class' to ((class color) (min-colors 89))."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   obsidian-colors-alist))
     ,@body))

(obsidian-with-color-variables
  (custom-theme-set-faces
   'obsidian

   ;; base
   `(cursor ((t (:background ,om-cursor))))
   `(default ((t (:background ,om-bg1 :foreground ,om-base))))
   `(region ((t (:background ,om-highlight :foreground ,om-base))))
   `(highlight ((t (:background ,om-bg3 :foreground ,om-base))))
   `(hl-line ((t (:background ,om-bg2))))
   `(error ((t (:foreground ,om-err))))
   `(fringe ((t (:background ,om-bg1 :foreground ,om-base))))
   `(show-paren-match-face ((t (:background ,om-suc))))
   `(isearch ((t (:bold t :foreground ,om-bg1 :background ,om-inf))))
   `(minibuffer-prompt ((t (:bold t :foreground ,om-keyword))))

   ;; mode line
   `(mode-line
     ((t (:foreground ,om-base :background ,om-active1 :box (:color ,om-m-line-brdr :line-width 1)))))
   `(mode-line-inactive
     ((t (:foreground ,om-base :background ,om-bg1 :box (:color ,om-m-line-brdr :line-width 1)))))
   `(mode-line-buffer-id ((t (:bold t :foreground ,om-func))))

   ;; font
   `(default-italic ((t (:italic t))))
   `(font-lock-builtin-face ((t (:foreground ,om-builtin))))
   `(font-lock-negation-char-face ((t (:foreground ,om-const))))
   `(font-lock-reference-face ((t (:foreground ,om-const))))
   `(font-lock-comment-face ((t (:background ,om-comment-bg :foreground ,om-comment))))
   `(font-lock-comment-delimiter-face ((t (:background ,om-comment-bg :foreground ,om-comment))))
   `(font-lock-constant-face ((t (:foreground ,om-const))))
   `(font-lock-doc-face ((t (:foreground ,om-comment))))
   `(font-lock-function-name-face ((t (:bold t :foreground ,om-func))))
   `(font-lock-keyword-face ((t (:bold t :foreground ,om-keyword))))
   `(font-lock-preprocessor-face ((t (:foreground ,om-func))))
   `(font-lock-reference-face ((t (:bold t :foreground ,om-const))))
   `(font-lock-string-face ((t (:foreground ,om-str))))
   `(font-lock-type-face ((t (:bold t :foreground ,om-type))))
   `(font-lock-variable-name-face ((t (:foreground ,om-var))))
   `(font-lock-warning-face ((t (:foreground ,om-war :background ,om-bg1))))
   `(link ((t (:foreground ,om-comment :underline t))))
   `(link-visited ((t (:foreground ,om-comp :underline t))))

   ;; emacs Org
   `(org-agenda-clocking ((t (:foreground ,om-comp))))
   `(org-agenda-date ((t (:foreground ,om-var :height 1.1))))
   `(org-agenda-date-today ((t (:weight bold :foreground ,om-keyword :height 1.3))))
   `(org-agenda-date-weekend ((t (:weight normal :foreground ,om-var))))
   `(org-agenda-done ((t (:foreground ,om-green :bold t))))
   `(org-agenda-structure ((t (:weight bold :foreground ,om-comp))))
   `(org-block ((t (:foreground ,om-base))))
   `(org-block-background ((t (:background ,om-org-block-bg))))
   `(org-clock-overlay ((t (:foreground ,om-comp))))
   `(org-code ((t (:foreground ,om-cyan))))
   `(org-column ((t (:background ,om-highlight))))
   `(org-column-title ((t (:background ,om-highlight))))
   `(org-date ((t (:underline t :foreground ,om-var) )))
   `(org-date-selected ((t (:background ,om-func :foreground ,om-bg1) )))
   `(org-document-info-keyword ((t (:foreground ,om-str))))
   `(org-document-title ((t (:foreground ,om-func :weight bold :height 1.4 :underline t))))
   `(org-done ((t (:foreground ,om-green :bold t :overline t :background ,om-org-h3-bg))))
   `(org-ellipsis ((t (:foreground ,om-builtin))))
   `(org-footnote  ((t (:underline t :foreground ,om-base))))
   `(org-hide ((t (:foreground ,om-base))))
   `(org-level-1
     ((t (:bold t :foreground ,om-inf :height 1.3 :background ,om-org-h1-bg :overline t))))
   `(org-level-2 ((t (:bold t :foreground ,om-str :height 1.2 :background ,om-org-h2-bg))))
   `(org-level-3 ((t (:bold nil :foreground ,om-green :height 1.1 :background ,om-org-h3-bg))))
   `(org-level-4 ((t (:bold nil :foreground ,om-yellow :background ,om-org-h4-bg))))
   `(org-level-5 ((t (:bold nil :foreground ,om-inf))))
   `(org-level-6 ((t (:bold nil :foreground ,om-str))))
   `(org-level-7 ((t (:bold nil :foreground ,om-green))))
   `(org-level-8 ((t (:bold nil :foreground ,om-yellow))))
   `(org-link ((t (:underline t :foreground ,om-comment))))
   `(org-mode-line-clock-overrun ((t (:foreground ,om-err))))
   `(org-priority ((t (:foreground ,om-war :bold t))))
   `(org-quote ((t (:inherit org-block :slant italic))))
   `(org-scheduled ((t (:foreground ,om-comp))))
   `(org-scheduled-today ((t (:foreground ,om-func :weight bold :height 1.2))))
   `(org-sexp-date ((t (:foreground ,om-base))))
   `(org-special-keyword ((t (:foreground ,om-func))))
   `(org-table ((t (:foreground ,om-yellow :background ,om-org-h4-bg))))
   `(org-todo ((t (:foreground ,om-war :bold t :overline t :background ,om-org-h4-bg))))
   `(org-verbatim ((t (:foreground ,om-inf))))
   `(org-verse ((t (:inherit org-block :slant italic))))
   `(org-warning ((t (:foreground ,om-err))))

   ;; font latex
   `(font-latex-bold-face ((t (:foreground ,om-comp))))
   `(font-latex-italic-face ((t (:foreground ,om-key2 :italic t))))
   `(font-latex-string-face ((t (:foreground ,om-str))))
   `(font-latex-match-reference-keywords ((t (:foreground ,om-const))))
   `(font-latex-match-variable-keywords ((t (:foreground ,om-var))))

   `(ido-only-match ((t (:foreground ,om-red))))
   `(ido-first-match ((t (:foreground ,om-comp))))

   ;; GNU
   `(gnus-header-content ((t (:foreground ,om-keyword))))
   `(gnus-header-from ((t (:foreground ,om-var))))
   `(gnus-header-name ((t (:foreground ,om-comp))))
   `(gnus-header-subject ((t (:foreground ,om-func :bold t))))

   ;; Flycheck
   `(flycheck-error ((t (:underline (:style line :color ,om-err)))))
   `(flycheck-warning ((t (:underline (:style line :color ,om-war)))))
   `(flycheck-info ((t (:underline (:style line :color ,om-inf)))))

   ;; Whitespace
   `(whitespace-tab ((t :foreground nil :background ,om-err )))
   `(whitespace-trailing ((t :foreground nil :background ,om-err )))
   `(trailing-whitespace ((t :foreground nil :background ,om-err )))

   ;; Others
   `(slime-repl-inputed-output-face ((t (:foreground ,om-comp)))))
)

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'obsidian)

;;; obsidian-theme.el ends here
