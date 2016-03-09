# usersテーブル
## カラム
## id
## nickname
## avatar
## text
### アソシエーション
### has_many:projects
### has_many:comments, as: :commentable

# projectsテーブル
## カラム
## id
## catch_copy
## concept
## tag_list
## image_url
### アソシエーション
### belongs_to:users
### has_many:comments, as: :commentable

# commentsテーブル
## カラム
## commentable_id
## commentable_type
## text
### アソシエーション
### belongs_to:commentable, polymorphic: true
