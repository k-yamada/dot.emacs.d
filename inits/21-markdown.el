(autoload 'markdown-mode "markdown-mode.el" "Major mode for editing Markdown files" t)

(setq auto-mode-alist (cons '("\\.md$" . markdown-mode) auto-mode-alist))

;; 自動インデントを無効にする
(add-hook 'markdown-mode-hook '(lambda ()
  (electric-indent-local-mode -1)))
