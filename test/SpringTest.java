import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.FileSystemXmlApplicationContext;

import com.portal.action.TestAction;
import com.portal.service.TestService;


public class SpringTest {

	private ApplicationContext ac = new FileSystemXmlApplicationContext("config/applicationContext.xml"); 
	
	@Test
	public void testBean() throws Exception{
		TestAction testAction = (TestAction) ac.getBean("testAction");
		System.out.println(testAction);
	}
	
	@Test
	public void testSessionFactory() throws Exception{
		SessionFactory sessionFactory = (SessionFactory)ac.getBean("sessionFactory");
		System.out.println(sessionFactory);
	}
	
	@Test
	public void testTracsation()throws Exception{
		TestService testService = (TestService)ac.getBean("testService");
		System.out.println(testService);
		testService.saveTwoUsers();
	}
}
