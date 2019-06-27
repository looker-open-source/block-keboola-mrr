- dashboard: mrr_salesforce_demo
  title: MRR Salesforce Overview
  layout: newspaper
  elements:
  - title: Current MRR
    name: Current MRR
    model: salesforce_mrr
    explore: mrr
    type: single_value
    fields: [mrr.contract_line_mrr]
    filters:
      mrr.date_month: this month
    limit: 500
    series_types: {}
    listen: {}
    row: 2
    col: 0
    width: 8
    height: 3
  - title: Annualized
    name: Annualized
    model: salesforce_mrr
    explore: mrr
    type: single_value
    fields: [mrr.contract_line_mrr]
    filters:
      mrr.date_month: this month
    limit: 500
    dynamic_fields: [{table_calculation: annualized, label: Annualized, expression: "${mrr.contract_line_mrr}*12",
        value_format: !!null '', value_format_name: decimal_0, _kind_hint: measure,
        _type_hint: number}]
    custom_color_enabled: true
    custom_color: ''
    show_single_value_title: true
    value_format: ''
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    series_types: {}
    hidden_fields: [mrr.contract_line_mrr]
    listen: {}
    row: 2
    col: 8
    width: 8
    height: 3
  - title: Current Contracts
    name: Current Contracts
    model: salesforce_mrr
    explore: contract_line
    type: single_value
    fields: [contract.count]
    filters:
      contract.contract_end_date: after 0 minutes ago,NULL
    limit: 500
    series_types: {}
    listen: {}
    row: 2
    col: 16
    width: 8
    height: 3
  - title: MRR Changes
    name: MRR Changes
    model: salesforce_mrr
    explore: mrr_aggregated
    type: looker_column
    fields: [mrr_aggregated.gross_mrr_change, mrr_aggregated.date_month, mrr_aggregated.gross_action]
    pivots: [mrr_aggregated.gross_action]
    fill_fields: [mrr_aggregated.date_month]
    filters:
      mrr_aggregated.gross_action: "-No Change"
      mrr_aggregated.date_month: 9 months
    sorts: [mrr_aggregated.date_month desc, mrr_aggregated.gross_action]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Churn - mrr_aggregated.gross_mrr_change,
            id: Churn - mrr_aggregated.gross_mrr_change, name: Churn}, {axisId: Downgrade
              - mrr_aggregated.gross_mrr_change, id: Downgrade - mrr_aggregated.gross_mrr_change,
            name: Downgrade}, {axisId: Net New - mrr_aggregated.gross_mrr_change,
            id: Net New - mrr_aggregated.gross_mrr_change, name: Net New}, {axisId: Upgrade
              - mrr_aggregated.gross_mrr_change, id: Upgrade - mrr_aggregated.gross_mrr_change,
            name: Upgrade}], showLabels: false, showValues: true, unpinAxis: false,
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
    label_value_format: "# ### ###"
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    row: 19
    col: 0
    width: 12
    height: 6
  - title: MRR by Product Family
    name: MRR by Product Family
    model: salesforce_mrr
    explore: mrr
    type: looker_area
    fields: [mrr.contract_line_mrr, mrr.date_month, product.product_family]
    pivots: [product.product_family]
    fill_fields: [mrr.date_month]
    filters:
      mrr.date_month: 9 months
    sorts: [mrr.date_month desc, product.product_family]
    limit: 500
    total: true
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Customer Success - mrr.contract_line_mrr,
            id: Customer Success - mrr.contract_line_mrr, name: Customer Success},
          {axisId: Keboola Add-ons - mrr.contract_line_mrr, id: Keboola Add-ons -
              mrr.contract_line_mrr, name: Keboola Add-ons}, {axisId: Keboola Subscription
              - mrr.contract_line_mrr, id: Keboola Subscription - mrr.contract_line_mrr,
            name: Keboola Subscription}, {axisId: Looker subscription - mrr.contract_line_mrr,
            id: Looker subscription - mrr.contract_line_mrr, name: Looker subscription}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    label_value_format: "# ###,k"
    series_types: {}
    point_style: none
    series_colors: {}
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen: {}
    row: 12
    col: 0
    width: 12
    height: 7
  - title: MRR by Year Cohorts
    name: MRR by Year Cohorts
    model: salesforce_mrr
    explore: mrr
    type: looker_area
    fields: [company.date_created_year, mrr.date_month, mrr.contract_line_mrr]
    pivots: [company.date_created_year]
    fill_fields: [company.date_created_year, mrr.date_month]
    filters:
      mrr.date_month: 9 months
    sorts: [mrr.date_month desc, company.date_created_year]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: 2015 - mrr.contract_line_mrr,
            id: 2015 - mrr.contract_line_mrr, name: '2015'}, {axisId: 2016 - mrr.contract_line_mrr,
            id: 2016 - mrr.contract_line_mrr, name: '2016'}, {axisId: 2017 - mrr.contract_line_mrr,
            id: 2017 - mrr.contract_line_mrr, name: '2017'}, {axisId: 2018 - mrr.contract_line_mrr,
            id: 2018 - mrr.contract_line_mrr, name: '2018'}, {axisId: 2019 - mrr.contract_line_mrr,
            id: 2019 - mrr.contract_line_mrr, name: '2019'}], showLabels: false, showValues: true,
        unpinAxis: false, tickDensity: default, tickDensityCustom: 5, type: linear}]
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
    label_value_format: "# ###,k"
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 12
    col: 12
    width: 12
    height: 7
  - title: Active Customers by ARR Bucket
    name: Active Customers by ARR Bucket
    model: salesforce_mrr
    explore: mrr_aggregated
    type: looker_column
    fields: [mrr_aggregated.date_month, mrr_aggregated.ARR_bucket, mrr_aggregated.customer_count]
    pivots: [mrr_aggregated.ARR_bucket]
    fill_fields: [mrr_aggregated.date_month, mrr_aggregated.ARR_bucket]
    filters:
      mrr_aggregated.date_month: 9 months
    sorts: [mrr_aggregated.date_month desc, mrr_aggregated.ARR_bucket]
    limit: 500
    total: true
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: "< 25000.0 - 0 - mrr_aggregated.customer_count",
            id: "< 25000.0 - 0 - mrr_aggregated.customer_count", name: "< 25k"}, {
            axisId: ">= 25000.0 and < 50000.0 - 1 - mrr_aggregated.customer_count",
            id: ">= 25000.0 and < 50000.0 - 1 - mrr_aggregated.customer_count", name: ">=\
              \ 25k and < 50k"}, {axisId: ">= 50000.0 and < 75000.0 - 2 - mrr_aggregated.customer_count",
            id: ">= 50000.0 and < 75000.0 - 2 - mrr_aggregated.customer_count", name: ">=\
              \ 50k and < 75k"}, {axisId: ">= 75000.0 and < 100000.0 - 3 - mrr_aggregated.customer_count",
            id: ">= 75000.0 and < 100000.0 - 3 - mrr_aggregated.customer_count", name: ">=\
              \ 75k and < 100k"}, {axisId: ">= 100000.0 - 4 - mrr_aggregated.customer_count",
            id: ">= 100000.0 - 4 - mrr_aggregated.customer_count", name: ">= 100k"}],
        showLabels: false, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
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
    label_value_format: "# ###"
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    interpolation: linear
    listen: {}
    row: 5
    col: 12
    width: 12
    height: 7
  - title: MRR by ARR Bucket
    name: MRR by ARR Bucket
    model: salesforce_mrr
    explore: mrr_aggregated
    type: looker_area
    fields: [mrr_aggregated.date_month, mrr_aggregated.gross_mrr, mrr_aggregated.ARR_bucket]
    pivots: [mrr_aggregated.ARR_bucket]
    fill_fields: [mrr_aggregated.date_month, mrr_aggregated.ARR_bucket]
    filters:
      mrr_aggregated.date_month: 9 months
    sorts: [mrr_aggregated.date_month desc, mrr_aggregated.ARR_bucket]
    limit: 500
    total: true
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: "< 25000.0 - 0 - mrr_aggregated.gross_mrr",
            id: "< 25000.0 - 0 - mrr_aggregated.gross_mrr", name: "< 25k"}, {axisId: ">=\
              \ 25000.0 and < 50000.0 - 1 - mrr_aggregated.gross_mrr", id: ">= 25000.0\
              \ and < 50000.0 - 1 - mrr_aggregated.gross_mrr", name: ">= 25k and <\
              \ 50k"}, {axisId: ">= 50000.0 and < 75000.0 - 2 - mrr_aggregated.gross_mrr",
            id: ">= 50000.0 and < 75000.0 - 2 - mrr_aggregated.gross_mrr", name: ">=\
              \ 50k and < 75k"}, {axisId: ">= 75000.0 and < 100000.0 - 3 - mrr_aggregated.gross_mrr",
            id: ">= 75000.0 and < 100000.0 - 3 - mrr_aggregated.gross_mrr", name: ">=\
              \ 75k and < 100k"}, {axisId: ">= 100000.0 - 4 - mrr_aggregated.gross_mrr",
            id: ">= 100000.0 - 4 - mrr_aggregated.gross_mrr", name: ">= 100k"}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    label_value_format: "# ###,k"
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#808080"
    listen: {}
    row: 5
    col: 0
    width: 12
    height: 7
  - title: Customers Count Changes
    name: Customers Count Changes
    model: salesforce_mrr
    explore: mrr_aggregated
    type: looker_column
    fields: [mrr_aggregated.date_month, mrr_aggregated.gross_action, mrr_aggregated.count_change]
    pivots: [mrr_aggregated.gross_action]
    fill_fields: [mrr_aggregated.date_month]
    filters:
      mrr_aggregated.date_month: 9 months
      mrr_aggregated.gross_action: Churn,Net New
    sorts: [mrr_aggregated.date_month desc, mrr_aggregated.gross_action]
    limit: 500
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: Churn - mrr_aggregated.count_change,
            id: Churn - mrr_aggregated.count_change, name: Churn}, {axisId: Net New
              - mrr_aggregated.count_change, id: Net New - mrr_aggregated.count_change,
            name: Net New}], showLabels: false, showValues: true, unpinAxis: false,
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
    series_colors:
      Churn - mrr_aggregated.customer_count: "#ed6168"
      Net New - mrr_aggregated.customer_count: "#49cec1"
      Net New - mrr_aggregated.count_change: "#49cec1"
      Churn - mrr_aggregated.count_change: "#ed6168"
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: true
    show_silhouette: false
    totals_color: "#353b49"
    listen: {}
    row: 19
    col: 12
    width: 12
    height: 6
  - title: Y/Y ARR Change
    name: Y/Y ARR Change
    model: salesforce_mrr
    explore: mrr_aggregated
    type: looker_column
    fields: [mrr_aggregated.gross_mrr, mrr_aggregated.date_year]
    filters:
      mrr_aggregated.date_year: 5 years
      mrr_aggregated.gross_mrr: ">0"
      mrr_aggregated.date_month_name: December
    sorts: [mrr_aggregated.date_year]
    limit: 500
    dynamic_fields: [{table_calculation: yy_change, label: Y/Y Change, expression: "${mrr_aggregated.gross_mrr}\
          \ / offset(${mrr_aggregated.gross_mrr},-1)", value_format: !!null '', value_format_name: percent_0,
        _kind_hint: measure, _type_hint: number}, {table_calculation: arr, label: ARR,
        expression: "${mrr_aggregated.gross_mrr} * 12", value_format: "# ##0,k", value_format_name: !!null '',
        _kind_hint: measure, _type_hint: number}]
    color_application:
      collection_id: legacy
      palette_id: santa_cruz
      options:
        steps: 5
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: arr, id: arr, name: ARR}],
        showLabels: true, showValues: true, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}, {label: !!null '', orientation: right,
        series: [{axisId: yy_change, id: yy_change, name: Y/Y Change}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
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
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types:
      yy_change: scatter
    point_style: circle
    series_colors:
      arr: "#353b49"
      yy_change: "#1ea8df"
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hidden_fields: [mrr_aggregated.gross_mrr]
    listen: {}
    row: 25
    col: 0
    width: 24
    height: 7
  - name: MRR Overview
    type: text
    title_text: MRR Overview
    row: 0
    col: 0
    width: 24
    height: 2