<%@ page contentType="text/html; charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/Contents/include_file(navi bar)/navigation_bar.jsp" %> 


<section class="container">
<div style="text-align:center;margin:20px">
		<a href="/Message/MessageSend"><img src="/resources/img/icon/qwrite3.png" style="margin-left:360px;">&nbsp;<font size="6"  class="alert"; style="margin-right:30%;position:relative;bottom:20px;font-size:30px;color:black;margin-left:3px;">メッセージ作成</font></a>
	</div>
<div style="border:5px solid black;"></div>
	<form name="msg" method="post" action="/Message/MessageSend">
	<table style="color:black;width:1000px;height:540px;border:none;background:white;">
	<tr>
	<td style="border:none;">
	<center style="width:1080px;margin-top:30px;">
	<table class="msg_table">
		<tr>
			<td >
			受取人 &nbsp;
			</td>
			<td>
			<input type="text" name="receive_id" style="width:160px;height:30px;background:white; border-radius:12px; text-align:center;" value="${ id }">
			</td>
		</tr>
		
		<tr>
			<td>
			タイトル &nbsp;
			</td>
			<td>
			<input type="text" name="title" style="width:300px;height:30px;background:white; border-radius:12px; text-align:center;">
			</td>
		</tr>
	
		<tr>
			<td>
			メッセージ内容
			</td>
			<td>
			<textarea name="contents" style="height:200px;width:400px;background:white; border-radius:12px; text-align:center;">
			</textarea>
			</td>
		</tr>
		
		

		
		<tr>
			<c:if test="${!empty user }">
				<input type="hidden" name="send_id" value="${ user.id }">
				<input type="hidden" name="send_user" value="user">
			</c:if>
			<c:if test="${!empty b_user }">
				<input type="hidden" name="send_id" value="${ b_user.b_id }">
				<input type="hidden" name="send_user" value="business">
			</c:if>
			
			<td style="border:none">
			<a href="javascript:send()"><input type="button" class="btn" value="伝送" style="position:relative;left:230px;"></a>
			</td>
			<td style="border:none">
			<a href="javascript:back()"><input type="button" class="btn" value="キャンセル" style="position:relative;left:37px;"></a>
			</td>
			
			
		</tr>
	</table>
	</center>
	</td>
	</tr>
</table>
	</form>	
	
</section>

 <footer class="footer-distributed">
       <span class="footer-left">
     <font size="6"><a href="/index"> <img src="/resources/img/icon/여기관광.jpg" style="width: 112px; margin-top: 10px;"></font></a>
       <p class="footer-links">
       <font size="3"><a href="#"> 会社紹介 </a></font>   |
       <font size="3"><a href="#"> 利用 約款 </a></font>   |
       <font size="3"><a href="#"> 個人情報 処理方針 </a></font>   |
       <font size="3"><a href="#"> 青少年 保護政策 </a></font>   |
       <font size="3"><a href="#"> ヨギ観光 政策 </a></font>   |
       <font size="3"><a href="#"> カスタマー センター</a></font></p>
       <p class="footer-company-name">ⓒターキー Corp &copy; 2019</p>
       </span>
       <span class="footer-center">
           
                <ul>
                   <li>
                      <i class="fa fa-envelope"></i>
                         <p><font size="4">dlgkrbs1@naver.com</font></p>
                   </li>
                </ul>
            
      
             <ul>
                  <li>
                      <i class="fa fa-phone"></i>
                         <p><font size="4">010-4907-3585</font></p>
                  </li>
             </ul>

             <span>
                
                   
                   <i class="fa fa-map-marker"></i>
                            <p><font size="5" >大田廣域市 中區</font>
                           <font size="4">オドグ町路 10番道 95-6</font></p>
             </span>
             
             
       </span>

       <span class="footer-right">
                <p class="footer-company-about">
                   <span>数千の NOの終わりに 出る たっだ 一つの YES</span>
                        ヨギ観光
                </p>
            <br>
             <span class="footer-icons" >
                <a href="#"><img src="/resources/img/footer_img/facebook.png" style="width:50px; height:50px;"></a>&nbsp;
                <a href="#"><img src="/resources/img/footer_img/instagram.png" style="width:50px; height:50px;"></a>&nbsp;
                <a href="#"><img src="/resources/img/footer_img/kakaotalk.png" style="width:50px; height:50px;"></a>&nbsp;
                <a href="#"><img src="/resources/img/footer_img/youtube.png" style="width:50px; height:50px;"></a>&nbsp;
             </span>
       </span>
       </footer>

       
