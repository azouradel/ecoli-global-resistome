# ecoli-global-resistome
Representative scripts for global antimicrobial resistance gene analysis in Escherichia coli
## Minimal example workflow
1) Detect antimicrobial resistance genes (example):
   abricate --db resfinder example_genome.fasta > example_arg_output.tsv

2) Summarize ARG occurrences by host:
   python scripts/summarize_arg_counts.py

3) Generate host-level summaries:
   Rscript scripts/host_stratification_example.R
## Requirements
- ABRicate
- ResFinder database (via ABRicate)
- Python (pandas)
- R (dplyr)
