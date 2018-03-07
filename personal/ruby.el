; (add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
; (add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook 'rubocop-mode)
(global-set-key (kbd "C-c C-c") 'ruby-send-buffer)
