;;; doom/config.el -*- lexical-binding: t; -*-


;; Default emacs working directory
(setq default-directory "~/work")


;; Snippets
;; Snippets
(setq yas-snippet-dirs '("~/.config/doom/snippets"))

;; PHP
(setq flycheck-phpcs-standard "PSR2")
(setq php-cs-fixer-level-option "~/.config/doom/phpcs-PSR2-custom.xml")

;(add-hook 'php-mode-hook 'php-enable-psr2-coding-style)
