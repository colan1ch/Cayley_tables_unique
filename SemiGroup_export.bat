############################################
#
# This GAP program exports 
# the Cayley tables of all semigroups up to isomorphism and anti-isomorphism
# to txt file.
# We take list of semigroups from GAP package
# Smallsemi (https://gap-packages.github.io/smallsemi/).
#
############################################

# Load library of small semigroups
LoadPackage("Smallsemi");

# Initialize semigroup parameters
n := 3;  # Semigroup order
list_out := ["semigroup_", String(n), "_out.txt"];
file_out :=JoinStringsWithSeparator(list_out, "");
Sn := SymmetricGroup(n);  # For isomorphism testing
RangeSemigroup := [1,4,18,126,1160,15973, 836021];  # Semigroup counts by order (OEIS A027851)
SemiGroupTables := [];  # Will store all unique Cayley tables
for semigr in [1..RangeSemigroup[n]] do
    SG := SmallSemigroup(n, semigr);
    original_table := MultiplicationTable(SG);
    Add(SemiGroupTables, original_table);
od;
for st in SemiGroupTables do
    AppendTo(file_out, st);
    AppendTo(file_out, "\n");
od;    


