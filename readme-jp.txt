
知るきっかけとなったのはこれです。
https://community.intersystems.com/post/realworld-application-intersystems-iris
そのままでは動きません。DeprecatedのAPIを使っているためか、署名チェック周りで失敗します。
(see memo-jp.txt)

大元はこれです。
https://github.com/gothinkster/realworld
https://github.com/gothinkster/realworld/blob/main/api/openapi.yml
https://codebase.show/projects/realworld

日本語での解説記事。
https://zenn.dev/k0kishima/scraps/ceb1d34f1a5b16
- Hello World や入門書のサンプルコードレベルではなく、現実のアプリに近い実践に即したデモを確認できる
- 実際には Medium.com のクローンを作る
- デモによりアプリの機能を理解するのではなく、フレームワークを使ってどう実装されているかを知るために用いる

起動方法例。

動作する。(nodeのバージョンを20にあげています)
web=angular docker compose build web
web=angular docker compose up -d

動作する。
web=vue docker compose build web
web=vue docker compose up -d

動作しない。(react実装はたくさんあるので、他のを試すのも手)
web=react docker compose build web
web=react docker compose up -d

起動後のURL

App
http://localhost:8888/

SMP
http://localhost:58773/csp/sys/%25CSP.Portal.Home.zen
SuperUser/SYS 
