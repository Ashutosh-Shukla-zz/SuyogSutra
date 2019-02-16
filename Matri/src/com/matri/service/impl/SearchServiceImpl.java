package com.matri.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.matri.bean.ExpectationBean;
import com.matri.bean.SearchResultBean;
import com.matri.bean.UserDetailsBean;
import com.matri.dao.BaseDao;
import com.matri.dao.SearchDao;
import com.matri.service.SearchService;

@Component(value="searchServiceImpl")
public class SearchServiceImpl implements SearchService {
	
	@Autowired
	private SearchDao searchDao;
	
	@Override
	public List<SearchResultBean> getSearchResultList(ExpectationBean expBean) {
		List<SearchResultBean> searchResultBean = searchDao.getSearchResultList(expBean);
		return searchResultBean;
	}
	
	@Override
	public UserDetailsBean getDetailSearch(String userId) {
		UserDetailsBean userDetailBean = searchDao.getDetailSearch(userId); 
		return userDetailBean;
	}

	@Override
	public void requestAllDetails(String[] checkedUserId) {
		searchDao.requestAllDetails(checkedUserId);		
	}

}
