const path = require("path");

module.exports = ({ env }) => ({
  connection: {
    client: "postgres",
    connection: {
      host: env("POSTGRES_HOST"),
      port: env.int("POSTGRES_PORT"),
      database: env("POSTGRES_DATABASE"),
      user: env("POSTGRES_USER"),
      password: env("POSTGRES_PASSWORD"),
      ssl: false,
    },
  },
});
