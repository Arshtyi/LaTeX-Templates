import hashlib
def hash_func(val: str) -> str:
    return hashlib.sha256(val.encode('utf-8')).hexdigest()
class MerkleTree:
    def __init__(self, data_chunks):
        if not data_chunks:
            raise ValueError("Data chunks cannot be empty")
        self.tree = []
        leaf_hashes = [hash_func(chunk) for chunk in data_chunks]
        self.tree.append(leaf_hashes)
        self._build_tree()
    def _build_tree(self):
        current_level = self.tree[0]
        while len(current_level) > 1:
            next_level = []
            for i in range(0, len(current_level), 2):
                left_child = current_level[i]
                right_child = current_level[i+1] if i + 1 < len(current_level) else left_child
                parent_hash = hash_func(left_child + right_child)
                next_level.append(parent_hash)
            self.tree.append(next_level)
            current_level = next_level

    def get_merkle_root(self) -> str:
        if not self.tree:
            return ""
        return self.tree[-1][0]

    def print_tree(self):
        if not self.tree:
            print("Tree is empty.")
            return
        for i, level in enumerate(reversed(self.tree)):
            level_num = len(self.tree) - i
            print(f"--- Level {level_num} (Nodes: {len(level)}) ---")
            for j, node_hash in enumerate(level):
                print(f"  Node {j+1}: {node_hash}")
        print( "=" * 80)

if __name__ == "__main__":
    transactions = [
        "The",
        "initial",
        "trasaction",
        "data",
        "in",
        "a",
        "merkle",
        "tree"
    ]
    print("Initial Data:")
    print(transactions)
    print("-" * 80)
    merkle_tree = MerkleTree(transactions)
    merkle_root = merkle_tree.get_merkle_root()
    print(f"Merkle Root: {merkle_root}")
    expected_root = "50369881ce4141276e9f3432584ebc2af8d47bc6dc8f11bd1005a784c25fa210"
    print(f"Root matches expected: {merkle_root == expected_root}")
    merkle_tree.print_tree()
