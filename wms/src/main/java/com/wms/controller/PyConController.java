package com.wms.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.file.Paths;

@RestController
@RequestMapping("/pyCon")
public class PyConController {
    //public static void main(String [] args) {
    @PostMapping("/runGame1")
    public String runGame1() {
        //Scanner scanner = new Scanner(System.in);
        //int a = scanner.nextInt();
        //int b = scanner.nextInt();
        //int c = scanner.nextInt();
        StringBuilder output = new StringBuilder();
        try {
            //String[] my_args =new String[] {"python","test.py",String.valueOf(a),String.valueOf(b),String.valueOf(c)};
            String projectRoot = System.getProperty("user.dir");
            String scriptPath = Paths.get(projectRoot, "springboot_vue_wms", "wms-py", "game_1.py").toString();

            String[] my_args =new String[] {"python",scriptPath};
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
