<?php
include("header.php");
if(isset($_POST["submit"]))  
{
	$sql ="UPDATE cst_customer SET cst_password='$_POST[cst_password]' WHERE cst_password='$_POST[ocst_password]' AND cst_id='$_SESSION[cst_id]'";
	$qsql = mysqli_query($con,$sql);
		echo mysqli_error($con);
	if(mysqli_affected_rows($con) == 1)
	{
		echo "<script>alert('Customer password updated successfully..');</script>";
		echo "<script>window.location='customerchangepassword.php';</script>";
	}
	else
	{
		echo "<script>alert('Entered password is not valid..');</script>";
		echo "<script>window.location='customerchangepassword.php';</script>";
	}
}
?>
    <section class="content-info py-5">
        <div class="container py-md-5">

<form method="post" action="" enctype="multipart/form-data">
            <div class="row">
                <div class="col-lg-2 col-md-2 mt-2"></div>
                <div class="col-lg-8 col-md-8 mt-8">
                    <div class="thumbnail card">
                        <div class="blog-info card-body">
                            <center><h3 class="">Change Password</h3></center>
                            <p class="mt-2">

<div class="row">
	<div class="col-md-3" style="padding-top: 4px;">
		Old Password
	</div>
	<div class="col-md-9">
		<input type="password" name="ocst_password" id="ocst_password" class="form-control">
	</div>
</div>
<br><div class="row">
	<div class="col-md-3" style="padding-top: 4px;">
		New Password
	</div>
	<div class="col-md-9">
		<input type="password" name="cst_password" id="cst_password" class="form-control">
	</div>
</div>
<br>
<div class="row">
	<div class="col-md-3" style="padding-top: 4px;">
		Confirm Password
	</div>
	<div class="col-md-9">
		<input type="password" name="ccst_password" id="ccst_password" class="form-control">
	</div>
</div>
<br>
			
							</p>
                            <div class="read-icon">
<center><input type="submit" name="submit" class="btn read" value="Change Password"></a></center>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 col-md-2 mt-2"></div>
			</div>
</form>			
			
        </div>
    </section>
    <!-- //banner-botttom -->
    <?php
include("footer.php");
?>
