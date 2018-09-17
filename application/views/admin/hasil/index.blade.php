@extends('admin.template')
@section('title')
Dashboard - Administrasi
@endsection
@section('corejs')
	<script type="text/javascript" src="{{base_url()}}assets/js/plugins/tables/datatables/datatables.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}assets/js/plugins/forms/selects/select2.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}assets/js/pages/datatables_basic.js"></script>
@endsection
@section('content')
	<div class="content-wrapper">

				<!-- Page header -->
				<div class="page-header page-header-default">
					<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="{{base_url('superuser')}}"><i class="icon-home2 position-left"></i> Home</a></li>
							<li class="active"><a href="#">Kuesioner</a></li>
						</ul>
					</div>
				</div>
				<!-- /page header -->


				<!-- Content area -->
				<div class="content">
					{{-- <h1>Coming Soon</h1> --}}
					<!-- Basic datatable -->
					<div class="panel panel-flat">
						<div class="panel-heading">
							<h5 class="panel-title">Hasil Kuesioner</h5>
							<div class="row">
								<div class="col-md-6">
									<input type="text" id="keyword" name="keyword" class="form-control" value="" placeholder="Pilih Kode Kuesioner">
									<input type="hidden" id="id_kuesioner" name="id_kuesioner" class="form-control" value="">
								</div>
								<div class="col-md-6">
									<button type="button" onclick="getHasil()" class="btn bg-danger-400 btn-labeled"><b><i class="icon-clipboard"></i></b>Hasil</button>
								</div>
							</div>
						</div>
						<div class="panel-heading">
							<div class="row">
								<div class="col-lg-6">
									<canvas id="canvas"></canvas>
								</div>
								<div class="col-lg-6">
									<canvas id="canvas2"></canvas>
								</div>
							</div>
							{{-- <a href="{{base_url('superuser/kuesioner/create')}}"><button type="button" class="btn bg-teal-400 btn-labeled"><b><i class="icon-plus-circle2"></i></b> Tambah Kuesioner</button></a> --}}
						</div>
						<div class="panel panel-flat">
							<p id="masukkan"></p>
						</div>

					</div>
					<!-- /basic datatable -->

				</div>
				<!-- /content area -->

			</div>
@endsection
@section('script')
	<script>



		 function getHasil() {
		 	var arrLabel = [];
		 	var arrHasil = [];

             var arrLabel2 = [];
             var arrHasil2 = [];

		 	var id = $('#keyword').val();
		 	$.ajax({
			    url: "{{base_url('superuser/hasil2/')}}"+id,
			    type: "POST",
			    dataType: 'json',
			    success: function(datas) {

			    	$("#masukkan").html(datas.Masukkan);

			    	var data = datas.Data.APO;
			    	for (var i = 0; i < data.length; i++) {
			    		arrLabel.push(data[i].Label);
			    		arrHasil.push(data[i].Hasil);
			    	}

                    var data2 = datas.Data.DSS;
                    for (var i = 0; i < data2.length; i++) {
                        arrLabel2.push(data2[i].Label);
                        arrHasil2.push(data2[i].Hasil);
                    }

			        console.log('Label',arrLabel);
			        console.log('Hasil',arrHasil);
			         var ctx = document.getElementById("canvas");
					 var ctx2 = document.getElementById("canvas2");
					 var config = {
						type: 'radar',
						data: {
							labels: arrLabel,
							datasets: [{
								label: datas.Kuesioner,
								borderColor: 'rgba(255,0,0,0.3)',
								backgroundColor: 'rgba(255,0,0,0.3)',
								pointBackgroundColor: 'rgba(0,0,255,0.3)',
								data: arrHasil
							}]
						},
						options: {
							title: {
								display: true,
								text: 'Kuesioner'
							},
							elements: {
								line: {
									tension: 0.0,
								}
							},
							scale: {
								beginAtZero: true,
							}
						}
					};

                    var config2 = {
                        type: 'radar',
                        data: {
                            labels: arrLabel2,
                            datasets: [{
                                label: datas.Kuesioner,
                                borderColor: 'rgba(255,0,0,0.3)',
                                backgroundColor: 'rgba(255,0,0,0.3)',
                                pointBackgroundColor: 'rgba(0,0,255,0.3)',
                                data: arrHasil2
                            }]
                        },
                        options: {
                            title: {
                                display: true,
                                text: 'Kuesioner'
                            },
                            elements: {
                                line: {
                                    tension: 0.0,
                                }
                            },
                            scale: {
                                beginAtZero: true,
                            }
                        }
                    };
					 var myChart = new Chart(ctx,config);
                    var myChart = new Chart(ctx2,config2);
			    },
			    error: function(rtnData) {
			        alert('error' + rtnData);
			    }
			});
		 }


	</script>
@endsection
