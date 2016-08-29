;; ~/.emacs.d/site-lisp 以下全部読み込み
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))

(package-initialize)

(require 'cl)

(defvar installing-package-list
  '(
    ;; ここに使っているパッケージを書く。
    init-loader
    anything
    swift-mode
    php-mode
    scala-mode2
    markdown-mode
    scss-mode
    haskell-mode
    js2-mode
    google-c-style
    yaml-mode
    flycheck
    exec-path-from-shell
    dropdown-list
    migemo
    open-junk-file
    recentf-ext
    popwin
    google-translate
    auto-complete
    foreign-regexp
    emmet-mode
    csharp-mode
    auto-highlight-symbol
    highlight-symbol
    slim-mode
    apache-mode
    zenburn-theme
    ssh-config-mode
    smarty-mode
    go-mode
    go-autocomplete
    smartrep
    expand-region
    jade-mode
    coffee-mode
    haml-mode
    dash-at-point
    enh-ruby-mode
    yard-mode
    lua-mode
    rainbow-mode
    web-beautify
    json-mode
    dockerfile-mode
    smart-compile
    rubocop
    undo-tree
    undohist
    point-undo
    redo+
    jsx-mode
    quickrun
    ))

(let ((not-installed (loop for x in installing-package-list
                            when (not (package-installed-p x))
                            collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
        (package-install pkg))))

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits")
(put 'set-goal-column 'disabled nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(coffee-tab-width 2)
 '(display-time-mode t)
 '(foreign-regexp/regexp-type (quote ruby))
 '(google-translate-default-source-language "ja")
 '(google-translate-default-target-language "en")
 '(haskell-mode-hook (quote (turn-on-haskell-indentation)))
 '(menu-bar-mode nil)
 '(reb-re-syntax (quote foreign-regexp))
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(tool-bar-mode nil)
 '(transient-mark-mode t)
 '(vc-handled-backends nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
