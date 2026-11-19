# 🪐 JupyterLite on Vercel

Run interactive Jupyter Notebooks serverlessly on Vercel using **JupyterLite** and **Pyodide** (WebAssembly).

## 🚀 How to Deploy to Vercel

### Option 1: Via Vercel Web Dashboard (Recommended)

1. Push this repository to your GitHub account:
   ```bash
   git add .
   git commit -m "Configure JupyterLite for Vercel deployment"
   git push origin main
   ```
2. Go to [Vercel Dashboard](https://vercel.com/new).
3. Select and import this repository (`jupyternotebookrender`).
4. Vercel will automatically read `vercel.json` (no need to change build or output settings).
5. Click **Deploy**.

---

### Option 2: Via Vercel CLI

If you have the Vercel CLI installed:
```bash
npx vercel --prod
```

---

## 📁 Pre-loading Notebooks

Put any `.ipynb` notebooks or data files inside the [`content/`](file:///data/user/0/ai.antigem/files/home/jupyternotebookrender/content) folder. They will automatically be included and pre-loaded in the JupyterLite workspace when your site builds on Vercel.

## ⚙️ Configuration Files

- [`vercel.json`](file:///data/user/0/ai.antigem/files/home/jupyternotebookrender/vercel.json): Vercel build settings & WASM `SharedArrayBuffer` headers (`COOP`/`COEP`).
- [`deploy.sh`](file:///data/user/0/ai.antigem/files/home/jupyternotebookrender/deploy.sh): Build script that installs dependencies and builds the static site into `dist/`.
- [`requirements-deploy.txt`](file:///data/user/0/ai.antigem/files/home/jupyternotebookrender/requirements-deploy.txt): Python build packages (`jupyterlite-core`, `jupyterlite-pyodide-kernel`).
