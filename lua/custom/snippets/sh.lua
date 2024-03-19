local utils = require 'custom.snippets.utils'

return {
  utils.snip('shebang', {
    utils.text { '#!/bin/sh', '' },
    utils.insert(0),
  }),
}
