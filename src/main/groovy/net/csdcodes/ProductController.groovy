package net.csdcodes

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.ModelAttribute
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.servlet.ModelAndView

@Controller
class ProductController {
    @Autowired
    private ProductMapper mapper;

    @GetMapping("/product")
    def list() {
        new ModelAndView('index', [products: mapper.findAll()])
    }

    @PostMapping('/insert')
    def saveProduct(@ModelAttribute Product product){
        mapper.insert(product);
        "redirect:/product"
    }

    @GetMapping("/delete/{id}")
    def deleteProduct(@PathVariable("id") Long id){
        mapper.deleteById(id)
        "redirect:/product"
    }
    @GetMapping("/update/{id}")
    def updateProduct(@PathVariable("id") Long id){
        new ModelAndView('update', [product: mapper.findById(id)])
    }

    @PostMapping("/update")
    def updateProduct(@ModelAttribute("product") Product product){
        mapper.update(product)
        "redirect:/product"
    }

}
