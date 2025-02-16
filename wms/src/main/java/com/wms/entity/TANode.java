package com.wms.entity;

import lombok.Builder;
import lombok.Data;
import org.springframework.data.neo4j.core.schema.*;

import java.util.List;


@Data
@Builder
@Node("TA")
public class TANode {
    @Id
    @GeneratedValue
    Long id0;

    @Property(name = "id")
    private String id;

    @Property(name = "name")
    private String name;

    @Property(name = "description")
    private String des;

    @Relationship(type = "技术", direction = Relationship.Direction.OUTGOING)
    private List<JuRelationship> juRelationship;
}

