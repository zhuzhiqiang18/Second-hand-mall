<!-- **********************           选择框多选                                    *********************************-->
$(document).ready(function() {
	$(function() {
		$('[data-type="checkall"]').click(function() {
			var str = '';
			if ($(this).prop("checked")) {
				$.each($('[data-type="checkbox"]'), function(i) {
					str += $(this).attr('data-value') + ',';
				});
				$('[data-type="checkbox"]').prop('checked', true);
			} else {
				$('[data-type="checkbox"]').prop('checked', false);
			}
			$(".txtValue").val(str);
		});
	});
});

function link() {
	javascript: window.location.href = 'Modify-pass.html';
}


function Addcolumn(){
	javascript: window.location.href = 'Add-column.html';
}


function modify(){
	javascript: window.location.href = 'Modify-column.html';
}

function searchpg(){
	javascript: window.location.href = 'Search-page.html';
}

function confirmSolds(){
	javascript: window.location.href = 'Confirm-receipt.html';
}

function confirmaAddre(){
	javascript: window.location.href = 'Confirm-shipment.html';
}
