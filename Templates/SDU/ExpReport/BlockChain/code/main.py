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
