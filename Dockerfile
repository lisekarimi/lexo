FROM python:3.11-slim

# Install UV
RUN pip install uv

WORKDIR /app

# Copy UV files and install dependencies
COPY pyproject.toml uv.lock ./

# Put venv outside of /app so it won't be affected by volume mounts
ENV UV_PROJECT_ENVIRONMENT=/opt/venv

# Install dependencies
RUN uv sync --frozen

# Register the kernel with Jupyter
RUN uv run python -m ipykernel install --user

# Expose Jupyter port
EXPOSE 8888

# Start Jupyter without authentication
CMD ["uv", "run", "jupyter", "lab", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]
