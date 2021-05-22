package com.kaiyujin.jmxspring

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class JmxSpringApplication

fun main(args: Array<String>) {
    runApplication<JmxSpringApplication>(*args)
}
