<html>
<body>
	<div class="email-container" style="font-family: Verdana; max-width: 500px; margin: 0 auto;">
		<img src="{{ asset('/images/email/emailbanner.jpg') }}" style="width: 100%;">
		<p>Hola, <strong>{{ ucwords($fullname) }}</strong></p>
		<p style="max-width: 500px;text-align: justify; text-justify: inter-word;">Te damos nuestra más cariñosa bienvenida y sabemos que disfrutaras mucho comprando con nosotros ya que día a día nos preocupamos por traerte las mejores promociones y los mejores productos así también los mejores descuentos.</p>
		<div class="email-footer">
			<p style="color: #ff8400;">Siguenos:</p>
			<table width="100%" style="text-align: center;max-width: 500px;">
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
			<img style="width: 100%;" src="{{ asset('/images/email/emailfooter.jpg') }}">
		</div>
	</div>
</body>
</html>