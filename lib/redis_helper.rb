require "redis_helper/version"

module RedisHelper
  extend ActiveSupport::Concern

  def redis_key(str)
    "#{self.class.to_s}:#{self.id}:#{str}"
  end
end

ActiveRecord::Base.send(:include, RedisHelper)
