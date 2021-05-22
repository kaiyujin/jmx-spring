package com.kaiyujin.jmxspring

import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class HealthCheckController {
    @GetMapping("/")
    fun check(): ResponseEntity<Any> = ResponseEntity("{ \"status\": \"OK\" }", HttpStatus.OK)
}
