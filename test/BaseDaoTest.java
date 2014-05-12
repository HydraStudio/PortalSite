import org.junit.Test;

import com.portal.dao.RoleDao;
import com.portal.dao.UserDao;
import com.portal.dao.impl.RoleDaoImpl;
import com.portal.dao.impl.UserDaoImpl;
import com.portal.model.User;


public class BaseDaoTest {

	@Test
	public void testSave(){
		UserDao userDao= new UserDaoImpl();
		RoleDao roleDao = new RoleDaoImpl();
		
		userDao.save(new User());
	}
}
