package com.wms.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

@RestController
@RequestMapping("/pyCon")
public class PyConController {
    //public static void main(String [] args) {
    @GetMapping("/runHello")
    public void runHello() {
        //Scanner scanner = new Scanner(System.in);
        //int a = scanner.nextInt();
        //int b = scanner.nextInt();
        //int c = scanner.nextInt();
        try {
            //String[] my_args =new String[] {"python","test.py",String.valueOf(a),String.valueOf(b),String.valueOf(c)};
            String[] my_args =new String[] {"python","springboot_vue_wms/wms-py/Hello.py"};
            Process proc =  Runtime.getRuntime().exec(my_args);//执行脚本

            BufferedReader reader = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            while((line = reader.readLine()) != null){
                System.out.println(line);
            }
            reader.close();
            proc.waitFor();
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
    @GetMapping("/runGame1")
    public void runGame1() {
        //Scanner scanner = new Scanner(System.in);
        //int a = scanner.nextInt();
        //int b = scanner.nextInt();
        //int c = scanner.nextInt();
        try {
            //String[] my_args =new String[] {"python","test.py",String.valueOf(a),String.valueOf(b),String.valueOf(c)};
            String[] my_args =new String[] {"python","springboot_vue_wms/wms-py/Game1.py"};
            Process proc =  Runtime.getRuntime().exec(my_args);//执行脚本

            BufferedReader reader = new BufferedReader(new InputStreamReader(proc.getInputStream()));
            String line = null;
            while((line = reader.readLine()) != null){
                System.out.println(line);
            }
            reader.close();
            proc.waitFor();
        } catch (IOException e) {
            throw new RuntimeException(e);
        } catch (InterruptedException e) {
            throw new RuntimeException(e);
        }
    }
}
