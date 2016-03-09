;;; packages.el --- PHP Layer packages File for Spacemacs
;;
;; This file is not part of GNU Emacs.
;;
;;; License: GPLv3

(setq apache-packages
      '(

        (apache-mode
         :fetcher url
         :url "https://www.emacswiki.org/emacs/download/apache-mode.el")

        ;; exclude list
        
        ;; (flyspell :excluded t)

        ))

(defun apache/init-apache-mode ()
  (use-package apache-mode
    :defer t
    :mode
    ("\\.htaccess\\'" . apache-mode)
    ("sites-\\(available\\|enabled\\)/" . apache-mode)))
