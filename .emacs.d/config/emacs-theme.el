;;; emacs-theme.el --- A simple emacs configuration.

;;; Commentary:
;;; Customize emacs UI

;;; Code:

;; Add themes to load list
(load-file "~/.emacs.d/theme/modern-obsidian/obsidian-theme.el")

;; Load the theme
(load-theme 'obsidian t)

;; provide the package
(provide 'emacs-theme)

;;; emacs-theme.el ends here
