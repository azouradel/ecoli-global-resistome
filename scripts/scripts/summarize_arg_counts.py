# Example script to summarize antimicrobial resistance gene occurrences
# across hosts. Provided as an illustrative workflow.

import pandas as pd

df = pd.read_csv("example_arg_table.csv")

summary = (
    df.groupby(["host", "gene"])
      .size()
      .reset_index(name="occurrences")
)

summary.to_csv("arg_summary_by_host.csv", index=False)
