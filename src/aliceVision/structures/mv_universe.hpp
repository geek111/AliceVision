// This file is part of the AliceVision project.
// This Source Code Form is subject to the terms of the Mozilla Public License,
// v. 2.0. If a copy of the MPL was not distributed with this file,
// You can obtain one at https://mozilla.org/MPL/2.0/.

#pragma once

typedef struct
{
    int rank;
    int p;
    int size;
} uni_elt;

/**
 * @brief Allows to perform labelling by creating node and connecting them.
 */
class mv_universe
{
public:
    mv_universe(int elements);
    ~mv_universe();
    /// Initialize all elements to the default values
    void initialize();
    /// Retrieve the smallest index of the elements connected to x.
    /// @warning: it updates the local indexes along the way
    int find(int x);
    void join(int x, int y);
    void addEdge(int x, int y);
    int size(int x) const { return elts[x].size; }
    int num_sets() const { return num; }

public:
    uni_elt* elts;
    int num, allelems;
};
