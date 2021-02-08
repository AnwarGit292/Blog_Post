 

<%@page import="com.blog.post.entities.User"%>
<%@page import="com.blog.post.dao.LikeDao"%>
<%@page import="com.blog.post.entities.Post"%>
<%@page import="java.util.List"%>
<%@page import="com.blog.post.helper.ConnetionProvider"%>
<%@page import="com.blog.post.dao.PostDao"%>

<div class="row">
<% 
    
    User uuu=(User)session.getAttribute("currentUser");
    
    Thread.sleep(1000);
    PostDao d=new PostDao(ConnetionProvider.getConnection());
    
    int cid = Integer.parseInt(request.getParameter("cid"));
    
    List<Post> posts = null;
    if(cid==0){
        posts = d.getAllPosts();
    }else{
        posts=d.getPostByCatId(cid);
    }
    
    if(posts.size()==0){
        
        out.println("<h3 class='display-4 text-center'>No Posts in this category</h3>");
        return;
    }
    
     
    for(Post p: posts){
        
 %>
 <div class="col-md-6 mt-2">
     <div class="card">
         <img class="card-img-top" src="blog_pics/<%= p.getpPic() %>" alt="Card image cap">

        <div class="card-body">
            <b><%= p.getpTitle() %></b>
            <p><%= p.getpContent() %></p>
            <!--<pre><%= p.getpCode() %></pre>-->
        </div>
        
        <div class="card-footer text-center">
            
            <%
            LikeDao ld=new LikeDao(ConnetionProvider.getConnection());
            %>
            <a href="#!" onclick="doLike(<%= p.getPid() %>,<%= uuu.getId() %> )" class="btn btn-outline-primary btn-sm"> <i class="fa fa-thumbs-o-up"></i> <span class="like-counter"> <%= ld.countLikeOnPost(p.getPid()) %> </span> </a>
         
            <a href="show_blog_page.jsp?post_id=<%= p.getPid() %>" class="btn btn-outline-primary btn-sm">Read More</a>
            <a href="#!" class="btn btn-outline-primary btn-sm"> <i class="fa fa-commenting-o"></i> <span>20</span> </a>
       
        </div>
        
     </div>
 </div>
 
 <%
    }


%>

</div>
