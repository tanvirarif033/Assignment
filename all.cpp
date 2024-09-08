#include <iostream>
#include <vector>
#include <list>
#include <deque>
#include <stack>
#include <queue>
#include <set>
#include <map>
#include <algorithm>
#include <iterator>
#include <functional>
#include <numeric> // Include for accumulate

using namespace std;

int main() {
//    // Vector
//    vector<int> vec = {1, 2, 3, 4, 5};
//    vec.push_back(6);
//    vec.pop_back();
//    sort(vec.begin(), vec.end());
//    for (int v : vec) cout << v << " ";
//    cout << endl;
//
//    // List
//    list<int> lst = {1, 2, 3, 4, 5};
//    lst.push_back(6);
//    lst.push_front(0);
//    lst.pop_back();
//    lst.pop_front();
//    lst.sort();
//    for (int l : lst) cout << l << " ";
//    cout << endl;
//
//    // Deque
//    deque<int> deq = {1, 2, 3, 4, 5};
//    deq.push_back(6);
//    deq.push_front(0);
//    deq.pop_back();
//    deq.pop_front();
//    for (int d : deq) cout << d << " ";
//    cout << endl;
//
//    // Stack
//    stack<int> stk;
//    stk.push(1);
//    stk.push(2);
//    stk.push(3);
//    while (!stk.empty()) {
//        cout << stk.top() << " ";
//        stk.pop();
//    }
//    cout << endl;
//
//    // Queue
//    queue<int> que;
//    que.push(1);
//    que.push(2);
//    que.push(3);
//    while (!que.empty()) {
//        cout << que.front() << " ";
//        que.pop();
//    }
//    cout << endl;
//
//    // Priority Queue (Max-Heap)
//    priority_queue<int> max_pq;
//    max_pq.push(3);
//    max_pq.push(1);
//    max_pq.push(2);
//    while (!max_pq.empty()) {
//        cout << max_pq.top() << " ";
//        max_pq.pop();
//    }
//    cout << endl;
//
//    // Priority Queue (Min-Heap)
//    priority_queue<int, vector<int>, greater<int>> min_pq;
//    min_pq.push(3);
//    min_pq.push(1);
//    min_pq.push(2);
//    while (!min_pq.empty()) {
//        cout << min_pq.top() << " ";
//        min_pq.pop();
//    }
//    cout << endl;
//
//    // Set
//    set<int> st = {3, 1, 4, 1, 5};
//    st.insert(2);
//    st.erase(1);
//    for (int s : st) cout << s << " ";
//    cout << endl;
//
//    // Multiset
//    multiset<int> mst = {3, 1, 4, 1, 5};
//    mst.insert(2);
//    mst.erase(1);  // Erases all occurrences of 1
//    for (int ms : mst) cout << ms << " ";
//    cout << endl;
//
//    // Map
//    map<int, string> mp;
//    mp[1] = "one";
//    mp[2] = "two";
//    mp[3] = "three";
//    for (const auto& p : mp) cout << p.first << ": " << p.second << ", ";
//    cout << endl;
//
//    // Multimap
//    multimap<int, string> mmp;
//    mmp.insert({1, "one"});
//    mmp.insert({1, "uno"});
//    mmp.insert({2, "two"});
//    for (const auto& p : mmp) cout << p.first << ": " << p.second << ", ";
//    cout << endl;
//
//    // Pair
//    pair<int, string> p1 = {1, "one"};
//    pair<int, string> p2 = make_pair(2, "two");
//    cout << "Pair 1: " << p1.first << ", " << p1.second << endl;
//    cout << "Pair 2: " << p2.first << ", " << p2.second << endl;
//
//    // Vector of Pairs
//    vector<pair<int, string>> vec_of_pairs = { {1, "one"}, {2, "two"}, {3, "three"} };
//    vec_of_pairs.push_back({4, "four"});
//    for (const auto& p : vec_of_pairs) cout << p.first << ": " << p.second << " ";
//    cout << endl;
//
//    // Pair of Pairs
//    pair<pair<int, int>, string> pp = {{1, 2}, "one-two"};
//    cout << "Pair of pairs: ((" << pp.first.first << ", " << pp.first.second << "), " << pp.second << ")" << endl;
//
//    // Algorithms
//    vector<int> nums = {1, 2, 3, 4, 5};
//    reverse(nums.begin(), nums.end());
//    for (int n : nums) cout << n << " ";
//    cout << endl;
//
//    int sum = accumulate(nums.begin(), nums.end(), 0);
//    cout << "Sum: " << sum << endl;
//
//    auto it = find(nums.begin(), nums.end(), 3);
//    if (it != nums.end()) {
//        cout << "Found: " << *it << endl;
//    }
//
//    return 0;
//}
//
//
//
//
//
//////
//
//#include <iostream>
//#include <vector>
//#include <algorithm>
//using namespace std;
//
//// Function to display all students
//void displayStudents(const vector<pair<int, pair<string, double>>>& students) {
//    for (const auto& student : students) {
//        cout << "ID: " << student.first
//             << ", Name: " << student.second.first
//             << ", CGPA: " << student.second.second << endl;
//    }
//    cout << endl;
//}
//
//int main() {
//    vector<pair<int, pair<string, double>>> students; // Vector to store student info
//
//    // Input 5 students manually
//    for (int i = 0; i < 5; ++i) {
//        int id;
//        string name;
//        double cgpa;
//        cout << "Enter student " << i + 1 << " ID, Name, and CGPA: ";
//        cin >> id >> name >> cgpa;
//        students.push_back(make_pair(id, make_pair(name, cgpa)));
//    }
//
//    while (true) {
//        cout << "Enter 1 to add student, 2 to sort by CGPA, 3 to terminate: ";
//        int choice;
//        cin >> choice;
//
//        if (choice == 1) {
//            // Add one more student
//            int id;
//            string name;
//            double cgpa;
//            cout << "Enter new student ID, Name, and CGPA: ";
//            cin >> id >> name >> cgpa;
//            students.push_back(make_pair(id, make_pair(name, cgpa)));
//        } else if (choice == 2) {
//            // Sort students by CGPA
//            sort(students.begin(), students.end(), [](const auto& a, const auto& b) {
//                return a.second.second > b.second.second; // Descending order
//            });
//            displayStudents(students);
//        } else if (choice == 3) {
//            // Terminate the program
//            cout << "Terminating the program." << endl;
//            break;
//        } else {
//            cout << "Invalid choice, please try again." << endl;
//        }
//    }

        cout <<(5%-4);

    return 0;
}

