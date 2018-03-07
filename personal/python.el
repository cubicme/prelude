(setq anaconda-mode-server-script "/usr/local/lib/python2.7/site-packages/anaconda_mode.py")

(custom-set-variables
 '(conda-anaconda-home "/Users/cubicme/miniconda3"))

(add-hook 'python-mode-hook 'flymake-mode)
(eval-after-load "flymake"
  '(progn
     (require 'flymake-cursor)
     (defun flymake-pylint-init ()
       (let* ((temp-file (flymake-init-create-temp-buffer-copy
                          'flymake-create-temp-inplace))
              (local-file (file-relative-name temp-file (file-name-directory buffer-file-name))))
         (list "epylint" (list local-file))))
     (add-to-list 'flymake-allowed-file-name-masks '("\\.py\\'" flymake-pylint-init))))

(defun my/python-mode-hook ()
  (add-to-list 'company-backends 'company-jedi))

(add-hook 'python-mode-hook 'my/python-mode-hook)
