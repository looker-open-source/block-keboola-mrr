- dashboard: sales_overview_salesforce
  title: Sales Overview Salesforce
  layout: newspaper
  elements:
  - name: Leads & Contacts
    type: text
    title_text: Leads & Contacts
    row: 0
    col: 0
    width: 24
    height: 2
  - name: Opportunities
    type: text
    title_text: Opportunities
    row: 11
    col: 0
    width: 24
    height: 2
  - name: Contracts
    type: text
    title_text: Contracts
    row: 40
    col: 0
    width: 24
    height: 2
  - title: New Leads (Total)
    name: New Leads (Total)
    model: salesforce_mrr_demo
    explore: contact
    type: single_value
    fields: [contact.count]
    filters:
      contact.contact_type: Lead
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - contact.count",
            id: " - contact.count", name: Contact}, {axisId: Direct - contact.count,
            id: Direct - contact.count, name: Direct}, {axisId: Employee Referral
              - contact.count, id: Employee Referral - contact.count, name: Employee
              Referral}, {axisId: Event - contact.count, id: Event - contact.count,
            name: Event}, {axisId: EventBrite - contact.count, id: EventBrite - contact.count,
            name: EventBrite}, {axisId: gmail - contact.count, id: gmail - contact.count,
            name: gmail}, {axisId: Inbound - contact.count, id: Inbound - contact.count,
            name: Inbound}, {axisId: Mailchimp - contact.count, id: Mailchimp - contact.count,
            name: Mailchimp}, {axisId: Other - contact.count, id: Other - contact.count,
            name: Other}, {axisId: Partner - contact.count, id: Partner - contact.count,
            name: Partner}, {axisId: Zoominfo - contact.count, id: Zoominfo - contact.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: contact.date_created_date
      Lead Source: contact.lead_source
    row: 2
    col: 0
    width: 12
    height: 2
  - title: New Leads
    name: New Leads
    model: salesforce_mrr_demo
    explore: contact
    type: looker_column
    fields: [contact.date_created_month, contact.lead_source, contact.count]
    pivots: [contact.lead_source]
    fill_fields: [contact.date_created_month]
    filters:
      contact.contact_type: Lead
    sorts: [contact.date_created_month desc, contact.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - contact.count",
            id: " - contact.count", name: Contact}, {axisId: Direct - contact.count,
            id: Direct - contact.count, name: Direct}, {axisId: Employee Referral
              - contact.count, id: Employee Referral - contact.count, name: Employee
              Referral}, {axisId: Event - contact.count, id: Event - contact.count,
            name: Event}, {axisId: EventBrite - contact.count, id: EventBrite - contact.count,
            name: EventBrite}, {axisId: gmail - contact.count, id: gmail - contact.count,
            name: gmail}, {axisId: Inbound - contact.count, id: Inbound - contact.count,
            name: Inbound}, {axisId: Mailchimp - contact.count, id: Mailchimp - contact.count,
            name: Mailchimp}, {axisId: Other - contact.count, id: Other - contact.count,
            name: Other}, {axisId: Partner - contact.count, id: Partner - contact.count,
            name: Partner}, {axisId: Zoominfo - contact.count, id: Zoominfo - contact.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: contact.date_created_date
      Lead Source: contact.lead_source
    row: 4
    col: 0
    width: 12
    height: 7
  - title: New Opportunities
    name: New Opportunities
    model: salesforce_mrr_demo
    explore: opportunity
    type: looker_column
    fields: [opportunity.count, opportunity.lead_source, opportunity.created_month]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.created_month]
    sorts: [opportunity.created_month desc, opportunity.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.created_date
      Lead Source: opportunity.lead_source
    row: 15
    col: 0
    width: 12
    height: 7
  - title: New Opportunities (Total)
    name: New Opportunities (Total)
    model: salesforce_mrr_demo
    explore: opportunity
    type: single_value
    fields: [opportunity.count]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.created_date
      Lead Source: opportunity.lead_source
    row: 13
    col: 0
    width: 12
    height: 2
  - title: New Opportunities Value (Total)
    name: New Opportunities Value (Total)
    model: salesforce_mrr_demo
    explore: opportunity
    type: single_value
    fields: [opportunity.opportunity_value]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.created_date
      Lead Source: opportunity.lead_source
    row: 13
    col: 12
    width: 12
    height: 2
  - title: New Opportunities Value
    name: New Opportunities Value
    model: salesforce_mrr_demo
    explore: opportunity
    type: looker_column
    fields: [opportunity.lead_source, opportunity.created_month, opportunity.opportunity_value]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.created_month]
    sorts: [opportunity.created_month desc, opportunity.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.created_date
      Lead Source: opportunity.lead_source
    row: 15
    col: 12
    width: 12
    height: 7
  - title: New Contacts (Total)
    name: New Contacts (Total)
    model: salesforce_mrr_demo
    explore: contact
    type: single_value
    fields: [contact.count]
    filters:
      contact.contact_type: Contact
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - contact.count",
            id: " - contact.count", name: Contact}, {axisId: Direct - contact.count,
            id: Direct - contact.count, name: Direct}, {axisId: Employee Referral
              - contact.count, id: Employee Referral - contact.count, name: Employee
              Referral}, {axisId: Event - contact.count, id: Event - contact.count,
            name: Event}, {axisId: EventBrite - contact.count, id: EventBrite - contact.count,
            name: EventBrite}, {axisId: gmail - contact.count, id: gmail - contact.count,
            name: gmail}, {axisId: Inbound - contact.count, id: Inbound - contact.count,
            name: Inbound}, {axisId: Mailchimp - contact.count, id: Mailchimp - contact.count,
            name: Mailchimp}, {axisId: Other - contact.count, id: Other - contact.count,
            name: Other}, {axisId: Partner - contact.count, id: Partner - contact.count,
            name: Partner}, {axisId: Zoominfo - contact.count, id: Zoominfo - contact.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: contact.date_created_date
      Lead Source: contact.lead_source
    row: 2
    col: 12
    width: 12
    height: 2
  - title: Won Opportunities (Total)
    name: Won Opportunities (Total)
    model: salesforce_mrr_demo
    explore: opportunity
    type: single_value
    fields: [opportunity.count]
    filters:
      opportunity.is_won: 'Yes'
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.close_date
      Lead Source: opportunity.lead_source
    row: 22
    col: 0
    width: 12
    height: 2
  - title: Won Opportunities Value (Total)
    name: Won Opportunities Value (Total)
    model: salesforce_mrr_demo
    explore: opportunity
    type: single_value
    fields: [opportunity.opportunity_value]
    filters:
      opportunity.is_won: 'Yes'
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.close_date
      Lead Source: opportunity.lead_source
    row: 22
    col: 12
    width: 12
    height: 2
  - title: Won Opportunities
    name: Won Opportunities
    model: salesforce_mrr_demo
    explore: opportunity
    type: looker_column
    fields: [opportunity.count, opportunity.lead_source, opportunity.close_month]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.close_month]
    filters:
      opportunity.is_won: 'Yes'
    sorts: [opportunity.lead_source, opportunity.close_month desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.close_date
      Lead Source: opportunity.lead_source
    row: 24
    col: 0
    width: 12
    height: 7
  - title: Lost Opportunities (Total)
    name: Lost Opportunities (Total)
    model: salesforce_mrr_demo
    explore: opportunity
    type: single_value
    fields: [opportunity.count]
    filters:
      opportunity.is_won: 'No'
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.close_date
      Lead Source: opportunity.lead_source
    row: 31
    col: 0
    width: 12
    height: 2
  - title: Lost Opportunities Value (Total)
    name: Lost Opportunities Value (Total)
    model: salesforce_mrr_demo
    explore: opportunity
    type: single_value
    fields: [opportunity.opportunity_value]
    filters:
      opportunity.is_won: 'No'
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.close_date
      Lead Source: opportunity.lead_source
    row: 31
    col: 12
    width: 12
    height: 2
  - title: New Contacts
    name: New Contacts
    model: salesforce_mrr_demo
    explore: contact
    type: looker_column
    fields: [contact.date_created_month, contact.lead_source, contact.count]
    pivots: [contact.lead_source]
    fill_fields: [contact.date_created_month]
    filters:
      contact.contact_type: Contact
    sorts: [contact.date_created_month desc, contact.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: " - contact.count",
            id: " - contact.count", name: Contact}, {axisId: Direct - contact.count,
            id: Direct - contact.count, name: Direct}, {axisId: Employee Referral
              - contact.count, id: Employee Referral - contact.count, name: Employee
              Referral}, {axisId: Event - contact.count, id: Event - contact.count,
            name: Event}, {axisId: EventBrite - contact.count, id: EventBrite - contact.count,
            name: EventBrite}, {axisId: gmail - contact.count, id: gmail - contact.count,
            name: gmail}, {axisId: Inbound - contact.count, id: Inbound - contact.count,
            name: Inbound}, {axisId: Mailchimp - contact.count, id: Mailchimp - contact.count,
            name: Mailchimp}, {axisId: Other - contact.count, id: Other - contact.count,
            name: Other}, {axisId: Partner - contact.count, id: Partner - contact.count,
            name: Partner}, {axisId: Zoominfo - contact.count, id: Zoominfo - contact.count,
            name: Zoominfo}], showLabels: false, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: contact.date_created_date
      Lead Source: contact.lead_source
    row: 4
    col: 12
    width: 12
    height: 7
  - title: Won Opportunities Value
    name: Won Opportunities Value
    model: salesforce_mrr_demo
    explore: opportunity
    type: looker_column
    fields: [opportunity.lead_source, opportunity.close_month, opportunity.opportunity_value]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.close_month]
    filters:
      opportunity.is_won: 'Yes'
    sorts: [opportunity.lead_source, opportunity.close_month desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.close_date
      Lead Source: opportunity.lead_source
    row: 24
    col: 12
    width: 12
    height: 7
  - title: Lost Opportunities Value
    name: Lost Opportunities Value
    model: salesforce_mrr_demo
    explore: opportunity
    type: looker_column
    fields: [opportunity.lead_source, opportunity.close_month, opportunity.opportunity_value]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.close_month]
    filters:
      opportunity.is_won: 'No'
    sorts: [opportunity.lead_source, opportunity.close_month desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.close_date
      Lead Source: opportunity.lead_source
    row: 33
    col: 12
    width: 12
    height: 7
  - title: Lost Opportunities
    name: Lost Opportunities
    model: salesforce_mrr_demo
    explore: opportunity
    type: looker_column
    fields: [opportunity.count, opportunity.lead_source, opportunity.close_month]
    pivots: [opportunity.lead_source]
    fill_fields: [opportunity.close_month]
    filters:
      opportunity.is_won: 'No'
    sorts: [opportunity.lead_source, opportunity.close_month desc]
    limit: 500
    column_limit: 50
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen:
      Date: opportunity.close_date
      Lead Source: opportunity.lead_source
    row: 33
    col: 0
    width: 12
    height: 7
  - title: New Contracts (Total)
    name: New Contracts (Total)
    model: salesforce_mrr_demo
    explore: contract_line
    type: single_value
    fields: [contract.count]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: contract.contract_start_date
      Lead Source: opportunity.lead_source
    row: 42
    col: 0
    width: 12
    height: 2
  - title: New Contracts
    name: New Contracts
    model: salesforce_mrr_demo
    explore: contract_line
    type: looker_column
    fields: [contract.count, contract.lead_source, contract.contract_start_month]
    pivots: [contract.lead_source]
    fill_fields: [contract.contract_start_month]
    sorts: [contract.contract_start_month desc, contract.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: contract.contract_start_date
      Lead Source: opportunity.lead_source
    row: 44
    col: 0
    width: 12
    height: 7
  - title: New Contracts Value (Total)
    name: New Contracts Value (Total)
    model: salesforce_mrr_demo
    explore: contract_line
    type: single_value
    fields: [contract_line.contract_line_mrr]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: contract.contract_start_date
      Lead Source: opportunity.lead_source
    row: 42
    col: 12
    width: 12
    height: 2
  - title: New Contracts Value
    name: New Contracts Value
    model: salesforce_mrr_demo
    explore: contract_line
    type: looker_column
    fields: [contract.lead_source, contract.contract_start_month, contract_line.contract_line_mrr]
    pivots: [contract.lead_source]
    fill_fields: [contract.contract_start_month]
    sorts: [contract.contract_start_month desc, contract.lead_source]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: contract.contract_start_date
      Lead Source: opportunity.lead_source
    row: 44
    col: 12
    width: 12
    height: 7
  filters:
  - name: Date
    title: Date
    type: date_filter
    default_value: 6 months
    allow_multiple_values: true
    required: false
  - name: Lead Source
    title: Lead Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: salesforce_mrr_demo
    explore: opportunity
    listens_to_filters: []
    field: opportunity.lead_source
