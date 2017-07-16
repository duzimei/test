package org.fkit.dao.provider;



import java.util.Map;


import org.apache.ibatis.jdbc.SQL;
import org.fkit.domain.User;

public class UserDynaSqlProvider {
	
		// 动态插入
		public String insertUser(User user){
			
			return new SQL(){
				{
					INSERT_INTO("user");
					if(user.getLoginname() != null && !user.getLoginname().equals("")){
						VALUES("loginname", "#{loginname}");
					}
					if(user.getPassword() != null && !user.getPassword().equals("")){
						VALUES("password", "#{password}");
					}
					if(user.getPhone() != null && !user.getPhone().equals("")){
						VALUES("phone","#{phone}");
					}
					if(user.getAddress() != null && !user.getAddress().equals("")){
						VALUES("address","#{address}");
					}
				}
			}.toString();
		}
		
}
