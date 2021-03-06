<!DOCTYPE html>
<html>
	<head>
    <meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<title><?=$title?></title>
		<link rel="icon" type="image/png" href="<?=base_url();?>static/images/favicon.ico">

		<link rel="stylesheet" type="text/css" href="<?=base_url();?>static/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="<?=base_url();?>static/css/default.css" />
		<link href="<?=base_url();?>static/css/flick/jquery-ui-1.10.0.custom.min.css" type="text/css" rel="stylesheet" />

		<script src="<?=base_url();?>static/javascript/jquery.min.js"></script>
		<script src="<?=base_url();?>static/javascript/jquery-migrate-1.0.0.js"></script>
		<script src="<?=base_url();?>static/javascript/jquery-ui-1.10.0.custom.min.js"></script>
		<script src="<?=base_url();?>static/javascript/jquery.cookie.js"></script>
		<script src="<?=base_url();?>static/javascript/jquery.ba-hashchange.min.js"></script>
		<script src="<?=base_url();?>static/javascript/jquery.tablesorter.min.js"></script>
		<script src="<?=base_url();?>static/javascript/jquery.ui.datepicker-es.js"></script>

		<script src="<?=base_url();?>static/javascript/custom.js"></script>

		<script src="<?=base_url();?>static/javascript/bootstrap.min.js"></script>
<?php for($i=0; isset($extra_js_files) && $i<count($extra_js_files); $i++) : ?>
		<script src="<?=$extra_js_files[$i]?>"></script>
<?php endfor; ?>

		<script>
			$(document).ready(function() {
				$('[name="language_chooser"]').change(function(e) {
					$.cookie(
						'language',
						$(e.target).val(),
						{
							path: '/',
							domain: window.location.host
						}
					);

					location.reload();
				});
			});
		</script>
	</head>

	<body>
		<?php $this->load->view('navbar'); ?>

		<div class="container">

			<div class="content">
				<div class="row">
					<div class="span12">
						<?php if($breadcrumbs): ?>
							<ul class="breadcrumb">
								<?php foreach($breadcrumbs as $k => $bc): ?>
									<li>
										<a href="<?=$bc['url'];?>"><?=$bc['text'];?></a>
										<?php if($k < (count($breadcrumbs) - 1)): ?>
											<span class="divider">/</span>
										<?php endif; ?>
									</li>
								<?php endforeach; ?>
							</ul>
						<?php endif; ?>

						<?php $this->load->view($content_view); ?>
					</div>
				</div>
			</div>

			<footer>
				<?php $this->load->view('footer'); ?>
			</footer>
		</div>
	</body>
</html>
