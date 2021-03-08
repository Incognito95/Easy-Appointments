<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#35A768">
    <title><?= lang('signup') ?> | Easy!Appointments</title>

    <link rel="stylesheet" type="text/css" href="<?= asset_url('assets/ext/jquery-ui/jquery-ui.min.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?= asset_url('assets/ext/bootstrap/css/bootstrap.min.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?= asset_url('assets/css/login.css') ?>">
    <link rel="stylesheet" type="text/css" href="<?= asset_url('assets/css/general.css') ?>">

    <link rel="icon" type="image/x-icon" href="<?= asset_url('assets/img/favicon.ico') ?>">
    <link rel="icon" sizes="192x192" href="<?= asset_url('assets/img/logo.png') ?>">

    <script src="<?= asset_url('assets/ext/jquery/jquery.min.js') ?>"></script>
    <script src="<?= asset_url('assets/ext/jquery-ui/jquery-ui.min.js') ?>"></script>
    <script src="<?= asset_url('assets/ext/bootstrap/js/bootstrap.bundle.min.js') ?>"></script>
    <script src="<?= asset_url('assets/ext/datejs/date.min.js') ?>"></script>

    <script>
        var GlobalVariables = {
            csrfToken: <?= json_encode($this->security->get_csrf_hash()) ?>,
            baseUrl: <?= json_encode($base_url) ?>,
            destUrl: <?= json_encode($dest_url) ?>,
            AJAX_SUCCESS: 'SUCCESS',
            AJAX_FAILURE: 'FAILURE'
        };

        var EALang = <?= json_encode($this->lang->language) ?>;

        var availableLanguages = <?= json_encode(config('available_languages')) ?>;

        $(function () {
            GeneralFunctions.enableLanguageSelection($('#select-language'));
        });
    </script>
</head>
<body>



<div id="login-frame" class="frame-container">
    <span id="select-language" class="badge badge-success float-right"><?= ucfirst(config('language')) ?></span>
    <h2>Signup</h2>
    <hr>
    <div class="alert d-none"></div>
    <form id="signup-form" method="post" action="../models/Signup_model.php">
        <div class="form-group">
            <label for="username"><?= lang('username') ?></label>
            <input type="text" id="username" placeholder="<?= lang('enter_username_here') ?>" class="form-control" name="username" />
        </div>
        <div class="form-group">
            <label for="password"><?= lang('password') ?></label>
            <input type="password" id="password" placeholder="<?= lang('enter_password_here') ?>" class="form-control" name="password"/>
        </div>

        <div class="form-group">
            <button type="submit" id="signup" class="btn btn-primary"><i class="fas fa-sign-in-alt mr-2"></i>Signup</button>
            <a href="<?= site_url('user/forgot_password') ?>" class="forgot-password float-right">
            <?= lang('forgot_your_password') ?></a>
        </div>
 
        <hr>
        <p>Already have an account? click<a href="<?= site_url('user/login') ?>" class="forgot-password"> here</a> to login</p>

    </form>
</div>

<script src="<?= asset_url('assets/ext/fontawesome/js/fontawesome.min.js') ?>"></script>
<script src="<?= asset_url('assets/ext/fontawesome/js/solid.min.js') ?>"></script>
<script src="<?= asset_url('assets/js/polyfill.js') ?>"></script>
<script src="<?= asset_url('assets/js/general_functions.js') ?>"></script>
<script src="<?= asset_url('assets/js/login.js') ?>"></script>
</body>
</html>
