/// updated : 1638275845891
/// country : "Afghanistan"
/// countryInfo : {"_id":4,"iso2":"AF","iso3":"AFG","lat":33,"long":65,"flag":"https://disease.sh/assets/img/flags/af.png"}
/// cases : 157289
/// todayCases : 28
/// deaths : 7308
/// todayDeaths : 0
/// recovered : 140549
/// todayRecovered : 19
/// active : 9432
/// critical : 1124
/// casesPerOneMillion : 3916
/// deathsPerOneMillion : 182
/// tests : 792156
/// testsPerOneMillion : 19724
/// population : 40162033
/// continent : "Asia"
/// oneCasePerPeople : 255
/// oneDeathPerPeople : 5496
/// oneTestPerPeople : 51
/// activePerOneMillion : 234.85
/// recoveredPerOneMillion : 3499.55
/// criticalPerOneMillion : 27.99

class CountriesListModel {
  CountriesListModel({
      int? updated, 
      String? country, 
      CountryInfo? countryInfo, 
      int? cases, 
      int? todayCases, 
      int? deaths, 
      int? todayDeaths, 
      int? recovered, 
      int? todayRecovered, 
      int? active, 
      int? critical, 
      int? casesPerOneMillion, 
      int? deathsPerOneMillion, 
      int? tests, 
      int? testsPerOneMillion, 
      int? population, 
      String? continent, 
      int? oneCasePerPeople, 
      int? oneDeathPerPeople, 
      int? oneTestPerPeople, 
      double? activePerOneMillion, 
      double? recoveredPerOneMillion, 
      double? criticalPerOneMillion,}){
    _updated = updated;
    _country = country;
    _countryInfo = countryInfo;
    _cases = cases;
    _todayCases = todayCases;
    _deaths = deaths;
    _todayDeaths = todayDeaths;
    _recovered = recovered;
    _todayRecovered = todayRecovered;
    _active = active;
    _critical = critical;
    _casesPerOneMillion = casesPerOneMillion;
    _deathsPerOneMillion = deathsPerOneMillion;
    _tests = tests;
    _testsPerOneMillion = testsPerOneMillion;
    _population = population;
    _continent = continent;
    _oneCasePerPeople = oneCasePerPeople;
    _oneDeathPerPeople = oneDeathPerPeople;
    _oneTestPerPeople = oneTestPerPeople;
    _activePerOneMillion = activePerOneMillion;
    _recoveredPerOneMillion = recoveredPerOneMillion;
    _criticalPerOneMillion = criticalPerOneMillion;
}

  CountriesListModel.fromJson(dynamic json) {
    _updated = json['updated'];
    _country = json['country'];
    _countryInfo = json['countryInfo'] != null ? CountryInfo.fromJson(json['countryInfo']) : null;
    _cases = json['cases'];
    _todayCases = json['todayCases'];
    _deaths = json['deaths'];
    _todayDeaths = json['todayDeaths'];
    _recovered = json['recovered'];
    _todayRecovered = json['todayRecovered'];
    _active = json['active'];
    _critical = json['critical'];
    _casesPerOneMillion = json['casesPerOneMillion'];
    _deathsPerOneMillion = json['deathsPerOneMillion'];
    _tests = json['tests'];
    _testsPerOneMillion = json['testsPerOneMillion'];
    _population = json['population'];
    _continent = json['continent'];
    _oneCasePerPeople = json['oneCasePerPeople'];
    _oneDeathPerPeople = json['oneDeathPerPeople'];
    _oneTestPerPeople = json['oneTestPerPeople'];
    _activePerOneMillion = json['activePerOneMillion'];
    _recoveredPerOneMillion = json['recoveredPerOneMillion'];
    _criticalPerOneMillion = json['criticalPerOneMillion'];
  }
  int? _updated;
  String? _country;
  CountryInfo? _countryInfo;
  int? _cases;
  int? _todayCases;
  int? _deaths;
  int? _todayDeaths;
  int? _recovered;
  int? _todayRecovered;
  int? _active;
  int? _critical;
  int? _casesPerOneMillion;
  int? _deathsPerOneMillion;
  int? _tests;
  int? _testsPerOneMillion;
  int? _population;
  String? _continent;
  int? _oneCasePerPeople;
  int? _oneDeathPerPeople;
  int? _oneTestPerPeople;
  double? _activePerOneMillion;
  double? _recoveredPerOneMillion;
  double? _criticalPerOneMillion;

