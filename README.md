### About CRUD_API
This four table API tracks Users, their Addresses, Items, and Orders and can search across joined tables.

### System dependencies
Run `bundle install`
### Configuration
`gem install faker` and add it to `group: development` in Gemfile

          group :development do
              gem 'web-console', '~> 2.0'
              gem 'spring'
              gem 'faker'
          end

###Database creation
Postgres
#### Table "addresses"
    PRIMARY KEY = ID (auto generated)
    "user_id", integer, null: false
    "street_name", string, null: false
    "city", string, null: false
    "state", string, null: false
    "zip", string, null: false

###### To see all users: http://localhost:3000/users

#### Table: "items"
      PRIMARY KEY = ID (auto generated)
      "name", string, null: false
      "description", string, null: false
      "price", float, null: false

######To see all items: http://localhost:3000/items


#### Table "orders"
    PRIMARY KEY = ID (auto generated)
    "item_id", integer, null: false
    "user_id", integer, null: false
    "quantity", integer, null: false

###### To see all orders: http://localhost:3000/orders


#### Table "users"
    PRIMARY KEY = ID (auto generated)
    "first_name", string, null: false
    "last_name", string, null: false
    "age", string, null: false

###### To see all users: http://localhost:3000/users


##### How to get all items purchased by a particular User:
  http://localhost:3000/users/2/items/

##### How to get all Users who purchased a particular Item:
http://localhost:3000/items/10/users/

###### NOTE: All messages from the system are via render json:
