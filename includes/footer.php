<div id="footer"><!-- #footer Begin -->
    <div class="container"><!-- container Begin -->
        <div class="row"><!-- row Begin -->
            <div class="col-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
               
               <h4>Pages</h4>
                
                <ul><!-- ul Begin -->
                <li><a href="index.php">Home</a></li>
                    <li><a href="cart.php">Shopping Cart</a></li>
                    <li><a href="contact.php">Contact Us</a></li>
                    <li><a href="shop.php">Shop</a></li>
                    <li><a href="customer/my_account.php">My Account</a></li>
                </ul><!-- ul Finish -->
                
                <hr>
                
                <h4>User Section</h4>
                
                <ul><!-- ul Begin -->
                           
                           <?php 
                           
                           if(!isset($_SESSION['customer_email'])){
                               
                               echo"<a href='checkout.php'>Login</a>";
                               
                           }else{
                               
                              echo"<a href='customer/my_account.php?my_orders'>My Account</a>"; 
                               
                           }
                           
                           ?>
                    
                    <li><a href="customer_register.php">Register</a></li>
                </ul><!-- ul Finish -->
                
                <hr class="hidden-md hidden-lg hidden-sm">
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="com-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
                
                <h4>Top Products Categories</h4>
                
                <ul><!-- ul Begin -->
                
                    <?php 
                    
                        $get_p_cats = "select * from product_categories";
                    
                        $run_p_cats = mysqli_query($con,$get_p_cats);
                    
                        while($row_p_cats=mysqli_fetch_array($run_p_cats)){
                            
                            $p_cat_id = $row_p_cats['p_cat_id'];
                            
                            $p_cat_title = $row_p_cats['p_cat_title'];
                            
                            echo "
                            
                                <li>
                                
                                    <a href='shop.php?p_cat=$p_cat_id'>
                                    
                                        $p_cat_title
                                    
                                    </a>
                                
                                </li>
                            
                            ";
                            
                        }
                    
                    ?>
                
                </ul><!-- ul Finish -->
                
                <hr class="hidden-md hidden-lg">
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="col-sm-6 col-md-3"><!-- col-sm-6 col-md-3 Begin -->
                
                <h4>Find Us</h4>
                
                <p><!-- p Start -->
                    
                    <strong>SG FURNITURE</strong>
                    <br/>DEVRUKH
                    <br/>9130252268
                    <br/>gandhisanika27@gmail.com
                    <br/><strong>sanika gandhi</strong>
                    
                </p><!-- p Finish -->
                
                <a href="contact.php">Check Our Contact Page</a>
                
                <hr class="hidden-md hidden-lg">
                
            </div><!-- col-sm-6 col-md-3 Finish -->
            
            <div class="col-sm-6 col-md-3">
                
                <h4>Get The News</h4>
                
                
                <h4>Keep In Touch</h4>
                
                <p class="social">
                    <a href="#" class="fa fa-facebook"></a>
                    <a href="#" class="fa fa-twitter"></a>
                    <a href="#" class="fa fa-instagram"></a>
                    <a href="#" class="fa fa-google-plus"></a>
                    <a href="#" class="fa fa-envelope"></a>
                </p>
                
            </div>
        </div><!-- row Finish -->
    </div><!-- container Finish -->
</div><!-- #footer Finish -->


<div id="footer-nav"><!-- #footer-nav Begin -->
    <div class="container"><!-- container Begin -->
        <div class="col-md-6"><!-- col-md-6 Begin -->
            
           
            
        </div><!-- col-md-6 Finish -->
        <div class="col-md-6"><!-- col-md-6 Begin -->
            
            <p class="pull-right">Design by:<a href="about.php">sanika gandhi</a></p>
            
        </div><!-- col-md-6 Finish -->
    </div><!-- container Finish -->
</div><!-- #footer-nav Finish -->