<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
 <!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Java網頁設計元件小考</title>
</head>

<body>

<h1> <strong>長庚大學資管系-11101 Java網頁設計元件小考</strong></h1>
	</br>
<form name="form1" method="post" action="/myWeb/addRec">
<table width="1200" border="1">
  <tbody>
    <tr>
      <td width="120">學號</td>
      <td><input type="text" name="studno" value="<%=request.getParameter("stdno")%>"></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td>A.選擇題(50%)</td>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td><input size="5" type="text" name="Q1" id="Q1" ></td>
      <td colspan="3">1.請問要確認遠端192.168.56.100的電腦是開可以連線，可用下列那一個指令(A) check (B) ping (C) set (D) startup。</td>
		
    </tr>
    <tr>
      <td><input size="5" type="text" name="Q2" id="Q2"></td>
      <td colspan="3">2.請問要修改tomcat 的執行port，的xml檔案全名為何？(A) web.xml (B) config.xml (C) server.xml (D) run.xml。</td>
    </tr>
    <tr>
      <td><input size="5" type="text" name="Q3" id="Q3"></td>
      <td colspan="3">3.請問要啟動電腦的服務，在命令提示字元的視窗下達那一個指令(A) ipconfig (B) services.msc (C) ping (D) startup.msc。</td>
    </tr>
    <tr>
      <td><input size="5"  type="text" name="Q4" id="Q4"></td>
      <td colspan="3">4.請問要打包好的war檔，要佈署到tomcat中，應當放在下列的那一個目錄中(A) webapps (B) bin (C) work (D) temp。</td>
    </tr>
    <tr>
      <td><input size="5" type="text" name="Q5" id="Q5"></td>
      <td colspan="3">&nbsp;5.請問檢栢自己電腦IP的指令，可用下列那一個指令(A) ping (B) ipconfig (C) check (D) ifconfig。</td>
    </tr>
    <tr>
      <td>B.填空題(50%)</td>
      <td colspan="3">&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="3">6.請問web.xml是放在tomcat 專案下的那一個目錄下<input type="text" name="Q6" id="Q6"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td colspan="3">7.請問建立一個servlet時，在doGet區塊中使用了 PrintWriter out = response.getWriter(); 當PrintWriter底下會出現紅色波浪紋時，請問要匯入了什麼指令<input type="text" name="Q7" id="Q7"></td>
    </tr>
    <tr>
      <td></td>
     <td colspan="3">8.請問當我們寫一隻servlet程式後，要執行該程式的class，是放在那一個目錄中？<input type="text" name="Q8" id="Q8"></td>
    </tr>
    <tr>
      <td></td>
      <td colspan="3">9.假設如果在servlet中要顯示中文，請問response.setContentType中的指令要如何寫？<input type="text" name="Q9" id="Q9"></td>
    </tr>
	  <tr>
      <td></td>
      <td colspan="3">10.請問HTML File需正確放置在Tomcat的那一個目錄下才可運作？<input type="text" name="Q10" id="Q10"></td>
    </tr>
    </tr>
	<tr>      
      <td colspan="4"><input type="submit" name="ok" id="ok" value="送出"></td>
    </tr>
  </tbody>
</table>
</form>	
	</body>
</html>
