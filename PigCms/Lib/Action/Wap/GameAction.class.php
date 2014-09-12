<?php
class GameAction extends BaseAction{
    public function index(){
       
        
        $token		= $this->_get('token');
		$wecha_id	= $this->_get('wecha_id');
		$id 		= $this->_get('id');

		
		$info=M('gamereply_info')->where(array('token'=>$token))->find();
		$this->assign('info',$info);

      //  $this->assign('isAndroid',isAndroid());
        $this->display();
    }
    
}
    
?>