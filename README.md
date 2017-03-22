##Members-Only

`In this project, you'll be building an exclusive clubhouse where your members can write embarrassing posts about non-members. Inside the clubhouse, members can see who the author of a post is but, outside, they can only see the story and wonder who wrote it.`

###Users
column: :username, string [1-20, unique, present]
column: :email, email [unique, present]
column: :id, integer
column: : created_at, datetime
column: :updated_at, datetime
column: :admin, :boolean, default: false
column: :password_digest, :string

has_many comments

###Posts
column: :title string [2-40, present]
column: :body, text [present] NOTE: Can be either a link or the body
column: : created_at, datetime
column: :updated_at, datetime

belongs_to users
