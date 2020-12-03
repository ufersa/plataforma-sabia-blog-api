const { createUniqueSlug } = require('../../../utils');

module.exports = {
  /**
   * Triggered before post creation.
   */
  lifecycles: {
    async beforeCreate(data) {
      if (data.title) {
        data.slug = createUniqueSlug(data.title);
      }
    },
    async beforeUpdate(params, data) {
      if (data.title) {
        data.slug = createUniqueSlug(data.title);
      }
    },
  },
};