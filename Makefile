.PHONY: up

up:
	@if docker compose ps | grep 'Up'; then \
		echo "Stopping running Docker Compose services..."; \
		docker compose down; \
	fi
	echo "Starting Docker Compose services..."
	docker compose up -d