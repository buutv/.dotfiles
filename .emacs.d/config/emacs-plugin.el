;;; emacs-plugin.el --- A simple emacs configuration.

;;; Commentary:
;;; Customize emacs UI

;;; Code:

;; Add plugins to load list
(add-to-list 'load-path "~/.emacs.d/plugin/")

;; Add custom plugin config to load list
(add-to-list 'load-path "~/.emacs.d/config/custom")

;; Web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(setq web-mode-engines-alist
      '(("blade"  . "\\.blade\\.")
        ("jsx"  . "\\.js[x]?\\'")))

;; Git gutter
(global-git-gutter-mode +1)

;; Rainbow mode
(require 'rainbow-mode)
(add-hook 'css-mode-hook 'rainbow-mode)
(add-hook 'scss-mode-hook 'rainbow-mode)

;; Flycheck
(require 'custom-flycheck)

;; Spaceline
(require 'spaceline-config)
(spaceline-spacemacs-theme)

;; provide the package
(provide 'emacs-plugin)

;;; emacs-plugin.el ends here
