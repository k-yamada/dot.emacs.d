;; smart-compile
;; (install-elisp "http://www.emacswiki.org/emacs/download/smart-compile.el")
(require 'smart-compile)
(define-key ruby-mode-map (kbd "C-c c") 'smart-compile)
(define-key ruby-mode-map (kbd "C-c C-c") (kbd "C-c c C-m"))
