;;; emacs-backup.el --- Emacs backup configuration

;;; Commentary:
;;; Customize how emacs handle backup files

;;; Code:
(setq backup-directory-alist
          `((".*" . ,temporary-file-directory)))
    (setq auto-save-file-name-transforms
          `((".*" ,temporary-file-directory t)))

;; provide the package
(provide 'emacs-backup)

;;; emacs-backup.el ends here
