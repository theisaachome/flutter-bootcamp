package com.example.demo.service;

import java.util.List;

import com.example.demo.model.Course;
import com.example.demo.model.CourseDTO;

public interface CourseService {

	  CourseDTO findById(int id);
	    List<CourseDTO> findAll();
	    Course create(CourseDTO courseDTO);

	    CourseDTO update(int id,CourseDTO courseDTO);
}