<style>
	body{background:#f2f2f2;}
	section {margin-top:7%;}
	table, tr, td {padding: 10px;font-weight:bold;}
	.msg_table {font-size:20px; text-align:center;width:600px;}
	.msg_table th {width:250px;}
	.msg_ul {font-size:20px; margin-bottom:5%;}
			.btn {
    margin-bottom: 20px;
    background-color: #07c;
    color: white;
    border-color: #07c;
    border-width: 1px;
    border-style: solid;
    font-size: 17px;
    font-weight: 400;
    text-align: center;
    white-space: nowrap;
    line-height: 1.17648;
    min-width: 28px;
    padding-left: 16px;
    padding-right: 16px;
    padding-top: 8px;
    padding-bottom: 8px;
    border-radius: 18px;
    background: #0071e3;
}
	 .container {border-radius: 12px; -moz-border-radius: 12px; -khtml-border-radius: 12px; -webkit-border-radius: 12px;
      position: relative; top:20px; width:60%; height:713px; border: 24px solid #ffffff;
      background-color: #FFFFFF; overflow: auto;margin-left: 20%; margin-top: 130px;
    margin-bottom: 100px;}
      
        .footer-distributed{background-color: #292c2f; box-shadow: 0 1px 1px 0 rgba(0, 0, 0, 0.12); box-sizing: border-box; width: 100%; text-align: left; font: bold 16px sans-serif; padding: 55px 50px; margin-top: 50px;
                                 position: relative; left:0; bottom:0; }
   .footer-distributed .footer-left,
   .footer-distributed .footer-center,
   .footer-distributed .footer-right{display: inline-block; vertical-align: top; position:relative; left:50px;}
   .footer-distributed .footer-left{width: 40%;}
   .footer-distributed h3{color:  #ffffff;   font: normal 36px 'Cookie', cursive; margin: 0;}
   .footer-distributed .footer-links{color:  #ffffff; margin: 20px 0 12px; padding: 0;}
   .footer-distributed .footer-links a{display:inline-block;   line-height: 1.8;   text-decoration: none; color:  inherit;}
   .footer-distributed .footer-company-name{color:  #8f9296; font-size: 14px; font-weight: normal;   margin: 0;}
   .footer-distributed .footer-center{width: 30%;}
   .footer-distributed .footer-center i{background-color:  #33383b; color: #ffffff; font-size: 25px;   width: 38px; height: 38px; border-radius: 50%; text-align: center; line-height: 42px; margin: 10px 15px; vertical-align: middle;}
   .footer-distributed .footer-center i.fa-envelope{font-size: 17px; line-height: 38px;}
   .footer-distributed .footer-center p{display: inline-block; color: #ffffff; vertical-align: middle; margin:0;}
   .footer-distributed .footer-center p span{display:block; font-weight: normal; font-size:14px; line-height:2;}
   .footer-distributed .footer-center p a{color:  darkgray;   text-decoration: none;}
   .footer-distributed .footer-right{width: 20%;}
   .footer-distributed .footer-company-about{line-height: 20px; color:  #92999f; font-size: 13px; font-weight: normal; margin: 0;}
   .footer-distributed .footer-company-about span{display: block; color:  #ffffff; font-size: 14px; font-weight: bold;   margin-bottom: 20px;}
   
   
   .alert{ line-height: 1.0625; font-weight: 600; letter-spacing: -.009em;
    font-family: "SF Pro Display","SF Pro Icons","Helvetica Neue","Helvetica","Arial","sans-serif";
    font-size:16px;
    }
</style>
<script>
	function send() {
		if(msg.title.value=="") {
			alert("メッセージのタイトルを入力してください");
			msg.title.focus();
			return
		}else if(msg.receive_id.value=="") {
			alert("受信者を入力してください");
			msg.receive_id.focus();
			return
		}
		msg.submit();
		
	}
	
	function back(){
		alert("受信メッセージに移動します");
		history.back();
	}
</script>
</body>
</html>