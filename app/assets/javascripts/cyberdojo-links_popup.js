/*jsl:option explicit*/

var cyberDojo = (function($cd, $j) {

  $cd.linksPopup = function() {

    var ninetySeven =
      $cd.divPanel(
        '<a href="http://programmer.97things.oreilly.com/wiki/index.php/Contributions_Appearing_in_the_Book">' +
        '97 Things Every Programmer Should Know' +
        '</a>' +
        '<br/>' +
        '#22 ' +
        '<a href="http://jonjagger.blogspot.com/2011/02/deliberate-practice.html">' +
        'Do More Deliberate Practice' +
        '</a>'
      );

    var video =
      $cd.divPanel(
        '<a href="http://vimeo.com/15104374">' +
        'Video of me doing the Roman Numerals kata in Ruby' +
        '</a>'
      );

    var map =
      $cd.divPanel(
        '<a href="http://www.MasteringAgilePractice.com">' +
        'http://www.MasteringAgilePractice.com' +
        '</a>' 
      );

    var map =
      $cd.divPanel(
        '<a href="http://www.MasteringAgilePractice.com">' +
        'http://www.MasteringAgilePractice.com' +
        '</a>' 
      );
      
    var accu =
      $cd.divPanel(
        '<a href="http://accu.org/index.php/conferences/accu_conference_2012">' +
          '<img src="/images/accu_button.gif" ' +
               'style="float:left; border: 3px solid;" ' + 
               'width="150" ' +
               'height="75" ' +
               'title="ACCU"/>' +
        '</a>' +
        '&nbsp;ACCU is a superb non-profit organisation<br/>' +
        '&nbsp;of programmers who <em>care</em> about<br/>' +
        '&nbsp;professionalism in programming.'
      );
      
    var grid = $j($cd.makeTable(ninetySeven,video,map,accu));
      
    $cd.dialogPopup(grid.html(), 650, 'links');
  };

  return $cd;
})(cyberDojo || {}, $);


