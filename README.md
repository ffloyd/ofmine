# OfMine

This is a test project for some company. The idea is to create a mobile app for a simple [double-entry bookkeeping](https://www.zoho.com/books/guides/single-entry-and-double-entry-bookkeeping.html) with muticurrency support.

Required structure:

* React Native application
* Server with API endpoint (Elixir + Phoenix + GraphQL)
* DB as a storage

# Development plan

Let's split development into small and focused stages.

## Stage 1: MVP

It's about 3 main pages: login, transaction list, account list. 

* user can authentificate in mobile app (via Google, for example) 
* user can see transaction list (separate view, main screen for a user)
* user can see account list

No DB at this stage. Data is hardcoded into server code.

## Stage 2: More views & currencies

* user can click on transaction (in any list) to see transaction details (in a somethong like pop-up)
* user can click on account to see transaction list for this account (and navigate back)
* transaction can have mutiple currencies

Transaction can be only added via direct writes to DB or via seeding.

## Stage 3: Polishing

* WEB-version of application (try to make Phoenix serve it) 
* check is app working on iOS and Android
* docker-compose for server

## Stage 4: Bonus-track

* user can create a new transaction via mobile app

...and any other ideas.

# Checklist

* [ ] docker-compose for server
* [ ] auth in mobile application
* [ ] iOS support
* [ ] Android support
* [ ] web-version
* [ ] good test coverage
