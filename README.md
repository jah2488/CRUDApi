### About CRUD_API
This four-table API tracks Users, their Addresses, Items, and Orders and can search across joined tables.

From the project's root directory, start `rails s` and paste any of the following URLs to the browser.

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
###### To see all addresses, send a `get` request to http://localhost:3000/addresses. The response will be in JSON format with the following parameters
    PRIMARY KEY = ID (auto generated)
    "user_id", integer, null: false
    "street_name", string, null: false
    "city", string, null: false
    "state", string, null: false
    "zip", string, null: false

#### Table: "items"
###### To see all addresses, send a `get` request to http://localhost:3000/items. The response will be in JSON format with the following parameters
      PRIMARY KEY = ID (auto generated)
      "name", string, null: false
      "description", string, null: false
      "price", float, null: false

#### Table "orders"
###### To see all addresses, send a `get` request to http://localhost:3000/orders. The response will be in JSON format with the following parameters
    PRIMARY KEY = ID (auto generated)
    "item_id", integer, null: false
    "user_id", integer, null: false
    "quantity", integer, null: false

#### Table "users"
###### To see all addresses, send a `get` request to http://localhost:3000/users. The response will be in JSON format with the following parameters
    PRIMARY KEY = ID (auto generated)
    "first_name", string, null: false
    "last_name", string, null: false
    "age", string, null: false

##### To get all items purchased by a particular User, send a `get` request to: http://localhost:3000/users/2/items/


##### To get all Users who purchased a particular Item, send a `get` request to:
http://localhost:3000/items/10/users/

**NOTE: All messages from the system are via** `render json:`
