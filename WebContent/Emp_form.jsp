<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<body  class="is-preload">
   <div id="wrapper">
       <section id="main" class="wrapper">
           <div class="inner" align="center">
              <form method="post" action="Emp.java">
                 <a href="#"><h2 align="center">회원가입</h2></a>
               <fieldset style="width: 600px">
                  <legend align="left">입력사항</legend>
                     <table style="width: 600px">
                        <tr>
                           <td style="text-align: center;">생일</td>
                           <td><input type="text" size="35" name="birth_date" placeholder="아이디" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">이름</td>
                           <td><input type="password" size="35" name="emp_date" placeholder="비밀번호" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">성별</td>
                           <td><input type="text" size="35" name="gender" placeholder="이름" style="width: 450px"></td>
                        </tr>
                        <tr>
                           <td style="text-align: center;">입사일</td>
                           <td><input type="text" size="35" name="hire_date" placeholder="주소" style="width: 450px"></td>
                        </tr>
                     </table>
                     <table>
                        <tr>
                           <td align="center">
                              <input class="button primary large" type="submit" value="가입하기">
                              
                           </td>
                           <td align="center">
                              <input class="button primary large" type="reset" value="다시쓰기">
                           </td>
                        </tr>
                     </table>
               </fieldset>
            </form>
           </div>
       </section>
   </div>
</body>
</html>