


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
        
        <a href="#" class="btn btn-lg btn-primary btn-lg-square rounded-0 back-to-top"><i class="bi bi-arrow-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="{{ asset('public/pro/lib/wow/wow.min.js') }}"></script>
    <script src="{{ asset('public/pro/lib/easing/easing.min.js')}}"></script>
    <script src="{{ asset('public/pro/lib/waypoints/waypoints.min.js') }}"></script>
    <script src="{{ asset('public/pro/lib/counterup/counterup.min.js') }}"></script>
    <script src="{{ asset('public/pro/lib/owlcarousel/owl.carousel.min.js') }}"></script>

    <!-- Template Javascript -->
    <script src="{{ asset('public/pro/js/main.js') }}"></script>
</body>

</html>