  int? get updated => _updated;
  String? get country => _country;
  CountryInfo? get countryInfo => _countryInfo;
  int? get cases => _cases;
  int? get todayCases => _todayCases;
  int? get deaths => _deaths;
  int? get todayDeaths => _todayDeaths;
  int? get recovered => _recovered;
  int? get todayRecovered => _todayRecovered;
  int? get active => _active;
  int? get critical => _critical;
  int? get casesPerOneMillion => _casesPerOneMillion;
  int? get deathsPerOneMillion => _deathsPerOneMillion;
  int? get tests => _tests;
  int? get testsPerOneMillion => _testsPerOneMillion;
  int? get population => _population;
  String? get continent => _continent;
  int? get oneCasePerPeople => _oneCasePerPeople;
  int? get oneDeathPerPeople => _oneDeathPerPeople;
  int? get oneTestPerPeople => _oneTestPerPeople;
  double? get activePerOneMillion => _activePerOneMillion;
  double? get recoveredPerOneMillion => _recoveredPerOneMillion;
  double? get criticalPerOneMillion => _criticalPerOneMillion;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['updated'] = _updated;
    map['country'] = _country;
    if (_countryInfo != null) {
      map['countryInfo'] = _countryInfo?.toJson();
    }
    map['cases'] = _cases;
    map['todayCases'] = _todayCases;
    map['deaths'] = _deaths;
    map['todayDeaths'] = _todayDeaths;
    map['recovered'] = _recovered;
    map['todayRecovered'] = _todayRecovered;
    map['active'] = _active;
    map['critical'] = _critical;
    map['casesPerOneMillion'] = _casesPerOneMillion;
    map['deathsPerOneMillion'] = _deathsPerOneMillion;
    map['tests'] = _tests;
    map['testsPerOneMillion'] = _testsPerOneMillion;
    map['population'] = _population;
    map['continent'] = _continent;
    map['oneCasePerPeople'] = _oneCasePerPeople;
    map['oneDeathPerPeople'] = _oneDeathPerPeople;
    map['oneTestPerPeople'] = _oneTestPerPeople;
    map['activePerOneMillion'] = _activePerOneMillion;
    map['recoveredPerOneMillion'] = _recoveredPerOneMillion;
    map['criticalPerOneMillion'] = _criticalPerOneMillion;
    return map;
  }

}

/// _id : 4
/// iso2 : "AF"
/// iso3 : "AFG"
/// lat : 33
/// long : 65
/// flag : "https://disease.sh/assets/img/flags/af.png"

class CountryInfo {
  CountryInfo({
      int? id, 
      String? iso2, 
      String? iso3, 
      int? lat, 
      int? long, 
      String? flag,}){
    _id = id;
    _iso2 = iso2;
    _iso3 = iso3;
    _lat = lat;
    _long = long;
    _flag = flag;
}

  CountryInfo.fromJson(dynamic json) {
    _id = json['_id'];
    _iso2 = json['iso2'];
    _iso3 = json['iso3'];
    _lat = json['lat'];
    _long = json['long'];
    _flag = json['flag'];
  }
  int? _id;
  String? _iso2;
  String? _iso3;
  int? _lat;
  int? _long;
  String? _flag;

  int? get id => _id;
  String? get iso2 => _iso2;
  String? get iso3 => _iso3;
  int? get lat => _lat;
  int? get long => _long;
  String? get flag => _flag;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['_id'] = _id;
    map['iso2'] = _iso2;
    map['iso3'] = _iso3;
    map['lat'] = _lat;
    map['long'] = _long;
    map['flag'] = _flag;
    return map;
  }

}