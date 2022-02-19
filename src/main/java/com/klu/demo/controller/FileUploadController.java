package com.klu.demo.controller;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.multipart.MultipartFile;

import com.klu.demo.service.CustomerService;

@Controller
public class FileUploadController {
	public static String uploadDirectory = System.getProperty("user.dir")+"/src/main/resources/static/uploads";
	
	
	public static String aadharproof(MultipartFile file,String name) {
		if(file.isEmpty())
			return null;
		String extension="";
		String fn = file.getOriginalFilename();
		int index = fn.lastIndexOf('.');
	    if(index > 0) {
	      extension = fn.substring(index + 1);
	      System.out.println("File extension is " + extension);
	    }
	    
		Path fileNameAndPath = Paths.get(uploadDirectory,name+"."+extension);
		String fileName = null;
		try{
			Files.write(fileNameAndPath, file.getBytes());
			fileName = name+"."+extension;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return fileName;
	}
	
	public static String proofupload(MultipartFile file,String name) {
		if(file.isEmpty())
			return null;
		
		String extension="";
		String fn = file.getOriginalFilename();
		int index = fn.lastIndexOf('.');
	    if(index > 0) {
	      extension = fn.substring(index + 1);
	      System.out.println("File extension is " + extension);
	    }
	    
		Path fileNameAndPath = Paths.get(uploadDirectory,name+"."+extension);
		String fileName = null;
		try{
			Files.write(fileNameAndPath, file.getBytes());
			fileName = name+"."+extension;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return fileName;
	}
	
	public static String incomeproof(MultipartFile file,String name) {
		if(file.isEmpty())
			return null;
		
		String extension="";
		String fn = file.getOriginalFilename();
		int index = fn.lastIndexOf('.');
	    if(index > 0) {
	      extension = fn.substring(index + 1);
	      System.out.println("File extension is " + extension);
	    }
		
		Path fileNameAndPath = Paths.get(uploadDirectory,name+"."+extension);
		String fileName = null;
		try{
			Files.write(fileNameAndPath, file.getBytes());
			fileName = name+"."+extension;
		} catch (IOException e) {
			e.printStackTrace();
		}
		return fileName;
	}
}