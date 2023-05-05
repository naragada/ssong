package com.example.healthcheck.presentation.common

import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
class CommonController {

    @RequestMapping(value = ["/", "/health_check"])
    fun healthCheck(): String {
        return "I'm alive"
    }

    @RequestMapping(value = ["/health_check2"])
    fun healthCheck2(): String {
        return "I'm alive2"
    }
}
