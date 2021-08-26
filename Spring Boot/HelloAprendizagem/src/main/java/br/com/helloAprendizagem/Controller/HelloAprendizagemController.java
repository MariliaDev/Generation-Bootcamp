package br.com.helloAprendizagem.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/hello")
public class HelloAprendizagemController {

	@GetMapping 
	public String hello() {
		return "Aprender Spring <br /> como ninguem";
		
	}

}
