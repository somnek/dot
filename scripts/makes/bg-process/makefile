start:
	@echo "\033[1m🚀 Starting process...\033[0m" && \
	sleep 60 & \
	echo "\033[32m✅ Process started!\033[0m"; \

stop:
	@echo "\033[1m🛑 Stopping process...\033[0m" && \
	pkill sleep	&& \
	echo "\033[31m❌ Process stopped!\033[0m" || \
	echo "\033[31m❌ Process not running!\033[0m"

status:
	@echo "\033[1m💻 Current process status:\033[0m" && \
	ps aux | grep sleep