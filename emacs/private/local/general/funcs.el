(when (configuration-layer/package-usedp 'elfeed)
  (defun elfeed-search-show-entry-new-window (entry)
    "Display the currently selected item in a buffer."
    (interactive (list (elfeed-search-selected :ignore-region)))
    (when (elfeed-entry-p entry)
      (elfeed-untag entry 'unread)
      (elfeed-search-update-entry entry)
      (forward-line)
      (split-window-below-and-focus)
      (elfeed-show-entry entry)))
  (defun elfeed-show-exit ()
    "Exit current item."
    (interactive)
    (delete-window))
  )

(defun close-and-kill-next-pane ()
  "If there are multiple windows, then close the other pane and kill the buffer in it also."
  (interactive)
  (other-window 1)
  (kill-this-buffer)
  (if (not (one-window-p))
      (delete-window)))

(defun wrap-in-function ()
  "Wrap marked region with a specified PREFIX and closing parentheses."
  (interactive)
  (let ((prefix (read-from-minibuffer "function: ")))
    (save-excursion
      (goto-char (region-beginning))
      (insert (concat prefix "(")))
    (save-excursion
      (goto-char (region-end))
      (insert ")"))))

