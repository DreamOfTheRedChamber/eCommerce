#!/usr/bin/env ruby
require 'mongo'

# Turn off debug-mode
Mongo::Logger.logger.level = Logger::WARN

client_host = ['127.0.0.1:27017']
client_options = {
    # database: 'db1',
    # replica_set: '3d62adc37bad4f628cf5e8db921ce445',
    # user: 'example_username',
    # password: 'example_password'
}

client = Mongo::Client.new(client_host, client_options)

puts('Client Connection: ')
puts(client.cluster.inspect)
puts
puts('Collection Names: ')
puts(client.database.collection_names)