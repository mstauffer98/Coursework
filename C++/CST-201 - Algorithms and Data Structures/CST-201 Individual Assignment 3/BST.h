#pragma once

#ifndef BST_H
#define BST_H

#include <iostream>

using namespace std;

template <class T>

class BST {

public:
	class TreeNode {
	public:
		T val;
		TreeNode *parent, *left, *right;
		  
		TreeNode(T v) {
			val = v;
			parent = left = right = nullptr;
		}
	};

	BST() {
		root = nullptr;
	}

	void insert(T v) {
		TreeNode * prev = nullptr;
		TreeNode * curr = root;

		while(curr != nullptr) {
			prev = curr;
			if (v < curr->val)
				curr = curr->left;
			else 
				curr = curr->right;
		}

		//make new node
		TreeNode * nn = new TreeNode(v);

		nn->parent = prev;
	
		// is the tree empty?
		if (prev == nullptr)
			root = nn;
		// else see which side of prev
		else if (v < prev->val)
			prev->left = nn;
		else if (v > prev->val)
			prev->right = nn;
	}

	void treeWalk() {
		inOrderTreeWalk(root);
	}

	int findElement(T v) {
		//search for and compare value to binary search tree
		int numComp = compare(v);
		return numComp;
	}

	void remove(T v) {
		TreeNode * x;
		TreeNode * y;
		TreeNode * target = locate(v);
		
		//if val is not in tree, do nothing
		if (target == nullptr)
			return;
		
		//see if 1 or 0 children
		if (target->left == nullptr || target->right == nullptr)
			y = target;
		else
			y = successor(v);

		//set x
		if (y->left != nullptr)
			x = y->left;
		else
			x = y->right;

		//set child's parent to parent's parent
		if (x != nullptr)
			x->parent = y->parent;
		
		//set x to position of y
		if (y->parent == nullptr)
			root = x;
		else if (y->parent->left == y)
			y->parent->left = x;
		else
			y->parent->right = x;

		//set successor data to target data
		if (y != target)
			target->val = y->val;

		delete y;
	}

	TreeNode * successor(T v) {
		//locate val
		TreeNode * curr = locate(v);
		//see if curr has a right child
		if (curr->right != nullptr) {
			//find min in this subtree
			return findMin(curr->right->val);
		}
		TreeNode * prev = curr->parent;
		while (prev != nullptr && curr == prev->right) {
			curr = prev;
			prev = prev->parent;
		}
		return prev;
	}

	TreeNode * findMin(T val) {
		//find val in the tree
		TreeNode * curr = locate(val);
		while (curr->left != nullptr) {
			curr = curr->left;
		}
		return curr;
	}

	/* vvv Start of Unused Code vvv */
	T findMax(T val) {
		//find val in the tree
		TreeNode * curr = locate(val);
		while (curr->right != nullptr) {
			curr = curr->right;
		}
		return curr->val;
	}

	int height(T val) {
		TreeNode * curr = locate(val);
		return h(curr);
	}
	/* ^^^ End of Unused Code ^^^ */

private:
	TreeNode * root;

	void inOrderTreeWalk(TreeNode * t) {
		if (t != nullptr) {
			inOrderTreeWalk(t->left);
			cout << t->val << " ";
			inOrderTreeWalk(t->right);
		}
	}
	
	//return pointer to the val
	//return nullptr if val is not present
	TreeNode * locate(T v) {
		TreeNode * curr = root;
		while (curr != nullptr) {
			if (curr->val == v)
				return curr;
			if (v < curr->val)
				curr = curr->left;
			else
				curr = curr->right;
		}
	}

	//search for value in tree
	//copy of locate method, but returns # of comparisons instead of a node
	int compare(T v) {
		TreeNode * curr = root;
		int numComp = 0;	
		while (curr != nullptr) {
			//found in tree
			if (curr->val == v)
				return numComp;
			if (v < curr->val)
				curr = curr->left;
			else
				curr = curr->right;
			numComp++;
		}
		//not found in tree
		return -1;
	}

	/* vvv Start of Unused Code vvv */
	int h(TreeNode * t) {
		if (t == nullptr)
			return -1;
		else {
			return h(t->left) > h(t->right) ?
				h(t->left) + 1 :
				h(t->right) + 1;
		}
	}
	/* ^^^ End of Unused Code ^^^ */
};

#endif