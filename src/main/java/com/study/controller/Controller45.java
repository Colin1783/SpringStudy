package com.study.controller;

import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;

@RestController
@RequestMapping("/api/main45")
public class Controller45 {
	@PostMapping("sub1")
	@ResponseBody
	public String sub1(@RequestParam("name") String name,
	                   @RequestParam("file") MultipartFile[] files) throws IOException {
		System.out.println("name = " + name);

		if (files != null && files.length > 0) {
			for (MultipartFile file : files) {
				if (file.getSize() > 0) {
					String path = "C:/Temp/" + file.getOriginalFilename();
					file.transferTo(new File(path));
				}
			}
		}

		return null;
	}
}
