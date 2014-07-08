---
title: Current Members
---

<script type="text/javascript">
    $(function($) {
      var json = "http://api.meetup.com/2/profiles?group_id=8102912&order=visited&offset=0&format=json&page=200&fields=membership_dues&sig_id=70219012&sig=0f85d99b4ec83af7df850e456290db7ebe9c5b62&callback=?";
      var members = $.getJSON(json,function(x) {
        console.log(x.results);
        var paid_members = _.filter(x.results, function(m) {return m.membership_dues.period_status == "paid" || m.membership_dues.exempt == true; });
        _.forEach(paid_members, function(m) {
          var s = "<div>" + 
          var o = $("<div>").append(m.name);
          $("div.main-content.container").append(o);
        });
      });
    });
</script>
