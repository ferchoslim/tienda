<html>
<body>
	<div class="email-container" style="font-family: Verdana; max-width: 500px; margin: 0 auto;">
		<img src="{{ asset('/images/email/emailbanner.jpg') }}" style="width: 100%;">
		<p style="max-width: 500px;text-align: justify; text-justify: inter-word;">
		Dale Click a este Link: {{ url('resetear/'.$token) }}para resetear tu Contraseña.	
		</p>
		<div class="email-footer">
			<p style="color: #ff8400;">Siguenos:</p>
			<table width="100%" style="text-align: center;max-width: 500px;">
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