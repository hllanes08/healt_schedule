Resque.redis = 'localhost:6379'
Resque.after_fork do
  ActiveRecord::Base.connection.reconnect!
end
