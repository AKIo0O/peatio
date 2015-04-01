
bundle exec rake daemons:stop
bundle exec rake daemons:start

TRADE_EXECUTOR=4 bundle exec daemons:stop
TRADE_EXECUTOR=4 bundle exec daemons:start
