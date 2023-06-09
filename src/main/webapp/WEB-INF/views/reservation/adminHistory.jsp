<%--
  Created by IntelliJ IDEA.
  User: lukasz
  Date: 26.04.2023
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../headerAdmin.jsp"/>
<!-- End of Topbar -->

<!-- Begin Page Content -->
<div class="container-fluid">

  <!-- Page Heading -->
  <h1 class="h3 mb-2 text-gray-800">Panel Administracyjny</h1>

  <!-- DataTales Example -->
  <div class="card shadow mb-4">
    <div class="card-header py-3">
      <h6 class="m-0 font-weight-bold text-primary"> Rezerwacje</h6>
    </div>
    <div class="card-body">
      <div class="table-responsive">
        <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
          <thead>
          <th>Date of Booking</th>
          <th>User Client</th>
          <th>CAR</th>
          <th>STATUS</th>
          <th>Date of Start Rental</th>
          <th>Date of Return</th>
          <th>cost</th>
          <th>CAR PICKUP LOCATION</th>
          <th>USER ADMIN</th>
          </thead>

          <tbody>
          <c:forEach items="${reservations}" var="res">
            <tr>
              <td><c:out value="${res.dateOfBooking}"/></td>
              <td><c:out value="${res.userClient.firstName}"/></td>
              <td><c:out value="${res.car.carModel.name}"/></td>
              <td><c:out value="${res.status}"/></td>
              <td><c:out value="${res.dateStartRental}"/></td>
              <td><c:out value="${res.dateOfReturn}"/></td>
              <td><c:out value="${res.cost}"/></td>
              <td><c:out value="${res.carPickupLocation}"/></td>
              <td><c:out value="${res.userAdmin.firstName}"/></td>



          </c:forEach>

          </tbody>
        </table>

        <div class="menu-item border-dashed">
          <a href="/reservation/addUserAdmin/1">
            <i class="far fa-plus-square icon-plus-square"></i>
            <span class="title">DODAJ REZERWACJE</span>
          </a>

        </div>
      </div>
    </div>
  </div>

</div>
<!-- /.container-fluid -->

</div>


<!-- Footer -->
<footer class="sticky-footer bg-white">
  <div class="container my-auto">
    <div class="copyright text-center my-auto">
      <span>Copyright &copy; Your Website 2020</span>
    </div>
  </div>
</footer>
<!-- End of Footer -->

</div>
<!-- End of Content Wrapper -->

</div>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->
<a class="scroll-to-top rounded" href="#page-top">
  <i class="fas fa-angle-up"></i>
</a>

<!-- Logout Modal-->
<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
     aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
        <button class="close" type="button" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">×</span>
        </button>
      </div>
      <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
      <div class="modal-footer">
        <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
        <a class="btn btn-primary" href="login.html">Logout</a>
      </div>
    </div>
  </div>
</div>

<!-- Bootstrap core JavaScript-->
<script src="/resources/static/vendor/jquery/jquery.min.js"></script>
<script src="/resources/static/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="/resources/static/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="/resources/static/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="/resources/static/vendor/datatables/jquery.dataTables.min.js"></script>
<script src="/resources/static/vendor/datatables/dataTables.bootstrap4.min.js"></script>

<!-- Page level custom scripts -->
<script src="/resources/static/js/demo/datatables-demo.js"></script>

</body>

</html>

