{queryApi} = require 'sec-api'
queryApi.setApiKey process.env.KEY

describe 'filing', ->
  it '10-Q', ->
    opts =
      query:
        query_string:
          query: 'formType: "10-Q"'
      from: '0'
      size: '10'
      sort: [
        filedAt:
          order: 'desc'
      ]
    console.log await queryApi.getFilings opts
