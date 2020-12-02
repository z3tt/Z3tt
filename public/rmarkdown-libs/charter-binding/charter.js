HTMLWidgets.widget({

  name: 'charter',

  type: 'output',

  factory: function(el, width, height) {

    var ctx;
    var chart;

    return {

      renderValue: function(x) {

        function click(e){
          if(HTMLWidgets.shinyMode){
            var clicky = [];
            chart.getElementsAtEvent(e).forEach(function(x){
              clicky.push(x["_index"]);
            })

            Shiny.onInputChange(el.id + '_clicked:charterParse', clicky);
          }
        }

        function hover(e){
          if(HTMLWidgets.shinyMode){
            var hovery = [];
            chart.getElementsAtEvent(e).forEach(function(x){
              hovery.push(x["_index"]);
            })

            Shiny.onInputChange(el.id + '_hovered:charterParse', hovery);
          }
        }

        var canvas = document.getElementById(el.id + "-canvas");
        ctx = canvas.getContext('2d');
        canvas.style.height = canvas.parentNode.offsetHeight + 'px';
        canvas.style.width = canvas.parentNode.offsetWidth + 'px';

        if(x.events_capture){
          if(x.events_capture.includes("click")){
            x.opts.options.onClick = click;
          }

          if(x.events_capture.includes("hover")){
            x.opts.options.onHover = hover;
          }
        }
        chart = new Chart(ctx, x.opts);

      },

      getChart: function(){
        return chart;
      },

      resize: function(width, height) {

        if(chart){
          chart.resize();
        }

      }

    };
  }
});

function get_c_chart(id){
  var obj = HTMLWidgets.find("#" + id);

  var c;

  if(typeof obj != "undefined")
    c = obj.getChart();
  
  return c;
}

if(HTMLWidgets.shinyMode){

  Shiny.addCustomMessageHandler('charter-add', function(msg){
    var chart = get_c_chart(msg.id);

    if(typeof chart != "undefined"){
      msg.serie.forEach(function(s){
        chart.data.datasets.push(s);
      })
      if(msg.update)
        chart.update();
    }
  })

  Shiny.addCustomMessageHandler('charter-update', function(msg){
    var chart = get_c_chart(msg.id);

    if(typeof chart != "undefined"){
      chart.update(msg.opts);
    }
  })

}