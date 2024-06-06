<div class="container-fluid bg-dark text-light footer pt-5 wow fadeIn" data-wow-delay="0.1s" style="margin-top: 6rem;">
    <div class="container py-5">
        <div class="row g-5">
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Why Choose Us?</h4>
                <p class="mb-2" style="text-align:justify;">We are reliable manufacturer for last 12 years, we use high quality material, our pricing are competitive, and we offer after sales service 24X7. </p>



            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Contact</h4>

                <p class="mb-2"><i class="fa fa-phone-alt me-3"></i><a href="tel:+919710742032">+91 9710742032</a></p>

                <p class="mb-2"><i class="fa fa-envelope me-3"></i>aaenggprocess@gmail.com</p>
                <p class="mb-2"><i class="fa fa-envelope me-3"></i>aae@aaemachinery.com</p>
                <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@aaemachinery.com</p>
                <!-- <p class="mb-2"><i class=""></i>Chennai – 600 078</p> -->
                <!-- <p class="mb-2"><i class=""></i>chennai - 600 o78</p> 
                
            -->

            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Quick Links</h4>
                <a class="btn btn-link" href="{{ url('/about1') }}">About Us</a>
                <a class="btn btn-link" href="{{ url('/contacts') }}">Contact Us</a>
                <a class="btn btn-link" href="{{ url('/product') }}">Our product</a>
                <a class="btn btn-link" href="{{ url('/client') }}">Clients</a>

                <a class="btn btn-link" href="{{ url('/') }}">Home</a>
                <!-- <a class="btn btn-link" href="">Product</a> -->
            </div>
            <div class="col-lg-3 col-md-6">
                <h4 class="text-light mb-4">Factory Address</h4>
                <p class="mb-2">New Survey No.225/2B1A1A1, </p>
                <p class="mb-2">Kalaimagal Nagar Part-1,</p>
                <p class="mb-2">Pazham Thandalam, Thirumudivakkam,</p>
                <p class="mb-2">Chennai – 600 078</p>

                <div class="d-flex pt-2">
                    <a class="btn btn-outline-light btn-social" href="#"><i class="fab fa-twitter"></i></a>
                    <a class="btn btn-outline-light btn-social" href="#"><i class="fab fa-facebook-f"></i></a>
                    <a class="btn btn-outline-light btn-social" href="#"><i class="fab fa-youtube"></i></a>
                    <a class="btn btn-outline-light btn-social" href="#"><i class="fab fa-linkedin-in"></i></a>
                </div>
            </div>
        </div>
    </div>
    <div class="container">
        <div class="copyright">
            <div class="row">
                <div class="col-md-6 text-center text-md-start mb-3 mb-md-0">
                    &copy; <a class="border-bottom" href="https://orangemegasoftware.com/" target="_blank">Orange Mega Software</a>, All Right Reserved.
                </div>
                <!-- <div class="col-md-6 text-center text-md-end">
                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License from "https://htmlcodex.com/credit-removal". Thank you for your support. ***/
                        Designed By <a class="border-bottom" href="https://htmlcodex.com">HTML Codex</a>
                    </div> -->
            </div>
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
    $(document).ready(function() {
        // Function to toggle dropdown menu on mobile click
        function toggleDropdown() {
            $('#categoryDropdown').slideToggle('slow'); // Use slideToggle() for slow animation
        }

        // AJAX request to populate dropdown items
        // AJAX request to populate dropdown items
        $.ajax({
            url: '/service1', // Your route URL
            type: 'GET',
            success: function(response) {
                console.log(response.service);
                var dropdownMenu = $('#categoryDropdown');
                response.service.forEach(function(item, index) {
                    var itemId = 'dropdownItem' + item.id; // Generate unique id for each item
                    var dropdownItemHTML = '<div class="dropdown-item" id="cat ' + itemId + '">' + '<i class="fas fa-chevron-left" style="margin-right: 5px;"></i>' + item.category + ' </div>';

                    // Check if item has blogscos
                    if (item.blogscos && Array.isArray(item.blogscos)) {
                        dropdownItemHTML += '<div class="submenu" style="display:none;height:auto">';
                        item.blogscos.forEach(function(blog, index) {
                            dropdownItemHTML += '<a id="' + blog.id + '" class="blog-link">' + blog.title + '</a>';
                        });
                        dropdownItemHTML += '</div>';
                    }

                    dropdownMenu.append(dropdownItemHTML);
                });

                // Attach event listener after dynamically adding content
                $('#categoryDropdown').on('click', '.blog-link', function(e) {
                    e.preventDefault(); // Prevent default anchor behavior
                    var blogId = $(this).attr('id'); // Get the id attribute of the 
                    // window.open('/blog/' + blogId);         
                    window.location.href = '/blog/' + blogId;
                });

                // Toggle submenu on category title click
                // Flag to track if submenu is hovered over
                var submenuTimeout;

                $('.dropdown-item').on({
                    click: function() {
                        // Hide all other submenus
                        $('.submenu').not($(this).next('.submenu')).slideUp('slow');

                        // Toggle the submenu associated with the clicked item
                        var submenu = $(this).next('.submenu');
                        if (submenu.find('a').length) { // Check if there are anchor tags inside the submenu
                            submenu.slideToggle('slow');
                        }
                    },
                    
                });

            
                // Hide submenu when clicking outside of it
                $(document).on('click', function(event) {
                    if (!$(event.target).closest('.dropdown-item').length) {
                        $('.submenu').slideUp('slow');
                    }
                });
            }
        });



        // Event listener for mobile click
        $('.nav-item.dropdown .nav-link').click(function(e) {
            e.preventDefault(); // Prevent default link behavior
            toggleDropdown(); // Toggle dropdown menu
        });
    });
    $(document).ready(function() {
        // Fetch the logo from the server and update
        function fetchAndUpdateLogo() {
            // Fetch the logo from the server
            $.ajax({
                url: '{{ route("header") }}',
                type: 'GET',
                success: function(response) {
                    if (response.image) {
                        // Update the logo
                        // console.log("logo",response.image);
                        updateLogo(response.image);
                        // Store the new logo URL in local storage
                        localStorage.setItem('logo', response.image);
                    } else {
                        console.error('No image found');
                    }
                },
                error: function(error) {
                    console.error('Error fetching logo:', error.responseText);
                }
            });
        }

        // Update the logo with the provided URL
        function updateLogo(imageUrl) {
            $('#al').attr('src', imageUrl);
            // $('#al1').attr('src', imageUrl);
            $('link[rel="icon"]').attr('href', imageUrl); // Update favicon
        }

        // Fetch logo from local storage if available
        var storedLogoUrl = localStorage.getItem('logo');
        if (storedLogoUrl) {
            updateLogo(storedLogoUrl);
        } else {
            // Fetch and update the logo from the server
            fetchAndUpdateLogo();
        }

        // Set up an interval to periodically check for logo updates
        setInterval(fetchAndUpdateLogo, 10000); // Adjust the interval as needed
    });
