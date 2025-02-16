package com.wms.controller;


import com.wms.entity.TANode;
import com.wms.entity.TNode;
import com.wms.service.repo.reposervice.TANodeService;
import com.wms.service.repo.reposervice.TNodeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/t_a_node")
public class TANodeController {
    @Autowired
    private TANodeService tANodeService;

    @GetMapping("/get_all_t_a_node")
    public List<TANode> getAllTANode(){
        return tANodeService.getAllTANode();
    }

    @GetMapping("/get_t_a_node")
    public TANode getTANode(@RequestParam("id")String id){
        return tANodeService.getTANodeById(id);
    }

    @PostMapping("/add_t_a_node")
    public TANode addTANode(@RequestParam("id")String id){
        return tANodeService.addTANode(id);
    }

    @DeleteMapping("/delete_t_a_node")
    public void deleteTANode(@RequestParam("id")String id){
        tANodeService.deleteTANode(id);
    }
}
