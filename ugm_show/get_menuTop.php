
function get_menuTop(){
	global $db, $smarty;
	#撈選單資料
	$sql = "SELECT `title`,`url`,`target`
	        FROM `ugm_show_kind`
	        WHERE `kind` = 'menuTop' AND `enable` = '1'
	        order by `sort` 
	";//die($sql);	 
	 
	$result = $db->query($sql) or redirect_header("", 3000,  $db->error."\n".$sql,true);
	 
	$rows=array();
	while($row = $result->fetch_assoc()){
	  #過濾資料
	  $row['title'] = htmlspecialchars($row['title'], ENT_QUOTES); 
	  $row['url'] = htmlspecialchars($row['url'], ENT_QUOTES);    
	  $row['target'] = intval($row['target']);
	 
	  $rows[] = $row;
	}
	$smarty->assign("menuTop", $rows);//送至樣板
}