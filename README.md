<div align="center">

# READING

### Papers, books, and questions worth keeping

Computer architecture · AI systems · EDA · hardware-software co-design

<p><em>Read for the problem. Check the evidence. Keep the next question.</em></p>

</div>

---

## Shelves

| Collection | What belongs here |
| :--- | :--- |
| [AI](ai/) | AI models and the systems that run them |
| [Architecture](arch/) | CPU/GPU microarchitecture, memory, and architecture-level modeling |
| [EDA](eda/) | Design automation, accelerator generation, and design-space exploration |
| [Books](books/) | Book notes and legally shareable material |

Each paper can have a PDF and a Markdown note in the same folder. Start a note from [NOTE_TEMPLATE.md](NOTE_TEMPLATE.md). A paper may cross categories; its primary home is listed only once below.

## Reading trail

These are the public papers we have discussed in depth so far. Run `bash download-papers.sh` to put author-posted or open-access PDFs into the indicated folders.

| Collection | Paper | Why it is here | Public PDF |
| :--- | :--- | :--- | :--- |
| AI | **FlexInfer** · MLSys 2025 | CPU-GPU execution planning for LLM inference | [Authors' PDF](https://seonjinna.github.io/assets/pdf/MLSys25_FlexInfer.pdf) |
| Architecture | **PANDA** · ICCAD 2023 | Analytical + ML architecture-level power modeling | [arXiv PDF](https://arxiv.org/pdf/2312.08994) |
| Architecture | **FirePower** · ASP-DAC 2025 | Few-shot transfer of CPU power models across architectures | [arXiv PDF](https://arxiv.org/pdf/2410.17789) |
| Architecture | **G-Power** · DAC 2026 | GPU power modeling using knowledge from other GPUs | [arXiv PDF](https://arxiv.org/pdf/2608.06870) |
| EDA | **FSGen** · DAC 2026 | Fused/sparse LLM accelerator generation and early PPA estimation | [arXiv PDF](https://arxiv.org/pdf/2608.09252) |

## A note that stays useful

1. What exact problem does the paper solve, and why did earlier approaches fall short?
2. What is the mechanism? Separate the new idea from implementation details.
3. Which experiment most convincingly supports the claim? What does it *not* show?
4. What question would I ask the authors, or test next?

This repository is for reading, not application materials. **Unpublished or confidential manuscripts, referee material, and personal documents are intentionally excluded.** Check the license before adding a book or any other non-open PDF.
