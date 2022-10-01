Dead Inst Elimination performs a single pass over the function removing instructions that are obviously dead.
Dead Code Elimination is similar, but it rechecks instructions that were used by removed instructions to see if they are newly dead.
