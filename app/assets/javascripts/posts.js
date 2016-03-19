$(document).ready(function() {
	$('#subtitle').hide();

	$('#resource-checkbox').click(function() {
			$('#subtitle').toggle(this.checked);
	});
});