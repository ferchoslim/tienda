Vue.component('select2', {
	template: `
	<select :class="name" :id="id" :name="name">

	</select>`,
	props: ['id', 'name', 'value', 'options', 'placeholder', 'clean', 'template'],
	mounted: function() {
		var cm = this;
		$(this.$el).select2({
			placeholder: this.placeholder,
			data: this.options
		}).on('change', function(event) {
			cm.$emit('input', this.value);
		});
	},
	methods: {
	},
	watch: {
		options() {
			$(this.$el).empty();
			if (!this.clean) {
				$(this.$el).append('<option></option>');
			}
			if (this.template) {
				$(this.$el).select2({
					placeholder: this.placeholder,
					data: this.options,
					templateResult: function(r) { return $(r.template) }  
				});
			}
			else {
				$(this.$el).select2({
					placeholder: this.placeholder,
					data: this.options
				});
			}
			if (this.clean) {
				$(this.$el).trigger('change');
			}
		}
	}
});