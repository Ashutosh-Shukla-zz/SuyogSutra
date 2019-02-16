package com.matri.dao;

import java.util.List;

import com.matri.bean.ExpectationBean;
import com.matri.bean.SearchResultBean;
import com.matri.bean.UserDetailsBean;

public interface SearchDao {

	public UserDetailsBean getDetailSearch(String userId);
	public List<SearchResultBean> getSearchResultList(ExpectationBean expBean) ;
	public void requestAllDetails(String[] checkedUserId);
}
