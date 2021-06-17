package home.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;



@Repository
public class HomeDao {
	@Autowired
	HomeDaoInter dao;
	
	public void insertHome(HomeDto dto)
	{
		dao.save(dto); 
	}
	
	public List<HomeDto> getAllDatas()
	{
		return dao.findAll();
	}
	
	public HomeDto getData(Long num)
	{
		HomeDto dto=dao.getById(num);
		return dto;
	}
	//db에 데이타 수정s
	public void updateHome(HomeDto dto) {	
		dao.save(dto);// num 이 dto 에 포함이므로 수정
	}
	
	public void deleteHome(Long num)
	{
		dao.deleteById(num);
	}

}
