Image Share

Image
- Title
- URL
- belongs_to :user
- belongs_to :tag
- has_many :likes
- has_many :users, through: :likes
- has_many :comments
- has_many :users, through: :comments

`rails g resource image title url user:belongs_to tag:belongs_to --no-test-framework`

User
- username
- email
- password_digest
- has_many :images
- has_many :likes
- has_many :liked_images, through: :likes
- has_many :comments
- has_many :commented_images, through: :comments
- has_many :tags, through: :images

`rails g resource user username email password_digest --no-test-framework`

Like
- belongs_to :image
- belongs_to :user
- has_like

`rails g resource like has_like:boolean user:belongs_to image:belongs_to --no-test-framework`

Comment
- belongs_to :image
- belongs_to :user
- content

`rails g resource comment content:text user:belongs_to image:belongs_to --no-test-framework`

Tags
- has_many :images
- has_many :users, through: :images
- title

`rails g resource tags title --no-test-framework`

Image Tags
- belongs_to :image
- belongs_to :tag

`rails g resource image_tags image:belongs_to tag:belongs_to --no-test-framework`