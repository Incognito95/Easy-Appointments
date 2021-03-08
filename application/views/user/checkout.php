<script src="https://cdn.jotfor.ms/static/prototype.forms.js" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/static/jotform.forms.js?3.3.23718" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/stripeSCA.js?v=3.3.23718" type="text/javascript"></script>
<script src="https://cdn.jotfor.ms/js/stripe.js?v=3.3.23718" type="text/javascript"></script>
<script type="text/javascript">
	JotForm.init(function(){
      productID = {"0":"input_25_1000"};
      paymentType = "product";
      JotForm.setCurrencyFormat('DKK',true, 'point');
      JotForm.totalCounter({"input_25_1000":{"price":"500"}});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('blur', function(){isNaN(this.value) || this.value < 1 ? this.value = '0' : this.value = parseInt(this.value)})});
      $$('.form-product-custom_quantity').each(function(el, i){el.observe('focus', function(){this.value == 0 ? this.value = '' : this.value})});
      JotForm.setStripeSettings('pk_test_51IREucG6E4ba2p4iklOmsAlxadX352fk7Xf9LZBoh9Iec6zCeuOHxXYOE0IzOQgSYcUTk6Jsbfdb4sc7Yq7VE1H3009Q5FKENR', 'none', '21', '20', '', '0');
      JotForm.handleProductLightbox();
	JotForm.newDefaultTheme = true;
	JotForm.extendsNewTheme = false;
	JotForm.newPaymentUIForNewCreatedForms = true;
	JotForm.newPaymentUI = true;
      JotForm.alterTexts(undefined);
      JotForm.alterTexts({"couponApply":"Apply","couponBlank":"Please enter a coupon.","couponChange":"","couponEnter":"Enter coupon","couponExpired":"Coupon is expired. Please try another one.","couponInvalid":"Coupon is invalid.","couponValid":"Coupon is valid.","shippingShipping":"Shipping","taxTax":"Tax","totalSubtotal":"Subtotal","totalTotal":"Total"}, true);
	JotForm.clearFieldOnHide="disable";
	JotForm.submitError="jumpToFirstError";
    /*INIT-END*/
	});

   JotForm.prepareCalculationsOnTheFly([null,{"name":"checkoutForm","qid":"1","text":"Checkout Form","type":"control_head"},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"paymentDetails","qid":"22","text":"Payment Details","type":"control_head"},null,{"name":"pay","qid":"24","text":"Pay","type":"control_button"},{"description":"","name":"myProducts","qid":"25","text":"My Products","type":"control_stripe"}]);
   setTimeout(function() {
JotForm.paymentExtrasOnTheFly([null,{"name":"checkoutForm","qid":"1","text":"Checkout Form","type":"control_head"},null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,null,{"name":"paymentDetails","qid":"22","text":"Payment Details","type":"control_head"},null,{"name":"pay","qid":"24","text":"Pay","type":"control_button"},{"description":"","name":"myProducts","qid":"25","text":"My Products","type":"control_stripe"}]);}, 20); 
</script>
<link type="text/css" media="print" rel="stylesheet" href="https://cdn.jotfor.ms/css/printForm.css?3.3.23718" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/themes/CSS/5e6b428acc8c4e222d1beb91.css?themeRevisionID=5f7ed99c2c2c7240ba580251"/>
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_styles.css?3.3.23718" />
<link type="text/css" rel="stylesheet" href="https://cdn.jotfor.ms/css/styles/payment/payment_feature.css?3.3.23718" />
<style type="text/css" id="form-designer-style">
    /* Injected CSS Code */
.form-label.form-label-auto {
        
      display: block;
      float: none;
      text-align: left;
      width: 100%;
    
      }
    /* Injected CSS Code */
</style>

