<?php
namespace app\index\controller;
use app\index\controller\Common;
class Contact extends Common
{
  public function index()
  {
    return $this-> fetch('contact/contact');
  }
}
