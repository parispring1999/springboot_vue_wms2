package com.wms.entity;

import lombok.Builder;
import lombok.Data;
import org.springframework.data.neo4j.core.schema.GeneratedValue;
import org.springframework.data.neo4j.core.schema.Id;
import org.springframework.data.neo4j.core.schema.RelationshipProperties;
import org.springframework.data.neo4j.core.schema.TargetNode;

@Data
@Builder
@RelationshipProperties
public class JuRelationship {
    @Id
    @GeneratedValue
    Long id0;

    @TargetNode
    private  TNode tNode;
}

