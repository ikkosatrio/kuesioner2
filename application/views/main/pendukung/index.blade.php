@extends('main.template')
@section('title')
Dashboard - Administrasi
@endsection
@section('corejs')
	<script type="text/javascript" src="{{base_url()}}assets/js/plugins/tables/datatables/datatables.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}assets/js/plugins/forms/selects/select2.min.js"></script>
	<script type="text/javascript" src="{{base_url()}}assets/js/pages/datatables_basic.js"></script>

    {{--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>--}}
    <script src="{{base_url()}}assets/getorgchart/getorgchart.js"></script>
    <link href="{{base_url()}}assets/getorgchart/getorgchart.css" rel="stylesheet" />



@endsection
@section('content')

    <style type="text/css">
        html, body {
            margin: 0px;
            padding: 0px;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }

        #people {
            width: 100%;
            height: 100%;
        }
    </style>

	<div class="content-wrapper">

				<!-- Page header -->
				<div class="page-header page-header-default">
					<div class="breadcrumb-line">
						<ul class="breadcrumb">
							<li><a href="{{base_url('superuser')}}"><i class="icon-home2 position-left"></i> Home</a></li>
							<li class="active"><a href="#">Struktur</a></li>
						</ul>
					</div>
				</div>
				<!-- /page header -->


				<!-- Content area -->
				<div class="content">

					<!-- Basic datatable -->
					<div class="panel panel-flat">
                        <embed src="{{base_url()}}assets/dokumen/Data-pendukung.pdf" width="100%" height="1000px" alt="pdf" pluginspage="http://www.adobe.com/products/acrobat/readstep2.html">

					</div>
					<!-- /basic datatable -->					

				</div>
				<!-- /content area -->

			</div>

@endsection