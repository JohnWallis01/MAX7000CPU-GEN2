import math
import numpy as np
import itertools

double_index = ["00", "01", "11", "10"]
single_index = ["0", "1"]

class Truth_Matrix(object):
    """truth matrix has n outpus of a vector that goes from 0 to n-1 of
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
    """creates a kmap using a truth_matrix_object"""
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
        coord = np.array(keytocoord(key, axes))
        coord = tuple(coord)
        Kmatrix[coord] = t_map[key]
    return Kmatrix, axes


def K_search(Kmatrix):
    #need to change this to wrap around the boundaries
    """searches a K_map for the simplified states"""
    groups = []
    iters = [list(range(i)) for i in Kmatrix.shape]
    iter_vectors = list(itertools.product(*iters))
    for vec1 in iter_vectors:
        for vec2 in iter_vectors:
            slicer = vec_slice(vec1,vec2)
            volume = len(Kmatrix[slicer].flatten())
            if np.all(np.abs(Kmatrix[slicer])==1) and np.any(Kmatrix[slicer]==1) and np.round(np.log(volume)/np.log(2)) == np.log(volume)/np.log(2):
                groups.append([vec1,vec2])
    #loop through groups to remove duplicates.
    subgroups = []
    for group in groups:
        for biggroup in groups:
            subgroup = True
            for c in range(len(group[0])):
                if (group[0][c] not in range(biggroup[0][c], biggroup[1][c] + 1 ) or group[1][c] not in range(biggroup[0][c], biggroup[1][c] + 1)) and biggroup != group:
                    subgroup = False
            if group not in subgroups and subgroup is True and biggroup != group:
                subgroups.append(group)
    groups = [group for group in groups if group not in subgroups]
    #check that needless groups arent in there
    # first find the total number of ones in each group
    newgroups = []
    for group in groups:
        submatrix = Kmatrix[vec_slice(group[0],group[1])]
        oneCount = np.sum(submatrix + np.ones(submatrix.shape))/2
        newgroups.append([oneCount,group])
    newgroups.sort(reverse=True)
    redundant = []
    for group in newgroups:
        slicer = vec_slice(group[1][0], group[1][1])
        submatrix = Kmatrix[slicer]
        oneCount = np.sum(submatrix == 1)
        if oneCount == 0:
            redundant.append(group)
        Kmatrix[slicer] = np.zeros(submatrix.shape)
    groups = [[g[1][0],g[1][1]] for g in newgroups if g not in redundant]
    return groups


def GroupSynthesize(groups, axes):
    output = []
    for group in groups:
        slicer = vec_slice(group[0], group[1])
        ax_states = []
        for c in range(len(slicer)):
            ax_states.append(axes[c][slicer[c]])
        Inputs = []
        c = 0
        for ax in reversed(ax_states):
            for state in ax:
                # print(Inputs, state)
                if len(state) == 1:
                    try:
                        Inputs[c] = Inputs[c] + state
                    except IndexError:
                        Inputs.insert(c, state)
                else:
                    try:
                        Inputs[c] = Inputs[c] + state[1]
                        Inputs[c+1] = Inputs[c+1] + state[0]
                    except IndexError:
                        Inputs.insert(c, state[1])
                        Inputs.insert(c+1, state[0])
            c += 2
        stringi = ""
        d = 0
        for Inputi in Inputs:
            if Inputi == "01" or "10":
                pass
            if Inputi == "00" or Inputi == "0":
                stringi = stringi + "~Q"+str(d)+""
            if Inputi == "11" or Inputi == "1":
                stringi = stringi + "Q"+str(d)
            d += 1
        output.append(stringi)
    output = "D = " + " + ".join(output)
    return output




def vec_slice(vec1, vec2):
    slicer = []
    for c in range(len(vec1)):
        slicer.append(slice(vec1[c], vec2[c]+1))
    slicer = tuple(slicer)
    return slicer


def keytocoord(key,axes):
    """converts a greycode value into the coordinate of a Kmap"""
    n=2
    key = key[::-1]
    breakup = [key[i:i+n] for i in range(0, len(key), n)]
    breakup = [breakupe[::-1] for breakupe in breakup]
    breakup = breakup[::-1]
    coords = []
    for i in range(len(axes)):
        coords.append(axes[i].index(breakup[i]))
    return coords


def coordtoindex(coord, shape):
    """takes a matrix of shape and returns a scalar that points to the coordinates of the value at coord"""
    pass


def indextocoord(index, shape):
    """takes a matrix of shape and returns a vector that points to the coordinates of the value at coord"""
    np.unravel_index(index, shape)


#truth matrix seems to be generating the incorrect states (Kmatrix horiziontal axis is wrong)

test = Truth_Matrix([1,1,0,0,0,1,1,1,1,0,0,1,1])
x = K_search(map_from_truth_matrix(test)[0])
print(map_from_truth_matrix(test)[0])
axes = map_from_truth_matrix(test)[1]
# print(axes)
print(x)
print(test.truth_map())
print(GroupSynthesize(x, axes))



#software at this point is eol

#Quine–McCluskey algorithm is new waifiu
