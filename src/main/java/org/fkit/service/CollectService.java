package org.fkit.service;

import java.util.List;

import org.fkit.domain.Collect;

public interface CollectService {
	List <Collect> getAll(Integer userId);
	Collect findCollect(Integer goodId,Integer userId);
	void saveCollect(Collect collect);
	Collect removeCollect(Integer goodId,Integer userId);
	
}
