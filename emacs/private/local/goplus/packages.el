(defconst goplus-packages
  '(

    yasnippet
    (yasnippet :location elpa)

    flycheck-golangci-lint
    (flycheck-golangci-lint :location elpa)

    gotest
    (gotest :location elpa)

    go-add-tags
    (go-add-tags :location elpa)

    go-guru
    (go-guru :location elpa)

    go-dlv
    (go-dlv :location elpa)

    go-tag
    (go-tag :location elpa)

    ))

(defun goplus/post-init-yasnippet ()
  (when (configuration-layer/package-usedp 'yasnippet)
    (add-to-list 'yas-snippet-dirs "~/.f/emacs/private/snippets/go-mode")
    )
  )

(defun goplus/init-flycheck-golangci-lint ()
  (use-package flycheck-golangci-lint
    :ensure t
    :hook (go-mode . flycheck-golangci-lint-setup)
    (setq flycheck-golangci-lint-tests t)))

(defun goplus/init-gotest ()
  (use-package gotest
    ))

(defun goplus/init-go-add-tags ()
  (use-package go-add-tags
    ))

(defun goplus/init-go-guru()
  (use-package go-guru
    :init
    (define-key global-map "\M-q" 'go-guru-expand-region)
    )
  (spacemacs/declare-prefix-for-mode 'go-mode "mf" "guru")
  (spacemacs/set-leader-keys-for-major-mode 'go-mode
    "fd" 'go-guru-describe
    "ff" 'go-guru-freevars
    "fi" 'go-guru-implements
    "fc" 'go-guru-peers
    "fr" 'go-guru-referrers
    "fj" 'go-guru-definition
    "fp" 'go-guru-pointsto
    "fs" 'go-guru-callstack
    "fe" 'go-guru-whicherrs
    "f<" 'go-guru-callers
    "f>" 'go-guru-callees
    "fo" 'go-guru-set-scope))

(defun goplus/init-go-dlv()
  (use-package go-dlv
    :init
    ))

(defun goplus/init-go-tag()
  (use-package go-tag
    :init
    (setq go-tag-args (list "-transform" "camelcase"))
    ))

