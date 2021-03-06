Related Products
================

[![Build
Status](https://secure.travis-ci.org/spree/spree_related_products.png)](http://travis-ci.org/spree/spree_related_products)

This extension provides a generic way for you to define different types of relationships between your products, by defining a RelationType for each type of relationship you'd like to maintain.

You can manage RelationTypes via the admin configuration menu, and you can maintain product relationships via __Related Products__ tab on the edit product UI.

Possible uses
-------------

* Accessories

* Cross Sells

* Up Sells

* Compatible Products

* Replacement Products

* Warranty & Support Products

Relation Types
--------------
When you create a RelationType you can access that set of related products by referencing the relation_type name, see below for an example:

        rt = Spree::RelationType.create(:name => "Accessories", :applies_to => "Spree::Product")
         => #<Spree::RelationType id: 4, name: "Accessories" ...>
        product = Spree::Product.last
         => #<Spree::Product id: 1060500592 ...>
        product.accessories
         => []

You can access all related products regardless of RelationType by:

        product.relations
         => []

Discounts
---------
Currently, master doesn't support discounts out of the box.  There is however a branch __implement_discounts__ that should have the necessary discount-enabled code (which was cherry-picked from the working 0-70-x branch).

Installation
------------

Add to `Gemfile`:

    gem 'spree_related_products', :git => 'git://github.com/spree/spree_related_products.git'

Run:

    $ bundle
    $ bundle exec rails g spree_related_products:install

Development
-----------

    * Fork the repo
    * clone your repo
    * Run `bundle`
    * Run `bundle exec rake test_app` to create the test application in `spec/test_app`.
    * Make your changes.
    * Ensure specs pass by running `bundle exec rake`
    * Submit your pull request
