;;; config.el --- PHP Layer config File for Spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; variables

;; full filename
(setq frame-title-format
      (list (format "emacs %s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; line numbers
;; (linum-mode 1)

;; selection
(delete-selection-mode 1)

;; tab-width & mode
(setq tab-width 4 indent-tabs-mode 1)

;; expand region
(define-key global-map "\M-q" 'er/expand-region)

;; comment-or-uncomment-region
(define-key global-map "\M-d" 'comment-or-uncomment-region)

;; helm-imenu
(global-set-key (kbd "\C-c m") 'helm-imenu)

;; dir moode options
(setq dired-listing-switches "-alh")

;; html
;; (add-hook 'html-mode-hook
;;           (lambda ()
;;             (setq tab-width 2 indent-tabs-mode 1)))

;; ;; web-mode
;; (add-hook 'web-mode-hook
;;           (lambda ()
;;             (setq tab-width 2 indent-tabs-mode 1)))

;; ;; smarty
;; (add-hook 'smarty-mode-hook
;;           (lambda ()
;;             (setq tab-width 2 indent-tabs-mode 1)))

;; smart-beginning-of-line
(load "~/.emacs.d/private/local/general/packages/smart-beginning-of-line.el")
(define-key global-map [home] 'smart-beginning-of-line)
(define-key global-map "\C-a" 'smart-beginning-of-line)

;; duplicate-current-line-or-region
(load "~/.emacs.d/private/local/general/packages/duplicate-current-line-or-region.el")
(global-set-key (kbd "\C-c d") 'duplicate-current-line-or-region)

;; copy-file-name-to-clipboard
(load "~/.emacs.d/private/local/general/packages/copy-file-name-to-clipboard.el")

;; revert-all-buffers
(load "~/.emacs.d/private/local/general/packages/revert-all-buffers.el")
(define-key global-map "\C-r" 'revert-all-buffers)

;; pretty-print-xml-region
(load "~/.emacs.d/private/local/general/packages/pretty-print-xml-region.el")

;; sql-indent
(load "~/.emacs.d/private/local/general/packages/sql-indent.el")

;; sql-indent-string
(load "~/.emacs.d/private/local/general/packages/sql-indent-string.el")
