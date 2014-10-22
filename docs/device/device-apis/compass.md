---
layout: docs_device
header_title: Compass
header_sub_title: Device compass.
section_id: device-apis
subsection_id: compass
methods:
  - name: watchHeading
  - name: getHeading
---
{% assign methods = site.data.supersonic.device.compass %}

<section class="docs-section" id="{{page.subsection_id}}">

# {{page.header_title}}

{% include api_bentry.md methods=methods %}

</section>