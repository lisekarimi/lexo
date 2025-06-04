# 🧠 NLP & LLMs Notebook

## 📝 Overview
**Lexo** is a collection of notebooks for learning and applying LLMs using real-world AI tasks—RAG, QLoRA fine-tuning, agents, multimodal input, and ML benchmarks.


## 🔧 Projects
- 🌐 Website Summarizer – Summarizes any link using OpenAI + LLaMA.
- 🧾 Brochure Generator – Turns websites into clean AI-crafted brochures.
- 💡 Tech Assistant – Explains complex tech and code in simple terms.
- 🤖 AI Chat – GPT, Claude & Deepseek discuss topics with distinct, witty personalities.
- 🌤️ Weather AI – Suggests local events and activities based on the weather.
- 📝 Meeting Minutes Assistant – Converts audio to structured notes using Whisper + LLaMA.
- 🧪 Synthetic Data Tool – Generates datasets for devs & researchers.
- 🧠 Internal RAG Assistant – Built for Insurellm to answer internal questions fast.
- 💲 Price Predictor – Estimates item prices based on text descriptions.
    - Data curation – Clean, balance, and prep the dataset
    - Benchmarking – Compare Traditional ML models with frontier and open-source LLMs.
    - RAG experiments – Use embeddings and retrieval to boost predictions
    - Fine-tuning – Fine-tune a frontier model and apply QLoRA to an open-source model
    - Evaluation – Test all models under the same setup
    - Leaderboard – Final ranking with key insights
- 🏷️ Initiate Snapr – Capstone project: a multi-agent AI system to find the best deals.


## 🔑 Key Features
- Core Skills – RAG, prompt engineering, AI agents, built-in tools
- Models & Modalities – Frontier/open LLMs, fine-tuning, Speech-to-Text, multimodal input, text processing, data curation
- Tech Stack – Python, Hugging Face, Gradio, Ollama, Colab/Jupyter



## 📚 Prerequisites
- Software – Python 3.11
- IDE – VS Code or any Jupyter-compatible IDE

## 🛠️ Setup

### 1. Clone & Setup
```bash
git clone https://github.com/lisekarimi/lexo.git
cd lexo
mv .env.example .env  # Add your API keys here
```

### 2. Install UV & Dependencies
```bash
# Install UV: https://docs.astral.sh/uv/getting-started/installation/
# Choose Windows/Mac instructions on the website

# Install dependencies
uv sync
```

### 3. Activate Environment
```bash
.venv\Scripts\activate # Windows
source .venv/bin/activate # macOS/Linux
```

### 4. IDE Setup
- **Python Interpreter**: Select `.venv/Scripts/python.exe` (Windows) or `.venv/bin/python` (Mac/Linux)
- **Jupyter Kernel**: Click kernel selector and choose the .venv option

### 5. Jupyter Lab Setup
```bash
python -m ipykernel install --user --name=lexo-venv
# Then select "lexo-venv" kernel in Jupyter Lab
```

## 📓 Quickstart Guide
Each notebook starts with a quick, friendly intro that includes:
- What it does and what problem it solves
- Models & tools used (e.g., OpenAI, LLaMA, Hugging Face, Ollama)
- Required API keys or GPU info
- Customizable parameters for easy adaptation

## 🎯 Related Demos

Check out these projects that are related to this series of notebooks:

### 📸 Snapr
- **Demo**: [huggingface.co/spaces/lisekarimi/snapr](https://huggingface.co/spaces/lisekarimi/snapr)
- **Code**: [github.com/lisekarimi/snapr](https://github.com/lisekarimi/snapr)

### 📊 DataGen
- **Demo**: [huggingface.co/spaces/lisekarimi/datagen](https://huggingface.co/spaces/lisekarimi/datagen)
- **Code**: [github.com/lisekarimi/datagen](https://github.com/lisekarimi/datagen)