<form class="jotform-form" action="https://submit.jotformeu.com/submit/210637253120039/" method="post" name="form_210637253120039" id="210637253120039" accept-charset="utf-8" autocomplete="on">
  <input type="hidden" name="formID" value="210637253120039" />
  <input type="hidden" id="JWTContainer" value="" />
  <input type="hidden" id="cardinalOrderNumber" value="" />
  <div role="main" class="form-all">
    <ul class="form-section page-section">
      <li id="cid_1" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-large">
          <div class="header-text httal htvam">
            <h1 id="header_1" class="form-header" data-component="header">
              Checkout Form
            </h1>
            <div id="subHeader_1" class="form-subHeader">
              Powered by Stripe
            </div>
          </div>
        </div>
      </li>
      <li id="cid_22" class="form-input-wide" data-type="control_head">
        <div class="form-header-group  header-default">
          <div class="header-text httal htvam">
            <h2 id="header_22" class="form-header" data-component="header">
              Payment Details
            </h2>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_stripe" id="id_25" data-payment="true">
        <label class="form-label form-label-top" id="label_25" for="input_25"> My Products </label>
        <div id="cid_25" class="form-input-wide" data-layout="full">
          <div data-wrapper-react="true" class="stripe-payment-wrapper" data-stripe-currency="DKK">
            <div data-wrapper-react="true">
              <div class="filter-container">
              </div>
              <input type="hidden" name="simple_fpc" data-payment_type="stripe" data-component="payment1" value="25" />
              <input type="hidden" name="payment_total_checksum" id="payment_total_checksum" data-component="payment2" />
              <div id="image-overlay" class="overlay-content" style="display:none">
                <img id="current-image" />
                <span class="lb-prev-button">
                  prev
                </span>
                <span class="lb-next-button">
                  next
                </span>
                <span class="lb-close-button">
                  ( X )
                </span>
                <span class="image-overlay-product-container">
                  <ul class="form-overlay-item" hasicon="false" hasimages="false" iconvalue="">
                  </ul>
                </span>
              </div>
              <div data-wrapper-react="true">
                <span class="form-product-item hover-product-item  new_ui" categories="non-categorized" pid="1000">
                  <div data-wrapper-react="true" class="form-product-item-detail new_ui">
                    <div class="p_col">
                      <div class="p_checkbox">
                        <input type="checkbox" class="form-checkbox  form-product-input" id="input_25_1000" name="q25_myProducts[][id]" value="1000" />
                        <div class="checked">
                        </div>
                        <div class="select_border">
                        </div>
                      </div>
                    </div>
                    <div class="p_image">
                      <div class="image_area null" style="background-image:url(&quot;null&quot;)">
                        <div class="image_zoom">
                        </div>
                      </div>
                    </div>
                    <div for="input_25_1000" class="form-product-container">
                      <span data-wrapper-react="true">
                        <div class="title_description">
                          <span class="form-product-name" id="product-name-input_25_1000">
                            Product 1
                          </span>
                          <span class="form-product-description" id="product-name-description-input_25_1000">
                          </span>
                        </div>
                        <span class="form-product-details">
                          <b>
                            <span data-wrapper-react="true">
                              <span id="input_25_1000_price">
                                500.00
                              </span>
                              <span class="currency_abr">
                                DKK
                              </span>
                            </span>
                          </b>
                        </span>
                      </span>
                    </div>
                  </div>
                </span>
                <div class="payment_footer new_ui ">
                  <div class="total_area">
                    <div class="form-payment-total">
                      <div id="total-text">
                        Total
                      </div>
                      <div class="form-payment-price">
                        <span data-wrapper-react="true">
                          <span id="payment_total">
                            0.00
                          </span>
                          <span class="currency_abr">
                            DKK
                          </span>
                        </span>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <hr/>
            </div>
            <div id="stripe-templates">
              <div class="stripe-sca-template">
                <div>
                  <table class="payment-up-form-table" style="border:0;margin-bottom:10px" cellPadding="0" cellSpacing="0">
                    <tbody>
                      <tr>
                        <td width="50%">
                        </td>
                      </tr>
                    </tbody>
                  </table>
                  <table class="form-address-table payment-form-table" style="border:0" cellPadding="0" cellSpacing="0">
                    <tbody>
                      <tr>
                        <th colSpan="2" style="text-align:left" id="ccTitle25">
                          Credit Card Details
                        </th>
                      </tr>
                      <tr>
                        <td width="50%">
                          <span class="form-sub-label-container" style="vertical-align:top">
                            <input type="text" id="input_25_cc_firstName" name="q25_myProducts[cc_firstName]" class="form-textbox cc_firstName" size="20" value="" data-component="cc_firstName" />
                            <label class="form-sub-label" for="input_25_cc_firstName" id="sublabel_cc_firstName" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> First Name </label>
                          </span>
                        </td>
                        <td width="50%">
                          <span class="form-sub-label-container" style="vertical-align:top">
                            <input type="text" id="input_25_cc_lastName" name="q25_myProducts[cc_lastName]" class="form-textbox cc_lastName" size="20" value="" data-component="cc_lastName" />
                            <label class="form-sub-label" for="input_25_cc_lastName" id="sublabel_cc_lastName" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Last Name </label>
                          </span>
                        </td>
                      </tr>
                      <tr class="if_cc_field">
                        <td width="50%">
                          <span class="form-sub-label-container" style="vertical-align:top">
                            <div class="form-textbox cc_numberMount ">
                            </div>
                            <label class="form-sub-label" for="input_25_cc_number" id="sublabel_cc_number" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Credit Card Number </label>
                          </span>
                        </td>
                        <td width="50%">
                          <span class="form-sub-label-container" style="vertical-align:top">
                            <div class="form-textbox cc_ccvMount ">
                            </div>
                            <label class="form-sub-label" for="input_25_cc_ccv" id="sublabel_cc_ccv" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Security Code </label>
                          </span>
                        </td>
                      </tr>
                      <tr>
                        <td width="50%">
                          <span class="form-sub-label-container" style="vertical-align:top">
                            <div class="form-textbox cc_cardExpiryMount ">
                            </div>
                            <label class="form-sub-label" for="input_25_cc_card_expiry" id="sublabel_cc_card_expiry" style="min-height:13px;margin:0 0 3px 0" aria-hidden="false"> Card Expiration </label>
                          </span>
                        </td>
                        <td width="50%">
                          <tr style="display:none">
                            <td>
                              <input id="stripesca_dummy" style="display:none" />
                            </td>
                          </tr>
                        </td>
                      </tr>
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
          </div>
        </div>
      </li>
      <li class="form-line" data-type="control_button" id="id_24">
        <div id="cid_24" class="form-input-wide" data-layout="full">
          <div data-align="right" class="form-buttons-wrapper form-buttons-right   jsTest-button-wrapperField">
            <button id="input_24" type="submit" class="form-submit-button submit-button jf-form-buttons jsTest-submitField" data-component="button" data-content="">
              Pay
            </button>
          </div>
        </div>
      </li>
      <li style="display:none">
        Should be Empty:
        <input type="text" name="website" value="" />
      </li>
    </ul>
  </div>
  <script>
  JotForm.showJotFormPowered = "new_footer";
  </script>
  <script>
  JotForm.poweredByText = "Powered by JotForm";
  </script>
  <input type="hidden" class="simple_spc" id="simple_spc" name="simple_spc" value="210637253120039" />
  <script type="text/javascript">
  var all_spc = document.querySelectorAll("form[id='210637253120039'] .si" + "mple" + "_spc");
for (var i = 0; i < all_spc.length; i++)
{
  all_spc[i].value = "210637253120039-210637253120039";
}
  </script>
</form>
<script type="text/javascript">JotForm.forwardToEu=true;</script><script src="https://cdn.jotfor.ms//js/vendor/smoothscroll.min.js?v=3.3.23718"></script>
<script src="https://cdn.jotfor.ms//js/errorNavigation.js?v=3.3.23718"></script>