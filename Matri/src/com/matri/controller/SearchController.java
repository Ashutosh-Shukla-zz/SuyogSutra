package com.matri.controller;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

import com.matri.bean.ExpectationBean;
import com.matri.bean.SearchResultBean;
import com.matri.bean.UserDetailsBean;
import com.matri.service.SearchService;

@Controller
public class SearchController {

	@Autowired
	private SearchService searchServiceImpl;
	
	@RequestMapping(value = "/showSearch")
	public String displaySearch(@ModelAttribute("expectationBean") ExpectationBean expectationBean, HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		List<SearchResultBean> searchResultBeanList = searchServiceImpl.getSearchResultList(expectationBean);
		expectationBean.setSearchResultBeanList(searchResultBeanList);
		model.addObject(expectationBean);
		model.setViewName(".matri.searchsummary");
		return ".matri.searchsummary";
	}
	
	
		
	@RequestMapping(value = "/detailSearch")
	public String detailSearch(HttpServletRequest request, HttpServletResponse response,ModelMap model) {
		
		String userid = request.getParameter("userid");
		UserDetailsBean userDetailBean = searchServiceImpl.getDetailSearch(userid);
		/*Map<String, Object> map = null;	
		try {
			map = ConvertObjectToMap(userDetailBean);
			System.out.println(map);
			if(null!=map.get("HoroscopeBean"))
			map.put("HoroscopeBean",ConvertObjectToMap(map.get("HoroscopeBean"))) ; 
			if(null!=map.get("FamilyDetailsBean"))
			map.put("FamilyDetailsBean",ConvertObjectToMap(map.get("FamilyDetailsBean")) ) ;
			if(null!=map.get("EducationProffessionBean"))
			map.put("EducationProffessionBean",ConvertObjectToMap(map.get("EducationProffessionBean"))) ;
			if(null!=map.get("PhysicalAttributesBean"))
			map.put("PhysicalAttributesBean",ConvertObjectToMap(map.get("PhysicalAttributesBean"))) ;
			if(null!=map.get("ExpectationBean"))
			map.put("ExpectationBean",ConvertObjectToMap(map.get("ExpectationBean"))) ;
			
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		model.addAttribute("userDetail",userDetailBean);
        //request.getSession().setAttribute("userDetail", map);
		return ".matri.search.detail";
		
	}
	
	@RequestMapping(value = "/requestAllDetails")
	public String requestAllDetails(HttpServletRequest request, HttpServletResponse response) {
		ModelAndView model = new ModelAndView();
		String[] checkedUserId= request.getParameterValues("selectCheck");
		searchServiceImpl.requestAllDetails(checkedUserId);
		//model.addObject(userDetailsBean);
		model.setViewName(".matri.requestSuccess");
		return ".matri.requestSuccess";
	}
	
	
	/*@RequestMapping(value = "/showsearch")
	public ModelAndView searchDisplay(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("userDetailsBean") UserDetailsBean userDetailsBean) {
	
		Map<String, Object> map = null;
		try {
			map = ConvertObjectToMap(userDetailsBean);
			System.out.println(map);
			map.put("HoroscopeBean",ConvertObjectToMap(map.get("HoroscopeBean"))) ; 
			map.put("FamilyDetailsBean",ConvertObjectToMap(map.get("FamilyDetailsBean")) ) ;
			map.put("EducationProffessionBean",ConvertObjectToMap(map.get("EducationProffessionBean"))) ;
			map.put("PhysicalAttributesBean",ConvertObjectToMap(map.get("PhysicalAttributesBean"))) ;
			map.put("ExpectationBean",ConvertObjectToMap(map.get("ExpectationBean"))) ;
			
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        request.getSession().setAttribute("userDetail", map);
		return new ModelAndView(".matri.search.detail");
	}*/
	
	
	
	public static Map<String, Object> ConvertObjectToMap(Object obj) throws 
    IllegalAccessException, 
    IllegalArgumentException, 
    InvocationTargetException {
        Class<?> pomclass = obj.getClass();
        pomclass = obj.getClass();
        Method[] methods = obj.getClass().getMethods();


        Map<String, Object> map = new HashMap<String, Object>();
        for (Method m : methods) {
           if (m.getName().startsWith("get") && !m.getName().startsWith("getClass")) {
              Object value = (Object) m.invoke(obj);
              map.put(m.getName().substring(3), (Object) value);
           }
        }
    return map;
}
}
