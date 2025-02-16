package com.wms.service.repo.reposervice;

import com.wms.entity.TANode;
import com.wms.service.repo.TANodeRepository;
import com.wms.service.repo.TNodeRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class TANodeService {
    @Autowired
    private TANodeRepository tANodeRepository;

    public List<TANode> getAllTANode(){
        return tANodeRepository.findAll();
    }

    public TANode getTANodeById(String id){
        return tANodeRepository.findTANodeById(id);
    }

    public TANode addTANode(String id){
        return tANodeRepository.save(TANode.builder().id(id).build());
    }

    public void deleteTANode(String id){
        tANodeRepository.delete(getTANodeById(id));
    }
}
