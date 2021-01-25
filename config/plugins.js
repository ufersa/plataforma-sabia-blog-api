module.exports = ({ env }) => ({
  upload: {
    provider: 'aws-s3',
    providerOptions: {
      accessKeyId: env('AWS_ACCESS_KEY_ID'),
      secretAccessKey: env('AWS_ACCESS_SECRET'),
      region: env('AWS_REGION'),
      params: {
        Bucket: env('AWS_BUCKET'),
      },
    },
  },
  email: {
    provider: env('EMAIL_PROVIDER'),
    providerOptions: {
      host: env('EMAIL_SMTP_HOST'),
      port: env('EMAIL_SMTP_PORT'),
      auth: {
        user: env('EMAIL_SMTP_USER'),
        pass: env('EMAIL_SMTP_PASS'),
      },
    },
    settings: {
      defaultFrom: env('EMAIL_ADDRESS_FROM'),
      defaultReplyTo: env('EMAIL_ADDRESS_REPLY'),
    },
  },
});