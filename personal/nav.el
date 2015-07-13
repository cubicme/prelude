(require 'nav)
(global-set-key (kbd "C-\\") 'nav-toggle)
(defun nav-mode-hl-hook ()
  (local-set-key (kbd "<right>") 'nav-open-file-under-cursor)
  (local-set-key (kbd "<left>")  'nav-go-up-one-dir))

(add-hook 'nav-mode-hook 'nav-mode-hl-hook)
