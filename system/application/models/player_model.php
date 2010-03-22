<?php

class Player_model extends Model
{
	function get($id)
	{
		$query = $this->db->query('SELECT * FROM users WHERE id='.$id);
		
		return $query->num_rows > 0 ? $query->row() : FALSE;
	}
	
	function getAll()
	{
		$players = $this->db->query('SELECT * FROM users ORDER BY created ASC');
		
		return $players->num_rows > 0 ? $players : FALSE;
	}
	
	function getTournaments($id, $only_confirmed=false)
	{
		$sql = 'SELECT
		    UNIX_TIMESTAMP(t.date) AS u_date,
			t.*
		FROM 
			tournaments AS t,
			tournament_players AS tp
		WHERE
			t.id = tp.tid AND
			tp.pid = ? '
		. ($only_confirmed ? ' AND tp.confirmed = 1' : '') . 
		' ORDER BY
			t.date DESC';
			
		$query = $this->db->query($sql,
			array($id));
		
		return $query->num_rows > 0 ? $query : FALSE;
	}
}

?>
