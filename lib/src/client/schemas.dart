part of dfareporting_v1_3_api;

/** Represents an activity group. */
class Activities {

  /** List of activity filters. The dimension values need to be all either of type "dfa:activity" or "dfa:activityGroup". */
  core.List<DimensionValue> filters;

  /** The kind of resource this is, in this case dfareporting#activities. */
  core.String kind;

  /** List of names of floodlight activity metrics. */
  core.List<core.String> metricNames;

  /** Create new Activities from JSON data */
  Activities.fromJson(core.Map json) {
    if (json.containsKey("filters")) {
      filters = json["filters"].map((filtersItem) => new DimensionValue.fromJson(filtersItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
  }

  /** Create JSON Object for Activities */
  core.Map toJson() {
    var output = new core.Map();

    if (filters != null) {
      output["filters"] = filters.map((filtersItem) => filtersItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }

    return output;
  }

  /** Return String representation of Activities */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a response to the queryCompatibleFields method. */
class CompatibleFields {

  /** Contains items that are compatible to be selected for a report of type "CROSS_DIMENSION_REACH". */
  CrossDimensionReachReportCompatibleFields crossDimensionReachReportCompatibleFields;

  /** Contains items that are compatible to be selected for a report of type "FLOODLIGHT". */
  FloodlightReportCompatibleFields floodlightReportCompatibleFields;

  /** The kind of resource this is, in this case dfareporting#compatibleFields. */
  core.String kind;

  /** Contains items that are compatible to be selected for a report of type "PATH_TO_CONVERSION". */
  PathToConversionReportCompatibleFields pathToConversionReportCompatibleFields;

  /** Contains items that are compatible to be selected for a report of type "REACH". */
  ReachReportCompatibleFields reachReportCompatibleFields;

  /** Contains items that are compatible to be selected for a report of type "STANDARD". */
  ReportCompatibleFields reportCompatibleFields;

  /** Create new CompatibleFields from JSON data */
  CompatibleFields.fromJson(core.Map json) {
    if (json.containsKey("crossDimensionReachReportCompatibleFields")) {
      crossDimensionReachReportCompatibleFields = new CrossDimensionReachReportCompatibleFields.fromJson(json["crossDimensionReachReportCompatibleFields"]);
    }
    if (json.containsKey("floodlightReportCompatibleFields")) {
      floodlightReportCompatibleFields = new FloodlightReportCompatibleFields.fromJson(json["floodlightReportCompatibleFields"]);
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("pathToConversionReportCompatibleFields")) {
      pathToConversionReportCompatibleFields = new PathToConversionReportCompatibleFields.fromJson(json["pathToConversionReportCompatibleFields"]);
    }
    if (json.containsKey("reachReportCompatibleFields")) {
      reachReportCompatibleFields = new ReachReportCompatibleFields.fromJson(json["reachReportCompatibleFields"]);
    }
    if (json.containsKey("reportCompatibleFields")) {
      reportCompatibleFields = new ReportCompatibleFields.fromJson(json["reportCompatibleFields"]);
    }
  }

  /** Create JSON Object for CompatibleFields */
  core.Map toJson() {
    var output = new core.Map();

    if (crossDimensionReachReportCompatibleFields != null) {
      output["crossDimensionReachReportCompatibleFields"] = crossDimensionReachReportCompatibleFields.toJson();
    }
    if (floodlightReportCompatibleFields != null) {
      output["floodlightReportCompatibleFields"] = floodlightReportCompatibleFields.toJson();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (pathToConversionReportCompatibleFields != null) {
      output["pathToConversionReportCompatibleFields"] = pathToConversionReportCompatibleFields.toJson();
    }
    if (reachReportCompatibleFields != null) {
      output["reachReportCompatibleFields"] = reachReportCompatibleFields.toJson();
    }
    if (reportCompatibleFields != null) {
      output["reportCompatibleFields"] = reportCompatibleFields.toJson();
    }

    return output;
  }

  /** Return String representation of CompatibleFields */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents fields that are compatible to be selected for a report of type "CROSS_DIMENSION_REACH". */
class CrossDimensionReachReportCompatibleFields {

  /** Dimensions which are compatible to be selected in the "breakdown" section of the report. */
  core.List<Dimension> breakdown;

  /** Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. */
  core.List<Dimension> dimensionFilters;

  /** The kind of resource this is, in this case dfareporting#crossDimensionReachReportCompatibleFields. */
  core.String kind;

  /** Metrics which are compatible to be selected in the "metricNames" section of the report. */
  core.List<Metric> metrics;

  /** Metrics which are compatible to be selected in the "overlapMetricNames" section of the report. */
  core.List<Metric> overlapMetrics;

  /** Create new CrossDimensionReachReportCompatibleFields from JSON data */
  CrossDimensionReachReportCompatibleFields.fromJson(core.Map json) {
    if (json.containsKey("breakdown")) {
      breakdown = json["breakdown"].map((breakdownItem) => new Dimension.fromJson(breakdownItem)).toList();
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new Dimension.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metrics")) {
      metrics = json["metrics"].map((metricsItem) => new Metric.fromJson(metricsItem)).toList();
    }
    if (json.containsKey("overlapMetrics")) {
      overlapMetrics = json["overlapMetrics"].map((overlapMetricsItem) => new Metric.fromJson(overlapMetricsItem)).toList();
    }
  }

  /** Create JSON Object for CrossDimensionReachReportCompatibleFields */
  core.Map toJson() {
    var output = new core.Map();

    if (breakdown != null) {
      output["breakdown"] = breakdown.map((breakdownItem) => breakdownItem.toJson()).toList();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (metrics != null) {
      output["metrics"] = metrics.map((metricsItem) => metricsItem.toJson()).toList();
    }
    if (overlapMetrics != null) {
      output["overlapMetrics"] = overlapMetrics.map((overlapMetricsItem) => overlapMetricsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of CrossDimensionReachReportCompatibleFields */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a Custom Rich Media Events group. */
class CustomRichMediaEvents {

  /** List of custom rich media event IDs. Dimension values must be all of type dfa:richMediaEventTypeIdAndName. */
  core.List<DimensionValue> filteredEventIds;

  /** The kind of resource this is, in this case dfareporting#customRichMediaEvents. */
  core.String kind;

  /** Create new CustomRichMediaEvents from JSON data */
  CustomRichMediaEvents.fromJson(core.Map json) {
    if (json.containsKey("filteredEventIds")) {
      filteredEventIds = json["filteredEventIds"].map((filteredEventIdsItem) => new DimensionValue.fromJson(filteredEventIdsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for CustomRichMediaEvents */
  core.Map toJson() {
    var output = new core.Map();

    if (filteredEventIds != null) {
      output["filteredEventIds"] = filteredEventIds.map((filteredEventIdsItem) => filteredEventIdsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of CustomRichMediaEvents */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a date range. */
class DateRange {

  /** The end date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  core.String endDate;

  /** The kind of resource this is, in this case dfareporting#dateRange. */
  core.String kind;

  /** The date range relative to the date of when the report is run, one of:  
- "TODAY" 
- "YESTERDAY" 
- "WEEK_TO_DATE" 
- "MONTH_TO_DATE" 
- "QUARTER_TO_DATE" 
- "YEAR_TO_DATE" 
- "PREVIOUS_WEEK" 
- "PREVIOUS_MONTH" 
- "PREVIOUS_QUARTER" 
- "PREVIOUS_YEAR" 
- "LAST_7_DAYS" 
- "LAST_30_DAYS" 
- "LAST_90_DAYS" 
- "LAST_365_DAYS" 
- "LAST_24_MONTHS" */
  core.String relativeDateRange;

  /** The start date of the date range, inclusive. A string of the format: "yyyy-MM-dd". */
  core.String startDate;

  /** Create new DateRange from JSON data */
  DateRange.fromJson(core.Map json) {
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("relativeDateRange")) {
      relativeDateRange = json["relativeDateRange"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for DateRange */
  core.Map toJson() {
    var output = new core.Map();

    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (relativeDateRange != null) {
      output["relativeDateRange"] = relativeDateRange;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of DateRange */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a dimension. */
class Dimension {

  /** The kind of resource this is, in this case dfareporting#dimension. */
  core.String kind;

  /** The dimension name, e.g. dfa:advertiser */
  core.String name;

  /** Create new Dimension from JSON data */
  Dimension.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Dimension */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Dimension */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a dimension filter. */
class DimensionFilter {

  /** The name of the dimension to filter. */
  core.String dimensionName;

  /** The kind of resource this is, in this case dfareporting#dimensionFilter. */
  core.String kind;

  /** The value of the dimension to filter. */
  core.String value;

  /** Create new DimensionFilter from JSON data */
  DimensionFilter.fromJson(core.Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DimensionFilter */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DimensionFilter */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a DimensionValue resource. */
class DimensionValue {

  /** The name of the dimension. */
  core.String dimensionName;

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The ID associated with the value if available. */
  core.String id;

  /** The kind of resource this is, in this case dfareporting#dimensionValue. */
  core.String kind;

  /** Determines how the 'value' field is matched when filtering. One of:  
- EXACT (default if not specified) 
- CONTAINS 
- BEGINS_WITH 
- WILDCARD_EXPRESSION (allowing '*' as a placeholder for variable length character sequences, it can be escaped with a backslash.)  Note, only paid search dimensions ('dfa:paidSearch*') allow a matchType other than EXACT. */
  core.String matchType;

  /** The value of the dimension. */
  core.String value;

  /** Create new DimensionValue from JSON data */
  DimensionValue.fromJson(core.Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("id")) {
      id = json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("matchType")) {
      matchType = json["matchType"];
    }
    if (json.containsKey("value")) {
      value = json["value"];
    }
  }

  /** Create JSON Object for DimensionValue */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (matchType != null) {
      output["matchType"] = matchType;
    }
    if (value != null) {
      output["value"] = value;
    }

    return output;
  }

  /** Return String representation of DimensionValue */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of DimensionValue resources. */
class DimensionValueList {

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The dimension values returned in this response. */
  core.List<DimensionValue> items;

  /** The kind of list this is, in this case dfareporting#dimensionValueList. */
  core.String kind;

  /** Continuation token used to page through dimension values. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  core.String nextPageToken;

  /** Create new DimensionValueList from JSON data */
  DimensionValueList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new DimensionValue.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for DimensionValueList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of DimensionValueList */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a DimensionValuesRequest. */
class DimensionValueRequest {

  /** The name of the dimension for which values should be requested. */
  core.String dimensionName;

  /** The end date of the date range for which to retrieve dimension values. A string of the format: "yyyy-MM-dd". */
  core.String endDate;

  /** The list of filters by which to filter values. The filters are ANDed. */
  core.List<DimensionFilter> filters;

  /** The kind of request this is, in this case dfareporting#dimensionValueRequest. */
  core.String kind;

  /** The start date of the date range for which to retrieve dimension values. A string of the format: "yyyy-MM-dd". */
  core.String startDate;

  /** Create new DimensionValueRequest from JSON data */
  DimensionValueRequest.fromJson(core.Map json) {
    if (json.containsKey("dimensionName")) {
      dimensionName = json["dimensionName"];
    }
    if (json.containsKey("endDate")) {
      endDate = json["endDate"];
    }
    if (json.containsKey("filters")) {
      filters = json["filters"].map((filtersItem) => new DimensionFilter.fromJson(filtersItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for DimensionValueRequest */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensionName != null) {
      output["dimensionName"] = dimensionName;
    }
    if (endDate != null) {
      output["endDate"] = endDate;
    }
    if (filters != null) {
      output["filters"] = filters.map((filtersItem) => filtersItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of DimensionValueRequest */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a File resource. A File contains the meta-data for a report run. It shows the status of the run and holds the urls to the generated report data if the run is finished and the status is "REPORT_AVAILABLE". */
class File {

  /** The date range for which the file has report data. The date range will always be the absolute date range for which the report is run. */
  DateRange dateRange;

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The file name of the file. */
  core.String fileName;

  /** The output format of the report. Only available once the file is available. */
  core.String format;

  /** The unique ID of this report file. */
  core.int id;

  /** The kind of resource this is, in this case dfareporting#file. */
  core.String kind;

  /** The timestamp in milliseconds since epoch when this file was last modified. */
  core.int lastModifiedTime;

  /** The ID of the report this file was generated from. */
  core.int reportId;

  /** The status of the report file, one of:  
- "PROCESSING" 
- "REPORT_AVAILABLE" 
- "FAILED" 
- "CANCELLED" */
  core.String status;

  /** The urls where the completed report file can be downloaded. */
  FileUrls urls;

  /** Create new File from JSON data */
  File.fromJson(core.Map json) {
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fileName")) {
      fileName = json["fileName"];
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("id")) {
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = (json["lastModifiedTime"] is core.String) ? core.int.parse(json["lastModifiedTime"]) : json["lastModifiedTime"];
    }
    if (json.containsKey("reportId")) {
      reportId = (json["reportId"] is core.String) ? core.int.parse(json["reportId"]) : json["reportId"];
    }
    if (json.containsKey("status")) {
      status = json["status"];
    }
    if (json.containsKey("urls")) {
      urls = new FileUrls.fromJson(json["urls"]);
    }
  }

  /** Create JSON Object for File */
  core.Map toJson() {
    var output = new core.Map();

    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fileName != null) {
      output["fileName"] = fileName;
    }
    if (format != null) {
      output["format"] = format;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (reportId != null) {
      output["reportId"] = reportId;
    }
    if (status != null) {
      output["status"] = status;
    }
    if (urls != null) {
      output["urls"] = urls.toJson();
    }

    return output;
  }

  /** Return String representation of File */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The urls where the completed report file can be downloaded. */
class FileUrls {

  /** The url for downloading the report data through the API. */
  core.String apiUrl;

  /** The url for downloading the report data through a browser. */
  core.String browserUrl;

  /** Create new FileUrls from JSON data */
  FileUrls.fromJson(core.Map json) {
    if (json.containsKey("apiUrl")) {
      apiUrl = json["apiUrl"];
    }
    if (json.containsKey("browserUrl")) {
      browserUrl = json["browserUrl"];
    }
  }

  /** Create JSON Object for FileUrls */
  core.Map toJson() {
    var output = new core.Map();

    if (apiUrl != null) {
      output["apiUrl"] = apiUrl;
    }
    if (browserUrl != null) {
      output["browserUrl"] = browserUrl;
    }

    return output;
  }

  /** Return String representation of FileUrls */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of File resources. */
class FileList {

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The files returned in this response. */
  core.List<File> items;

  /** The kind of list this is, in this case dfareporting#fileList. */
  core.String kind;

  /** Continuation token used to page through files. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  core.String nextPageToken;

  /** Create new FileList from JSON data */
  FileList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new File.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for FileList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of FileList */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents fields that are compatible to be selected for a report of type "FlOODLIGHT". */
class FloodlightReportCompatibleFields {

  /** Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. */
  core.List<Dimension> dimensionFilters;

  /** Dimensions which are compatible to be selected in the "dimensions" section of the report. */
  core.List<Dimension> dimensions;

  /** The kind of resource this is, in this case dfareporting#floodlightReportCompatibleFields. */
  core.String kind;

  /** Metrics which are compatible to be selected in the "metricNames" section of the report. */
  core.List<Metric> metrics;

  /** Create new FloodlightReportCompatibleFields from JSON data */
  FloodlightReportCompatibleFields.fromJson(core.Map json) {
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new Dimension.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new Dimension.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metrics")) {
      metrics = json["metrics"].map((metricsItem) => new Metric.fromJson(metricsItem)).toList();
    }
  }

  /** Create JSON Object for FloodlightReportCompatibleFields */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (metrics != null) {
      output["metrics"] = metrics.map((metricsItem) => metricsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of FloodlightReportCompatibleFields */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a metric. */
class Metric {

  /** The kind of resource this is, in this case dfareporting#metric. */
  core.String kind;

  /** The metric name, e.g. dfa:impressions */
  core.String name;

  /** Create new Metric from JSON data */
  Metric.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
  }

  /** Create JSON Object for Metric */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }

    return output;
  }

  /** Return String representation of Metric */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents fields that are compatible to be selected for a report of type "PATH_TO_CONVERSION". */
class PathToConversionReportCompatibleFields {

  /** Conversion dimensions which are compatible to be selected in the "conversionDimensions" section of the report. */
  core.List<Dimension> conversionDimensions;

  /** Custom floodlight variables which are compatible to be selected in the "customFloodlightVariables" section of the report. */
  core.List<Dimension> customFloodlightVariables;

  /** The kind of resource this is, in this case dfareporting#pathToConversionReportCompatibleFields. */
  core.String kind;

  /** Metrics which are compatible to be selected in the "metricNames" section of the report. */
  core.List<Metric> metrics;

  /** Per-interaction dimensions which are compatible to be selected in the "perInteractionDimensions" section of the report. */
  core.List<Dimension> perInteractionDimensions;

  /** Create new PathToConversionReportCompatibleFields from JSON data */
  PathToConversionReportCompatibleFields.fromJson(core.Map json) {
    if (json.containsKey("conversionDimensions")) {
      conversionDimensions = json["conversionDimensions"].map((conversionDimensionsItem) => new Dimension.fromJson(conversionDimensionsItem)).toList();
    }
    if (json.containsKey("customFloodlightVariables")) {
      customFloodlightVariables = json["customFloodlightVariables"].map((customFloodlightVariablesItem) => new Dimension.fromJson(customFloodlightVariablesItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metrics")) {
      metrics = json["metrics"].map((metricsItem) => new Metric.fromJson(metricsItem)).toList();
    }
    if (json.containsKey("perInteractionDimensions")) {
      perInteractionDimensions = json["perInteractionDimensions"].map((perInteractionDimensionsItem) => new Dimension.fromJson(perInteractionDimensionsItem)).toList();
    }
  }

  /** Create JSON Object for PathToConversionReportCompatibleFields */
  core.Map toJson() {
    var output = new core.Map();

    if (conversionDimensions != null) {
      output["conversionDimensions"] = conversionDimensions.map((conversionDimensionsItem) => conversionDimensionsItem.toJson()).toList();
    }
    if (customFloodlightVariables != null) {
      output["customFloodlightVariables"] = customFloodlightVariables.map((customFloodlightVariablesItem) => customFloodlightVariablesItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (metrics != null) {
      output["metrics"] = metrics.map((metricsItem) => metricsItem.toJson()).toList();
    }
    if (perInteractionDimensions != null) {
      output["perInteractionDimensions"] = perInteractionDimensions.map((perInteractionDimensionsItem) => perInteractionDimensionsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of PathToConversionReportCompatibleFields */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents fields that are compatible to be selected for a report of type "REACH". */
class ReachReportCompatibleFields {

  /** Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. */
  core.List<Dimension> dimensionFilters;

  /** Dimensions which are compatible to be selected in the "dimensions" section of the report. */
  core.List<Dimension> dimensions;

  /** The kind of resource this is, in this case dfareporting#reachReportCompatibleFields. */
  core.String kind;

  /** Metrics which are compatible to be selected in the "metricNames" section of the report. */
  core.List<Metric> metrics;

  /** Metrics which are compatible to be selected as activity metrics to pivot on in the "activities" section of the report. */
  core.List<Metric> pivotedActivityMetrics;

  /** Metrics which are compatible to be selected in the "reachByFrequencyMetricNames" section of the report. */
  core.List<Metric> reachByFrequencyMetrics;

  /** Create new ReachReportCompatibleFields from JSON data */
  ReachReportCompatibleFields.fromJson(core.Map json) {
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new Dimension.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new Dimension.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metrics")) {
      metrics = json["metrics"].map((metricsItem) => new Metric.fromJson(metricsItem)).toList();
    }
    if (json.containsKey("pivotedActivityMetrics")) {
      pivotedActivityMetrics = json["pivotedActivityMetrics"].map((pivotedActivityMetricsItem) => new Metric.fromJson(pivotedActivityMetricsItem)).toList();
    }
    if (json.containsKey("reachByFrequencyMetrics")) {
      reachByFrequencyMetrics = json["reachByFrequencyMetrics"].map((reachByFrequencyMetricsItem) => new Metric.fromJson(reachByFrequencyMetricsItem)).toList();
    }
  }

  /** Create JSON Object for ReachReportCompatibleFields */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (metrics != null) {
      output["metrics"] = metrics.map((metricsItem) => metricsItem.toJson()).toList();
    }
    if (pivotedActivityMetrics != null) {
      output["pivotedActivityMetrics"] = pivotedActivityMetrics.map((pivotedActivityMetricsItem) => pivotedActivityMetricsItem.toJson()).toList();
    }
    if (reachByFrequencyMetrics != null) {
      output["reachByFrequencyMetrics"] = reachByFrequencyMetrics.map((reachByFrequencyMetricsItem) => reachByFrequencyMetricsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ReachReportCompatibleFields */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a recipient. */
class Recipient {

  /** The delivery type for the recipient, one of:  
- "ATTACHMENT" 
- "LINK" */
  core.String deliveryType;

  /** The email address of the recipient. */
  core.String email;

  /** The kind of resource this is, in this case dfareporting#recipient. */
  core.String kind;

  /** Create new Recipient from JSON data */
  Recipient.fromJson(core.Map json) {
    if (json.containsKey("deliveryType")) {
      deliveryType = json["deliveryType"];
    }
    if (json.containsKey("email")) {
      email = json["email"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for Recipient */
  core.Map toJson() {
    var output = new core.Map();

    if (deliveryType != null) {
      output["deliveryType"] = deliveryType;
    }
    if (email != null) {
      output["email"] = email;
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of Recipient */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a Report resource. */
class Report {

  /** The account ID to which this report belongs. */
  core.int accountId;

  /** The report criteria for a report of type "ACTIVE_GRP". */
  ReportActiveGrpCriteria activeGrpCriteria;

  /** The report criteria for a report of type "STANDARD". */
  ReportCriteria criteria;

  /** The report criteria for a report of type "CROSS_DIMENSION_REACH". */
  ReportCrossDimensionReachCriteria crossDimensionReachCriteria;

  /** The report's email delivery settings. */
  ReportDelivery delivery;

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The file name used when generating report files for this report. */
  core.String fileName;

  /** The report criteria for a report of type "FLOODLIGHT". */
  ReportFloodlightCriteria floodlightCriteria;

  /** The output format of the report, one of:  
- "CSV" 
- "EXCEL"  If not specified, default format is "CSV". Note that the actual format in the completed report file might differ if for instance the report's size exceeds the format's capabilities. "CSV" will then be the fallback format. */
  core.String format;

  /** The unique ID identifying this report resource. */
  core.int id;

  /** The kind of resource this is, in this case dfareporting#report. */
  core.String kind;

  /** The timestamp (in milliseconds since epoch) of when this report was last modified. */
  core.String lastModifiedTime;

  /** The name of the report. */
  core.String name;

  /** The user profile id of the owner of this report. */
  core.int ownerProfileId;

  /** The report criteria for a report of type "PATH_TO_CONVERSION". */
  ReportPathToConversionCriteria pathToConversionCriteria;

  /** The report criteria for a report of type "REACH". */
  ReportReachCriteria reachCriteria;

  /** The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY". */
  ReportSchedule schedule;

  /** The subbaccount ID to which this report belongs if applicable. */
  core.int subAccountId;

  /** The type of the report, one of:  
- STANDARD 
- REACH 
- ACTIVE_GRP 
- PATH_TO_CONVERSION 
- FLOODLIGHT 
- CROSS_DIMENSION_REACH */
  core.String type;

  /** Create new Report from JSON data */
  Report.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = (json["accountId"] is core.String) ? core.int.parse(json["accountId"]) : json["accountId"];
    }
    if (json.containsKey("activeGrpCriteria")) {
      activeGrpCriteria = new ReportActiveGrpCriteria.fromJson(json["activeGrpCriteria"]);
    }
    if (json.containsKey("criteria")) {
      criteria = new ReportCriteria.fromJson(json["criteria"]);
    }
    if (json.containsKey("crossDimensionReachCriteria")) {
      crossDimensionReachCriteria = new ReportCrossDimensionReachCriteria.fromJson(json["crossDimensionReachCriteria"]);
    }
    if (json.containsKey("delivery")) {
      delivery = new ReportDelivery.fromJson(json["delivery"]);
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("fileName")) {
      fileName = json["fileName"];
    }
    if (json.containsKey("floodlightCriteria")) {
      floodlightCriteria = new ReportFloodlightCriteria.fromJson(json["floodlightCriteria"]);
    }
    if (json.containsKey("format")) {
      format = json["format"];
    }
    if (json.containsKey("id")) {
      id = (json["id"] is core.String) ? core.int.parse(json["id"]) : json["id"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("lastModifiedTime")) {
      lastModifiedTime = json["lastModifiedTime"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("ownerProfileId")) {
      ownerProfileId = (json["ownerProfileId"] is core.String) ? core.int.parse(json["ownerProfileId"]) : json["ownerProfileId"];
    }
    if (json.containsKey("pathToConversionCriteria")) {
      pathToConversionCriteria = new ReportPathToConversionCriteria.fromJson(json["pathToConversionCriteria"]);
    }
    if (json.containsKey("reachCriteria")) {
      reachCriteria = new ReportReachCriteria.fromJson(json["reachCriteria"]);
    }
    if (json.containsKey("schedule")) {
      schedule = new ReportSchedule.fromJson(json["schedule"]);
    }
    if (json.containsKey("subAccountId")) {
      subAccountId = (json["subAccountId"] is core.String) ? core.int.parse(json["subAccountId"]) : json["subAccountId"];
    }
    if (json.containsKey("type")) {
      type = json["type"];
    }
  }

  /** Create JSON Object for Report */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (activeGrpCriteria != null) {
      output["activeGrpCriteria"] = activeGrpCriteria.toJson();
    }
    if (criteria != null) {
      output["criteria"] = criteria.toJson();
    }
    if (crossDimensionReachCriteria != null) {
      output["crossDimensionReachCriteria"] = crossDimensionReachCriteria.toJson();
    }
    if (delivery != null) {
      output["delivery"] = delivery.toJson();
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (fileName != null) {
      output["fileName"] = fileName;
    }
    if (floodlightCriteria != null) {
      output["floodlightCriteria"] = floodlightCriteria.toJson();
    }
    if (format != null) {
      output["format"] = format;
    }
    if (id != null) {
      output["id"] = id;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (lastModifiedTime != null) {
      output["lastModifiedTime"] = lastModifiedTime;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (ownerProfileId != null) {
      output["ownerProfileId"] = ownerProfileId;
    }
    if (pathToConversionCriteria != null) {
      output["pathToConversionCriteria"] = pathToConversionCriteria.toJson();
    }
    if (reachCriteria != null) {
      output["reachCriteria"] = reachCriteria.toJson();
    }
    if (schedule != null) {
      output["schedule"] = schedule.toJson();
    }
    if (subAccountId != null) {
      output["subAccountId"] = subAccountId;
    }
    if (type != null) {
      output["type"] = type;
    }

    return output;
  }

  /** Return String representation of Report */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "ACTIVE_GRP". */
class ReportActiveGrpCriteria {

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The list of filters on which dimensions are filtered.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed.
A valid active GRP report needs to have exactly one DimensionValue for the United States in addition to any advertiser or campaign dimension values. */
  core.List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** Create new ReportActiveGrpCriteria from JSON data */
  ReportActiveGrpCriteria.fromJson(core.Map json) {
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new DimensionValue.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new SortedDimension.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
  }

  /** Create JSON Object for ReportActiveGrpCriteria */
  core.Map toJson() {
    var output = new core.Map();

    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }

    return output;
  }

  /** Return String representation of ReportActiveGrpCriteria */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "STANDARD". */
class ReportCriteria {

  /** Activity group. */
  Activities activities;

  /** Custom Rich Media Events group. */
  CustomRichMediaEvents customRichMediaEvents;

  /** The date range for which this report should be run. */
  DateRange dateRange;

  /** The list of filters on which dimensions are filtered.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed. */
  core.List<DimensionValue> dimensionFilters;

  /** The list of standard dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** Create new ReportCriteria from JSON data */
  ReportCriteria.fromJson(core.Map json) {
    if (json.containsKey("activities")) {
      activities = new Activities.fromJson(json["activities"]);
    }
    if (json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = new CustomRichMediaEvents.fromJson(json["customRichMediaEvents"]);
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new DimensionValue.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new SortedDimension.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
  }

  /** Create JSON Object for ReportCriteria */
  core.Map toJson() {
    var output = new core.Map();

    if (activities != null) {
      output["activities"] = activities.toJson();
    }
    if (customRichMediaEvents != null) {
      output["customRichMediaEvents"] = customRichMediaEvents.toJson();
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }

    return output;
  }

  /** Return String representation of ReportCriteria */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "CROSS_DIMENSION_REACH". */
class ReportCrossDimensionReachCriteria {

  /** The list of dimensions the report should include. */
  core.List<SortedDimension> breakdown;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The dimension option, one of:  
- "ADVERTISER" 
- "CAMPAIGN" 
- "SITE_BY_ADVERTISER" 
- "SITE_BY_CAMPAIGN" */
  core.String dimension;

  /** The list of filters on which dimensions are filtered. */
  core.List<DimensionValue> dimensionFilters;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** The list of names of overlap metrics the report should include. */
  core.List<core.String> overlapMetricNames;

  /** Whether the report is pivoted or not. Defaults to true. */
  core.bool pivoted;

  /** Create new ReportCrossDimensionReachCriteria from JSON data */
  ReportCrossDimensionReachCriteria.fromJson(core.Map json) {
    if (json.containsKey("breakdown")) {
      breakdown = json["breakdown"].map((breakdownItem) => new SortedDimension.fromJson(breakdownItem)).toList();
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimension")) {
      dimension = json["dimension"];
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new DimensionValue.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
    if (json.containsKey("overlapMetricNames")) {
      overlapMetricNames = json["overlapMetricNames"].toList();
    }
    if (json.containsKey("pivoted")) {
      pivoted = json["pivoted"];
    }
  }

  /** Create JSON Object for ReportCrossDimensionReachCriteria */
  core.Map toJson() {
    var output = new core.Map();

    if (breakdown != null) {
      output["breakdown"] = breakdown.map((breakdownItem) => breakdownItem.toJson()).toList();
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimension != null) {
      output["dimension"] = dimension;
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }
    if (overlapMetricNames != null) {
      output["overlapMetricNames"] = overlapMetricNames.toList();
    }
    if (pivoted != null) {
      output["pivoted"] = pivoted;
    }

    return output;
  }

  /** Return String representation of ReportCrossDimensionReachCriteria */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report's email delivery settings. */
class ReportDelivery {

  /** Whether the report should be emailed to the report owner. */
  core.bool emailOwner;

  /** The type of delivery for the owner to receive, if enabled. One of:  
- "ATTACHMENT" 
- "LINK" */
  core.String emailOwnerDeliveryType;

  /** The message to be sent with each email. */
  core.String message;

  /** The list of recipients to which to email the report. */
  core.List<Recipient> recipients;

  /** Create new ReportDelivery from JSON data */
  ReportDelivery.fromJson(core.Map json) {
    if (json.containsKey("emailOwner")) {
      emailOwner = json["emailOwner"];
    }
    if (json.containsKey("emailOwnerDeliveryType")) {
      emailOwnerDeliveryType = json["emailOwnerDeliveryType"];
    }
    if (json.containsKey("message")) {
      message = json["message"];
    }
    if (json.containsKey("recipients")) {
      recipients = json["recipients"].map((recipientsItem) => new Recipient.fromJson(recipientsItem)).toList();
    }
  }

  /** Create JSON Object for ReportDelivery */
  core.Map toJson() {
    var output = new core.Map();

    if (emailOwner != null) {
      output["emailOwner"] = emailOwner;
    }
    if (emailOwnerDeliveryType != null) {
      output["emailOwnerDeliveryType"] = emailOwnerDeliveryType;
    }
    if (message != null) {
      output["message"] = message;
    }
    if (recipients != null) {
      output["recipients"] = recipients.map((recipientsItem) => recipientsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ReportDelivery */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "FLOODLIGHT". */
class ReportFloodlightCriteria {

  /** The list of custom rich media events to include. */
  core.List<DimensionValue> customRichMediaEvents;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The list of filters on which dimensions are filtered.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed. */
  core.List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /** The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'. */
  DimensionValue floodlightConfigId;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** The properties of the report. */
  ReportFloodlightCriteriaReportProperties reportProperties;

  /** Create new ReportFloodlightCriteria from JSON data */
  ReportFloodlightCriteria.fromJson(core.Map json) {
    if (json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = json["customRichMediaEvents"].map((customRichMediaEventsItem) => new DimensionValue.fromJson(customRichMediaEventsItem)).toList();
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new DimensionValue.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new SortedDimension.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("floodlightConfigId")) {
      floodlightConfigId = new DimensionValue.fromJson(json["floodlightConfigId"]);
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
    if (json.containsKey("reportProperties")) {
      reportProperties = new ReportFloodlightCriteriaReportProperties.fromJson(json["reportProperties"]);
    }
  }

  /** Create JSON Object for ReportFloodlightCriteria */
  core.Map toJson() {
    var output = new core.Map();

    if (customRichMediaEvents != null) {
      output["customRichMediaEvents"] = customRichMediaEvents.map((customRichMediaEventsItem) => customRichMediaEventsItem.toJson()).toList();
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (floodlightConfigId != null) {
      output["floodlightConfigId"] = floodlightConfigId.toJson();
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }
    if (reportProperties != null) {
      output["reportProperties"] = reportProperties.toJson();
    }

    return output;
  }

  /** Return String representation of ReportFloodlightCriteria */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The properties of the report. */
class ReportFloodlightCriteriaReportProperties {

  /** Include conversions that have no cookie, but do have an exposure path. */
  core.bool includeAttributedIPConversions;

  /** Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window. */
  core.bool includeUnattributedCookieConversions;

  /** Include conversions that have no associated cookies and no exposures. It’s therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion. */
  core.bool includeUnattributedIPConversions;

  /** Create new ReportFloodlightCriteriaReportProperties from JSON data */
  ReportFloodlightCriteriaReportProperties.fromJson(core.Map json) {
    if (json.containsKey("includeAttributedIPConversions")) {
      includeAttributedIPConversions = json["includeAttributedIPConversions"];
    }
    if (json.containsKey("includeUnattributedCookieConversions")) {
      includeUnattributedCookieConversions = json["includeUnattributedCookieConversions"];
    }
    if (json.containsKey("includeUnattributedIPConversions")) {
      includeUnattributedIPConversions = json["includeUnattributedIPConversions"];
    }
  }

  /** Create JSON Object for ReportFloodlightCriteriaReportProperties */
  core.Map toJson() {
    var output = new core.Map();

    if (includeAttributedIPConversions != null) {
      output["includeAttributedIPConversions"] = includeAttributedIPConversions;
    }
    if (includeUnattributedCookieConversions != null) {
      output["includeUnattributedCookieConversions"] = includeUnattributedCookieConversions;
    }
    if (includeUnattributedIPConversions != null) {
      output["includeUnattributedIPConversions"] = includeUnattributedIPConversions;
    }

    return output;
  }

  /** Return String representation of ReportFloodlightCriteriaReportProperties */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "PATH_TO_CONVERSION". */
class ReportPathToConversionCriteria {

  /** The list of 'dfa:activity' values to filter on. */
  core.List<DimensionValue> activityFilters;

  /** The list of conversion dimensions the report should include. */
  core.List<SortedDimension> conversionDimensions;

  /** The list of custom floodlight variables the report should include. */
  core.List<SortedDimension> customFloodlightVariables;

  /** The list of custom rich media events to include. */
  core.List<DimensionValue> customRichMediaEvents;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The floodlight ID for which to show data in this report. All advertisers associated with that ID will automatically be added. The dimension of the value needs to be 'dfa:floodlightConfigId'. */
  DimensionValue floodlightConfigId;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** The list of per interaction dimensions the report should include. */
  core.List<SortedDimension> perInteractionDimensions;

  /** The properties of the report. */
  ReportPathToConversionCriteriaReportProperties reportProperties;

  /** Create new ReportPathToConversionCriteria from JSON data */
  ReportPathToConversionCriteria.fromJson(core.Map json) {
    if (json.containsKey("activityFilters")) {
      activityFilters = json["activityFilters"].map((activityFiltersItem) => new DimensionValue.fromJson(activityFiltersItem)).toList();
    }
    if (json.containsKey("conversionDimensions")) {
      conversionDimensions = json["conversionDimensions"].map((conversionDimensionsItem) => new SortedDimension.fromJson(conversionDimensionsItem)).toList();
    }
    if (json.containsKey("customFloodlightVariables")) {
      customFloodlightVariables = json["customFloodlightVariables"].map((customFloodlightVariablesItem) => new SortedDimension.fromJson(customFloodlightVariablesItem)).toList();
    }
    if (json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = json["customRichMediaEvents"].map((customRichMediaEventsItem) => new DimensionValue.fromJson(customRichMediaEventsItem)).toList();
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("floodlightConfigId")) {
      floodlightConfigId = new DimensionValue.fromJson(json["floodlightConfigId"]);
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
    if (json.containsKey("perInteractionDimensions")) {
      perInteractionDimensions = json["perInteractionDimensions"].map((perInteractionDimensionsItem) => new SortedDimension.fromJson(perInteractionDimensionsItem)).toList();
    }
    if (json.containsKey("reportProperties")) {
      reportProperties = new ReportPathToConversionCriteriaReportProperties.fromJson(json["reportProperties"]);
    }
  }

  /** Create JSON Object for ReportPathToConversionCriteria */
  core.Map toJson() {
    var output = new core.Map();

    if (activityFilters != null) {
      output["activityFilters"] = activityFilters.map((activityFiltersItem) => activityFiltersItem.toJson()).toList();
    }
    if (conversionDimensions != null) {
      output["conversionDimensions"] = conversionDimensions.map((conversionDimensionsItem) => conversionDimensionsItem.toJson()).toList();
    }
    if (customFloodlightVariables != null) {
      output["customFloodlightVariables"] = customFloodlightVariables.map((customFloodlightVariablesItem) => customFloodlightVariablesItem.toJson()).toList();
    }
    if (customRichMediaEvents != null) {
      output["customRichMediaEvents"] = customRichMediaEvents.map((customRichMediaEventsItem) => customRichMediaEventsItem.toJson()).toList();
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (floodlightConfigId != null) {
      output["floodlightConfigId"] = floodlightConfigId.toJson();
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }
    if (perInteractionDimensions != null) {
      output["perInteractionDimensions"] = perInteractionDimensions.map((perInteractionDimensionsItem) => perInteractionDimensionsItem.toJson()).toList();
    }
    if (reportProperties != null) {
      output["reportProperties"] = reportProperties.toJson();
    }

    return output;
  }

  /** Return String representation of ReportPathToConversionCriteria */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The properties of the report. */
class ReportPathToConversionCriteriaReportProperties {

  /** DFA checks to see if a click interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90. */
  core.int clicksLookbackWindow;

  /** DFA checks to see if an impression interaction occurred within the specified period of time before a conversion. By default the value is pulled from Floodlight or you can manually enter a custom value. Valid values: 1-90. */
  core.int impressionsLookbackWindow;

  /** Deprecated: has no effect. */
  core.bool includeAttributedIPConversions;

  /** Include conversions of users with a DoubleClick cookie but without an exposure. That means the user did not click or see an ad from the advertiser within the Floodlight group, or that the interaction happened outside the lookback window. */
  core.bool includeUnattributedCookieConversions;

  /** Include conversions that have no associated cookies and no exposures. It’s therefore impossible to know how the user was exposed to your ads during the lookback window prior to a conversion. */
  core.bool includeUnattributedIPConversions;

  /** The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report. */
  core.int maximumClickInteractions;

  /** The maximum number of click interactions to include in the report. Advertisers currently paying for E2C reports get up to 200 (100 clicks, 100 impressions). If another advertiser in your network is paying for E2C, you can have up to 5 total exposures per report. */
  core.int maximumImpressionInteractions;

  /** The maximum amount of time that can take place between interactions (clicks or impressions) by the same user. Valid values: 1-90. */
  core.int maximumInteractionGap;

  /** Enable pivoting on interaction path. */
  core.bool pivotOnInteractionPath;

  /** Create new ReportPathToConversionCriteriaReportProperties from JSON data */
  ReportPathToConversionCriteriaReportProperties.fromJson(core.Map json) {
    if (json.containsKey("clicksLookbackWindow")) {
      clicksLookbackWindow = json["clicksLookbackWindow"];
    }
    if (json.containsKey("impressionsLookbackWindow")) {
      impressionsLookbackWindow = json["impressionsLookbackWindow"];
    }
    if (json.containsKey("includeAttributedIPConversions")) {
      includeAttributedIPConversions = json["includeAttributedIPConversions"];
    }
    if (json.containsKey("includeUnattributedCookieConversions")) {
      includeUnattributedCookieConversions = json["includeUnattributedCookieConversions"];
    }
    if (json.containsKey("includeUnattributedIPConversions")) {
      includeUnattributedIPConversions = json["includeUnattributedIPConversions"];
    }
    if (json.containsKey("maximumClickInteractions")) {
      maximumClickInteractions = json["maximumClickInteractions"];
    }
    if (json.containsKey("maximumImpressionInteractions")) {
      maximumImpressionInteractions = json["maximumImpressionInteractions"];
    }
    if (json.containsKey("maximumInteractionGap")) {
      maximumInteractionGap = json["maximumInteractionGap"];
    }
    if (json.containsKey("pivotOnInteractionPath")) {
      pivotOnInteractionPath = json["pivotOnInteractionPath"];
    }
  }

  /** Create JSON Object for ReportPathToConversionCriteriaReportProperties */
  core.Map toJson() {
    var output = new core.Map();

    if (clicksLookbackWindow != null) {
      output["clicksLookbackWindow"] = clicksLookbackWindow;
    }
    if (impressionsLookbackWindow != null) {
      output["impressionsLookbackWindow"] = impressionsLookbackWindow;
    }
    if (includeAttributedIPConversions != null) {
      output["includeAttributedIPConversions"] = includeAttributedIPConversions;
    }
    if (includeUnattributedCookieConversions != null) {
      output["includeUnattributedCookieConversions"] = includeUnattributedCookieConversions;
    }
    if (includeUnattributedIPConversions != null) {
      output["includeUnattributedIPConversions"] = includeUnattributedIPConversions;
    }
    if (maximumClickInteractions != null) {
      output["maximumClickInteractions"] = maximumClickInteractions;
    }
    if (maximumImpressionInteractions != null) {
      output["maximumImpressionInteractions"] = maximumImpressionInteractions;
    }
    if (maximumInteractionGap != null) {
      output["maximumInteractionGap"] = maximumInteractionGap;
    }
    if (pivotOnInteractionPath != null) {
      output["pivotOnInteractionPath"] = pivotOnInteractionPath;
    }

    return output;
  }

  /** Return String representation of ReportPathToConversionCriteriaReportProperties */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report criteria for a report of type "REACH". */
class ReportReachCriteria {

  /** Activity group. */
  Activities activities;

  /** Custom Rich Media Events group. */
  CustomRichMediaEvents customRichMediaEvents;

  /** The date range this report should be run for. */
  DateRange dateRange;

  /** The list of filters on which dimensions are filtered.
Filters for different dimensions are ANDed, filters for the same dimension are grouped together and ORed. */
  core.List<DimensionValue> dimensionFilters;

  /** The list of dimensions the report should include. */
  core.List<SortedDimension> dimensions;

  /** The list of names of metrics the report should include. */
  core.List<core.String> metricNames;

  /** The list of names of  Reach By Frequency metrics the report should include. */
  core.List<core.String> reachByFrequencyMetricNames;

  /** Create new ReportReachCriteria from JSON data */
  ReportReachCriteria.fromJson(core.Map json) {
    if (json.containsKey("activities")) {
      activities = new Activities.fromJson(json["activities"]);
    }
    if (json.containsKey("customRichMediaEvents")) {
      customRichMediaEvents = new CustomRichMediaEvents.fromJson(json["customRichMediaEvents"]);
    }
    if (json.containsKey("dateRange")) {
      dateRange = new DateRange.fromJson(json["dateRange"]);
    }
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new DimensionValue.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new SortedDimension.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("metricNames")) {
      metricNames = json["metricNames"].toList();
    }
    if (json.containsKey("reachByFrequencyMetricNames")) {
      reachByFrequencyMetricNames = json["reachByFrequencyMetricNames"].toList();
    }
  }

  /** Create JSON Object for ReportReachCriteria */
  core.Map toJson() {
    var output = new core.Map();

    if (activities != null) {
      output["activities"] = activities.toJson();
    }
    if (customRichMediaEvents != null) {
      output["customRichMediaEvents"] = customRichMediaEvents.toJson();
    }
    if (dateRange != null) {
      output["dateRange"] = dateRange.toJson();
    }
    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (metricNames != null) {
      output["metricNames"] = metricNames.toList();
    }
    if (reachByFrequencyMetricNames != null) {
      output["reachByFrequencyMetricNames"] = reachByFrequencyMetricNames.toList();
    }

    return output;
  }

  /** Return String representation of ReportReachCriteria */
  core.String toString() => JSON.stringify(this.toJson());

}

/** The report's schedule. Can only be set if the report's 'dateRange' is a relative date range and the relative date range is not "TODAY". */
class ReportSchedule {

  /** Whether the schedule is active or not. Must be set to either true or false. */
  core.bool active;

  /** Defines every how many days, weeks or months the report should be run. Needs to be set when "repeats" is either "DAILY", "WEEKLY" or "MONTHLY". */
  core.int every;

  /** The expiration date when the scheduled report stops running. */
  core.String expirationDate;

  /** The interval for which the report is repeated, one of:  
- "DAILY", also requires field "every" to be set. 
- "WEEKLY", also requires fields "every" and "repeatsOnWeekDays" to be set. 
- "TWICE_A_MONTH" 
- "MONTHLY", also requires fields "every" and "runsOnDayOfMonth" to be set. 
- "QUARTERLY" 
- "YEARLY" */
  core.String repeats;

  /** List of week days "WEEKLY" on which scheduled reports should run. */
  core.List<core.String> repeatsOnWeekDays;

  /** Enum to define for "MONTHLY" scheduled reports whether reports should be repeated on the same day of the month as "startDate" or the same day of the week of the month. Possible values are:  
- DAY_OF_MONTH 
- WEEK_OF_MONTH  
Example: If 'startDate' is Monday, April 2nd 2012 (2012-04-02), "DAY_OF_MONTH" would run subsequent reports on the 2nd of every Month, and "WEEK_OF_MONTH" would run subsequent reports on the first Monday of the month. */
  core.String runsOnDayOfMonth;

  /** Start date of date range for which scheduled reports should be run. */
  core.String startDate;

  /** Create new ReportSchedule from JSON data */
  ReportSchedule.fromJson(core.Map json) {
    if (json.containsKey("active")) {
      active = json["active"];
    }
    if (json.containsKey("every")) {
      every = json["every"];
    }
    if (json.containsKey("expirationDate")) {
      expirationDate = json["expirationDate"];
    }
    if (json.containsKey("repeats")) {
      repeats = json["repeats"];
    }
    if (json.containsKey("repeatsOnWeekDays")) {
      repeatsOnWeekDays = json["repeatsOnWeekDays"].toList();
    }
    if (json.containsKey("runsOnDayOfMonth")) {
      runsOnDayOfMonth = json["runsOnDayOfMonth"];
    }
    if (json.containsKey("startDate")) {
      startDate = json["startDate"];
    }
  }

  /** Create JSON Object for ReportSchedule */
  core.Map toJson() {
    var output = new core.Map();

    if (active != null) {
      output["active"] = active;
    }
    if (every != null) {
      output["every"] = every;
    }
    if (expirationDate != null) {
      output["expirationDate"] = expirationDate;
    }
    if (repeats != null) {
      output["repeats"] = repeats;
    }
    if (repeatsOnWeekDays != null) {
      output["repeatsOnWeekDays"] = repeatsOnWeekDays.toList();
    }
    if (runsOnDayOfMonth != null) {
      output["runsOnDayOfMonth"] = runsOnDayOfMonth;
    }
    if (startDate != null) {
      output["startDate"] = startDate;
    }

    return output;
  }

  /** Return String representation of ReportSchedule */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents fields that are compatible to be selected for a report of type "STANDARD". */
class ReportCompatibleFields {

  /** Dimensions which are compatible to be selected in the "dimensionFilters" section of the report. */
  core.List<Dimension> dimensionFilters;

  /** Dimensions which are compatible to be selected in the "dimensions" section of the report. */
  core.List<Dimension> dimensions;

  /** The kind of resource this is, in this case dfareporting#reportCompatibleFields. */
  core.String kind;

  /** Metrics which are compatible to be selected in the "metricNames" section of the report. */
  core.List<Metric> metrics;

  /** Metrics which are compatible to be selected as activity metrics to pivot on in the "activities" section of the report. */
  core.List<Metric> pivotedActivityMetrics;

  /** Create new ReportCompatibleFields from JSON data */
  ReportCompatibleFields.fromJson(core.Map json) {
    if (json.containsKey("dimensionFilters")) {
      dimensionFilters = json["dimensionFilters"].map((dimensionFiltersItem) => new Dimension.fromJson(dimensionFiltersItem)).toList();
    }
    if (json.containsKey("dimensions")) {
      dimensions = json["dimensions"].map((dimensionsItem) => new Dimension.fromJson(dimensionsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("metrics")) {
      metrics = json["metrics"].map((metricsItem) => new Metric.fromJson(metricsItem)).toList();
    }
    if (json.containsKey("pivotedActivityMetrics")) {
      pivotedActivityMetrics = json["pivotedActivityMetrics"].map((pivotedActivityMetricsItem) => new Metric.fromJson(pivotedActivityMetricsItem)).toList();
    }
  }

  /** Create JSON Object for ReportCompatibleFields */
  core.Map toJson() {
    var output = new core.Map();

    if (dimensionFilters != null) {
      output["dimensionFilters"] = dimensionFilters.map((dimensionFiltersItem) => dimensionFiltersItem.toJson()).toList();
    }
    if (dimensions != null) {
      output["dimensions"] = dimensions.map((dimensionsItem) => dimensionsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (metrics != null) {
      output["metrics"] = metrics.map((metricsItem) => metricsItem.toJson()).toList();
    }
    if (pivotedActivityMetrics != null) {
      output["pivotedActivityMetrics"] = pivotedActivityMetrics.map((pivotedActivityMetricsItem) => pivotedActivityMetricsItem.toJson()).toList();
    }

    return output;
  }

  /** Return String representation of ReportCompatibleFields */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of reports. */
class ReportList {

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The reports returned in this response. */
  core.List<Report> items;

  /** The kind of list this is, in this case dfareporting#reportList. */
  core.String kind;

  /** Continuation token used to page through reports. To retrieve the next page of results, set the next request's "pageToken" to the value of this field. The page token is only valid for a limited amount of time and should not be persisted. */
  core.String nextPageToken;

  /** Create new ReportList from JSON data */
  ReportList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new Report.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("nextPageToken")) {
      nextPageToken = json["nextPageToken"];
    }
  }

  /** Create JSON Object for ReportList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (nextPageToken != null) {
      output["nextPageToken"] = nextPageToken;
    }

    return output;
  }

  /** Return String representation of ReportList */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a sorted dimension. */
class SortedDimension {

  /** The kind of resource this is, in this case dfareporting#sortedDimension. */
  core.String kind;

  /** The name of the dimension. */
  core.String name;

  /** An optional sort order for the dimension column, one of:  
- "ASCENDING" 
- "DESCENDING" */
  core.String sortOrder;

  /** Create new SortedDimension from JSON data */
  SortedDimension.fromJson(core.Map json) {
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("name")) {
      name = json["name"];
    }
    if (json.containsKey("sortOrder")) {
      sortOrder = json["sortOrder"];
    }
  }

  /** Create JSON Object for SortedDimension */
  core.Map toJson() {
    var output = new core.Map();

    if (kind != null) {
      output["kind"] = kind;
    }
    if (name != null) {
      output["name"] = name;
    }
    if (sortOrder != null) {
      output["sortOrder"] = sortOrder;
    }

    return output;
  }

  /** Return String representation of SortedDimension */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents a UserProfile resource. */
class UserProfile {

  /** The account ID to which this profile belongs. */
  core.int accountId;

  /** The account name this profile belongs to. */
  core.String accountName;

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The kind of resource this is, in this case dfareporting#userProfile. */
  core.String kind;

  /** The unique ID of the user profile. */
  core.int profileId;

  /** The sub account ID this profile belongs to if applicable. */
  core.int subAccountId;

  /** The sub account name this profile belongs to if applicable. */
  core.String subAccountName;

  /** The user name. */
  core.String userName;

  /** Create new UserProfile from JSON data */
  UserProfile.fromJson(core.Map json) {
    if (json.containsKey("accountId")) {
      accountId = (json["accountId"] is core.String) ? core.int.parse(json["accountId"]) : json["accountId"];
    }
    if (json.containsKey("accountName")) {
      accountName = json["accountName"];
    }
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
    if (json.containsKey("profileId")) {
      profileId = (json["profileId"] is core.String) ? core.int.parse(json["profileId"]) : json["profileId"];
    }
    if (json.containsKey("subAccountId")) {
      subAccountId = (json["subAccountId"] is core.String) ? core.int.parse(json["subAccountId"]) : json["subAccountId"];
    }
    if (json.containsKey("subAccountName")) {
      subAccountName = json["subAccountName"];
    }
    if (json.containsKey("userName")) {
      userName = json["userName"];
    }
  }

  /** Create JSON Object for UserProfile */
  core.Map toJson() {
    var output = new core.Map();

    if (accountId != null) {
      output["accountId"] = accountId;
    }
    if (accountName != null) {
      output["accountName"] = accountName;
    }
    if (etag != null) {
      output["etag"] = etag;
    }
    if (kind != null) {
      output["kind"] = kind;
    }
    if (profileId != null) {
      output["profileId"] = profileId;
    }
    if (subAccountId != null) {
      output["subAccountId"] = subAccountId;
    }
    if (subAccountName != null) {
      output["subAccountName"] = subAccountName;
    }
    if (userName != null) {
      output["userName"] = userName;
    }

    return output;
  }

  /** Return String representation of UserProfile */
  core.String toString() => JSON.stringify(this.toJson());

}

/** Represents the list of user profiles. */
class UserProfileList {

  /** The eTag of this response for caching purposes. */
  core.String etag;

  /** The user profiles returned in this response. */
  core.List<UserProfile> items;

  /** The kind of list this is, in this case dfareporting#userProfileList. */
  core.String kind;

  /** Create new UserProfileList from JSON data */
  UserProfileList.fromJson(core.Map json) {
    if (json.containsKey("etag")) {
      etag = json["etag"];
    }
    if (json.containsKey("items")) {
      items = json["items"].map((itemsItem) => new UserProfile.fromJson(itemsItem)).toList();
    }
    if (json.containsKey("kind")) {
      kind = json["kind"];
    }
  }

  /** Create JSON Object for UserProfileList */
  core.Map toJson() {
    var output = new core.Map();

    if (etag != null) {
      output["etag"] = etag;
    }
    if (items != null) {
      output["items"] = items.map((itemsItem) => itemsItem.toJson()).toList();
    }
    if (kind != null) {
      output["kind"] = kind;
    }

    return output;
  }

  /** Return String representation of UserProfileList */
  core.String toString() => JSON.stringify(this.toJson());

}

core.Map _mapMap(core.Map source, [core.Object convert(core.Object source) = null]) {
  assert(source != null);
  var result = new dart_collection.LinkedHashMap();
  source.forEach((core.String key, value) {
    assert(key != null);
    if(convert == null) {
      result[key] = value;
    } else {
      result[key] = convert(value);
    }
  });
  return result;
}
