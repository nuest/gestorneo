<?php if($team): ?>
	
	<h2><?=$team->name?></span></h2>

	<p><?=$team->description;?></p>

	<h3><?=_('Tournaments');?></h3>

	<?php if($tournaments): ?>
		<?php $year = false; ?>
			<?php foreach($tournaments as $tournament): ?>
				<?php
					if(!$year)
					{
						echo '<h4>'.strftime('%Y', mysql_to_unix($tournament->start_date)).'</h4><ul>';
						$year = strftime('%Y', mysql_to_unix($tournament->start_date));
					} else {
						$t_year = strftime('%Y', mysql_to_unix($tournament->start_date));
						if($t_year != $year)
						{
							echo '</ul><h4>'.strftime('%Y', mysql_to_unix($tournament->start_date)).'</h4><ul>';
							$year = $t_year;
						}
					}
				?>
				<li><a href="/tournament/view/<?=$tournament->id?>"><?=$tournament->name?></a>
					 - <?=strftime('%A '.(strtoupper(substr(PHP_OS, 0, 3)) == 'WIN' ? '%#d' : '%e').' %B', mysql_to_unix($tournament->start_date))?></li>
			<?php endforeach; ?>
		</ul>
	<?php else: ?>
		<p><?=_('No tournaments for this team.');?></p>
	<?php endif; ?>
<?php else: ?>
	<p><?=_('Team not found.');?></p>
<?php endif; ?>
