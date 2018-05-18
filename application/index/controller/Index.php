<?php
namespace app\index\controller;

class Index extends Validate {

    public function index() {
        $request = request();

        echo 'domain: ' . $request->domain() . '<br/>';
        echo 'file: ' . $request->baseFile() . '<br/>';

        echo 'url: ' . $request->url() . '<br/>';
        echo '访问ip地址：' . $request->ip() . '<br/>';
        echo '请求方法：' . $request->method() . '<br/>';
    }
}
