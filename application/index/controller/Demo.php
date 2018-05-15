<?php
namespace app\index\controller;

use think\Controller;
use think\View;

class Demo extends Controller {

    public function index() {
        return 'test';
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
        return $this->fetch('index');
    }
}