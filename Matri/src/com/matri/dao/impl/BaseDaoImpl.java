package com.matri.dao.impl;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.matri.dao.BaseDao;

@Component(value="baseDao")
public class BaseDaoImpl implements BaseDao{
	
	@Autowired
	DataSource dataSource;
	
	DataSource dataSource1;
	

	/*public DataSource getDataSource() {
		return this.dataSource;
	}

	public void setDataSource(DataSource dataSource) {
		this.dataSource = dataSource;
	}
*/
	

	
	
}
