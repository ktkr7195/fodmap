### README

# Happy Gut
![happygut-like](https://user-images.githubusercontent.com/33094954/91468027-5d080300-e8cc-11ea-8587-dfbad2118787.gif)
![happygut-create](https://user-images.githubusercontent.com/33094954/91468035-609b8a00-e8cc-11ea-9f6e-84003bd6dafb.gif)

ポートフォリオとしてIBS（過敏性腸症候群）の方向けのレシピ共有アプリを作成しました。開発環境と本番環境にDockerを、しインフラにAWSを使用しました。
自らYouTubeの作成にもチャレンジしたりと、シンプルながらもわかりやすいデザインにしあげました。

URL:https://happy-gut-jp.com/
※ゲストユーザーとして簡易ログインができますので、是非使ってみてください。

# 使用技術
- Ruby 5.2.4, Rails 2.5.1
- Nginx, Puma
- AWS (EC2, RDS for MySQL, S3, VPC, Route53, ALB, ACM)
- Docker
- CircleCI
- RSpec
- SASS, Bootstrap, JQuery


# AWS構成図
![fodmap-diagram (1)](https://user-images.githubusercontent.com/33094954/91459482-a7d04d80-e8c1-11ea-9b36-f4b917deecd2.png)

# 機能一覧
- ユーザー登録・ログイン機能（deviseを使用）
- 投稿機能（画像のアップロードにCarrierWaveを使用）
- 投稿一覧・投稿詳細表示機能
- 投稿管理機能
- ページネーション機能（Kaminari）
- フォロー機能（Ajax）
- いいね機能（Ajax）
- コメント機能（Ajax）
- 検索機能
- タグ機能
- CircleCIを用いたCI/CD機能