</script>
<!-- <script>
    $(document).ready(function() {
        $('.blog-link a').click(function(e) {
            console.log("fgsfgsfsadfsaf");
            e.preventDefault(); // Prevent default anchor behavior
            var blogId = $(this).attr('id'); // Get the id attribute of the clicked anchor tag

            // AJAX call
            $.ajax({
                url: '/getBlogData', // Route to handle the AJAX request
                type: 'GET',
                data: {
                    id: blogId
                }, // Pass the blog id as data
                success: function(response) {
                    // Open a new page with returned data
                    window.open('/blog/' + blogId, '_blank');
                },
                error: function(xhr, status, error) {
                    console.error(error);
                }
            });
        });
    });
</script> -->
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> -->

<!-- <script>
    $('.nav-item dropdown').on('click', '.div.submenu a', function(e) {
        e.preventDefault(); // Prevent default anchor behavior
        var blogId = $(this).attr('id'); // Get the id attribute of the clicked anchor tag
        $.ajax({
            url: '/getBlogData', // Route to handle the AJAX request
            type: 'GET',
            data: {
                id: blogId
            }, // Pass the blog id as data
            success: function(response) {
                // Open a new page with returned data
                window.open('/blog/' + blogId, '_blank');
            },
            error: function(xhr, status, error) {
                console.error(error);
            }
        });
        // Log the blog id to the consol
        // Perform further actions if needed
    });
</script> -->