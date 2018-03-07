;; org mode customization

;;; Code:
(add-hook 'org-mode-hook
          (lambda ()
            (whitespace-mode 0)))

(setq org-journal-dir "~/.org/diary")

;;; customizations ends here
