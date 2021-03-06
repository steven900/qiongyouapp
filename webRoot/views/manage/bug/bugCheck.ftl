[#ftl]
<!DOCTYPE html>
<html>
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">


    <title>H+ 后台主题UI框架 - 基本表单</title>
    <meta name="keywords" content="H+后台主题,后台bootstrap框架,会员中心主题,后台HTML,响应式后台">
    <meta name="description" content="H+是一个完全响应式，基于Bootstrap3最新版本开发的扁平化主题，她采用了主流的左右两栏式布局，使用了Html5+CSS3等现代技术">

    <link rel="shortcut icon" href="/framework/hplus/favicon.ico"> 
    <link href="/framework/hplus/css/bootstrap.min14ed.css?v=3.3.7" rel="stylesheet">
    <link href="/framework/hplus/css/font-awesome.min93e3.css?v=4.4.0" rel="stylesheet">
    <link href="/framework/hplus/css/plugins/summernote/summernote.css" rel="stylesheet">
    <link href="/framework/hplus/css/plugins/summernote/summernote-bs3.css" rel="stylesheet">
    <link href="/framework/hplus/css/style.min862f.css?v=4.1.0" rel="stylesheet">
		
	<script>
		function check(){
			var aHTML=$(".summernote").code();
			$('#brief').val(aHTML);
			return true;
		}
	</script>	
	
</head>

<body class="gray-bg">
    <div class="wrapper wrapper-content animated fadeInRight">
        <div class="row">
            <div class="col-sm-12">
                <div class="ibox float-e-margins">
                    <div class="ibox-title">
                        <h5>Bug管理</h5>
                        <div class="ibox-tools">
                             <a onclick="location='${forwardUrlBack}'" style="margin-right:10px;">
                                <i class="glyphicon glyphicon-arrow-left"></i>
                            </a>
                          
                            <a class="close-link">
                                <i class="fa fa-times"></i>
                            </a>
                        </div>
                    </div>
                    <div class="ibox-content">
                        <form method="post" action="/manage/bug/update.do" class="form-horizontal" onsubmit="return check();">
                       		 [#if t?? && t.id>0]<input type="hidden" name="id" value="${t.id}"/>[/#if]
                        	<input type="hidden" name="forwardUrlBack" value="${forwardUrlBack}"/>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">标题</label>

                                <div class="col-sm-4">
										${t.title}                                   
                                </div>
                                <div class="col-sm-2">
                                			[#if t.state ==0]
                                        		 <span class="label label-danger">New Bug
                                        	[/#if]
                                        	[#if t.state ==2]
                                        		 <span class="label label-primary">待确认
                                        	[/#if]
                                           
                                           	[#if t.state ==1]
                                        		 <span class="label label-primary">待确认
                                        	[/#if]
                                </div>
                                 
                            </div>
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">状态</label>
								<div class="col-sm-4">
	                            	  <select class="input-sm form-control input-s-sm inline" name="state">
	                                    <option value="0" [#if t.state==0]selected="selected"[/#if]>New Bug</option>
	                                    <option value="2" [#if t.state==2]selected="selected"[/#if]>修复</option>
	                                </select>
	                               </div>
                            </div>
                           
                           	[#if Session.bugmod !=1] 
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                            	  <label class="col-sm-2 control-label">分配</label>
                            	  <div class="col-sm-4">
	                            	${t.sentToUser}
	                               </div>
                            </div>
                            [/#if]
                            [#if t.pic]
                           <div class="hr-line-dashed"></div>
                            <div class="form-group">
                            	  <label class="col-sm-2 control-label">图片</label>
                            	  <div class="col-sm-4">
	                            	<a href="${t.pic}"><img src="${t.pic}" style="height:100"/></a>
	                               </div>
                            </div>
                            [/#if]
                            [#if t.brief ??]
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label">描述</label>
                                <div class="col-sm-4">
	                            	${t.brief}
	                               </div>
                             </div>
                            [/#if]
                           
                           
                            <div class="hr-line-dashed"></div>
                            <div class="form-group">
                                <div class="col-sm-4 col-sm-offset-2">
                                    <button class="btn btn-primary" type="submit">更新状态</button>
                                    <button class="btn btn-white"  onclick="location='${forwardUrlBack}'">返回</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    
    <script src="/framework/hplus/js/jquery.min.js?v=2.1.4"></script>
    <script src="/framework/hplus/js/bootstrap.min.js?v=3.3.6"></script>
    <script src="/framework/hplus/js/content.min.js?v=1.0.0"></script>
    <script src="/framework/hplus/js/plugins/summernote/summernote.min.js"></script>
    <script src="/framework/hplus/js/plugins/summernote/summernote-zh-CN.js"></script>
	<script type='text/javascript' src='/js/upload/ajaxUpload.js?v=2014021902'></script>
	<script src="/js/upload/imgBigUpload.js"></script>
    <script>
        $(document).ready(function(){
        	$(".summernote").summernote({height:300,lang:"zh-CN"})});
        	var edit=function(){$("#eg").addClass("no-padding");
        	//$(".click2edit").summernote({lang:"zh-CN",focus:true})};
        	//var save=function(){$("#eg").removeClass("no-padding");
        	//var aHTML=$(".click2edit").code();
        	//$(".click2edit").destroy();
        };
    </script>
</body>
</html>
