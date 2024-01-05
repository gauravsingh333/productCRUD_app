package productcrudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import productcrudapp.dao.ProductDao;
import productcrudapp.model.Product;

@Controller
public class MainController {
	
	@Autowired
	private ProductDao productDao;

	
	@RequestMapping("/")
	public String home(Model m) {
		
		List<Product> products = productDao.getProducts();
		m.addAttribute("products",products);
		return "index";
	}
	
	//show ad-product form
	@RequestMapping("add-product")
	public String addProduct(Model m) {
		m.addAttribute("title","AddProduct");
		
		return "add_product_form";
	}
	
	//show handle-product form
	@RequestMapping(value="/handle-product" , method=RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product,HttpServletRequest request) {
		
		System.out.println(product);
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() +"/");
		return redirectView;
	}
	
	
	//delete handler
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId,HttpServletRequest request) {
		 
		this.productDao.deletProduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() +"/");
		return redirectView;
	}
	
	@RequestMapping("/update/{productId}")
	public String updateProduct(@PathVariable("productId") int productId,Model model) {
		
		Product product = this.productDao.getProduct(productId);
		model.addAttribute("product",product);
		return "update_form";
		
	}
	
	@RequestMapping("/product/{productId}")
	public String getProduct(@PathVariable("productId") int productId,Model model) {
		
		Product product = this.productDao.getProduct(productId);
		model.addAttribute("product",product);
		return "show_product_form";
		
	}
	
	
	
	
	
}
