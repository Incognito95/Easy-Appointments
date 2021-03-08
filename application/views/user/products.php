<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#35A768">
    <title><?= lang('signup') ?> | Easy!Appointments</title>

    <link rel="stylesheet" type="text/css" href="<?= asset_url('assets/ext/bootstrap/css/bootstrap.min.css') ?>">
    <style><?php require("assets/css/sidebar.css");?></style>
    <style><?php require("assets/css/products.css");?></style>
    


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

  <div class="d-flex" id="wrapper">

    <!-- Sidebar -->
    <div class="bg-light border-right" id="sidebar-wrapper">
      <div class="sidebar-heading">Start Bootstrap </div>
      <div class="list-group list-group-flush">
        <div class="content-container">
          <div class="cart-items"></div>
          <div class="cart-total">
            <hr>
            <strong class="cart-total-title ml-3">Total</strong>
            <span class="cart-total-price float-right">DKK 0</span>
          </div>
          <hr>
          <button class="btn btn-success btn-purchase float-right" type="button">Purchase</button>
        </div>
      </div>
    </div>
    <!-- /#sidebar-wrapper -->

    <!-- Page Content -->
    <div id="page-content-wrapper">

      <nav class="navbar navbar-expand-lg navbar-light bg-light border-bottom">

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav ml-auto mt-2 mt-lg-0">
            <li class="nav-item active">
              <a class="nav-link" href="#"><button class="btn float-right" id="menu-toggle"><img
                    src="https://img.icons8.com/doodle/48/000000/shopping-basket-2--v1.png" /></button></a>
            </li>
          </ul>
        </div>
      </nav>

      <div class="mt-5">
        <section class="container">
          <div class="shop-items">
            <div class="shop-item card-body" style="width: 22rem;">
              <img class="shop-item-image card-img-top" src="https://dummyimage.com/600x400/f7f7f7/000000">
              <p class="font-weight-bold mt-3 shop-item-title card-title">Product 1</p>
              <div class="shop-item-details">
                <span class="shop-item-price">100</span>
                <button class="btn btn-primary shop-item-button float-right" type="button">Add To Cart</button>
              </div>
            </div>
            <div class="shop-item card-body" style="width: 22rem;">
              <img class="shop-item-image card-img-top" src="https://dummyimage.com/600x400/f7f7f7/000000">
              <p class="font-weight-bold mt-3 shop-item-title card-title">Product 2</p>
              <div class="shop-item-details">
                <span class="shop-item-price">300</span>
                <button class="btn btn-primary shop-item-button float-right" type="button">Add To Cart</button>
              </div>
            </div>
            <div class="shop-item card-body" style="width: 22rem;">
              <img class="shop-item-image card-img-top" src="https://dummyimage.com/600x400/f7f7f7/000000">
              <p class="font-weight-bold mt-3 shop-item-title card-title">Product 3</p>
              <div class="shop-item-details">
                <span class="shop-item-price">1000</span>
                <button class="btn btn-primary shop-item-button float-right" type="button">Add To Cart</button>
              </div>
            </div>
            <div class="shop-item card-body" style="width: 22rem;">
              <img class="shop-item-image card-img-top" src="https://dummyimage.com/600x400/f7f7f7/000000">
              <p class="font-weight-bold mt-3 shop-item-title card-title">Product 4</p>
              <div class="shop-item-details">
                <span class="shop-item-price">10000</span>
                <button class="btn btn-primary shop-item-button float-right" type="button">Add To Cart</button>
              </div>
            </div>
            <div class="shop-item card-body" style="width: 22rem;">
              <img class="shop-item-image card-img-top" src="https://dummyimage.com/600x400/f7f7f7/000000">
              <p class="font-weight-bold mt-3 shop-item-title card-title">Product 5</p>
              <div class="shop-item-details">
                <span class="shop-item-price">2000</span>
                <button class="btn btn-primary shop-item-button float-right" type="button">Add To Cart</button>
              </div>
            </div>
            <div class="shop-item card-body" style="width: 22rem;">
              <img class="shop-item-image card-img-top" src="https://dummyimage.com/600x400/f7f7f7/000000">
              <p class="font-weight-bold mt-3 shop-item-title card-title">Product 6</p>
              <div class="shop-item-details">
                <span class="shop-item-price">20000</span>
                <button class="btn btn-primary shop-item-button float-right" type="button">Add To Cart</button>
              </div>
            </div>
          </div>
        </section>


      </div>
      <!-- /#page-content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Bootstrap core JavaScript -->
    <script><?php require("assets/js/jquery.min.js");?></script>
    <script><?php require("assets/js/bootstrap.js");?></script>
    <script><?php require("assets/js/products.js");?></script>

    <!-- Menu Toggle Script -->
    <script>
      $("#menu-toggle").click(function (e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
      });
    </script>

</body>

</html>