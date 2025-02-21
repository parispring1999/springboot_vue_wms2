package com.wms.controller;

import com.wms.common.QueryPageParam;
import com.wms.common.QueryParam;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Paths;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Pattern;

@RestController
@RequestMapping("/pyCon")
public class PyConController {
    @PostMapping("/runGame2")
    public String runGame(@RequestBody QueryParam query) {
        String projectRoot = System.getProperty("user.dir");
        String scriptPath = Paths.get(projectRoot, "springboot_vue_wms", "wms-py", "game_2.py").toString();

        HashMap par = query.getParam();
        String inputData = (String)par.get("inputData");;
        String[] inputArray = Pattern.compile("[,\\s]+").split(inputData.trim());
        List<String> dynamicParams = new ArrayList<>();
        for (String param : inputArray) {
            if (!param.isEmpty()) {
                dynamicParams.add(param);
            }
        }
        List<String> commandList = new ArrayList<>();
        commandList.add("python");
        commandList.add(scriptPath);
        commandList.addAll(dynamicParams);
        String[] my_args = commandList.toArray(new String[0]);
        //String[] my_args =new String[] {"python","test.py",String.valueOf(a),String.valueOf(b),String.valueOf(c)};
        StringBuilder output = new StringBuilder();
        try {
            Process proc =  Runtime.getRuntime().exec(my_args);//执行脚本
            BufferedReader reader = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            while((line = reader.readLine()) != null){
                output.append(line).append("\n");
            }
            reader.close();
            proc.waitFor();
        } catch (IOException e) {
            output.append("IOException: ").append(e.getMessage());
            throw new RuntimeException(e);
        } catch (InterruptedException e) {
            output.append("InterruptedException: ").append(e.getMessage());
            throw new RuntimeException(e);
        }
        return output.toString();
    }

    @PostMapping("/hostValue")
    public String hostValue(@RequestBody QueryParam query) {
        String projectRoot = System.getProperty("user.dir");
        String scriptPath = Paths.get(projectRoot, "springboot_vue_wms", "wms-py", "entropy_weight_method.py").toString();

        HashMap par = query.getParam();
        String inputData = (String)par.get("inputData");;
        String[] inputArray = Pattern.compile(";").split(inputData.trim());
        List<String> dynamicParams = new ArrayList<>();
        for (String param : inputArray) {
            if (!param.isEmpty()) {
                dynamicParams.add(param);
            }
        }
        List<String> commandList = new ArrayList<>();
        commandList.add("python");
        commandList.add(scriptPath);
        commandList.addAll(dynamicParams);
        String[] my_args = commandList.toArray(new String[0]);
        //String[] my_args =new String[] {"python","test.py",String.valueOf(a),String.valueOf(b),String.valueOf(c)};
        StringBuilder output = new StringBuilder();
        try {
            Process proc =  Runtime.getRuntime().exec(my_args);//执行脚本
            BufferedReader reader = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            while((line = reader.readLine()) != null){
                output.append(line).append("\n");
            }
            reader.close();
            proc.waitFor();
        } catch (IOException e) {
            output.append("IOException: ").append(e.getMessage());
            throw new RuntimeException(e);
        } catch (InterruptedException e) {
            output.append("InterruptedException: ").append(e.getMessage());
            throw new RuntimeException(e);
        }
        return output.toString();
    }
}
