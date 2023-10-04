Parallel Decision Tree Algorithm
=========================

- 📖 This repository was created to make the Decicision Tree Algorithm parallel
  - Language: C++
  - Parallel Library: Open MP
  - Database: 
  - Decision Tree Algorithm: https://github.com/bowbowbow/DecisionTree

To run the implementation 
=========================

1. Keep project files in one folder.

2. Compile using command `make`.
> To compile without using the makefile, type the following command.
>
> `g++ -std=c++11 decision_tree.cpp -o dt.exe -fopenmp`
> 
> (Note that -std=c++11 option must be given in g++.)

3. Run using following command.
> ./dt.exe [dt_train.txt] [dt_test.txt] [dt_result.txt]

Summary of the algorithm
============

This algorithm is used for automatic decision tree generation.

> **Input**:
> 1. **Data partition**: D, which is a set of training tuples and their associated class labels.
> 2. **Attribute_list**: The set of candidate attributes
> 3. **Attribute_selection_method**: A procedure to determine the splitting criterion that "best" partitions the data tuples into individual classes. This criterion consists of a splitting_attribute and, possibly, either a split-point or splitting subset.
> 
> **Output**: A decision tree.

**Basic Algorithm (a greedy algorithm)**
- Tree is constructed in a top-down, recursive, divide-and-conquer manner.
- At start, all the training examples are at the root.
- Attributes are categorical. (Note that if continuous-valued, they are discretized in advance)
- Test attributes are selected on the basis of a heuristic or statistical measure.

**Conditions for stopping partitioning**
- All samples for a given node belong to the same class
- There are no remaining attributes for further partitioning - majority voting is employed for classifying the leaf
- There are no sample left

**Attribute Selection Measure :** Information GainRatio

Any other specification of the implementation and testing
============

- Note that I use c++11, not c++. therefore -std=c++11 option is must be given in g++.

- `self test result `
> **Gain**
> Accuracy: 91.0405%(315/346)
>
> **Gain ratio**
> Accuracy: 91.9075%(318/346)
>
> **Estimated error pruning with gain ratio**
> Accuracy: 67.9191%(235/346)
>
> **Simple pre-pruning rule based on majority heuristic with gain ratio** 
> Aaccuracy: 92.1965%(319/346)

About input file
============

**Input file format for `a training set`**

[attribute_name_1]`\t`[attribute_name_2]`\n`...[attribute_name_n]

[attribute_1]`\t`[attribute_2]`\t`...[attribute_n]`\n` 

[attribute_1]`\t`[attribute_2]`\t`...[attribute_n]`\n` 

- n-1 attribute values of the corresponding tuple
- All the attributes are categorical (not continuous-valued)
- [attribute_n]: a class label that the corresponding tuple belongs to

**Input file format for `a test set`**

[attribute_name_1]`\t`[attribute_name_2]`\n`...[attribute_name_n-1]

[attribute_1]`\t`[attribute_2]`\t`...[attribute_n-1]`\n` 

[attribute_1]`\t`[attribute_2]`\t`...[attribute_n-1]`\n` 

- n-1 attribute values of the corresponding tuple
- All the attributes are categorical (not continuous-valued)

About output file
============

**Output file format**

[attribute_name_1]`\t`[attribute_name_2]`\n`...[attribute_name_n]

[attribute_1]`\t`[attribute_2]`\t`...[attribute_n]`\n` 

[attribute_1]`\t`[attribute_2]`\t`...[attribute_n]`\n` 

- [attribute_1] ~ [attribute_n-1]: given attribute values in the test set
- [attribute_n]: a class label predicted by your model for the corresponding tuple


<h2>Technologies Involved</h2>
<div style="display: inline_block;"><br>
  <img align="center" alt="Camila-Cplusplus" height="40" width="50" src="https://github.com/devicons/devicon/blob/master/icons/cplusplus/cplusplus-original.svg">
</div>
