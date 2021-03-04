// This is my own work based on code provided.
//
// Michael Stauffer
// CST-201
// 4/8/19
// Individual Assignment 3

#include <fstream>
#include <iostream>
#include <string>
#include "BST.h"

using namespace std;

int main() {
	BST<string> myTree;

	ifstream fin("MrBlueSky.txt");
	if (!fin) {
		cerr << "File not found\n";
		exit(2);
	}

	string str;
	while (fin >> str) {
		myTree.insert(str);
	}

	myTree.treeWalk();
	cout << endl;

	//loop until user inputs "-1"
	string userInput = "";
	while (userInput != "-1") {
		cout << "Enter string, enter -1 to quit: ";
		cin >> userInput;
		if (userInput != "-1") {
			//locate value in binary search tree
			int numComp = myTree.findElement(userInput);
			//assess number of comparisons
			if (numComp == -1) {
				cout << "'" << userInput << "' not in tree." << endl;
			}
			else if (numComp == 1) {
				cout << "Inspected " << numComp << " element.\n'" << userInput << "' located." << endl;
			}
			else {
				cout << "Inspected " << numComp << " elements.\n'" << userInput << "' located." << endl;
			}
		}
	}
	
	//loop until user inputs "-1"
	string userData = "";
	while (userData != "-1") {
		cout << "Enter string to remove: ";
		cin >> userData;
		if (userData != "-1") {
			//determine if value is in tree; remove if so
			if (myTree.findElement(userData) != -1) {
				myTree.remove(userData);
			}
			//print out contents of tree
			myTree.treeWalk();
			cout << endl;
		}
	}

	return 0;
}