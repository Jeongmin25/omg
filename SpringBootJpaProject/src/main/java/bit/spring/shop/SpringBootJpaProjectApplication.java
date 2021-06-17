package bit.spring.shop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan({"home.data,home.controller"})
@EntityScan("home.data")
@EnableJpaRepositories("home.data")
public class SpringBootJpaProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootJpaProjectApplication.class, args);
	}

}
