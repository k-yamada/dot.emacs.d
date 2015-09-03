(require 'swfit-mode)
(add-to-list 'auto-mode-alist '("\\.swift\\'" . swift-mode))

(add-hook 'swift-mode-hook
  (lambda ()
    (setq-local tab-width 2)
    (defvar swift-indent-offset)
    (setq-local swift-indent-offset 2)))
