const slugify = require('slugify');

module.exports = {
  /**
   * Triggered before post creation.
   */
  lifecycles: {
    async beforeCreate(data) {
      if (data.title) {
        data.slug = slugify(data.title, { lower: true });
      }
    },
    async beforeUpdate(params, data) {
      if (data.title) {
        data.slug = slugify(data.title, { lower: true });
      }
    },
  },
};