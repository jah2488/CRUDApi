* ReadMe


* System dependencies

* Configuration

* Database creation

** Table "addresses"
    "user_id", integer, null: false
    "street_name", string, null: false
    "city", string, null: false
    "state", string, null: false
    "zip", string, null: false

To see all users: http://localhost:3000/users

** Table: "items"
      "name", string, null: false
      "description", string, null: false
      "price", float, null: false

To see all items: http://localhost:3000/items


** Table "orders"
    "item_id", integer, null: false
    "user_id", integer, null: false
    "quantity", integer, null: false

**** To see all orders: http://localhost:3000/orders


** Table "users"
    "first_name", string, null: false
    "last_name", string, null: false
    "age", string, null: false

To see all users: http://localhost:3000/users


* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

** How to get all items purchased by a particular User:
  http://localhost:3000/users/2/items/

** How to get all Users who purchased a particulat item:
  http://localhost:3000/users/2/items/
