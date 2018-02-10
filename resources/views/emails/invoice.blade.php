<html>
<body>
	<div class="email-container" style="font-family: Verdana; max-width: 800px; margin: 0 auto;">
		<img src="{{ asset('/images/logo3.png') }}">
		<p>Hola, <strong>{{ ucwords($fullname) }}</strong> Gracias por tu Compra!</p>
		<p><strong>Factura #{{ $invoice->id }}</strong></p>
		@foreach($products as $product)
		<p>
			<small>codigo: {{ $product['id'] }}</small><br>
			<strong>
				{{ $product['quantity'] }}x {{ $product['name'] }} por ${{ number_format($product['sale_price']) }}
			</strong>
		</p>
		@endforeach
		<h2>Total: ${{ number_format($sm->total) }}</h2>
		<div class="email-footer">
			<p style="color: #ff8400;">Siguenos:</p>
			<table width="100%" style="text-align: center;max-width: 800px;">
				<tr>
					<td>
						<a href="https://www.facebook.com/{{ $sm->sm_facebook }}" style="color: white; text-decoration: none;">
							<img src="{{ asset('/images/email/emailfb.png') }}">
						</a>
					</td>
					<td>
						<a href="https://www.instagram.com/{{ $sm->sm_instagram }}" style="color: white; text-decoration: none;">
							<img src="{{ asset('/images/email/emailins.png') }}">
						</a>
					</td>
					<td>
						<a href="https://www.twitter.com/{{ $sm->sm_twitter }}" style="color: white; text-decoration: none;">
							<img src="{{ asset('/images/email/emailtw.png') }}">
						</a>
					</td>
				</tr>
				<tr>
					<td colspan="3">
						<a href="https://www.celuclock.co" style="color: #ff8400; text-decoration: none;"><strong>https://www.celuclock.co</strong></a>
					</td>
				</tr>
			</table>
			<img style="max-width: 800px; width: 100%;" src="{{ asset('/images/email/emailfooter.jpg') }}">
		</div>
	</div>
</body>
</html>