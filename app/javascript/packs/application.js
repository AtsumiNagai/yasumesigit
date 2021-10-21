// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"

import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()

ActiveStorage.start()

require('jquery')

import { Hoge as Fuga }from "./test";
console.log( Fuga ); //hoge

$(function() {
  $(document).on('click', '#back a', function(event){
    $('body, html').animate({
      scrollTop:0
    }, 800);
    event.preventDefault();
  });
});




$(function() {
  var nav = $('.nav');
  //表示位置
  var navTop = nav.offset().top+200;
  //ナビゲーションの高さ（シャドウの分だけ足してます）
  var navHeight = nav.height()+10;
  var showFlag = false;
  nav.css('top', -navHeight+'px');
  //ナビゲーションの位置まできたら表示
  $(window).scroll(function () {
      var winTop = $(this).scrollTop();
      if (winTop >= navTop) {
          if (showFlag == false) {
              showFlag = true;
              nav
                  .addClass('fixed')
                  .stop().animate({'top' : '0px'}, 200);
          }
      } else if (winTop <= navTop) {
          if (showFlag) {
              showFlag = false;
              nav.stop().animate({'top' : -navHeight+'px'}, 200, function(){
                  nav.removeClass('fixed');
              });
          }
      }
  });
});


$('#hoge').hover(
  function(){  
      //マウスオーバー処理
  },
  function(){
      //マウスアウト処理
  }
);


$(function() {
  var nav = $('.nav');    
  var navTop = nav.offset().top;
  $(window).scroll(function () {
      var winTop = $(this).scrollTop();
      if (winTop >= navTop) {
          nav.addClass('fixed')
      } else if (winTop <= navTop) {
          nav.removeClass('fixed')
      }
  });
  //サブナビゲーション
  $('li', nav).hover(function(){
      $('ul',this).slideDown('fast');
  },
  function(){
      $('ul',this).slideUp('fast');
  });
});

$(function() {
  var showFlag = false;
  var topBtn = $('#page-top');    
  topBtn.css('bottom', '-100px');
  var showFlag = false;
  //スクロールが100に達したらボタン表示
  $(window).scroll(function () {
      if ($(this).scrollTop() > 100) {
          if (showFlag == false) {
              showFlag = true;
              topBtn.stop().animate({'bottom' : '20px'}, 200); 
          }
      } else {
          if (showFlag) {
              showFlag = false;
              topBtn.stop().animate({'bottom' : '-100px'}, 200); 
          }
      }
  });
  //スクロールしてトップ
  topBtn.click(function () {
      $('body,html').animate({
          scrollTop: 0
      }, 500);
      return false;
  });
});


$(window).on('load',function(){
    $("#loading").delay(1500).fadeOut('slow');//ローディング画面を1.5秒（1500ms）待機してからフェードアウト
    $("#loading_box").delay(1200).fadeOut('slow');//ローディングテキストを1.2秒（1200ms）待機してからフェードアウト
  });