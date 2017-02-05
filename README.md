.emacs.d
==================================

＊要 Emacs24 以上

    git clone git://github.com/k-yamada/dot.emacs.d.git ~/.emacs.d


## 設計思想

  * [init-loader.el と package.el を導入して快適 Emacs ライフ - Qiita](http://qiita.com/catatsuy/items/5f1cd86e2522fd3384a0)
  * [これが今の私の Emacs の設定です - Qiita](http://qiita.com/catatsuy/items/55d50d13ebc965e5f31e)

## Ruby 環境設定

    gem install rcodetools
    rbenv rehash

## Go 環境設定

Go 自体の設定は終わっていること前提

    go get -u golang.org/x/tools/cmd/goimports
    go get -u code.google.com/p/rog-go/exp/cmd/godef
    go get -u github.com/nsf/gocode
    go get -u github.com/dougm/goflymake

## 必要なnpm

    npm install -g gh-markdown-cli
    npm install -g js-beautify

## プログラム用フォントRictyをインストール

```
$ brew tap sanemat/font
$ brew install ricty
...
To install Ricty:
  $ cp -f /usr/local/Cellar/ricty/3.2.4/share/fonts/Ricty*.ttf ~/Library/Fonts/
  $ fc-cache -vf

# To install Rictyに表示されているコマンドを実行
$ cp -f /usr/local/Cellar/ricty/3.2.4/share/fonts/Ricty*.ttf ~/Library/Fonts/
$ fc-cache -vf
```

## elisp の追加

elisp を追加したい時は `site-lisp` に突っ込むか `package.el` で入れる

`package.el` で入れられるものは必ずこちらでいれて `init.el` に書いておく

 `M-x package-list-packages` とやると一覧が見れて `i` で選択， `x` を押すとインストールできる

入れられないものは手動で入れる

  * [YaTeX](http://www.yatex.org/)
  * [Typescript](http://blogs.msdn.com/b/interoperability/archive/2012/10/01/sublime-text-vi-emacs-typescript-enabled.aspx)
  * [ibus.el](http://www11.atwiki.jp/s-irie/pages/21.html) （Linux 環境のみ）
# dot.emacs.d

# よく使うコマンド

参考: http://uguisu.skr.jp/Windows/emacs.html

操作 | コマンド
-----|-----
anything | Ctrl+l
split window right | Ctl+3
change current window | Ctrl+x o
copy selected area | M+w
paste | Ctrl+y
undo | Ctrl+/
Query replace | M+%

## カーソル操作

操作 | コマンド
-----|-----
Page Down | Ctrl+v
Page Up | alt+v
