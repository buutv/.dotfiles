;;; config.el --- Custom Emacs configuration

;;; Commentary:
;;; Load all modules from the config directory

;;; Code:

;; Add Config to load list
(add-to-list 'load-path "~/.emacs.d/config/")

(require 'emacs-ui)
(require 'emacs-text)
(require 'emacs-backup)
(require 'emacs-plugin)
(require 'emacs-theme)

;; Provide the package
(provide 'config)

;;; config.el ends here
