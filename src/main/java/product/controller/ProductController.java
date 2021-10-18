package product.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;
import product.model.Product;
import product.repository.ProductRepository;

@RestController
public class ProductController {
	
	@Autowired ProductRepository prodrepo;
	
	@GetMapping("/allprod")
	public List<Product> allprod() {
		
		
		
		
		
		
		
		return prodrepo.findAll();
		
	}
	
	
	@PostMapping("/getByprod_name")
	public List<Product> prod_name(@RequestBody Product pr) {
		
		
		
	return	prodrepo.getByproduct_name(pr.getProduct_name());
		
		
		
	}
	
	/*
	 * @PostMapping("/getprod") public Product getprod(@RequestBody Product pr) {
	 * 
	 * System.out.println(pr.getProduct_id()); return
	 * prodrepo.getById(pr.getProduct_id()); }
	 * 
	 */
	@PostMapping("saveProd")
	public String saveprod(@ModelAttribute Product pr)
	{
		prodrepo.save(pr);
		
		return "save successfully <a href='/'>Home</a>";
	}

}
