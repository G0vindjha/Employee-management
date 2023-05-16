<?php
require_once 'admin/lib/Conn.php';
if ($_POST['action'] == 'userLogin') {
    $email = $_POST['email'];
    $password = $_POST['password'];
    $rememberMe = $_POST['rememberMe'];
    $conn = new Conn();
    $result = $conn->select('employee','emp_Id,name,email,password');
    foreach ($result as $row) {
       
        if ($row['email'] == $email && $row['password'] == $password) {
            session_start();
            $_SESSION['emp_Id'] = $row['emp_Id'];
            $_SESSION['userName'] = $row['name'];
            $_SESSION['userEmail'] = $row['email'];
            $_SESSION['userPass'] = $row['password'];
            if($rememberMe == 1){
                setcookie('userEmail', $email, time() + (86400 * 30), "/");
                setcookie('userPass', $password, time() + (86400 * 30), "/");
            }
            echo 'success';
            exit;
        } 
    }
    echo "failed";
            exit;
}

$title = "Login";
require_once 'admin/lib/siteConstant.php';
require_once 'admin/lib/header.php';
?>
<main>
    <div class="container">
        <section class="section register min-vh-100 d-flex flex-column align-items-center justify-content-center py-4">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-lg-4 col-md-6 d-flex flex-column align-items-center justify-content-center">

                        <div class="d-flex justify-content-center py-4">
                            <div class="logo d-flex align-items-center w-auto">
                                <img src="<?php echo SITE_URL;?>PHPOPS/Day19/Assignments/Project1/admin/assets/img/logo.png" alt="">
                                <span class="d-none d-lg-block">LiveWire</span>
                            </div>
                        </div>

                        <div class="card mb-3">
                            <div class="card-body">
                                <div class="pt-4 pb-2">
                                    <h5 class="card-title text-center pb-0 fs-4">Login</h5>
                                </div>
                                <form class="row g-3 needs-validation" novalidate method="post">
                                    <div class="col-12">
                                        <label for="yourUsername" class="form-label">Email : </label>
                                        <div class="input-group has-validation">
                                            <span class="input-group-text" id="inputGroupPrepend">@</span>
                                            <input type="email" name="email" class="form-control" placeholder="Enter Your Email..." pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$" id="email" value="<?php echo $_COOKIE['userEmail']; ?>" required>
                                            <div class="invalid-feedback">Please enter your username.</div>
                                        </div>
                                    </div>

                                    <div class="col-12">
                                        <label for="yourPassword" class="form-label">Password</label>
                                        <input type="password" name="password" id='password' class="form-control" id="password" placeholder="Enter Your Password..." value="<?php echo $_COOKIE['userPass']; ?>" required>
                                        <div class="invalid-feedback">Please enter your password!</div>
                                    </div>

                                    <div class="col-12">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" name="remember" id="rememberMe">
                                            <label class="form-check-label" for="rememberMe">Remember me</label>
                                        </div>
                                    </div>
                                    <div class="col-12" id="alert"></div>
                                    <div class="col-12">
                                        <button class="btn-validation btn btn-primary w-100" type="button" id="userLogin">Login</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </div>
</main>
<script src="<?php echo SITE_URL ?>PHPOPS/Day19/Assignments/Project1/admin/assets/js/script.js"></script>
<?php
require_once 'admin/lib/footer.php';
?>