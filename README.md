# usersテーブル
## カラム
## nickname
## avatar
## profile
## email
## password
## member
## work
### アソシエーション
### has_many:projects
### has_many:comments
### has_many:likes

# projectsテーブル
## カラム
## catch_copy
## concept
## image_url
## user_id
### アソシエーション
### belongs_to:user
### has_many:comments
### has_many:likes

# commentsテーブル
## カラム
## user_id
## project_id
## text
### アソシエーション
### belongs_to:project, user

# likesテーブル
## カラム
## user_id
## project_id
### アソシエーション
### belongs_to:user
### belongs_to:project

# imagesテーブル
## カラム
## project_id
## status
### アソシエーション
### belongs_to:project

# tagsテーブル
