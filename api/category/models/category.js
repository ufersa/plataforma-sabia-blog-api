const { createUniqueSlug } = require('../../../utils');

module.exports = {
  /**
   * Triggered before category creation.
   */
  lifecycles: {
    async beforeCreate(data) {
      if (data.name) {
        data.slug = createUniqueSlug(data.name);
      }
    },
    async beforeUpdate(params, data) {
      if (data.name) {
        data.slug = createUniqueSlug(data.name);
      }
    },
  },
};