;;; config.el --- PHP Layer config File for Spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

;; variables

(setq flycheck-phpcs-standard "~/.composer/vendor/squizlabs/php_codesniffer/CodeSniffer/Standards/PSR2/ruleset.xml")

;; (add-hook 'php-mode-hook
;;           '(lambda ()
;;              (require 'ac-php-company)
;;              (company-mode t)
;;              (add-to-list 'company-backends 'company-ac-php-backend )))
