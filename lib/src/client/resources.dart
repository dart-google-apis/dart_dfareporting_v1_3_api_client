part of dfareporting_v1_3_api;

class DimensionValuesResource_ {

  final Client _client;

  DimensionValuesResource_(Client client) :
      _client = client;

  /**
   * Retrieves list of report dimension values for a list of filters.
   *
   * [request] - DimensionValueRequest to send in this request
   *
   * [profileId] - The DFA user profile ID.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 100
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<DimensionValueList> query(DimensionValueRequest request, core.int profileId, {core.int maxResults, core.String pageToken, core.Map optParams}) {
    var url = "userprofiles/{profileId}/dimensionvalues/query";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new DimensionValueList.fromJson(data));
  }
}

class FilesResource_ {

  final Client _client;

  FilesResource_(Client client) :
      _client = client;

  /**
   * Retrieves a report file by its report ID and file ID.
   *
   * [reportId] - The ID of the report.
   *
   * [fileId] - The ID of the report file.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<File> get(core.int reportId, core.int fileId, {core.Map optParams}) {
    var url = "reports/{reportId}/files/{fileId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (fileId == null) paramErrors.add("fileId is required");
    if (fileId != null) urlParams["fileId"] = fileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new File.fromJson(data));
  }

  /**
   * Lists files for a user profile.
   *
   * [profileId] - The DFA profile ID.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 10
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [scope] - The scope that defines which results are returned, default is 'MINE'.
   *   Default: MINE
   *   Allowed values:
   *     ALL - All files in account.
   *     MINE - My files.
   *     SHARED_WITH_ME - Files shared with me.
   *
   * [sortField] - The field by which to sort the list.
   *   Default: LAST_MODIFIED_TIME
   *   Allowed values:
   *     ID - Sort by file ID.
   *     LAST_MODIFIED_TIME - Sort by 'lastmodifiedAt' field.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   *   Default: DESCENDING
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<FileList> list(core.int profileId, {core.int maxResults, core.String pageToken, core.String scope, core.String sortField, core.String sortOrder, core.Map optParams}) {
    var url = "userprofiles/{profileId}/files";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (scope != null && !["ALL", "MINE", "SHARED_WITH_ME"].contains(scope)) {
      paramErrors.add("Allowed values for scope: ALL, MINE, SHARED_WITH_ME");
    }
    if (scope != null) queryParams["scope"] = scope;
    if (sortField != null && !["ID", "LAST_MODIFIED_TIME"].contains(sortField)) {
      paramErrors.add("Allowed values for sortField: ID, LAST_MODIFIED_TIME");
    }
    if (sortField != null) queryParams["sortField"] = sortField;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new FileList.fromJson(data));
  }
}

class ReportsResource_ {

  final Client _client;

  final ReportsCompatibleFieldsResource_ compatibleFields;
  final ReportsFilesResource_ files;

  ReportsResource_(Client client) :
      _client = client,
      compatibleFields = new ReportsCompatibleFieldsResource_(client),
      files = new ReportsFilesResource_(client);

  /**
   * Deletes a report by its ID.
   *
   * [profileId] - The DFA user profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<core.Map> delete(core.int profileId, core.int reportId, {core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports/{reportId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "DELETE", urlParams: urlParams, queryParams: queryParams);
    return response;
  }

  /**
   * Retrieves a report by its ID.
   *
   * [profileId] - The DFA user profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> get(core.int profileId, core.int reportId, {core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports/{reportId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }

  /**
   * Creates a report.
   *
   * [request] - Report to send in this request
   *
   * [profileId] - The DFA user profile ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> insert(Report request, core.int profileId, {core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }

  /**
   * Retrieves list of reports.
   *
   * [profileId] - The DFA user profile ID.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 10
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [scope] - The scope that defines which results are returned, default is 'MINE'.
   *   Default: MINE
   *   Allowed values:
   *     ALL - All reports in account.
   *     MINE - My reports.
   *
   * [sortField] - The field by which to sort the list.
   *   Default: LAST_MODIFIED_TIME
   *   Allowed values:
   *     ID - Sort by report ID.
   *     LAST_MODIFIED_TIME - Sort by 'lastModifiedTime' field.
   *     NAME - Sort by name of reports.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   *   Default: DESCENDING
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<ReportList> list(core.int profileId, {core.int maxResults, core.String pageToken, core.String scope, core.String sortField, core.String sortOrder, core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (scope != null && !["ALL", "MINE"].contains(scope)) {
      paramErrors.add("Allowed values for scope: ALL, MINE");
    }
    if (scope != null) queryParams["scope"] = scope;
    if (sortField != null && !["ID", "LAST_MODIFIED_TIME", "NAME"].contains(sortField)) {
      paramErrors.add("Allowed values for sortField: ID, LAST_MODIFIED_TIME, NAME");
    }
    if (sortField != null) queryParams["sortField"] = sortField;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new ReportList.fromJson(data));
  }

  /**
   * Updates a report. This method supports patch semantics.
   *
   * [request] - Report to send in this request
   *
   * [profileId] - The DFA user profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> patch(Report request, core.int profileId, core.int reportId, {core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports/{reportId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PATCH", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }

  /**
   * Runs a report.
   *
   * [profileId] - The DFA profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * [synchronous] - If set and true, tries to run the report synchronously.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<File> run(core.int profileId, core.int reportId, {core.bool synchronous, core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports/{reportId}/run";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (synchronous != null) queryParams["synchronous"] = synchronous;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new File.fromJson(data));
  }

  /**
   * Updates a report.
   *
   * [request] - Report to send in this request
   *
   * [profileId] - The DFA user profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<Report> update(Report request, core.int profileId, core.int reportId, {core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports/{reportId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "PUT", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new Report.fromJson(data));
  }
}

class ReportsCompatibleFieldsResource_ {

  final Client _client;

  ReportsCompatibleFieldsResource_(Client client) :
      _client = client;

  /**
   * Returns the fields that are compatible to be selected in the respective sections of a report criteria, given the fields already selected in the input report and user permissions.
   *
   * [request] - Report to send in this request
   *
   * [profileId] - The DFA user profile ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<CompatibleFields> query(Report request, core.int profileId, {core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports/compatiblefields/query";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "POST", body: request.toString(), urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new CompatibleFields.fromJson(data));
  }
}

class ReportsFilesResource_ {

  final Client _client;

  ReportsFilesResource_(Client client) :
      _client = client;

  /**
   * Retrieves a report file.
   *
   * [profileId] - The DFA profile ID.
   *
   * [reportId] - The ID of the report.
   *
   * [fileId] - The ID of the report file.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<File> get(core.int profileId, core.int reportId, core.int fileId, {core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports/{reportId}/files/{fileId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (fileId == null) paramErrors.add("fileId is required");
    if (fileId != null) urlParams["fileId"] = fileId;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new File.fromJson(data));
  }

  /**
   * Lists files for a report.
   *
   * [profileId] - The DFA profile ID.
   *
   * [reportId] - The ID of the parent report.
   *
   * [maxResults] - Maximum number of results to return.
   *   Minimum: 0
   *   Maximum: 10
   *
   * [pageToken] - The value of the nextToken from the previous result page.
   *
   * [sortField] - The field by which to sort the list.
   *   Default: LAST_MODIFIED_TIME
   *   Allowed values:
   *     ID - Sort by file ID.
   *     LAST_MODIFIED_TIME - Sort by 'lastmodifiedAt' field.
   *
   * [sortOrder] - Order of sorted results, default is 'DESCENDING'.
   *   Default: DESCENDING
   *   Allowed values:
   *     ASCENDING - Ascending order.
   *     DESCENDING - Descending order.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<FileList> list(core.int profileId, core.int reportId, {core.int maxResults, core.String pageToken, core.String sortField, core.String sortOrder, core.Map optParams}) {
    var url = "userprofiles/{profileId}/reports/{reportId}/files";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (maxResults != null) queryParams["maxResults"] = maxResults;
    if (pageToken != null) queryParams["pageToken"] = pageToken;
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (reportId == null) paramErrors.add("reportId is required");
    if (reportId != null) urlParams["reportId"] = reportId;
    if (sortField != null && !["ID", "LAST_MODIFIED_TIME"].contains(sortField)) {
      paramErrors.add("Allowed values for sortField: ID, LAST_MODIFIED_TIME");
    }
    if (sortField != null) queryParams["sortField"] = sortField;
    if (sortOrder != null && !["ASCENDING", "DESCENDING"].contains(sortOrder)) {
      paramErrors.add("Allowed values for sortOrder: ASCENDING, DESCENDING");
    }
    if (sortOrder != null) queryParams["sortOrder"] = sortOrder;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new FileList.fromJson(data));
  }
}

class UserProfilesResource_ {

  final Client _client;

  UserProfilesResource_(Client client) :
      _client = client;

  /**
   * Gets one user profile by ID.
   *
   * [profileId] - The user profile ID.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UserProfile> get(core.int profileId, {core.Map optParams}) {
    var url = "userprofiles/{profileId}";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (profileId == null) paramErrors.add("profileId is required");
    if (profileId != null) urlParams["profileId"] = profileId;
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UserProfile.fromJson(data));
  }

  /**
   * Retrieves list of user profiles for a user.
   *
   * [optParams] - Additional query parameters
   */
  async.Future<UserProfileList> list({core.Map optParams}) {
    var url = "userprofiles";
    var urlParams = new core.Map();
    var queryParams = new core.Map();

    var paramErrors = new core.List();
    if (optParams != null) {
      optParams.forEach((key, value) {
        if (value != null && queryParams[key] == null) {
          queryParams[key] = value;
        }
      });
    }

    if (!paramErrors.isEmpty) {
      throw new core.ArgumentError(paramErrors.join(" / "));
    }

    var response;
    response = _client.request(url, "GET", urlParams: urlParams, queryParams: queryParams);
    return response
      .then((data) => new UserProfileList.fromJson(data));
  }
}

