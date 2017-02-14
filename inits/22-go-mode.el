;; 必要なパッケージのロード
(require 'go-mode)

(add-hook 'go-mode-hook (lambda()
           (global-whitespace-mode -1)))
