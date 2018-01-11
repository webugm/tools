###########################################################
#  撈輪播圖資料
###########################################################
function get_sliderHome() {
  global $db, $smarty; 
  #撈商品資料
  $sql = "select b.`file_name`,b.`sub_dir`
          from `ugm_show_kind` as a
          left join `ugm_show_files_center` as b on a.sn=b.`col_sn` and a.`kind` = b.`col_name`
          where a.`enable`='1' and a.`kind`='sliderHome'
          order by a.`sort` 
  ";//die($sql);
  $result = $db->query($sql) or redirect_header("", 3000,  $db->error."\n".$sql,true); 
  $rows=[];
  while($row = $result->fetch_assoc()){
    #過濾資料
    $row['file_name'] = htmlspecialchars($row['file_name'], ENT_QUOTES);    
    $row['sub_dir'] = htmlspecialchars($row['sub_dir'], ENT_QUOTES); 
    $row['pic'] = "";
    if($row['file_name']){
      $row['pic'] = WEB_URL."/uploads/{$row['sub_dir']}/" . $row['file_name'];
      $rows[] = "'".$row['pic']."'";
    }    
  }
  #將陣列拆解成字串
  $sliderHome = implode(",",$rows);
  $smarty->assign("sliderHome", $sliderHome);//送至樣板(<{$sliderHome}>
}
