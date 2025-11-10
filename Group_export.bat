############################################
#
# This GAP program exports 
# the Cayley tables of all groups up to isomorphism
# to txt file.
# We take list of semigroups from GAP package
# SmallGroups (https://gap-packages.github.io/smallgrp/).
#
############################################

# Initialize semigroup parameters
n := 12;  # Semigroup order
list_out := ["C:/GAPdocs/", "group_", String(n), "_out.txt"];
file_out :=JoinStringsWithSeparator(list_out, "");
Print(file_out);
RangeGroup := [1, 1, 1, 2, 1, 2, 1, 5, 2, 2, 1, 5, 1, 2, 1, 14, 1, 5, 1, 5, 2, 2, 1, 15];  # Group counts by order (OEIS A000001)
GroupTables := [];  # Will store all unique Cayley tables
for semigr in [1..RangeGroup[n]] do
    SG := SmallGroup(n, semigr);
    original_table := MultiplicationTable(SG);
    Add(GroupTables, original_table);
od;
for st in GroupTables do
    AppendTo(file_out, st);
    AppendTo(file_out, "\n");
od;    


