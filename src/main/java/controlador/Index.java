/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author SEBASTIAN
 */
@Controller
@RequestMapping(value = "index.html")
public class Index {
    
    @RequestMapping(method = { RequestMethod.GET, RequestMethod.POST })
    public String inicializa(Model model) {
        return "index";
    }
    
}
