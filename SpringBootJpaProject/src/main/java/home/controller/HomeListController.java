package home.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import home.data.HomeDao;
import home.data.HomeDto;



@Controller
public class HomeListController {
	
	@Autowired
	HomeDao dao;
	
	@GetMapping({"/","/list"})
	public ModelAndView list()
	{
		ModelAndView mview = new ModelAndView();
		
		List<HomeDto> list=dao.getAllDatas();
		mview.addObject("list", list);
		mview.setViewName("list");
		return mview;
	}
	
	@GetMapping("/addform")
	public String form()
	{
		return "addform";
	}
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute HomeDto dto)
	{
		//db에 데이터 추가
		dao.insertHome(dto);
		//목록으로 이동
		return "redirect:list";
	}
	
	@GetMapping("/updateform")
	public ModelAndView updateform(@RequestParam Long num)
	{
		ModelAndView mview=new ModelAndView();
		HomeDto dto=dao.getData(num);
		mview.addObject("dto",dto);
		mview.setViewName("updateform");
		return mview;
	}
	
	@PostMapping("/update")
	public String update(@ModelAttribute HomeDto dto)
	{
		//db에 데이터 추가
		dao.updateHome(dto);
		//목록으로 이동
		return "redirect:list";
	}
	@GetMapping("/delete")
	public String delete(@RequestParam Long num)
	{
		dao.deleteHome(num);
		return "redirect:list";
	}
	
	/*
	 * @GetMapping("/board/search") public String search(@RequestParam(value =
	 * "keyword") String keyword, Model model) { List<HomeDto> list=dao.searchPosts
	 * }
	 */
	
}
