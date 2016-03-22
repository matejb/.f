;;; packages.el --- PHP Layer packages File for Spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq phpplus-packages
      '(

        ;; Included packages

        (php-mode)
        (company)
        (ac-php)
        (smarty-mode)
        (php-refactor-mode)

        ))

(when (configuration-layer/layer-usedp 'auto-completion)
  (defun php/post-init-php-mode ()
    (require 'ac-php-company)
    (add-to-list 'company-backends 'company-ac-php-backend)))

(defun phpplus/init-ac-php ()
  (use-package ac-php
    :defer t
    :init
    (global-set-key (kbd "\C-c f") 'ac-php-find-symbol-at-point)
    (global-set-key (kbd "\C-c r") 'ac-php-location-stack-back)
    :config
    ))

(defun phpplus/init-smarty-mode ()
  (use-package smarty-mode
    :defer t))

(defun phpplus/init-php-refactor-mode ()
  (use-package php-refactor-mode
    :defer t))

