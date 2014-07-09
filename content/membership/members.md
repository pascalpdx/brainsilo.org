---
title: Current Members
---

<script type="text/javascript">
    $(function($) {
      var json = "http://api.meetup.com/2/profiles?order=name&group_urlname=brainsilo&offset=0&photo-host=public&format=json&page=1000&fields=membership_dues&sig_id=70219012&sig=95901ae424495d4bf3440feeefc9ece471fae86d&callback=?";
      var members = $.getJSON(json,function(x) {
        console.log(x.results);
        var paid_members = _.filter(x.results, function(m) {return m.membership_dues.period_status == "paid" || m.membership_dues.exempt == true; });
        var p = $('<div id="paid_members" class="row">');
        $("div.main-content.container").append(p);
        _.forEach(paid_members, function(m) {
          var o = $('<div class="col-md-3 col-sm-4 col-xs-6">');
          o.append('<a href="' + m.profile_url + '" target="_blank" class="thumbnail"><div class="image"><img src="' + m.photo_url + '" class="img img-responsive full-width"></div><div class="caption">' + m.name + '</div></a>');
          p.append(o)
        });
      });
    });
</script>
