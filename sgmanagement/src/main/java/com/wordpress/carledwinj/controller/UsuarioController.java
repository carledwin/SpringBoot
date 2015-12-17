package com.wordpress.carledwinj.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.wordpress.carledwinj.model.Role;
import com.wordpress.carledwinj.model.Usuario;
import com.wordpress.carledwinj.repositories.UsuarioRepository;

@Controller
@Transactional
@RequestMapping("/usuarios")
public class UsuarioController {
	
	@Autowired
	private UsuarioRepository usuario_r;
	
	@RequestMapping("/list")
	public String list(Model model) throws ServletException, IOException{
		Iterable<Usuario> listUsuarios = usuario_r.findAll();
		model.addAttribute("listUsuarios",listUsuarios);
		return "usuario/listUsuarios";
	}
	
	@RequestMapping("/{id}")
	public ModelAndView show(@PathVariable("id") Integer id){
		ModelAndView mav = new ModelAndView("usuario/showUsuarios");
		Usuario usuario = usuario_r.findOneById(id.longValue());
		mav.addObject("usuario", usuario);
		return mav;
	}
	
	@RequestMapping("/form")
	public ModelAndView form(@ModelAttribute Usuario usuario){
		ModelAndView mav = new ModelAndView("usuario/formUsuarios");
		return mav;
	}
	
	@RequestMapping(value="/saveUsuario", method=RequestMethod.POST)
	public ModelAndView save(Model model, @ModelAttribute("usuario") @Valid Usuario usuario, BindingResult bindingResult, RedirectAttributes redirectAttributes){
		
		if(bindingResult.hasErrors()){
			return form(usuario);
		}
		usuario.setRole(Role.USER);
		usuario_r.save(usuario);
		Iterable<Usuario> listUsuarios = usuario_r.findAll();
		model.addAttribute("listUsuarios",listUsuarios);
		redirectAttributes.addFlashAttribute("success", "Usuario cadastrado com sucesso!");
		return new ModelAndView("usuario/listUsuarios");
	}
}
