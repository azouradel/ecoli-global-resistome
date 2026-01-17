#!/bin/bash

# Example command illustrating antimicrobial resistance gene detection
# using the ResFinder database via ABRicate.
# This script represents a simplified example of the analytical approach
# described in the Methods section of the associated manuscript.

abricate --db resfinder example_genome.fasta > example_arg_output.tsv
