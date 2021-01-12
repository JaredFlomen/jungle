# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

0. Fork and clone this repository
1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Captures

### Home
![Home](https://github.com/JaredFlomen/jungle/blob/master/docs/home.png?raw=true)

### Cart
![Cart](https://github.com/JaredFlomen/jungle/blob/master/docs/cart.png?raw=true)

### Product Description
![Product](https://github.com/JaredFlomen/jungle/blob/master/docs/product_description.png?raw=true)

### Admin - Categories
![Categories](https://github.com/JaredFlomen/jungle/blob/master/docs/admin_categories.png?raw=true)

### Admin - Products
![Admin_Products](https://github.com/JaredFlomen/jungle/blob/master/docs/admin_products.png?raw=true)