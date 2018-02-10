<!DOCTYPE html>
<html lang="en">
  <head>
    <title>CeluClock - @yield('title')</title>
    <meta name="format-detection" content="telephone=no" />
    <meta name="csrf_token" content="{{ csrf_token() }}" />
    <meta name="viewport" content="width=device-width, height=device-height, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <link rel="icon" href="{{ asset('images/favicon2.ico') }}" type="image/x-icon">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/admin-forms.min.css') }}">
    <link href="//fonts.googleapis.com/css?family=Ubuntu" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/jquery-ui.min.css') }}?<?php echo time(); ?>">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/animate.min.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/ladda-themeless.min.css') }}?<?php echo time(); ?>">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/theme.css') }}?<?php echo time(); ?>">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/magnific-popup.css') }}">
    <link rel="stylesheet" type="text/css" href="{{ asset('css/toastr.min.css') }}">
     
    <link rel="stylesheet" type="text/css" href="{{ asset('css/select2.min.css') }}">  
    <link rel="stylesheet" type="text/css" href="{{ asset('css/core.css') }}"> 
    <link rel="stylesheet" type="text/css" href="{{ asset('css/PNotifyBrightTheme.css') }}">
    <style>
        .ajax-modal {
            display: none;
            position:   fixed;
            z-index:    1000;
            top:        0;
            left:       0;
            height:     100%;
            width:      100%;
            background: rgba( 96, 96, 96, .5 ) 
                        url('{{ asset('images/ajax-loader.svg') }}') 
                        50% 50% 
                        no-repeat;
        }
        body.loading {
            overflow: hidden;   
        }
        body.loading .ajax-modal {
            display: block;
        }
    </style>
  </head>
  <body class="dashboard-page">
    <div class="ajax-modal"></div>
    <div id="main">
    	@section('content')
    	@show
    </div>

    <!-- core scripts-->
    <script src="{{ asset('js/core.min.js') }}"></script>
    <script src="{{ asset('js/select2.full.min.js') }}"></script>
    <script src="{{ asset('js/jquery.magnific-popup.min.js') }}"></script>
    <!-- Theme Javascript-->
    <script src="{{ asset('js/main.js') }}"></script>
    <script src="{{ asset('js/utility.js') }}"></script>
    
    <script src="{{ asset('js/toastr.min.js') }}"></script>
    <script src="{{ asset('js/PNotify.js') }}"></script>
    <script src="{{ asset('js/PNotifyStyleMaterial.js') }}"></script>
    <script src="{{ asset('js/vue.js') }}"></script>
    <script src="{{ asset('js/vee-validate.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/lodash@4.17.4/lodash.min.js"></script>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <!-- Widget Javascript-->
    <script type="text/javascript">
    function number_format(number, decimals, dec_point, thousands_sep) {
        number = (number + '')
        .replace(/[^0-9+\-Ee.]/g, '');
        var n = !isFinite(+number) ? 0 : +number,
        prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
        sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
        dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
        s = '',
        toFixedFix = function(n, prec) {
            var k = Math.pow(10, prec);
            return '' + (Math.round(n * k) / k)
            .toFixed(prec);
        };
        // Fix for IE parseFloat(0.55).toFixed(0) = 0;
        s = (prec ? toFixedFix(n, prec) : '' + Math.round(n))
        .split('.');
        if (s[0].length > 3) {
            s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
        }
        if ((s[1] || '')
            .length < prec) {
                s[1] = s[1] || '';
                s[1] += new Array(prec - s[1].length + 1)
                .join('0');
        }
        return '$'+s.join(dec);
    }
    $(function () {
        "use strict";
        Core.init();
    });
    </script>
    @section('script')
    @show
    <script>
        /*$(document).on({
            ajaxStart: function() { $("body").addClass("loading");    },
            ajaxStop: function() { $("body").removeClass("loading"); }    
        });*/
    </script>
  </body>
</html>