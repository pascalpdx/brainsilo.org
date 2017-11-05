---
title: Current Members
---

<script type="text/javascript">
    $(function($) {
      var json = "https://api.meetup.com/2/profiles?offset=0&format=json&group_urlname=pascalhackerspace&photo-host=public&page=1000&fields=membership_dues&order=name&sig_id=70219012&sig=eda562bb1c573babbfddf272ec9afbe99c064ce3";
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
