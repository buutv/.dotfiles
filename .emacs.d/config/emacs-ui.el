;;; emacs-ui.el --- A simple emacs configuration.

;;; Commentary:
;;; Customize emacs UI

;;; Code:

;; Prevent the cursor from blinking
(blink-cursor-mode 0)

;; Don't use messages that you don't read
(setq initial-scratch-message "")
(setq inhibit-startup-message t)

;; Don't let Emacs hurt your ears
(setq visible-bell t)

;; Startup message
(setq inhibit-startup-echo-area-message "nicolas")

;; Fullscreen mode
;; (toggle-frame-fullscreen)

;; No scrollbar
(scroll-bar-mode 0)

;; No toolbar / Menu
(tool-bar-mode 0)
(menu-bar-mode 0)

;; Line number
(global-linum-mode 1)
(setq linum-format " %d ")

;; Highlight current line
(global-hl-line-mode 1)

;; provide the package
(provide 'emacs-ui)

;;; emacs-ui.el ends here
