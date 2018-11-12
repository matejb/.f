(setq react-packages
      '(

        rjsx-mode
        (rjsx-mode :location elpa)

        typescript-mode
        (typescript-mode :location elpa)

        prettier-js
        (prettier-js :location elpa)

        ))

(defun react/init-rjsx-mode ()
  (use-package rjsx-mode
    :defer t
    :init
    ))

(defun react/init-typescript-mode ()
  (use-package typescript-mode
    :defer t
    :init
    (add-to-list 'auto-mode-alist '("\\.tsx\\'" . typescript-mode))
    :config
    (setq typescript-indent-level 2)
    ))

(defun react/init-prettier-js ()
  (use-package prettier-js
    :config
    (add-hook 'js2-mode-hook 'prettier-js-mode)
    (add-hook 'web-mode-hook 'prettier-js-mode)
    (add-hook 'typescript-mode-hook 'prettier-js-mode)
    :ensure t)
  )
