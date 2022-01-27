import swan_vis as swan
import sys
import os

# read in SwanGraph
fname = 'swan.p'
sg = swan.read(fname)

# arguments
test = sys.argv[1]
cond1 = sys.argv[2]
cond2 = sys.argv[3]
fname = sys.argv[4]

# actually perform the test
die, genes = sg.die_gene_test(kind=test,
                              obs_col='cell_type',
                              obs_conditions=[cond1, cond2])
die.to_csv(fname, sep='\t