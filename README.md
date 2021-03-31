# アプリケーションの概要
環境問題に関心を持ったユーザーが、エコ活動に積極的に取り組んでいるショップの商品を注文・購入する事ができます。


# 利用方法
1.アプリを使用するユーザーはトップページ上部にある「新規登録」ボタンを押下し、会員情報の登録を行います。（既に登録済みの場合はトップページ上部にある「ログイン」ボタンを押下し、ログインします。）

2.エコ活動に積極的に取り組んでいるショップのみが,活動に繋がる事（例：プラスチックゴミを減らす為、お弁当の容器は紙製のものを使っている）を行っている商品や活動によって生み出された商品（例：生ゴミを発酵させて作った堆肥を使用し育てた野菜や花）を出品します。

3.ユーザーはトップページに表示されている商品一覧から気になる画像をクリックして商品の詳細ページに遷移します。(トップページ上部にある「カテゴリー検索窓」を利用して商品を検索することもできます。)

4.商品詳細ページで商品名・商品の説明・金額・ショップ名・選択した商品がどの様に活動に貢献しているのかを書いたショップのアピールポイントを確認します。

5.買いたい・注文したいと思ったら、詳細画面の購入ボタンをクリックします。

6.クレジット決済になるので、クレジット番号・有効期限・セキュリティーコードを入力します。

7.送り先を指定する為、住所と電話番号を入力します。

8.「商品の注文が完了しました」の画面が表示されれば購入は完了です。


# 目指した課題解決
「エコ活動に興味はあるが、実際に何をどうすれば良いのか分からないから何も行動していない」 そんなユーザーに、エコ活動を行っているショップの商品を購入する事で、まずは「手軽に活動に参加する事ができる」・「貢献した」と感じてもらい、そこから環境問題について少しでも意識してもらえればと思いました。また、「環境問題」と聞くと先行してしまう堅苦しいイメージのハードルを下げるという課題も解決できるのではないかと考えました。その他にも、まずは興味を持って使ってみたいと思ってもらえる様、カジュアルで親しみやすいビューにする事にもこだわりました。

# 実装予定の機能
*ユーザー新規登録・ログイン機能
*商品出品機能
*商品一覧表示機能
*商品詳細表示機能
*商品情報編集機能
*商品購入機能
*商品削除機能
*カテゴリー検索機能




# usersテーブル

| Column              | type     | Options                 |
| ------------------- | -------- | ----------------------  |
| nickname            | string   | null:false              |
| email               | string   | null:false, unique:true |
| encrypted_password  | string   | null:false              |
| family_name         | string   | null:false              |
| first_name          | string   | null:false              |
| family_name_kana    | string   | null:false              |
| first_name_kana     | string   | null:false              |
| birthday            | date     | null:false              |

### Association

- has_many :orders



# productsテーブル

| Column         | Type      | Options            |
| -------------- | --------- | ------------------ |
| menu           | string    | null:false         |
| price          | integer   | null:false         |
| introduction   | text      | null:false         |
| shop_name      | string    | null:false         |
| category_id    | integer   | null:false         |
| eco_appeal     | text      | null:false         |


- has_one :order



# ordersテーブル

| Column       | Type        | Options                        |
| ------------ | ----------- | ------------------------------ |
| user         | references  | null:false, foreign_key: true  |
| product      | references  | null:false, foreign_key: true  |

### Association

- belongs_to :user
- belongs_to :product
- has_one    :destination



# destinationsテーブル

| Column          | Type        | Options                       |
| --------------- | ----------- | ----------------------------- |
| post_code       | string      | null:false                    |
| prefecture_id   | integer     | null:false                    |
| city            | string      | null:false                    |
| address         | string      | null:false                    |
| building        | string      |                               |
| phone_number    | string      | null:false                    |
| order           | references  | null:false, foreign_key:true  |

### Association

- belongs_to :order
