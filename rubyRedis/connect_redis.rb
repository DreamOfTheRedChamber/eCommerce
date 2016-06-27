require 'redis'
redis = Redis.new
redis.set("mykey", "hello world")
puts redis.get("mykey")
