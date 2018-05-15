<?php
namespace think;

// [ PHP版本检查 ]
header("Content-type: text/html; charset=utf-8");
if (version_compare(PHP_VERSION, '5.6', '<')) {
    die('PHP版本过低，最少需要PHP5.6，请升级PHP版本！');
}

// 加载框架引导文件
require __DIR__ . '/thinkphp/base.php';

Container::get('app')->run()->send();