@extends('main.template')
@section('title')
Dashboard - Administrasi
@endsection
@section('corejs')
{{-- <script type="text/javascript" src="{{base_url()}}assets/js/pages/dashboard.js"></script> --}}
@endsection
@section('content')
					<!-- Simple login form -->
					<div class="content-wrapper">

						<!-- Content area -->
						<br>
						<div class="row">
						<div class="content col-lg-4 ">
						</div>
						<div class="content col-lg-4">
							<form id="form-login">
								<div class="panel panel-body login-form">
									<div class="text-center">
										<img class="img-responsive mar-center" style="max-width:100px;height:100px;display:block;margin-left:auto;margin-right:auto;" src="{{base_url()}}assets/images/website/config/icon/{{$config->icon}}">
										<h5 class="content-group">Isi Kuesioner <small class="display-block">{{$config->name}}</small></h5>
									</div>

									<div class="form-group has-feedback has-feedback-left">
										<input type="text" class="form-control" placeholder="NIP/NBI/NIM/NIS" name="nim">
										<div class="form-control-feedback">
											<i class="icon-user text-muted"></i>
										</div>
									</div>
									<div id="formResponden" style="display:none">


									<div class="form-group has-feedback has-feedback-left">
										<input type="text" class="form-control" placeholder="Nama" name="nama">
										{{-- <div class="form-control-feedback">
											<i class="icon-user text-muted"></i>
										</div> --}}
									</div><div class="form-group has-feedback has-feedback-left">
										<input type="text" class="form-control" placeholder="Instansi" name="instansi">
										{{-- <div class="form-control-feedback">
											<i class="icon-user text-muted"></i>
										</div> --}}
									</div>
									<div class="form-group has-feedback has-feedback-left">
										<input type="text" class="form-control" placeholder="Jurusan" name="jurusan">
										{{-- <div class="form-control-feedback">
											<i class="icon-user text-muted"></i>
										</div> --}}
									</div>
									</div>

									{{-- <div class="form-group has-feedback has-feedback-left">
										<input type="password" class="form-control" placeholder="Password" name="pass">
										<div class="form-control-feedback">
											<i class="icon-lock2 text-muted"></i>
										</div>
									</div> --}}

									<div class="form-group">
										<button type="submit" class="btn btn-primary btn-block">Next <i class="icon-circle-right2 position-right"></i></button>
									</div>

									{{-- <div class="text-center">
										<a href="login_password_recover.html">Forgot password?</a>
									</div> --}}
								</div>
							</form>
						</div>
						</div>
						<div class="content col-lg-4 ">
						</div>
					</div>

	<script type="text/javascript">
		var base_url = '{{base_url()}}';
	</script>
	<script type="text/javascript" src="{{base_url()}}assets/js/cak-js.js"></script>
	<script type="text/javascript">
		$("#form-login").submit(function(e){
			e.preventDefault();
			var block = $("#form-login > div");
			$.ajax({
				url	: base_url+'main/checkresponden',
				method : 'POST',
				data : $("#form-login").serialize(),
				beforeSend:function(){
					showBlock(block,'<i class="icon-spinner4 spinner"></i>','#fff');
				}
			})
			.done(function(data){

				data = JSON.parse(data);

				if (data.Message == 'Success') {
					ShowNotif('Selamat Datang Kembali!',data.msg,'top-center','bg-danger');
					$("#form-login").find('input').val('');
					$(block).unblock();

					var go	= setTimeout(function(){
						redirect(base_url+'main/kuesioner');
					},1000);
				}

				if (data.Message!="Ok"){
					ShowNotif('Selamat Datang Kembali!',data.msg,'top-center','bg-danger');
					$("#form-login").find('input').val('');
					$(block).unblock();
					var go	= setTimeout(function(){
						redirect(base_url+'main/kuesioner');
					},1000);
					$("#formResponden").hide();
					return;
				}

				ShowNotif('User Baru silahkan masukkan data anda!',data.Message,'top-center','bg-success');
				$(block).unblock();
				$("#formResponden").show();


			})
		})
	</script>
@endsection
