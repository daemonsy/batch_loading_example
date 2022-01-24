# README

Just a toy app to show how GraphQL::DataLoader` works.

## To run

This uses Postgres for the database.

```sh
bin/rails db:create db:schema:load
bin/rails db:seed

bin/rails server
```

The GraphQL endpoint is exposed at `POST /graphql`
