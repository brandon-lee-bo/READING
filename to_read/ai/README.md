# AI reading queue

| Order | Paper | Reading focus | Official PDF | Local filename |
| :--- | :--- | :--- | :--- | :--- |
| 1 | QLoRA: Efficient Finetuning of Quantized LLMs (NeurIPS 2023) | Single-GPU memory use; 4-bit weight storage versus BF16 computation; paged optimizer | [NeurIPS PDF](https://proceedings.neurips.cc/paper_files/paper/2023/file/1feb87871436031bdc0f2beaa62a049b-Paper-Conference.pdf) | `QLoRA_NeurIPS2023.pdf` |
| 2 | Punica: Multi-Tenant LoRA Serving (MLSys 2024) | GPU-side LoRA serving, batching, and memory access; focus on Section 4 and Figures 3, 4, and 7 | [MLSys PDF](https://proceedings.mlsys.org/paper_files/paper/2024/file/054de805fcceb78a201f5e9d53c85908-Paper-Conference.pdf) | `Punica_MLSys2024.pdf` |

Suggested sequence: read the LoRA background first, then QLoRA, then Punica's GPU implementation sections. These are two separate papers; the LoRA paper is not yet in this queue.
