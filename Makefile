# =====================================
# 🌱 Project Configuration
# =====================================
# Read from pyproject.toml using grep (works on all platforms)
PROJECT_NAME = $(shell python -c "import re; print(re.search('name = \"(.*)\"', open('pyproject.toml').read()).group(1))")
CONTAINER_NAME = lexo-container

DOCKER_USERNAME=lkar
DOCKER_IMAGE = $(DOCKER_USERNAME)/$(PROJECT_NAME)
TAG = $(VERSION)
CONTAINER_NAME = $(PROJECT_NAME)-container

# =======================
# 🐳 Docker Commands
# =======================

build: 	## Build Docker image
	docker build -t $(DOCKER_IMAGE) .

run:	## Run Docker container
	docker run --rm -it -p 8888:8888 -v .:/app -w /app --name $(CONTAINER_NAME) $(DOCKER_IMAGE)
# Access at: http://localhost:8888


# =====================================
# 📚 Documentation & Help
# =====================================

help: ## Show this help message
	@echo Available commands:
	@echo.
	@python -c "import re; lines=open('Makefile', encoding='utf-8').readlines(); targets=[re.match(r'^([a-zA-Z_-]+):.*?## (.*)$$',l) for l in lines]; [print(f'  make {m.group(1):<20} {m.group(2)}') for m in targets if m]"


# =======================
# 🎯 PHONY Targets
# =======================

# Auto-generate PHONY targets (cross-platform)
.PHONY: $(shell python -c "import re; print(' '.join(re.findall(r'^([a-zA-Z_-]+):\s*.*?##', open('Makefile', encoding='utf-8').read(), re.MULTILINE)))")

# Test the PHONY generation
# test-phony:
# 	@echo "$(shell python -c "import re; print(' '.join(sorted(set(re.findall(r'^([a-zA-Z0-9_-]+):', open('Makefile', encoding='utf-8').read(), re.MULTILINE)))))")"
