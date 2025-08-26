
```markdown
# Minimal Cayley Table Fill for Unique Semigroup Identification

This repository contains scripts and data to solve the problem of finding the smallest number of entries (**A(n)**) in a Cayley table required to uniquely define a finite semigroup of order **n**.

## Prerequisites

Ensure the following software is installed on your system:

*   **GAP** (version 4.14 or newer) - [Download GAP](https://www.gap-system.org)
*   **Python** (version 3.8 or newer) - [Download Python](https://www.python.org)
*   **Jupyter Notebook** (to run `.ipynb` files) - Usually installed via `pip`:
    ```bash
    pip install notebook
    ```

## Repository Workflow & File Description

The research is conducted in the following logical sequence:

### Step 1: Data Generation (GAP)

*   **`Semigroup_export.bat`** - A GAP script to generate the list of all semigroups of order **n**.
*   **Output:** `semigroup_n_out.txt` - Text files containing the list of semigroups for orders **n = 2 to 6**.

### Step 2: Proofs and Analysis (Jupyter Notebooks)

The following notebooks contain the step-by-step proofs and computations:

1.  **`proof_2_3.ipynb`**
    *   **Proof:** For semigroups of order 2 and 3, **2 filled cells** are sufficient for unique identification.

2.  **`proof_4_2_cells_not_enough.ipynb`**
    *   **Proof:** For semigroups of order 4 (and higher), **2 cells are not sufficient**.

3.  **`proof_5_3_cells_is_enough.ipynb`**
    *   **Proof:** For semigroups of order 4 and 5, **3 filled cells are sufficient**.

4.  **`proof_6_get_list_of_tables.ipynb`**
    *   **Computation:** Generates a list of semigroups of order 6 that satisfy the 3-cell constraint.
    *   **Output:** `const_semigroup_n_out.txt` - The list of qualifying semigroups.

5.  **`proof_6_4_cells_not_enough.ipynb`**
    *   **Proof:** For semigroups of order 6, **4 filled cells are not sufficient**, but **5 cells are sufficient**.

## Usage

To reproduce the results, follow these steps:

1.  **Generate Semigroup Lists:**
    Execute the `Semigroup_export.bat` script in your GAP environment to generate the necessary `semigroup_n_out.txt` files for the desired orders `n`.

2.  **Run Analysis:**
    Open and run the Jupyter Notebooks in the order presented above to follow the proof logic and regenerate all computational results.

## Authors

Andrey Chernev (ChernevAM@mpei.ru)
Nickolay Chernev (nachernev@gmail.com)
