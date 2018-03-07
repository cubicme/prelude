;;; Commentary:
;;; mathematica --- Wolfram and mathematica config

;;; Code:
(autoload 'wolfram-mode "wolfram-mode" nil t)
(autoload 'run-wolfram "wolfram-mode" nil t)
(setq wolfram-program "/Applications/Mathematica.app/Contents/MacOS/MathKernel")
(add-to-list 'auto-mode-alist '("\.m$" . wolfram-mode))
(setq wolfram-path "/Users/cubicme/.math")
