package com.matri.service;

import java.util.List;
import com.matri.bean.ExpectationBean;
import com.matri.bean.SearchResultBean;
import com.matri.bean.UserDetailsBean;

public interface SearchService {
	
	public List<SearchResultBean> getSearchResultList(ExpectationBean expBean);
	public UserDetailsBean getDetailSearch(String userId);
	public void requestAllDetails(String[] checkedUserId);

}
