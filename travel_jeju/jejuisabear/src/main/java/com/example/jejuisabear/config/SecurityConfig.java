package com.example.jejuisabear.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityCustomizer;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.util.matcher.AntPathRequestMatcher;

import com.example.jejuisabear.member.controller.loginHandler.LoginFailureHandler;
import com.example.jejuisabear.member.controller.loginHandler.LoginSuccessHandler;
import com.example.jejuisabear.member.service.UserServiceImpl;


@Configuration
@EnableWebSecurity
public class SecurityConfig {
   
   private UserServiceImpl userService;
   private LoginFailureHandler loginFailureHandler;
   private LoginSuccessHandler loginSuccessHandler;
   
   
   @Autowired
   public SecurityConfig(UserServiceImpl userService, LoginFailureHandler loginFailureHandler, LoginSuccessHandler loginSuccessHandler) {
      this.userService = userService;
      this.loginFailureHandler = loginFailureHandler;
      this.loginSuccessHandler = loginSuccessHandler;
   }

//   1. 암호화 처리를 위한 PasswordEncoder를 Bean으로 설정
   @Bean
   public BCryptPasswordEncoder passwordEncoder() {
      return new BCryptPasswordEncoder();
   }
   
//   2. 시큐리티 설정을 무시할 리소스들 등록
   @Bean
   public WebSecurityCustomizer webSecurityCustomizer() {
      return (web) -> web.ignoring()
                     .antMatchers("/css/**", "/js/**", "/images/**", "/lib/**");
   }
    
//   3. HTTP 요청에 대한 권한 설정
   @Bean
   public SecurityFilterChain filterChain(HttpSecurity http) throws Exception {
      
      http.csrf().disable()
      
      .authorizeRequests()
            .antMatchers("/").authenticated()
            .anyRequest().permitAll()
         
         .and()
            .formLogin()
            .loginPage("/member/login")
            .successForwardUrl("/")
            .failureHandler(loginFailureHandler)
            .successHandler(loginSuccessHandler)
         .and()
            .logout()
            .logoutRequestMatcher(new AntPathRequestMatcher("/member/logout"))
            .deleteCookies("JSESSIONID")
            .invalidateHttpSession(true)
            .logoutSuccessUrl("/")
         
         .and()
            .exceptionHandling()
            .accessDeniedPage("/common/denied");
      
         http.authenticationProvider(authenticationProvider());
      
      return http.build();
   }
   
//   4. UserDetailService 인터페이스를 구현한 Service 계층 bean으로 설정
   
   @Bean
   public UserDetailsService userDetailsService() {
      return userService;
   }
   
   @Bean
   public DaoAuthenticationProvider authenticationProvider() {
      DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
      
      authProvider.setUserDetailsService(userDetailsService());
      authProvider.setPasswordEncoder(passwordEncoder());
      
      return authProvider;
   }
   
   

}