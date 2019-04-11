package com.textbooks.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.Random;

@Controller
@RequestMapping("/upload")
public class UploaderController  {

    @RequestMapping("/uploadImg")
    @ResponseBody
    public Map<String, Object> uploadPicture(MultipartFile file, HttpServletRequest request) {
        System.out.println("上传文件");
        Map<String, Object> map = new HashMap<String, Object>();
        File targetFile = null;
        String url = "";//返回存储路径
        int code = 1;
        System.out.println(file);
        String fileName = file.getOriginalFilename();//获取文件名加后缀
        if (fileName != null && fileName != "") {
            String returnUrl = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath() + "/upload/imgs/";//存储路径
            String path = request.getSession().getServletContext().getRealPath("upload/imgs"); //文件存储位置
            String fileF = fileName.substring(fileName.lastIndexOf("."), fileName.length());//文件后缀
            fileName = new Date().getTime() + "_" + new Random().nextInt(1000) + fileF;//新的文件名
            //先判断文件是否存在
            SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
            String fileAdd = sdf.format(new Date());
            //获取文件夹路径
            File file1 = new File(path + File.separator + fileAdd+ File.separator);
            //如果文件夹不存在则创建
            if (!file1.exists() && !file1.isDirectory()) {
                file1.mkdirs();
            }
            //将图片存入文件夹
            targetFile = new File(file1, fileName);
            Map<String, Object> data = new HashMap<String, Object>();
            try {
                //将上传的文件写到服务器上指定的文件。
                file.transferTo(targetFile);
                url = returnUrl + fileAdd + "/" + fileName;
                code = 0;

                data.put("src", url);
                map.put("code", 0);
                map.put("msg", "");
                map.put("src", url);
                map.put("data", data);
            } catch (Exception e) {

                map.put("code", 1);
                map.put("msg", "");
                map.put("data", "");
                e.printStackTrace();
            }


        }
        System.out.println(map);
        return map;
    }
}
