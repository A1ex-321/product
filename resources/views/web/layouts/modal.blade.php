<!-- Add product modal area start -->
<div class="product__modal modal fade" id="productmodal">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <input type="hidden" id="productData">
            <div class="product__modal-wrapper p-relative">
                <div class="product__modal-close p-absolute">
                    <button data-bs-dismiss="modal"><i class="fal fa-times"></i></button>
                </div>
                <div class="product__modal-inner">
                    <div class="row">
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="product__modal-box">
                                <div class="tab-content" id="modalTabContent">
                                    <div class="tab-pane fade show active" id="nav1" role="tabpanel"
                                        aria-labelledby="nav1-tab">
                                        <div class="product__modal-img w-img">
                                            <img id='productModalImage'
                                                src="assets/img/product/quick-view/quick-view-01.png" alt="">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                            <div class="product__modal-content">
                                <h3 id="productModalTitle" class="product__modal-title">Default Name</h3>
                                <div class="product__details-price">
                                    {{-- <span id="productModalPrice" class="old-price">$90.35</span> --}}
                                    <span id="productModalPrice" class="new-price">$70.25</span>
                                </div>
                                <div class="product__review">
                                    <div class="product__details-rating">
                                        <a href="#"><i class="fa-solid fa-star"></i></a>
                                        <a href="#"><i class="fa-solid fa-star"></i></a>
                                        <a href="#"><i class="fa-solid fa-star"></i></a>
                                        <a href="#"><i class="fa-regular fa-star"></i></a>
                                        <a href="#"><i class="fa-regular fa-star"></i></a>
                                    </div>
                                    <div class="product__add-review">
                                        <span><a href="#">1 Review</a></span>
                                        <span><a href="#">Add Review</a></span>
                                    </div>
                                </div>
                                <div class="product__stock mb-20">
                                    <span>Availability :</span>
                                    <span>In Stock</span>
                                </div>
                                <div class="product__details-action mb-20">
                                    <div class="product__quantity">
                                        <div class="product-quantity-wrapper">
                                            <form action="#">
                                                <button class="cart-minus"><i class="fa-light fa-minus"></i></button>
                                                <input class="cart-input" type="text" value="1">
                                                <button class="cart-plus"><i class="fa-light fa-plus"></i></button>
                                            </form>
                                        </div>
                                    </div>
                                    <div class="product__add-cart">
                                        <a href="javascript:void(0)" class="bd-fill__btn cart-btn"><i
                                                class="fa-solid fa-basket-shopping"></i> Add To Cart</a>
                                    </div>
                                    <div class="product__add-wish">
                                        <a href="#" class="product__add-wish-btn"><i
                                                class="fa-solid fa-heart"></i></a>
                                    </div>
                                </div>

                                <div class="container">
                                    <h4>Sizes and Prices</h4>
                                    <ul id="sizesList" class="list-group">
                                        <!-- Sizes and prices will be dynamically added here using JavaScript -->
                                    </ul>
                                </div>



                                <div class="product__modal-links mb-20">
                                    <ul>
                                        <li><a href="#" title="Add to Wishlist"><i class="fal fa-heart"></i></a>
                                        </li>
                                        <li><a href="#" title="Compare"><i class="far fa-sliders-h"></i></a>
                                        </li>
                                        <li><a href="#" title="Print"><i class="fal fa-print"></i></a></li>
                                        <li><a href="#" title="Print"><i class="fal fa-share-alt"></i></a>
                                        </li>
                                    </ul>
                                </div>
                                <div class="product__safe-checkout">
                                    <h5>Guaranteed Safe Checkout</h5>
                                    <a href="#"><img src="assets/img/product/details/discover.png"
                                            alt="payment image"></a>
                                    <a href="#"><img src="assets/img/product/details//mastercard.png"
                                            alt="payment image"></a>
                                    <a href="#"><img src="assets/img/product/details/paypal.png"
                                            alt="payment image"></a>
                                    <a href="#"><img src="assets/img/product/details/visa.png"
                                            alt="payment image"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Add product modal area end -->

{{-- @push('scripts')
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Initialize the modal
            var myModal = new bootstrap.Modal(document.getElementById('productmodal'));

            // Log the modal object
            console.log('modal', myModal);

            // Add an event listener for the 'show.bs.modal' event
            myModal._element.addEventListener('show.bs.modal', function(event) {
                // Log the event object
                console.log('show.bs.modal event', event);

                // Extract product data from the hidden input field
                var productData = document.getElementById('productData').value;
                var product = JSON.parse(productData);

                // Log the product data
                console.log('Product Data:', product);

                document.getElementById('productModalTitle').innerText = product.name;
                document.getElementById('productModalPrice').innerText = '$' + product.price;
                // Update the modal content with the product data
                // Example: document.getElementById('productModalTitle').innerText = product.name;
                // Add similar lines to update other modal elements
            });
        });
    </script>
@endpush --}}
