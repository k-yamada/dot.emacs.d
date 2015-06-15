(autoload 'enh-ruby-mode "enh-ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.cap$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.god" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.thor" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.shoes" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("config.ru$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Capfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile" . enh-ruby-mode))

(add-to-list 'interpreter-mode-alist '("ruby" . enh-ruby-mode))

(defun my-ruby-mode-hook-function ()
  (require 'smart-compile)
  (define-key enh-ruby-mode-map (kbd "C-c c") 'smart-compile)
  (define-key enh-ruby-mode-map (kbd "C-c C-c") (kbd "C-c c C-m"))
  (require 'rcodetools)
  (define-key enh-ruby-mode-map (kbd "M-p") 'xmp)
  (setq enh-ruby-deep-indent-paren nil)
  (setq enh-ruby-deep-indent-paren-style nil)
  (setq enh-ruby-use-encoding-map nil)
  (make-local-variable 'ac-ignore-case)
  (setq ac-ignore-case nil))
(add-hook 'enh-ruby-mode-hook 'my-ruby-mode-hook-function)


;; 保存時にmagic commentを追加しないようにする
(defadvice enh-ruby-mode-set-encoding (around stop-enh-ruby-mode-set-encoding)
  "If enh-ruby-not-insert-magic-comment is true, stops enh-ruby-mode-set-encoding."
  (if (and (boundp 'enh-ruby-not-insert-magic-comment)
           (not enh-ruby-not-insert-magic-comment))
      ad-do-it))
(ad-activate 'enh-ruby-mode-set-encoding)
(setq-default enh-ruby-not-insert-magic-comment t)
