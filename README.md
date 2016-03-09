# usersテーブル
## カラム
## id
## nickname
## avatar
## profile
## email
## password
## group_id
## work
### アソシエーション
### has_many:projects
### has_many:comments
### belongs_to:group
### has_many:likes

# projectsテーブル
## カラム
## id
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
## commentable_id
## commentable_type
## text
### アソシエーション
### belongs_to:projects, users

# groupsテーブル
## カラム
## name
### アソシエーション
### has_many:users

# likesテーブル
## user_id
## project_id
### アソシエーション
### belongs_to:user
### belongs_to:project
