<?php
class ShakeAction extends UserAction{
    public $shake_model;
    public $token_where;
    public $keyword_model;
    public function _initialize(){
        parent :: _initialize();
        $this -> canUseFunction('shake');
        $this -> shake_model = M('Shake');
        $this -> token_where['token'] = $this -> token;
        $this -> keyword_model = M('Keyword');
    }
    public function index(){
        $count = $this -> shake_model -> where($this -> token_where) -> count();
        $page = new Page($count, 20);
        $info = $this -> shake_model -> where($this -> token_where) -> order('id desc') -> limit($page -> firstRow . ',' . $page -> listRows) -> select();
        $this -> assign('page', $page -> show());
        $this -> assign('info', $info);
        $this -> display();
    }
    public function add(){
        if (IS_POST){
            if (!trim($_POST['title'])){
                $this -> error('请填写标题');
            }
            $fileds = array('title', 'keyword', 'thumb', 'intro', 'background', 'backgroundmusic', 'music', 'rule', 'info', 'qrcode');
            $row = array();
            foreach ($fileds as $f){
                $row[$f] = $this -> _post($f);
            }
            $intFields = array('clienttime', 'showtime', 'starttime', 'endshake', 'shownum', 'shaketype', 'isopen', 'usetime', 'isact');
            foreach ($intFields as $f){
                $row[$f] = intval($this -> _post($f));
            }
            $row['token'] = $this -> token;
            $row['time'] = time();
            $id = $this -> shake_model -> add($row);
            if ($id){
                $this -> keyword_model -> add(array('module' => 'Shake', 'pid' => $id, 'token' => $this -> token, 'keyword' => $row['keyword']));
            }
            $this -> success('添加成功', U('Shake/index', array('token' => session('token'))));
        }else{
            $info = array();
            $info['shaketype'] = 1;
            $info['isopen'] = 1;
            $info['clienttime'] = 3;
            $info['showtime'] = 3;
            $info['starttime'] = 3;
            $info['endshake'] = 600;
            $info['shownum'] = 10;
            $info['pass'] = '';
            $this -> assign('info', $info);
            $this -> display('set');
        }
    }
    public function edit(){
        if (IS_POST){
            if (!trim($_POST['title'])){
                $this -> error('请填写标题');
            }
            $fileds = array('title', 'keyword', 'thumb', 'intro', 'background', 'backgroundmusic', 'music', 'rule', 'info', 'qrcode');
            $row = array();
            foreach ($fileds as $f){
                $row[$f] = $this -> _post($f);
            }
            $intFields = array('clienttime', 'showtime', 'starttime', 'endshake', 'shownum', 'shaketype', 'isopen', 'usetime', 'isact');
            foreach ($intFields as $f){
                $row[$f] = intval($this -> _post($f));
            }
            $updateWhere = array();
            $updateWhere['token'] = $this -> token;
            $updateWhere['id'] = intval($_POST['id']);
            $rt = $this -> shake_model -> where($updateWhere) -> save($row);
            if ($rt){
                $this -> keyword_model -> where(array('module' => 'Shake', 'pid' => $updateWhere['id'])) -> save(array('keyword' => $row['keyword']));
            }
            $this -> success('修改成功', U('Shake/index', array('token' => session('token'))));
        }else{
            $where['token'] = $this -> token;
            $where['id'] = $this -> _get('id', 'intval');
            $info = $this -> shake_model -> where($where) -> find();
            $this -> assign('info', $info);
            $this -> display('set');
        }
    }
    public function del(){
        $this -> token_where['id'] = intval($_GET['id']);
        $rt = $this -> shake_model -> where($this -> token_where) -> delete();
        if ($rt){
            $this -> keyword_model -> where(array('module' => 'Shake', 'pid' => $this -> token_where['id'])) -> delete();
            $this -> success('操作成功', U(MODULE_NAME . '/index'));
        }
    }
    public function screen(){
        $this -> token_where['isopen'] = 1;
        $info = $this -> shake_model -> where($this -> token_where) -> find();
        $this -> assign('info', $info);
        $this -> display();
    }
    public function startShake(){
        $result = $this -> shake_model -> where(array('token' => $this -> _post('token'), 'id' => intval($this -> _post('id')))) -> save(array('isact' => '1'));
    }
    public function getConnectNum(){
        $result = M('Shake_rt') -> where(array('token' => $this -> _post('token'), 'shakeid' => intval($_POST['id']))) -> count();
        echo $result;
    }
    public function getCount(){
        $result = M('Shake_rt') -> where(array('token' => $this -> _post('token'), 'shakeid' => intval($this -> _post('id')))) -> limit(0, 80) -> order('count desc') -> select();
        $js = json_encode($result);
        echo $js;
    }
}
?>