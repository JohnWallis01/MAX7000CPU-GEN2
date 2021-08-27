import math
import numpy as np

double_index = ["00", "01", "11", "10"]
single_index = ["0", "1"]

class Truth_Matrix(object):
    """truth matrix has n inputs and a vector that goes from 0 to n-1 of
       True(1), False(0), or Dont care(-1) states"""
    def __init__(self, outputs):
        super(Truth_Matrix, self).__init__()
        self.inputs = len(outputs)
        self.outputs = outputs


    def gen_truth_values(self):
        truthvalues = []
        self.bits = math.ceil(math.log(self.inputs)/math.log(2))
        for n in range(self.inputs):
             truthvalues.append('{:0{}b}'.format(n, self.bits))
        return truthvalues

    def print_tt(self):
        truthvalues = self.gen_truth_values()
        for i in range(len(self.outputs)):
            print(truthvalues[i], self.outputs[i])

    def truth_map(self):
        truthdict = {}
        truthvalues = self.gen_truth_values()
        for i in range(len(self.outputs)):
            truthdict[truthvalues[i]] = self.outputs[i]
        return truthdict
def map_from_truth_matrix(truth_matrix):
    bits = math.ceil(math.log(truth_matrix.inputs)/math.log(2))
    dimensions = math.ceil(bits/2)
    axes = []
    if math.ceil(bits/2) != bits/2:
        axes.append(single_index)
        for i in range(dimensions - 1):
            axes.append(double_index)
    else:
        for i in range(dimensions):
            axes.append(double_index)
    dims = [len(dimension) for dimension in axes]
    Kmatrix = -np.ones(dims)
    t_map = truth_matrix.truth_map()

    for key in t_map.keys():
        print(key, axes)
        coord = np.array(keytocoord(key, axes))
        print(coord)
        Kmatrix.T[coord] = t_map[key]
        print(Kmatrix)
    return Kmatrix

def keytocoord(key,axes):
    n=2
    key = key[::-1]
    breakup = [key[i:i+n] for i in range(0, len(key), n)]
    breakup = [breakupe[::-1] for breakupe in breakup]
    breakup = breakup[::-1]
    coords = []
    for i in range(len(axes)):
        coords.append(axes[i].index(breakup[i]))
    return coords


test = Truth_Matrix([1,1,0,0,0])
print(map_from_truth_matrix(test))
