// To parse this JSON data, do
//
//     final lowLevel = lowLevelFromJson(jsonString);

import 'dart:convert';

LowLevel lowLevelFromJson(String str) => LowLevel.fromJson(json.decode(str));

String lowLevelToJson(LowLevel data) => json.encode(data.toJson());

class LowLevel {
    LowLevel({
        this.statewise,
    });

    List<Statewise> statewise;

    factory LowLevel.fromJson(Map<String, dynamic> json) => LowLevel(
        statewise: List<Statewise>.from(json["statewise"].map((x) => Statewise.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "statewise": List<dynamic>.from(statewise.map((x) => x.toJson())),
    };
}

class Statewise {
    Statewise({
        this.active,
        this.confirmed,
        this.deaths,
        this.deltaconfirmed,
        this.deltadeaths,
        this.deltarecovered,
        this.lastupdatedtime,
        this.migratedother,
        this.recovered,
        this.state,
        this.statecode,
        this.statenotes,
    });

    String active;
    String confirmed;
    String deaths;
    String deltaconfirmed;
    String deltadeaths;
    String deltarecovered;
    String lastupdatedtime;
    String migratedother;
    String recovered;
    String state;
    String statecode;
    String statenotes;

    factory Statewise.fromJson(Map<String, dynamic> json) => Statewise(
        active: json["active"],
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        deltaconfirmed: json["deltaconfirmed"],
        deltadeaths: json["deltadeaths"],
        deltarecovered: json["deltarecovered"],
        lastupdatedtime: json["lastupdatedtime"],
        migratedother: json["migratedother"],
        recovered: json["recovered"],
        state: json["state"],
        statecode: json["statecode"],
        statenotes: json["statenotes"],
    );

    Map<String, dynamic> toJson() => {
        "active": active,
        "confirmed": confirmed,
        "deaths": deaths,
        "deltaconfirmed": deltaconfirmed,
        "deltadeaths": deltadeaths,
        "deltarecovered": deltarecovered,
        "lastupdatedtime": lastupdatedtime,
        "migratedother": migratedother,
        "recovered": recovered,
        "state": state,
        "statecode": statecode,
        "statenotes": statenotes,
    };
}
