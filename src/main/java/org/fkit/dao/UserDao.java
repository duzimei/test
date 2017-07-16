package org.fkit.dao;




import java.util.List;

import java.util.Map;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Options;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.SelectProvider;
import org.apache.ibatis.annotations.Update;
import org.fkit.dao.provider.UserDynaSqlProvider;
import org.fkit.domain.User;

/**
 * UserMapper接口
 * */
public interface UserDao {
	
	/**
	 * 根据登录名和密码查询用户
	 * @param String loginname
	 * @param String password
	 * @return 找到返回User对象，没有找到返回null
	 * */
	@Select("select * from user where loginname = #{loginname} and password = #{password}")
	User findWithLoginnameAndPassword(@Param("loginname")String loginname,
		@Param("password") String password);
	// 动态插入用户
		@SelectProvider(type=UserDynaSqlProvider.class,method="insertUser")
		void save(User user);
	//修改密码	
	@Update("update user set password=#{newPassword} where loginname=#{loginname} and password=#{password}")	
	void updatePassword(User user);	
}

