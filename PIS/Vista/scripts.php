    <!-- jQuery -->
    <script src="../plugins/bower_components/jquery/dist/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../plugins/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>

    <!-- Metis Menu Plugin JavaScript -->
    <script src="../plugins/bower_components/metisMenu/dist/metisMenu.min.js"></script>
	
	<!-- DataTables JavaScript -->
    <script src="../plugins/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
    <script src="../plugins/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script>
    <script src="../plugins/bower_components/datatables-responsive/js/dataTables.responsive.js"></script>
    
    <!-- Custom Theme JavaScript -->
    <script src="../plugins/plugins/dist/js/sb-admin-2.js"></script>
	
	<!-- Flot Charts JavaScript -->
    <script src="../plugins/bower_components/flot/excanvas.min.js"></script>
    <script src="../plugins/bower_components/flot/jquery.flot.js"></script>
    <script src="../plugins/bower_components/flot/jquery.flot.pie.js"></script>
    <script src="../plugins/bower_components/flot/jquery.flot.resize.js"></script>
    <script src="../plugins/bower_components/flot/jquery.flot.time.js"></script>
    <script src="../plugins/bower_components/flot.tooltip/js/jquery.flot.tooltip.min.js"></script>
    <script src="../plugins/js/flot-data.js"></script>
	<script src="../plugins/js/Chart.min.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
    <script>
    $(document).ready(function() {
        $('#dataTables-example').DataTable({
                responsive: true
        });
    });
    </script>
	
	<script>

		var ctx = document.getElementById("chart1");

		var data = {
        labels: ["Primer Año", "Segundo Año", "Tercer Año"],
        datasets: [{
            label: '# Cursos Aprobados',
            data: [20, 50, 10],
            backgroundColor: [
                'rgba(100, 100, 100, 0.25)',
                'rgba(100, 100, 100, 0.25)',
                'rgba(100, 100, 100, 0.25)',
            ],
            borderColor: [
                'rgba(200,200,200,1)',
                'rgba(200,200,200,1)',
                'rgba(200,200,200,1)',
            ],
            borderWidth: 2
        },
        {
            label: '# Cursos Desaprobados',
            data: [20, 20, 20],
            backgroundColor: [
                'rgba(100, 100, 200, 0.25)',
                'rgba(100, 100, 200, 0.25)',
                'rgba(100, 100, 200, 0.25)',
            ],
            borderColor: [
                'rgba(200,200,255,1)',
                'rgba(200,200,255,1)',
                'rgba(200,200,255,1)',
            ],
            borderWidth: 2
        }
        ]
    };

var options = {
        scales: {
            yAxes: [{
                ticks: {
                    beginAtZero:true
                }
            }]
        }
    };

var chart1 = new Chart(ctx, {
    type: 'bar',
    data: data,
    options: options
});
</script>