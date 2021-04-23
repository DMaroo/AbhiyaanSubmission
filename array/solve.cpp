#include <iostream>
// necessary for std::cin, std::cout and std::abs()

#include <bits/stdc++.h>
// necessary for using std::vector<int>

using namespace std;
// use namespace std to avoid cluttering

int main(void)
{
    int size;
    // the variable corresponding to the size of the array

    cin >> size;
    // read the size

    int num[size];
    // create an array for the input

    vector <int> pos1;
    // create a vector array which stores the locations of all the ones

    for (int i = 0; i < size; i++)
    {
        cin >> num[i];
        // read the input on number at a time

        if (num[i] == 1) // if the number is one
        {
            pos1.push_back(i);
            // add the location the array pos1
        }
    }
    
    int size1 = pos1.size();
    // store the size of pos1 in size1

    int mid = pos1[size1/2];
    // find the value of the middle element of pos1

    int offset = 0;
    // create a variable which will work as an offset

    int ans = 0;
    // create the variable where the final answer will be stored

    for (int i = 0; i < size1; i++)
    {
        ans += abs(mid - pos1[i]);
        // for all the ones, find their distance from the middle element

        if (mid != pos1[i]) // if the current element is not the middle element
        {
            offset++;
            // increment the offset

            ans -= offset;
            // deduct the offset from the answer. This is becuse the nth element from the middle element will have n less steps to move
        }
        else // if the current element is the middle element
        {
            offset = 0;
            // reset the offset counter, which will be incremented again while traversing through the rest of the ones
        }
    }

    cout << ans << endl;
    // output the answer
}

// time complexity: O(size)
// space complexity: O(size)