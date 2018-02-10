Vue.component('input-text', {
	template: `
	<label class="field prepend-icon">
		<input 
			v-on:keyup.enter="onEnter" 
			v-on:input="onInput" 
			v-on:blur="onBlur"
			v-on:focus="onFocus"
			:id="id" type="text" 
			:value.trim="value" 
			:name="name" 
			:placeholder="placeholder" 
			class="gui-input" 
			maxlength="255">
		<b class="tooltip tip-left" v-if="tooltip">
			<em>{{tooltip}}</em>
		</b>
		<label class="field-icon">
			<i :class="icon"></i>
		</label>
	</label>
	`,
	props: ['name', 'placeholder', 'tooltip', 'icon', 'value', 'id'],
	methods: {
		onInput(event) {
			this.$emit('input', event.target.value);
		},
		onEnter(event) {
			this.$emit('enter');
		},
		onBlur(event) {
			this.$emit('blur');
		},
		onFocus(event) {
			this.$emit('focus');
		}
	}
});