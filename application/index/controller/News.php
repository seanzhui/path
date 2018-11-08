<?php
namespace app\index\controller;
use app\index\controller\Common;
class News extends Common
{
  public function index()
  {
    return $this-> fetch('news/news');
  }
}
