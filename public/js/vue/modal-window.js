Vue.component('modal-window', {
	template: `
	<div :id="id" class="popup-basic admin-form theme-primary mfp-with-anim mfp-hide">
		<div class="panel panel-system">
			<div class="panel-heading">
				<span class="panel-title">
					<i :class="icon"></i>
					{{ title }}
				</span>
			</div>
			<form :id="name" onsubmit="return false;" enctype="multipart/form-data">
				<div class="panel-body p25">
					<div class="section">
						<slot name="1"></slot>
					</div>
					<div class="section">
						<slot name="2"></slot>
					</div>
					<div class="section">
						<slot name="3"></slot>
					</div>
				</div>
				<div class="panel-footer text-right">
					<button 
						v-on:click.prevent="onSave()" 
						type="button" 
						:id="id+'BtnSave'" 
						class="btn btn-xs btn-primary ladda-button" 
						data-style="expand-left">
						<span class="ladda-label">GUARDAR</span>
					</button>
					<button 
						v-on:click.prevent="onSave(true)" 
						type="button" 
						:id="id+'BtnSaveClose'" 
						class="btn btn-xs btn-primary ladda-button" 
						data-style="expand-left">
						<span class="ladda-label">GUARDAR & CERRAR</span>
					</button>
				</div>
				<input type="hidden" name="_token" :value="token">
			</form>
		</div>
	</div>
	`,
	props: ['id', 'icon', 'title', 'name', 'token'],
	methods: {
		onSave(close) {
			this.$emit('save', close);
		}
	}
});