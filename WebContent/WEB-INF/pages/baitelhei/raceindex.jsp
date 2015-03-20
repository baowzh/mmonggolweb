<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="bubai/css/race.css" type="text/css" rel="stylesheet" />
<link href="site/css/race.css" type="text/css" rel="stylesheet" />
<link href="site/css/index.css" rel="stylesheet" type="text/css" />
<link href="site/css/main.css" type="text/css" rel="stylesheet" />
<link rel="stylesheet" href="js\messagebox\jquery.msgbox.css" />
<link rel="stylesheet" href="site/css/scroll.css" />
<script type="text/javascript" src="js/jquery-1.11.0.min.js"></script>
<script type="text/javascript" src="js/util/js/messageWindow.js"></script>
<script src="js/messagebox/jquery.msgbox.js"></script>
<script src="js/messagebox/jquery.dragndrop.min.js"></script>
<script src="js/sitejs/raceindex.js"></script>
<script language="javascript" type="text/javascript"
	src="http://js.users.51.la/17667713.js"></script>
<title> 2015</title>
</head>
<body>
	<div class="box_y">
		<div class="box_1">
			<img src="bubai/images/LOGO_bubei.jpg" width="1000" height="230" />
		</div>
		<div class="vgalja_1"></div>
		<div class="box_2">
			<div class="box_2_1 tig">  </div>
			<div class="box_2_2 tig ungge_ar">
				&nbsp;&nbsp;&nbsp;&nbsp;       3.21 
				2009          
				     2015       
				           
				        
				        
				  <a
					href="getuserdocdetail.do?docid=4E044938CDF611E4ADCCAFCA42C1DDE0"
					target="_blank"> </a>
				</div>
		</div>
		<div class="box_2">
			<div class="box_2_1 tig">  </div>
			<div class="box_2_2 tig ungge_ar">
				&nbsp;&nbsp;&nbsp;&nbsp;   <br /> 1   
				         
				          <br />
				2            
				           
				        
				         
				           
				        <br /> 3 
				          
				            <br />
				4          
				       <br />

				&nbsp;&nbsp;&nbsp;&nbsp;   2015    
				     <br /> &nbsp;&nbsp;&nbsp;  
				  <br />      <a
					href="getuserdocdetail.do?docid=A8B42397ACEA11E4894809B72A938D07"
					target="_blank"> </a>
			</div>
		</div>
		<div class="vgalja_2"></div>
		<div class="box_3">
			<c:if test="${jointype==1}">
				<div class="box_3_1 tig" id="box3_title">  </div>
			</c:if>
			<c:if test="${jointype==2}">
				<div class="box_3_1 tig" id="box3_title">  </div>
			</c:if>
			<div class="box_3_2 ungge_ar" id="box3_list">
				<!--这里参赛人员信息框-->
				<c:forEach items="${raceUsers}" var="raceUser" varStatus="status">
					<div class="raceuser">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${raceUser.uservalue.userid}" />">
								<img
								src="html/userhead/<c:out value="${raceUser.uservalue.headurl}" />" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<div class="author">
									 :
									<c:out value="${raceUser.uservalue.artname}" />
									<c:if test="${raceUser.maxscore!=0}">
									&nbsp; 
									<a href="#" style="color: #f00;"><c:out
												value="${status.index+1}" />     </a>
									</c:if>
								</div>
							</div>
							<div class="desitem" style="height: 320px;">
								<div class="author">
									   :
									<c:choose>
										<c:when test="${raceUser.uservalue.jointype==1}">
							           
							       </c:when>
										<c:when test="${raceUser.uservalue.jointype==2}">
							            
							       </c:when>
										<c:otherwise>
							           
							       </c:otherwise>
									</c:choose>
								</div>
							</div>
							<c:forEach items="${raceUser.raceDocumentValues}"
								var="raceDocumentValue" varStatus="status">
								<div class="nwsl1">
									<div class="title" style="height: 240px; color: #f00;">
										<a
											href="getuserdocdetail.do?docid=<c:out value="${raceDocumentValue.docid}"/>"
											target="_blank" class="tit_text_overflow"
											style="color: #f00;"> <c:out
												value="${raceDocumentValue.doctitle}" />  
										</a>
									</div>
									<c:if test="${raceDocumentValue.raceround==racemodel.round}">
										<div class="author">
											<a
												href="getuserdocdetail.do?docid=<c:out value="${raceDocumentValue.docid}"/>"
												style="color: #f00;">   </a>
										</div>
									</c:if>
								</div>
								<div class="desitem" style="height: 320px;">
									<div class="author" style="color: #f00;">
										 :
										<fmt:formatNumber value="${raceUser.maxscore}" type="NUMBER"
											pattern="#0.00" />
									</div>
								</div>
								<div class="desitem" style="height: 320px;">
									<div class="author" style="color: #036;">
										<a style="color: #036;"
											href="raceScoreDetail.do?raceid=<c:out value="${raceDocumentValue.raceid}"/>&docid=<c:out value="${raceDocumentValue.docid}"/>&round=<c:out value="${raceDocumentValue.raceround}"/>">
											   </a>
									</div>
								</div>

							</c:forEach>


							<c:if test="${userValue!=null&&userValue.managerflag==1}">
								<div class="desitem" style="height: 320px;">
									<div class="author" style="color: #036;">
										<a style="color: #036;"
											href="javascript:switchtonextround('<c:out value="${raceUser.uservalue.userid}"/>','<c:out value="${raceDocumentValue.raceid}"/>',<c:out value="${raceUser.uservalue.jointype}"/>);">
											    </a>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="vgalja_2"></div>
		<div class="box_3">
			<div class="box_3_1 tig" id="box3_title">  </div>
			<div class="box_3_2 ungge_ar" id="box3_list">
				<!--这里参赛人员信息框-->
				<c:forEach items="${raceUsers1}" var="raceUser" varStatus="status">
					<div class="raceuser">
						<div class="avtr">
							<a
								href="gouserindex.do?userid=<c:out value="${raceUser.uservalue.userid}" />">
								<img
								src="html/userhead/<c:out value="${raceUser.uservalue.headurl}" />" />
							</a>
						</div>
						<div class="desc">
							<div class="desitem" style="height: 320px;">
								<div class="author">
									 :
									<c:out value="${raceUser.uservalue.artname}" />
									<c:if test="${raceUser.maxscore!=0}">
									&nbsp; 
									<a href="#" style="color: #f00;"><c:out
												value="${status.index+1}" />     </a>
									</c:if>
								</div>
							</div>
							<div class="desitem" style="height: 320px;">
								<div class="author">
									   :
									<c:choose>
										<c:when test="${raceUser.uservalue.jointype==1}">
							           
							       </c:when>
										<c:when test="${raceUser.uservalue.jointype==2}">
							            
							       </c:when>
										<c:otherwise>
							           
							       </c:otherwise>
									</c:choose>
								</div>
							</div>
							<c:forEach items="${raceUser.raceDocumentValues}"
								var="raceDocumentValue" varStatus="status">
								<div class="nwsl1">
									<div class="title" style="height: 240px; color: #f00;">
										<a
											href="getuserdocdetail.do?docid=<c:out value="${raceDocumentValue.docid}"/>"
											target="_blank" class="tit_text_overflow"
											style="color: #f00;"> <c:out
												value="${raceDocumentValue.doctitle}" />  
										</a>
									</div>
									<c:if test="${raceDocumentValue.raceround==racemodel.round}">
										<div class="author">
											<a
												href="getuserdocdetail.do?docid=<c:out value="${raceDocumentValue.docid}"/>"
												style="color: #f00;">   </a>
										</div>
									</c:if>
								</div>
								<div class="desitem" style="height: 320px;">
									<div class="author" style="color: #f00;">
										 :
										<fmt:formatNumber value="${raceUser.maxscore}" type="NUMBER"
											pattern="#0.00" />
									</div>
								</div>
								<div class="desitem" style="height: 320px;">
									<div class="author" style="color: #036;">
										<a style="color: #036;"
											href="raceScoreDetail.do?raceid=<c:out value="${raceDocumentValue.raceid}"/>&docid=<c:out value="${raceDocumentValue.docid}"/>&round=<c:out value="${raceDocumentValue.raceround}"/>">
											   </a>
									</div>
								</div>

							</c:forEach>


							<c:if test="${userValue!=null&&userValue.managerflag==1}">
								<div class="desitem" style="height: 320px;">
									<div class="author" style="color: #036;">
										<a style="color: #036;"
											href="javascript:switchtonextround('<c:out value="${raceUser.uservalue.userid}"/>','<c:out value="${raceDocumentValue.raceid}"/>',<c:out value="${raceUser.uservalue.jointype}"/>);">
											    </a>
									</div>
								</div>
							</c:if>
						</div>
					</div>
				</c:forEach>
			</div>
		</div>
		<div class="vgalja_2"></div>
		<div class="box_4">
			<div class="box_4_1 tig"></div>
			<div class="box_4_2 ungge_ar">
				<!--这里评委信息-->
				<div class="raceuser" style="width: 195px;">
					<div class="avtr">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<img src="bubai/images/silibater.jpg" />
						</a>
					</div>
					<div class="desc">
						<div class="desitem" style="height: 320px;">
							<div class="author">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1"> :  </span>
								</a>
							</div>
						</div>
						<div class="tig" style="height: 320px; width: 80px; float: left;">
							:       ·     
							           
							          
							          
							          
							           
							          
							         </div>
					</div>
				</div>
				<div class="raceuser" style="width: 95px;">
					<div class="avtr" style="width: 95px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<img src="bubai/images/tseqen.jpg" style="width: 95px;" />
						</a>
					</div>
					<div class="desc" style="width: 95px;">
						<div class="desitem" style="height: 320px;">
							<div class="author">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1"> : ·  </span>
								</a>
							</div>
						</div>
						<div class="tig" style="height: 320px; width: 70px; float: left;">
							:         
							           
							           
							     </div>
					</div>
				</div>
				<div class="raceuser" style="width: 95px;">
					<div class="avtr" style="width: 95px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<img src="bubai/images/ulji.jpg" style="width: 95px;" />
						</a>
					</div>
					<div class="desc" style="width: 95px;">
						<div class="desitem" style="height: 320px;">
							<div class="author">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1"> :   <%-- 									<c:out --%>
										<%-- 											value="${userValue.artname}" /> --%>
								</span>
								</a>
							</div>
						</div>
						<div class="tig" style="height: 320px; width: 70px; float: left;">
							:      
							        
							   </div>
					</div>
				</div>

				<div class="raceuser" style="width: 95px;">
					<div class="avtr" style="width: 95px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<img src="bubai/images/qvlmun.JPG" style="width: 95px;" />
						</a>
					</div>
					<div class="desc" style="width: 95px;">
						<div class="desitem" style="height: 320px;">
							<div class="author">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1"> :    </span>
								</a>
							</div>
						</div>
						<div class="tig" style="height: 320px; width: 70px; float: left;">
							:  （1963-）       
							         
							          
							      </div>
					</div>
				</div>

				<div class="raceuser" style="width: 110px;">
					<div class="avtr" style="width: 95px;">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<img src="bubai/images/bater.JPG" style="width: 98px;" />
						</a>
					</div>
					<div class="desc" style="width: 95px;">
						<div class="desitem" style="height: 320px;">
							<div class="author">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1"> :·  <%-- 									<c:out --%>
										<%-- 											value="${userValue.artname}" /> --%>
								</span>
								</a>
							</div>
						</div>
						<div class="tig" style="height: 320px; width: 70px; float: left;">
							:           
							         
							   </div>


					</div>
				</div>
				<div class="raceuser">
					<div class="avtr">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<img src="bubai/images/hasbilig.jpg" />
						</a>
					</div>
					<div class="desc" style="width: 95px;">
						<div class="desitem" style="height: 320px;">
							<div class="author">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1"> :   <%-- 									<c:out --%>
										<%-- 											value="${userValue.artname}" /> --%>
								</span>
								</a>
							</div>
						</div>
						<div class="tig" style="height: 320px; width: 70px; float: left;">
							 :        
							<br />         
						</div>


					</div>
				</div>
				<div class="raceuser" style="width: 128px;">
					<div class="avtr">
						<a
							href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
							<img src="bubai/images/sarenqvgt.jpg" />
						</a>
					</div>
					<div class="desc" style="width: 95px;">
						<div class="desitem" style="height: 320px;">
							<div class="author">
								<a
									href="gouserindex.do?userid=<c:out value="${userValue.userid}" />">
									<span class="label1"> :·  <%-- 									<c:out --%>
										<%-- 											value="${userValue.artname}" /> --%>
								</span>
								</a>
							</div>
						</div>
						<div class="tig" style="height: 320px; width: 70px; float: left;">
							:         
							             
							            
							           
							          
							  </div>


					</div>
				</div>

			</div>
		</div>
		<div class="vgalja_2"></div>
		<div class="box_5">
			<div class="box_5_1 tig">   </div>
			<div class="box_5_2 ungge_ar">
				<c:forEach items="${imgs}" var="imgValue" varStatus="status">
					<div class="thumb1" style="width: 177px;">
						<a
							href="getimginfo.do?imgid=<c:out value="${imgValue.imgid}"/>&userid=<c:out value="${imgValue.userid}"/>"
							target="_blank"><img
							src="html/img/<c:out value="${imgValue.imgurl}"/>" title=""
							style="width: 178px; height: 208px;"></a>
					</div>
				</c:forEach>
				<!--这里图片-->
			</div>
		</div>
		<div class="vgalja_2"></div>
		<div class="box_5" style="height: 325px;">
			<div class="box_5_1 tig">  </div>
			<div class="box_5_2 ungge_ar" style="height: 325px;">
				<div class="videoBox" id="videoBox">
					<c:forEach items="${videos}" var="imgValue" varStatus="status">
						<div class="video" style="width: 303px; height: 320px;">
							<c:if test="${imgValue.facepath!=null}">
								<a
									href="getuserdocdetail.do?docid=<c:out value="${imgValue.docid}"/>"><img
									src="<c:out value="${imgValue.facepath}"/>"
									style="width: 273px; height: 318px;" /></a>
							</c:if>
							<c:if test="${imgValue.facepath==null}">
								<a
									href="getuserdocdetail.do?docid=<c:out value="${imgValue.docid}"/>"><img
									src="img/vido.jpg" style="width: 273px; height: 318px;" /></a>
							</c:if>
							<div class="m1ln"
								style="height: 318px; width: 18px; padding-left: 5px; float: left;">
								<c:out value="${imgValue.doctitle}" />
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
		<div class="vgalja_2"></div>
		<div class="box_8_4 tig"></div>
		<div class="box_8 ungge_ar">
			<div class="box_8_1 tig">  </div>
			<div class="box_8_2 tig">□      
				</div>
			<div class="box_8_1 tig">  </div>
			<div class="box_8_2 tig">
				□      <br>  <br>
				□         <br>
				□      
				 
			</div>
			<div class="box_8_1 tig">    </div>
			<div class="box_8_2 tig">
				□   <br> www.altanhurd.com
			</div>
			<div class="box_8_1 tig">       
				 </div>
			<div class="box_8_3">
				<img src="bubai/images/altanhurd_wx.jpg" width="120" /><br>altanhurd01
			</div>
			<div class="box_8_1 tig">  </div>
			<div class="box_8_2 tig">
				□     <br> □    
				    <br> □   
				     <br> □   
				  <br>      <br>
				□         
				   <br> □   
				  <br> □    
				<br> □      <br>
			</div>
			<div class="box_8_1 tig">  </div>
			<div class="box_8_2 tig">
				□      <br> □   
				  <br> □     <br> □
				 <br> □  <br> □   <br>
				□  <br> □   <br> □
				       &nbsp;  
				  <br> □    
				
			</div>


		</div>
		<div class="vgalja_2"></div>
		<div class="box_7">
			<div class="box_7_1 tig">
				<a href="#" class="baragan">   </a>
			</div>
			<div class="box_7_2 tig">
				<a href="#" target="_blank" class="qagan">  
					</a><br> <a href="#" target="_blank" class="qagan">
					  </a><br> <a href="#" target="_blank" class="qagan">
					  </a><br> <a href="#" target="_blank" class="qagan">
					   </a><br>
			</div>
			<div class="box_7_1 tig">
				<a href="#" class="baragan">  </a>
			</div>
			<div class="box_7_2 tig">
				<a href="#" target="_blank" class="qagan">   </a><br>
				<a href="#" target="_blank" class="qagan">   </a><br>
				<a href="#" target="_blank" class="qagan">   QQ</a><br>
				<a href="#" target="_blank" class="qagan">   </a><br>
				<a href="#" target="_blank" class="qagan">  </a><br>
				<a href="#" target="_blank" class="qagan">   </a><br>
				<a href="#" target="_blank" class="qagan">   </a><br>
				<a href="#" target="_blank" class="qagan">  </a><br>
			</div>
			<div class="box_7_1 tig">
				<a href="#" class="baragan">   </a>
			</div>
			<div class="box_7_2 tig">
				<a href="#" target="_blank" class="qagan">  </a><br>
				<a href="#" target="_blank" class="qagan">  </a><br>
				<a href="#" target="_blank" class="qagan">  
					</a><br> <a href="#" target="_blank" class="qagan">
					  </a><br>
			</div>
			<div class="box_7_1 tig">
				<a href="#" class="baragan">  </a>
			</div>
			<div class="box_7_2 tig">
				<a href="http://www.holvoo.net/index.do" class="qagan">
					</a><br> <a href="http://www.qinggis.net/" class="qagan">
					 </a><br> <a href="http://www.solongonews.mn/"
					class="qagan">  </a><br> <a
					href="http://mongol.kerqin.gov.cn/" class="qagan"> 
					 </a><br> <a href="http://bj.mongol.cn/" class="qagan">
					   </a><br> <a href="http://www.oturchid.com/"
					class="qagan">  </a><br> <a
					href="http://www.mgyxw.com/" class="qagan">  </a><br>
				<a href="http://www.hlberb.com/" class="qagan">  
					 </a><br> <a href="http://www.altanhurd.com/" class="qagan">
					</a><br> <a href="#" class="qagan"> </a><br> <a
					href="http://www.mongol.cn/" class="qagan">  </a><br>
				<a href="http://www.tangsug.com/" class="qagan"> 
					</a><br> <a href="http://www.mgyyw.com/" class="qagan">
					 </a><br> <a href="http://www.duu5.com/" class="qagan">
					 </a><br> <a href="http://www.qinggis.net/"
					class="qagan">  </a><br> <a
					href="http://www.burgud.com/" class="qagan"> 
					</a><br> <a href="http://www.wendusi.net/Default.aspx"
					class="qagan"></a><br> <a href="#" class="qagan">
					  </a><br> <a href="http://www.borhansoyol.net/"
					class="qagan">     </a><br> <a
					href="http://www.mgl9.com/" class="qagan"> </a><br>
				<a href="http://www.huritai.com/" class="qagan"> 
					</a><br> <a href="http://www.mglblog.net/" class="qagan">
					</a><br> <a href="http://www.qeqen.com/" class="qagan">
					   </a><br> <a href="#" class="qagan">
					  </a><br> <a href="http://imofif.com/"
					class="qagan">   </a><br> <a
					href="http://mgl.surag.net/" class="qagan">   
					 </a><br> <a href="http://www.soyol.com/" class="qagan">
					 </a><br>
			</div>
		</div>
		<div style="font: 0px/0px sans-serif; clear: both; display: block"></div>
		<div class="box_6">
			<div class="box_6_1 tig">
				 <br>  <br>  <br>  <br>
				 <br>  <br>  <br>
				 <br>  <br>  <br>  <br>
				 <br> 
			</div>
			<div class="box_6_2">
				呼和浩特金轮文化传播有限责任公司版权所有 <br> ©2015 altanhurd.com &nbsp;TEL:
				13684719585 &nbsp; Email:altanhurd@163.com <br> <a
					href="http://www.miitbeian.gov.cn/" class="hara">蒙ICP备12001968号</a>
			</div>
		</div>
	</div>
	<noscript>
		<a href="http://www.51.la/?17667713" target="_blank"><img
			alt="&#x6211;&#x8981;&#x5566;&#x514D;&#x8D39;&#x7EDF;&#x8BA1;"
			src="http://img.users.51.la/17667713.asp" style="border: none" /></a>
	</noscript>
	<!--y-->
</body>
<script>
	var raceModelJson = <c:out value="${raceModelJson}" escapeXml="false" />;
</script>
</html>