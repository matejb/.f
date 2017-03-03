
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)
;;(go :variables go-tab-width 4)

(define-key global-map "\M-t" 'go-test-current-file)
(define-key global-map "\M-p" 'go-test-current-project)

(global-set-key (kbd "\C-c e") 'next-error)
