# 1日目課題提出ディレクトリ

1日目の課題はこのディレクトリ以下にファイルを配置してください。

データモデリングの内容についてはこのディレクトリ内になんらかのドキュメントとしてコミットしてください。
形式はmarkdown, プレーンテキストなどが考えられますが、都合の良いフォーマットで記述してください。

日記システムのコードについては `exercise.pl` の中に記述してください。
モジュールについては `lib/` 以下に、テストは`t/` 以下に配置するとよいでしょう。

コード、テストについてはそれぞれ、このディレクトリで以下のコマンドで実行できるようにしておいてください。

```
$ perl -Ilib exercise.pl # コード
$ prove -lvr t/ # テストの実行
```

