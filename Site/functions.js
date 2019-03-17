/* função que escurece a área e coloca o texto por cima */

$(".caixa").hover(
    function(){
            $(".info", this).css("display", "block");
      }, function(){
            $(".info", this).css("display", "none");
  });
