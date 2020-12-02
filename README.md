<p align="center">
  <a href="https://sabia-testing.herokuapp.com">
    <img alt="Sabia Platform" src="https://user-images.githubusercontent.com/12154623/89719334-9f10e980-d99d-11ea-9f57-c80e8a422a0f.png" width="200" />
  </a>
</p>
<h1 align="center">
  Sabiá Platform
</h1>

<h3 align="center">
  :bird: :palm_tree: :rocket:
</h3>

This is the API of Sabiá Platform blog. It was built using [Strapi](https://strapi.io) as the API and [MySQL](https://www.mysql.com/) as the database.

## 🚀 Get up and running

1. Clone this repository

```sh
  git clone git@github.com:ufersa/plataforma-sabia-blog-api.git
```

2. Install all dependencies

```sh
npm install
# or using yarn
yarn
```

3. Make a copy of `.env.example`, rename it to `.env` and fill all values

4. Start the database server

5. Take a look at [Database Seeding](#database-seeding) section

6. Start the web server

```sh
npm run develop
# or with yarn
yarn develop
```

Happy coding :tada:

### Additional commands

* `start`: starts strapi with autoReload disabled. This commands is there to run strapi without restarts and file writes (aimed at production usage). Certain features are disabled in the strapi start mode because they require application restarts.

* `build`: builds the admin panel.

* `strapi`: the strapi CLI

## Database Seeding

Strapi saves some application configurations directly in database, as views customizations, routes permissions and so on...

To avoid the necessity of configuring all environments over and over again, you can use our dump file located in `dump/dump.sql`.

To restore a dump, run the following command:
`mysql -u [user] < [filename].sql`

If your database is in a Docker container:
`cat [filename].sql | docker exec -i [container] /usr/bin/mysql -u [user] --password=[password]`  

See [Executing SQL Statements from a Text File](https://dev.mysql.com/doc/refman/8.0/en/mysql-batch-commands.html) for more information.

> This dump doesn't contains fake posts/categories data, users or admins, but only views customizations and routes permissions to our end users.

After doing that, you're all set up.