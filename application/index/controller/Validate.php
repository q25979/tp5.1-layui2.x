<?php
namespace app\index\controller;

use think\Controller;

/*********************************
 * 作者：671
 * 时间：2018年5月18日14:33:49
 * 功能：程序验证
 *********************************/

class Validate extends Controller {
    public $user_id;    // 用户id
    public $identity;   // 用户身份 1-超级管理员 2-普通管理员

    /**
     * 继承构造函数
     */
	public function __construct() {
		parent::__construct();
	}

    /**
     * 获取账号信息
     */
	public function getIdentification() {
	    $info = cookie('identification');

	    // 账号密码逆解
	    $info['username'] = base64_decode($info['username']);
	    $info['password'] = base64_decode($info['password']);
    }
}