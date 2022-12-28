.PHONY: api-get
api-get:
	@echo "Calling the API with GET"
	@curl -s http://localhost:5457/welcome

.PHONY: api-post
api-post:
	@echo "Calling the API with POST"
	@curl -s -X POST http://localhost:5457/hello?name=IDEA

.PHONY: up
up:
	@echo "Setup up"
	@docker-compose up -d

.PHONY: down
down:
	@echo "Setup down"
	@docker-compose down
