@extends('admin.template')
@section('title')
Dashboard - Administrasi
@endsection
@section('corejs')
{{-- <script type="text/javascript" src="{{base_url()}}assets/js/pages/dashboard.js"></script> --}}
@endsection
@section('content')
<div class="content-wrapper">

				<!-- Page header -->
				<div class="page-header page-header-default">

					<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="index.html"><i class="icon-home2 position-left"></i> Home</a></li>
							<li class="active">Dashboard</li>
						</ul>
					</div>
				</div>
				<!-- /page header -->


				<!-- Content area -->
				<div class="content">

					<!-- Quick stats boxes -->
							<div class="row">
								<div class="col-lg-4">

									<!-- Members online -->
									<div class="panel bg-teal-400">
										<div class="panel-body">
											{{-- <div class="heading-elements">
												<span class="heading-text badge bg-teal-800"></span>
											</div> --}}

											<h3 class="no-margin">{{$nkuesioner}}</h3>
											Jumlah Kuesioner
											<div class="text-muted text-size-small">Jumlah kuesioner yang dimiliki</div>
										</div>

										<div class="container-fluid">
											<div id="members-online"></div>
										</div>
									</div>
									<!-- /members online -->

								</div>

								<div class="col-lg-4">

									<!-- Current server load -->
									<div class="panel bg-pink-400">
										<div class="panel-body">
											{{-- <div class="heading-elements">
												<ul class="icons-list">
							                		<li class="dropdown">
							                			<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon-cog3"></i> <span class="caret"></span></a>
														<ul class="dropdown-menu dropdown-menu-right">
															<li><a href="#"><i class="icon-sync"></i> Update data</a></li>
															<li><a href="#"><i class="icon-list-unordered"></i> Detailed log</a></li>
															<li><a href="#"><i class="icon-pie5"></i> Statistics</a></li>
															<li><a href="#"><i class="icon-cross3"></i> Clear list</a></li>
														</ul>
							                		</li>
							                	</ul>
											</div> --}}

											<h3 class="no-margin">{{$nresponden}}</h3>
											Jumlah Responden
											<div class="text-muted text-size-small">Jumlah responden yang telah terdaftar</div>
										</div>

										<div id="server-load"></div>
									</div>
									<!-- /current server load -->

								</div>

								<div class="col-lg-4">

									<!-- Today's revenue -->
									<div class="panel bg-blue-400">
										<div class="panel-body">
											<h3 class="no-margin">{{$nsoal}}</h3>
											Jumlah Soal
											<div class="text-muted text-size-small">Jumlah seluruh soal</div>
										</div>

										<div id="today-revenue"></div>
									</div>
									<!-- /today's revenue -->

								</div>
							</div>
							<!-- /quick stats boxes -->


				</div>
				<!-- /content area -->

			</div>
@endsection