// Q9.
// Print the following tree in alphabetical order https://drive.google.com/uc?id=1WiTdeqPgpQlgCBgSuwRGCcjajAO3JHNw&export=download
// Another text visualization of the tree could be
//           (F)
//     (D)       (J)
//   (B) (E)  (H)   (K)
// (A)(C)   (G) (I)
// The tree is already built for you in the code below.

class BinaryTreeNode {
   let val: String
   var left: BinaryTreeNode?
   var right: BinaryTreeNode?
   init(_ val: String) {
      self.val = val
   }
}

// Create nodes
var a = BinaryTreeNode("A")
var b = BinaryTreeNode("B")
var c = BinaryTreeNode("C")
var d = BinaryTreeNode("D")
var e = BinaryTreeNode("E")
var f = BinaryTreeNode("F")
var g = BinaryTreeNode("G")
var h = BinaryTreeNode("H")
var i = BinaryTreeNode("I")
var j = BinaryTreeNode("J")
var k = BinaryTreeNode("K")

// Connect nodes, thus creating the Tree
f.left = d;
f.right = j;

d.left = b;
d.right = e;

b.left = a;
b.right = c;

j.left = h;
j.right = k;

h.left = g;
h.right = i;

// Should print
// A
// B
// C
// D
// E
// F
// G
// H
// I
// J
// K
