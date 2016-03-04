;;; packages.el --- PHP Layer packages File for Spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq general-packages
      '(

        (goto-last-change
         :fetcher url
         :url "https://www.emacswiki.org/emacs/download/goto-last-change.el")

        (multiple-cursors)

        (cursor-chg
         :fetcher url
         :url "https://www.emacswiki.org/emacs/download/cursor-chg.el")

        (sql-indent
         :fetcher github
         :repo "bsvingen/sql-indent")

        ))

(defun general/init-goto-last-change ()
  (use-package goto-last-change
    :defer t
    :init
    (define-key global-map "\C-c\C-v" 'goto-last-change)
    :config))

(defun general/init-multiple-cursors ()
  (use-package multiple-cursors
    :defer t
    :init
    (global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
    (global-set-key (kbd "C->") 'mc/mark-next-like-this)
    (global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
    (global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
    (global-set-key (kbd "C-S-<mouse-1>") 'mc/add-cursor-on-click)
    :config))

(defun general/init-cursor-chg ()
  (use-package cursor-chg
    :defer t
    :init
    (toggle-cursor-type-when-idle 1) ; Turn on cursor change when Emacs is idle
    (change-cursor-mode 1) ; Turn on change for overwrite, read-only, and input mode
    :config))

(defun general/init-sql-indent ()
  (use-package sql-indent
    :defer t
    :init
    :config))
