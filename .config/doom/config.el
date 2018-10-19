;;; doom/config.el -*- lexical-binding: t; -*-

;; Default emacs working directory
(setq default-directory "~/work")

;; Snippets
(setq yas-snippet-dirs '("~/.config/doom/snippets"))

;; PHP
(setq flycheck-phpcs-standard "PSR2")
(setq php-cs-fixer-level-option "~/.config/doom/phpcs-PSR2-custom.xml")

(add-hook 'php-mode-hook 'php-enable-psr2-coding-style)

;; HTML
(setq web-mode-markup-indent-offset 2)

;; CSS
(setq web-mode-css-indent-offset 2)
(setq css-indent-offset 2)

;; JavaScript
(setq web-mode-code-indent-offset 2)

(add-hook 'js2-mode-hook (lambda () (setq js2-basic-offset 2)))

;; SQL
(setq sql-mysql-login-params
      '((user :default "root")
        (database :default "")
        (server :default "localhost")
        (port :default 5432)))
