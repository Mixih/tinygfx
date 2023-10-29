#ifndef SCENEGRAPH_HPP_
#define SCENEGRAPH_HPP_

#include <memory>
#include <vector>
class SceneGraph {
private:
    class SceneGraphNode;
    std::unique_ptr<SceneGraphNode> root;

public:
    SceneGraph(std::unique_ptr<SceneGraphNode>&& root);
};

class SceneGraph::SceneGraphNode {
private:
    std::vector<std::unique_ptr<SceneGraphNode>> children;

public:
    SceneGraphNode();
};

// inline definitions
inline SceneGraph::SceneGraph(std::unique_ptr<SceneGraphNode>&& root)
    : root(std::move(root)) {
}

inline SceneGraph::SceneGraphNode::SceneGraphNode() {
}

#endif /* SCENEGRAPH_HPP_ */
