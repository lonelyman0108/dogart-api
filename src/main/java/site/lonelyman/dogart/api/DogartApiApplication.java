package site.lonelyman.dogart.api;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("site.lonelyman.dogart.api.mapper")
public class DogartApiApplication {

    public static void main(String[] args) {
        SpringApplication.run(DogartApiApplication.class, args);
    }

}
