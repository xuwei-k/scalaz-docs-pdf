ScalazDocs PDF
========================

[![Build Status](https://travis-ci.org/xuwei-k/scalaz-docs-pdf.svg?branch=master)](https://travis-ci.org/xuwei-k/scalaz-docs-pdf)

[Scala Text](https://github.com/xuwei-k/scalaz-docs)のPDF版です。

## 成果物

- [scalaz-docs.pdf](https://xuwei-k.github.io/scalaz-docs-pdf/scalaz-docs.pdf)

## コンパイル

コンパイルには次のものが必要です。

- [TeXLive](https://www.tug.org/texlive/)（または[MacTeX](https://tug.org/mactex/)）
- [Inkscape](https://inkscape.org/ja/)
- [Pandoc](http://pandoc.org/index.html)
- [sbt](http://www.scala-sbt.org/)
- [Python](https://www.python.org/)
- [pandocfilters](https://github.com/jgm/pandocfilters)

これらをインスールして、次のコマンドでPDFファイルを作成できます。

```
$ ./setup.sh
$ make all
```

ただし、標準でOSXのヒラギノフォントを利用してコンパイルが行なわれます。
OSXではない場合や、ヒラギノフォントが使用できない場合は下記の方法で、
TeXLive付属のIPAフォントまたは游フォントを利用したコンパイルを行ってください。

### 游フォントを利用する

次のように環境変数を設定してから`make`を実行してください。

```
$ export USE_YUFONT=true
```

### IPAフォントを利用する

次のように環境変数を設定してから`make`を実行してください。

```
$ export USE_IPAFONT=true
```

## ライセンス

[scalaz docs](https://github.com/xuwei-k/scalaz-docs) (文章の内容)と[scala_text_pdf](https://github.com/dwango/scala_text_pdf) (pdf生成コード部分)のライセンスを継承し
[CC BY-NC-SA 3.0](https://creativecommons.org/licenses/by-nc-sa/3.0/deed.ja)の元で配布されています。

![CC-BY-NC-SA](https://licensebuttons.net/l/by-nc-sa/3.0/88x31.png)

