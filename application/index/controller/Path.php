<?php
namespace app\index\controller;
use app\index\controller\Common;
class Path extends Common
{
  public function index()
  {
    return $this-> fetch('path/path');
  }
}
