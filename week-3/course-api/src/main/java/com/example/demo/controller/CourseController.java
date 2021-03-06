package com.example.demo.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PatchMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.model.CourseDTO;
import com.example.demo.service.CourseService;

@RestController
@RequestMapping("/api")
public class CourseController {
	

    private final CourseService courseService;

    public CourseController(CourseService courseService) {
        this.courseService = courseService;
    }

    @PostMapping(value = "/courses",consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<CourseDTO> create(@RequestBody CourseDTO courseDTO){
        this.courseService.create(courseDTO);
        return new ResponseEntity<>(courseDTO, HttpStatus.CREATED);
    }
   
    @PatchMapping(value="/courses/{id}",consumes = MediaType.APPLICATION_JSON_VALUE)
    public ResponseEntity<CourseDTO> update(@PathVariable int id,@RequestBody CourseDTO courseDTO){
        System.out.println("From CourseController:"+ id);
        return new ResponseEntity<CourseDTO>(courseService.update(id,courseDTO),HttpStatus.OK);
    }

    @GetMapping("/courses")
    public List<CourseDTO> findAll(){
        return courseService.findAll();
    }

}
