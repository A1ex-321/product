


@include('news.layout.header')
      




        <!-- Main Sidebar Container end -->
        <!-- Content Wrapper. Contains page content -->

        <!-- /.content-wrapper -->
        @yield('content')
        <!-- Control Sidebar -->

        @include('news.layout.footer')
        <!-- Main Footer end -->
        <!-- ./wrapper -->

        <!-- REQUIRED SCRIPTS -->

        <!-- jQuery -->
        
        <a href="#" class="btn btn-primary border-2 border-white rounded-circle back-to-top"><i
            class="fa fa-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('public/news/lib/easing/easing.min.js') }}"></script>
    <script src="{{ asset('public/news/lib/waypoints/waypoints.min.js') }}"></script>
<script src="{{ asset('public/news/lib/owlcarousel/owl.carousel.min.js') }}"></script>
<script src="{{ asset('public/news/js/main.js') }}"></script>

    <script>
        document.addEventListener("DOMContentLoaded", function () {
            var listItems = document.getElementById("listItems").children;
            var showMoreButton = document.getElementById("showMoreButton");
            var isHidden = true; // Variable to track current state

            // Hide list items beyond the first five
            for (var i = 5; i < listItems.length; i++) {
                listItems[i].style.display = "none";
            }

            // Add event listener to show more button
            showMoreButton.addEventListener("click", function () {
                for (var i = 5; i < listItems.length; i++) {
                    listItems[i].style.display = isHidden ? "block" : "none";
                }

                // Toggle the button's content between dots and close symbol
                showMoreButton.innerHTML = isHidden ? "&times;" : "&#8230;";

                // Toggle the state variable
                isHidden = !isHidden;
            });
        });

    </script>
    <script>
        document.addEventListener("DOMContentLoaded", function () {
          // Trigger a click event on the first tab link
          document.querySelector('.nav-pills .nav-link').click();
        });
      
        function openCity(evt, cityName) {
          var i, tabcontent, tablinks;
          tabcontent = document.getElementsByClassName("tabcontent");
          for (i = 0; i < tabcontent.length; i++) {
            tabcontent[i].style.display = "none";
          }
          tablinks = document.getElementsByClassName("nav-link");
          for (i = 0; i < tablinks.length; i++) {
            tablinks[i].className = tablinks[i].className.replace(" active", "");
          }
          document.getElementById(cityName).style.display = "block";
          evt.currentTarget.className += " active";
        }
      </script>
      
</body>

</html>