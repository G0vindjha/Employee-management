<?php
session_start();
if(isset($_SESSION['userEmail'])){
  $script =  "<script>
  $('#nav').show();
  $('#loginnav').hide();
  </script>";
}
else{
  $script = "<script>
  $('#nav').hide();
  $('#loginnav').show();
  </script>";
}
session_start();
if ($_POST['action'] == 'userLogout') {
  session_unset();
  session_destroy();
  echo "logout";
  exit;
}
$title = "LiveWire";
require_once 'admin/lib/siteConstant.php';
require_once 'admin/lib/siteConstant.php';
require_once 'admin/lib/header.php';
?>
<header id="header" class="header fixed-top d-flex align-items-center">
  <div class="col">
    <img src="<?php echo SITE_URL; ?>PHPOPS/Day19/Assignments/Project1/admin/assets/img/companyLogo.png" alt="..." width="200px">
  </div>
  <div class="col d-flex justify-content-end">
  
    <div class="d-flex justify-content-end me-5">
      <a id="loginnav" name="userLogin" id="userLogin" class="btn btn-outline-primary px-4" href="<?php echo SITE_URL ?>PHPOPS/Day19/Assignments/Project1/login.php" role="button">Login</a>
    </div>
    <nav id="nav" class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
        <li class="nav-item d-block d-lg-none">
          <a class="nav-link nav-icon search-bar-toggle " href="#">
            <i class="bi bi-search"></i>
          </a>
        </li>

        <li class="nav-item dropdown pe-3 d-flex gap-2">
          <span class="d-none d-md-block ps-2">Welcome</span>
          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <span class="d-none d-md-block dropdown-toggle ps-2"><?php echo $_SESSION['userName'];?></span>
          </a>

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li>
              <a class="dropdown-item d-flex align-items-center" href="<?php echo SITE_URL?>/PHPOPS/Day19/Assignments/Project1/userDetail.php">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>
            <li>
              <button type="button" class="dropdown-item d-flex align-items-center" id="userLogout">Sign Out</button>
            </li>

          </ul>
        </li>

      </ul>
    </nav>
  </div>
</header>
