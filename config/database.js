module.exports = ({ env }) => ({
  defaultConnection: 'default',
  connections: {
    default: {
      connector: 'bookshelf',
      settings: {
        client: 'mysql',
        host: env('DB_HOST', '127.0.0.1'),
        port: env.int('DB_PORT', 3306),
        database: env('DB_DATABASE', 'sabia_blog'),
        username: env('DB_USER', 'root'),
        password: env('DB_PASSWORD', '123456'),
        ssl: env.bool('DB_SSL', false),
      },
      options: {}
    },
  },
});
