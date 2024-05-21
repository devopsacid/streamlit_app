# Name of your Docker image
IMAGE_NAME = streamlit_app

# Dockerfile location
DOCKERFILE = Dockerfile

# Test command
TEST_CMD = python -m unittest discover -s tests

# Build Docker image
build:
    @docker build -t $(IMAGE_NAME) -f $(DOCKERFILE) .

# Run Docker container
run:
    @docker run -p 8501:8501 $(IMAGE_NAME)

# Run tests
test:
    @$(TEST_CMD)
    