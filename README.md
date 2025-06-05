# 🧠 Lexo - LLM Toolkit for RAG, Fine-tuning, and AI Agents

**Lexo** is a comprehensive collection of Jupyter notebooks designed for learning and applying Large Language Models (LLMs) in real-world scenarios. Master RAG systems, fine-tuning, AI agents, multimodal processing, and ML benchmarks through hands-on projects.

## 🛠️ Prerequisites & Installation

### Why Use Docker?
Ever cloned a repo and got errors like "Python version wrong" or "library not found"? 😤

Docker fixes this by:
- **Consistent environment**: Everyone runs the exact same Python + libraries
- **No conflicts**: No more "pip install failed" or dependency issues
- **Works everywhere**: If it works on one computer, it works on ALL computers

### Install Docker

**Windows & macOS:**
1. Download [Docker Desktop](https://www.docker.com/products/docker-desktop)
2. Run the installer and start Docker Desktop
3. Test: `docker --version && docker run hello-world`

**Linux (Ubuntu/Debian):**
```bash
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sudo usermod -aG docker $USER  # Optional: run Docker without sudo
# Log out and log back in
```

### Install Make (Optional but Recommended)

**Why Use Make?**
Instead of typing long Docker commands, use simple shortcuts:
- `make build` instead of `docker build -t lexo .`
- `make run` instead of `docker run --rm -it -p 8888:8888 -v .:/app -w /app lexo`

**Installation:**
- **Windows:** `winget install GnuWin32.Make`
- **macOS:** `brew install make`
- **Linux:** `sudo apt install make`

## 🚀 Quick Start

### Option 1: Docker Setup (Recommended)
```bash
# Clone the repository
git clone https://github.com/lisekarimi/lexo.git
cd lexo

# Setup environment
mv .env.example .env  # Add your API keys here

# Build and run with Docker
make build
make run

# Access Jupyter at: http://localhost:8888
```

### Option 2: Local Setup (No Docker)
**Prerequisites:** Python 3.11+

```bash
# Clone the repository
git clone https://github.com/lisekarimi/lexo.git
cd lexo

# Setup environment
mv .env.example .env  # Add your API keys here

# Install dependencies
pip install uv
uv sync

# Run Jupyter
uv run jupyter lab
```

### Option 3: VS Code (Best Development Experience)
**Prerequisites:** Python 3.11+ and VS Code

```bash
# Clone the repository
git clone https://github.com/lisekarimi/lexo.git
cd lexo

# Open the project folder in VS Code manually
```

In VS Code terminal:
```bash
# Setup environment
mv .env.example .env  # Add your API keys here

# Install dependencies
pip install uv
uv sync
```

**Select Python Interpreter:**
1. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
2. Type "Python: Select Interpreter"
3. Choose the `.venv` interpreter from the list

**Select Jupyter Kernel:**
1. Open any `.ipynb` file
2. Click "Select Kernel" in the top-right corner
3. Choose "Python Environments" → Select the `.venv` interpreter
4. VS Code will automatically handle Jupyter integration with IntelliSense and debugging!

## 🔧 Projects & Notebooks

### **Core AI Applications**
- 🌐 **Website Summarizer** – Summarize any URL using OpenAI + LLaMA
- 🧾 **Brochure Generator** – Transform websites into AI-crafted brochures
- 💡 **Tech Assistant** – Explain complex tech concepts in simple terms
- 🤖 **AI Chat** – Multi-model conversations with GPT, Claude & Deepseek
- 🌤️ **Weather AI** – Location-based activity suggestions using weather data

### **Advanced Workflows**
- 📝 **Meeting Minutes Assistant** – Audio transcription + structured notes (Whisper + LLaMA)
- 🧪 **Synthetic Data Generator** – Create custom datasets for ML projects
- 🧠 **Internal RAG Assistant** – Enterprise knowledge base with fast retrieval

### **ML & Fine-tuning Pipeline**
- 💲 **Price Predictor** – Complete ML pipeline from data to deployment:
  - Data curation and preprocessing
  - Traditional ML vs. LLM benchmarking
  - RAG experiments with embeddings
  - Fine-tuning frontier models + QLoRA for open-source models
  - Comprehensive evaluation and leaderboard

### **Capstone Project**
- 🏷️ **Snapr** – Multi-agent AI system for finding the best deals

## 🎯 Key Features

**Core Skills Covered:**
- Retrieval-Augmented Generation (RAG)
- Prompt engineering and optimization
- AI agents and tool integration
- Fine-tuning and QLoRA techniques

**Models & Technologies:**
- Frontier LLMs (OpenAI GPT, Anthropic Claude, ...)
- Open-source models (LLaMA, Mistral, Deepseek, ..)
- Speech-to-Text processing
- Multimodal input handling
- Vector databases and embeddings

## 📚 Learning Path

Each notebook includes:
- **Clear problem statement** and real-world context
- **Step-by-step implementation** with explanations
- **Required API keys** and setup instructions
- **Customizable parameters** for experimentation
- **Performance evaluation** and insights

## 🔗 Related Projects

### 📸 Snapr
- **Demo**: [huggingface.co/spaces/lisekarimi/snapr](https://huggingface.co/spaces/lisekarimi/snapr)
- **Code**: [github.com/lisekarimi/snapr](https://github.com/lisekarimi/snapr)

### 📊 DataGen
- **Demo**: [huggingface.co/spaces/lisekarimi/datagen](https://huggingface.co/spaces/lisekarimi/datagen)
- **Code**: [github.com/lisekarimi/datagen](https://github.com/lisekarimi/datagen)



## 🎯 Getting Started

1. **Choose your setup method** (Docker recommended for beginners)
2. **Configure your API keys** in `.env` file
3. **Start with a simple project** like Website Summarizer
4. **Progress through notebooks** based on your interests
5. **Experiment and customize** the code for your use cases

## 💡 Tips

- **WebPage Summarizer notebook requires Chrome** - run this locally if using Docker
- **Start with projects matching your experience level**
- **Each notebook is self-contained** - jump around as needed

---

**Ready to dive into the world of LLMs?** Choose your setup method and start exploring! 🚀
