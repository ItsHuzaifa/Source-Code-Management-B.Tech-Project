<!DOCTYPE html>
<html lang="en">
<?php
session_start();
include('./db_connect.php');
ob_start();
// if(!isset($_SESSION['system'])){

$system = $conn->query("SELECT * FROM system_settings")->fetch_array();
foreach ($system as $k => $v) {
  $_SESSION['system'][$k] = $v;
}
// }
ob_end_flush();
?>
<?php
if (isset($_SESSION['login_id']))
  header("location:index.php?page=home");

?>
<?php include 'header.php' ?>

<body style=" background: linear-gradient(50deg, rgba(87,48,179,100) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);">



 <!-- Navbar -->
 <nav class="navbar">

  
   <!-- Full Screen widget  -->
    <ul class="navbar-nav ml-auto">
      <li class="nav-item">
        <a class="nav-link" data-widget="fullscreen" href="#" role="button" style="margin-right: 20px; color: white;">
          <i class="fas fa-expand-arrows-alt"></i>
        </a>
      </li>
     
    </ul>
  </nav>


  <div class="container">
    <div class="row">
      <div class="col-lg-6">
        <div class="login-box">
          <div class="login-logo" style="margin-top: 200px;">
            <a href="#" class="text-white display-6"><?php echo $_SESSION['system']['name'] ?>
              <!-- - Admin -->
            </a>
          </div>
          <!-- /.login-logo -->
          <!--<div class="card">
              <div class="card-body login-card-body"> -->
          <form action="" id="login-form">
            <div class="input-group mb-3">
              <input type="email" class="form-control" name="email" required placeholder="Email">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-envelope"></span>
                </div>
              </div>
            </div>
            <div class="input-group mb-3">
              <input type="password" class="form-control" name="password" placeholder="Password">
              <div class="input-group-append">
                <div class="input-group-text">
                  <span class="fas fa-lock"></span>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-8">
                <div class="icheck-primary">
                  <input type="checkbox" id="remember">
                  <label for="remember" class="text-white">
                    Remember Me
                  </label>
                </div>
              </div>
              <!-- /.col -->
              <div class="col-4">
                <button type="submit" class="btn btn-primary btn-block">Sign In</button>
              </div>
              <!-- /.col -->
            </div>
          </form>
          <!-- </div> -->
          <!-- /.login-card-body -->
          <!--  </div> -->
        </div>
      </div>

      <div class="col-lg-6">

        <!-- Jumbotron start-->

        <div class="jumbotron text-white" style="margin-top: 100px; background: linear-gradient(50deg, rgba(253,29,29,100) 0%, rgba(9,9,121,1) 35%, rgba(0,212,255,1) 100%);">
          <h1 class="display-4">Where The Teachers <br>&emsp;&emsp;&emsp;&ensp; &<br /> Students Collaborate</h1>

          <hr class="my-4">
          <p class="lead">&emsp;&emsp;&emsp;A transparent code management platform.</p>

          <center> <a href="instruction_manual.htm" type="button" class="btn btn-outline-primary btn-lg">Learn More</a> </center>
          </p>
        </div>

      </div>

    </div>

  </div>

  <!-- /.login-box -->
  <script>
    $(document).ready(function() {
      $('#login-form').submit(function(e) {
        e.preventDefault()
        start_load()
        if ($(this).find('.alert-danger').length > 0)
          $(this).find('.alert-danger').remove();
        $.ajax({
          url: 'ajax.php?action=login',
          method: 'POST',
          data: $(this).serialize(),
          error: err => {
            console.log(err)
            end_load();

          },
          success: function(resp) {
            if (resp == 1) {
              location.href = 'index.php?page=home';
            } else {
              $('#login-form').prepend('<div class="alert alert-danger">Username or password is incorrect.</div>')
              end_load();
            }
          }
        })
      })
    })
  </script>
  <?php include 'footer.php' ?>

</body>

</html>