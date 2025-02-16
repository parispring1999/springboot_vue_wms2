package com.wms.service.repo;


import com.wms.entity.TANode;
import com.wms.entity.TNode;
import org.springframework.data.neo4j.repository.Neo4jRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface TANodeRepository extends Neo4jRepository<TANode, Long> {
    TANode findTANodeById(String id);
}
