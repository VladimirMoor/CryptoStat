//
//  MarketDataModel.swift
//  CryptoStat
//
//  Created by Владимир Муравьев on 17.03.2022.
//

import Foundation

/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
   "data": {
     "active_cryptocurrencies": 13223,
     "upcoming_icos": 0,
     "ongoing_icos": 49,
     "ended_icos": 3376,
     "markets": 775,
     "total_market_cap": {
       "btc": 46545924.17623243,
       "eth": 683713948.6019261,
       "ltc": 17287101598.382217,
       "bch": 6380669355.063816,
       "bnb": 4928138058.203084,
       "eos": 915810103281.4429,
       "xrp": 2404368187115.9673,
       "xlm": 10139501355866.643,
       "link": 127973300753.45668,
       "dot": 100836831845.24004,
       "yfi": 98257715.1408388,
       "usd": 1897120928447.6455,
       "aed": 6968138450034.711,
       "ars": 207582949225290.06,
       "aud": 2585265499944.3857,
       "bdt": 162855967112943.84,
       "bhd": 715440347415.2483,
       "bmd": 1897120928447.6455,
       "brl": 9632821226285.764,
       "cad": 2401115765661.828,
       "chf": 1783295569861.7124,
       "clp": 1511588013368513.2,
       "cny": 12046717895642.521,
       "czk": 42362710332235.9,
       "dkk": 12778405186688.988,
       "eur": 1716693345426.7014,
       "gbp": 1436757975466.8264,
       "hkd": 14831604151040.982,
       "huf": 638579441559657,
       "idr": 27175403595594704,
       "ils": 6153922604358.869,
       "inr": 143787230635777.6,
       "jpy": 225056404302208.2,
       "krw": 2296692934895561,
       "kwd": 576491416373.8846,
       "lkr": 501682658477650.56,
       "mmk": 3366291260507899,
       "mxn": 39071414204681.336,
       "myr": 7959370855302.108,
       "ngn": 789050536559944.9,
       "nok": 16779196084669.03,
       "nzd": 2770737527514.069,
       "php": 99134057910273.33,
       "pkr": 340102854259338.1,
       "pln": 8042538739684.295,
       "rub": 195403446144502.78,
       "sar": 7117808011442.725,
       "sek": 17897793600588.7,
       "sgd": 2570337055358.429,
       "thb": 63071416790240.39,
       "try": 28071869119123.34,
       "twd": 53552878128684.516,
       "uah": 55776518231489.625,
       "vef": 189958718565.46277,
       "vnd": 43382596123512110,
       "zar": 28318646609495.83,
       "xdr": 1361436583244.6672,
       "xag": 74881468850.0592,
       "xau": 976296372.1977283,
       "bits": 46545924176232.43,
       "sats": 4654592417623243
     },
     "total_volume": {
       "btc": 2279408.0715062395,
       "eth": 33482267.687799502,
       "ltc": 846569481.9401983,
       "bch": 312468803.3796007,
       "bnb": 241336655.48961604,
       "eos": 44848286468.2837,
       "xrp": 117744708040.05362,
       "xlm": 496543180539.37177,
       "link": 6267001457.963877,
       "dot": 4938096997.341909,
       "yfi": 4811794.65105891,
       "usd": 92904219509.1935,
       "aed": 341237848586.8048,
       "ars": 10165578583845.31,
       "aud": 126603459955.98265,
       "bdt": 7975246221875.452,
       "bhd": 35035946357.08758,
       "bmd": 92904219509.1935,
       "brl": 471730464979.8809,
       "cad": 117585433176.66417,
       "chf": 87330059242.86127,
       "clp": 74024224020535.12,
       "cny": 589941793883.3774,
       "czk": 2074551221640.2896,
       "dkk": 625773371976.3413,
       "eur": 84068470808.55203,
       "gbp": 70359709986.21458,
       "hkd": 726320914528.7772,
       "huf": 31271978355782.4,
       "idr": 1330811137570417,
       "ils": 301364751136.74963,
       "inr": 7041428006666.9795,
       "jpy": 11021274012485.37,
       "krw": 112471725639201.64,
       "kwd": 28231455511.795166,
       "lkr": 24567983584104.793,
       "mmk": 164851200315423.75,
       "mxn": 1913372620255.9836,
       "myr": 389779652950.8219,
       "ngn": 38640722978263.766,
       "nok": 821696757893.7925,
       "nzd": 135686240976.2989,
       "php": 4854710176261.333,
       "pkr": 16655232544225.643,
       "pln": 393852481029.884,
       "rub": 9569134144925.83,
       "sar": 348567341176.5433,
       "sek": 876475779938.7793,
       "sgd": 125872396652.6647,
       "thb": 3088680675211.9136,
       "try": 1374712097457.2905,
       "twd": 2622546760415.2764,
       "uah": 2731441003856.834,
       "vef": 9302499499.455545,
       "vnd": 2124496215660552.2,
       "zar": 1386797078331.0474,
       "xdr": 66671133759.04097,
       "xag": 3667032667.7115254,
       "xau": 47810369.44382121,
       "bits": 2279408071506.2393,
       "sats": 227940807150623.94
     },
     "market_cap_percentage": {
       "btc": 40.789298603495396,
       "eth": 17.48348217235974,
       "usdt": 4.212467771592057,
       "bnb": 3.41000123154488,
       "usdc": 2.756243058016159,
       "xrp": 1.9940237968064398,
       "luna": 1.7162357284862546,
       "sol": 1.4717310900536362,
       "ada": 1.430962337923257,
       "dot": 1.093156112557534
     },
     "market_cap_change_percentage_24h_usd": 1.5188807590426348,
     "updated_at": 1647518519
   }
 }
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double

    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { key, value in
            return key == "usd"
        }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
    
}
