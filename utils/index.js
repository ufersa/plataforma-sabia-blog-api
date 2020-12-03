const slugify = require('slugify')

const createUniqueSlug = (propertyToBeSlugfied) => slugify(propertyToBeSlugfied, { lower: true, remove: /[*+~.,()'"!:;@]/g })

module.exports = {
  createUniqueSlug
}