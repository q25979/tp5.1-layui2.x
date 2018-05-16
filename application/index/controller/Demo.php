<?php
namespace app\index\controller;

use think\Controller;
use think\View;

class Demo extends Controller {

    public function index() {
        return $this->fetch('index');
    }

    public function index1() {
        return $this->fetch();
    }

    public function index2() {
        return $this->fetch();
    }

    public function index3() {
        return $this->fetch();
    }

    public function index4() {
        return $this->fetch();
    }

    public function test() {
        $data = input('get.');

        // 指定json数据输出
        return json($data);
    }

    public function con() {
        dump(\Config::get());
    }

    // 常量
    public function constant() {
        dump(\Env::get());
        echo '<br />';

        echo test();
    }

    // view
    public function view() {
        // dump(\Config::get());
        $this->assign('name','thinkphp');
        return $this->fetch('view');
    }
}