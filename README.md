# 🔐 Local Differential Privacy (LDP): Mechanisms and Real-World Applications

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![Python 3.8+](https://img.shields.io/badge/python-3.8+-blue.svg)](https://www.python.org/)
[![IEEE Format](https://img.shields.io/badge/paper-IEEE%20Conference-red.svg)](paper/Final_report_LDP.tex)

> **Author:** Syed Sabair Hussain  
> **Program:** Masters in Cybersecurity — Wright State University  
> **Contact:** syed.127@wright.edu

---

## 📌 Overview

This repository contains the complete research project on **Local Differential Privacy (LDP)** — a comprehensive survey, benchmarking suite, and implementation of privacy-preserving mechanisms. The research covers 18 weeks of study combining theory, implementation, and benchmarking across domains such as **federated learning, IoT, crowdsensing, and smart cities**.

### Key Contributions
- Rigorous **comparative analysis** of LDP vs. Centralized Differential Privacy (CDP)
- Benchmarking of **5+ LDP mechanisms**: RAPPOR, Hadamard Response, Unary Encoding, OLH, Laplace/Gaussian
- Python implementations of core LDP algorithms with reproducible experiments
- Visual analysis of **privacy-utility trade-offs** and throughput comparisons
- Evaluation across real-world domains: federated learning, IoT, healthcare, financial services

---

## 📊 Key Results at a Glance

| Mechanism | Domain | Privacy Budget (ε) | Performance |
|---|---|---|---|
| Randomized Response | Binary/Survey | 1.0 | MAE: 0.021 |
| RAPPOR | Categorical | 1.0 | MAE: 0.015 |
| Unary Encoding | Categorical | 1.0 | MAE: 0.018 |
| **Hadamard Response** | High-Cardinality | 1.0 | **MAE: 0.012** ✅ |
| Gradient LDP | Federated Learning | 1.0–4.0 | Accuracy: 85.2–90.1% |
| CLDP | IoT/Time-Series | 1.0 | Task Utility: 90% |
| LDP-IDS | Security/Streaming | 0.8 | Detection Rate: 93% |

---

## 🗂️ Repository Structure

```
ldp-research/
│
├── paper/                          # Research paper (LaTeX + PDF)
│   ├── Final_report_LDP.tex        # Full IEEE-format LaTeX source
│   └── report4.pdf                 # Compiled PDF
│
├── figures/                        # All research figures
│   ├── fig1_model_architecture.png         # DP vs non-DP neural net architecture
│   ├── fig2_privacy_utility_tradeoff.png   # CDP vs LDP utility curve
│   ├── fig3_throughput_comparison.png      # Mechanism throughput bar chart
│   └── fig4_ldp_mechanism_comparison.png  # RAPPOR vs Hadamard accuracy
│
├── code/
│   ├── mechanisms/                 # Core LDP algorithm implementations
│   │   ├── randomized_response.py
│   │   ├── rappor.py
│   │   ├── unary_encoding.py
│   │   ├── hadamard_response.py
│   │   └── laplace_gaussian.py
│   │
│   ├── benchmarks/                 # Reproducible benchmarking scripts
│   │   ├── run_benchmarks.py
│   │   └── frequency_estimation_eval.py
│   │
│   └── visualizations/             # Scripts to reproduce paper figures
│       ├── plot_privacy_utility.py
│       ├── plot_throughput.py
│       └── plot_mechanism_comparison.py
│
├── docs/
│   └── mechanism_guide.md          # Guide to LDP mechanisms
│
├── requirements.txt
├── LICENSE
└── README.md
```

---

## 🚀 Quick Start

### 1. Clone the Repository
```bash
git clone https://github.com/sabairhussain/ldp-research.git
cd ldp-research
```

### 2. Install Dependencies
```bash
pip install -r requirements.txt
```

### 3. Run LDP Mechanism Demos
```bash
# Run Randomized Response
python code/mechanisms/randomized_response.py

# Run Hadamard Response (best utility)
python code/mechanisms/hadamard_response.py

# Run full benchmark comparison
python code/benchmarks/run_benchmarks.py
```

### 4. Reproduce Paper Figures
```bash
python code/visualizations/plot_privacy_utility.py
python code/visualizations/plot_mechanism_comparison.py
python code/visualizations/plot_throughput.py
```

---

## 📐 Core LDP Formulation

Local Differential Privacy is formalized at the local level: for any two possible input values *v₁* and *v₂*, and any possible output *y*, the following must hold:

$$\frac{\Pr[M(v_2) = y]}{\Pr[M(v_1) = y]} \leq e^{\varepsilon}$$

where *M* is the privacy mechanism and *ε* is the privacy budget. Lower ε = stronger privacy, higher noise.

---

## 📈 Figures

| Figure | Description |
|--------|-------------|
| ![Fig 1](figures/fig1_model_architecture.png) | Neural network with/without DP |
| ![Fig 2](figures/fig2_privacy_utility_tradeoff.png) | Privacy-Utility Trade-off: CDP vs LDP |
| ![Fig 3](figures/fig3_throughput_comparison.png) | Throughput across mechanisms |
| ![Fig 4](figures/fig4_ldp_mechanism_comparison.png) | RAPPOR vs Hadamard accuracy |

---

## 🧪 LDP vs. Centralized DP — Summary

| Aspect | LDP | Centralized DP |
|---|---|---|
| Trust Required | ❌ None | ✅ Trusted server |
| Privacy Guarantee | Stronger (client-side) | Weaker (server sees raw data) |
| Data Utility | Lower (distributed noise) | Higher (optimized noise) |
| Server Breach Risk | ✅ None (data pre-perturbed) | ❌ High |
| Error Scaling | O(1/√nε) | O(1/nε) |

---

## 📚 Key References

1. Erlingsson et al. — [RAPPOR (Google, 2014)](https://doi.org/10.1145/2660267.2660348)
2. Wang et al. — [Comprehensive Survey on LDP (2020)](https://doi.org/10.3390/s20247030)
3. Chamikara et al. — [LDP for Deep Learning (2020)](https://doi.org/10.1109/JIOT.2019.2952146)
4. Acharya et al. — [Context-Aware LDP (2020)](https://doi.org/10.48550/arXiv.1911.00038)
5. Ren et al. — [LDP-IDS for Streaming Data (2022)](https://doi.org/10.1145/3514221.3526190)

> Full bibliography available in [`paper/Final_report_LDP.tex`](paper/Final_report_LDP.tex) — 20+ peer-reviewed sources.

---

## 📄 Citation

If you use this work, please cite:

```bibtex
@misc{hussain2025ldp,
  author    = {Syed Sabair Hussain},
  title     = {Local Differential Privacy: Mechanisms and Real-World Applications},
  year      = {2025},
  school    = {Wright State University},
  note      = {Masters in Cybersecurity Final Report},
  url       = {https://github.com/sabairhussain/ldp-research}
}
```

---

## 📝 License

This project is licensed under the MIT License — see [LICENSE](LICENSE) for details.
