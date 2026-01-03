# Minimal Cayley Table Fill for Unique Semigroup Identification

This repository contains scripts and data to solve the problem of finding
 the smallest number of entries (**A(n)**) in a Cayley table required
 to uniquely define a finite semigroup of order **n**.
 The result of this investigations are presented in OEIS
  as a sequences A387854 (https://oeis.org/A387854)
   and A387855 (https://oeis.org/A387855)

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

*   **`Semigroup_export.bat`** - A GAP script to generate the list of all semigroups of order **n** up to isomorphism and anti-isomorphism.
*   **`Group_export.bat`** - A GAP script to generate the list of all semigroups of order **n** up to isomorphism.
*   **Output for semigroup:** `semigroup_n_out.txt` - Text files containing the list of Cayley tables of semigroups for orders **n = 2 to 7**.
*   **Output for semigroup:** `group_n_out.txt` - Text files containing the list of Cayley tables of groups for orders **n = 6 to 20**.

*   **Output correction for further using:** `wholeTableInOneLine.py` - Transfrom GAP output into format: whole multiplication table in one string. The result of this step is in the files named `semigroup_n_output.txt` and `group_n_output.txt`
	 

### Step 2: Proofs and Analysis (Jupyter Notebooks)

The following notebooks contain the step-by-step proofs and computations:

##Semigroup section

1.  **`proof_2_3.ipynb`**
    *   **Proof:** For semigroups of order 2 and 3, **2 filled cells** are sufficient for unique identification.

2.  **`proof_semigroup_2constrain.ipynb`**
    *   **Proof:** For semigroups of order 4 (and higher), **2 cells are not sufficient**.

3.  **`proof_semigroup_3constrain.ipynb`**
    *   **Proof:** For semigroups of order 4 to 7, **3 filled cells are sufficient**.

##Group section
4.  **`proof_group_n_2constrain.ipynb`**
    *   **Proof:** For groups of order 6, 9 **2 filled cells** are sufficient for unique identification.
    *   **Proof:** For groups of order 8 or 12, **2 filled cells** are unsufficient for unique identification.

5.  **`proof_group_n_3constrain.ipynb`**
    *   **Proof:** For groups of order 8 or 12 **3 filled cells** are sufficient for unique identification.
    *   **Proof:** For groups of order 16,18 or 20, **3 filled cells** are unsufficient for unique identification.

5.  **`proof_group_n_4constrain.ipynb`**
    *   **Proof:** or groups of order 16,18 or 20, **4 filled cells** are sufficient for unique identification.



## Usage

To reproduce the results, follow these steps:

1.  **Generate Semigroup/Group Lists:**
    Execute the `Semigroup_export.bat` or `Group_export.bat`script in your GAP environment to generate the necessary `semigroup_n_out.txt` files for the desired orders `n`.

2.  **Run Analysis:**
    Open and run the Jupyter Notebooks in the order presented above to follow the proof logic and regenerate all computational results.

## Authors

Andrey Chernev (ChernevAM@mpei.ru)
Nickolay Chernev (nachernev@gmail.com)
