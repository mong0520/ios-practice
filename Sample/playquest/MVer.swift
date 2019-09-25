/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct MVer : Codable {
	let battleinfo : Int?
	let booklist : Int?
	let bossinfo : Int?
	let casinoinfo : Int?
	let charainfo : Int?
	let chropowerinfo : Int?
	let coverinfo : Int?
	let denju : Int?
	let enemyinfo : Int?
	let episodeinfo : Int?
	let eventPortal : Int?
	let eventareainfo : Int?
	let eventbadge : Int?
	let eventplace : Int?
	let explorerinfo : Int?
	let explorerlocation : Int?
	let gachainfo : Int?
	let heroicskilllist : Int?
	let homelist : Int?
	let itemlist : Int?
	let medalinfo : Int?
	let missionlist : Int?
	let motionlist : Int?
	let openseainfo : Int?
	let questdigest : Int?
	let questroute : Int?
	let questtree : Int?
	let reload : Int?
	let repeatmissionlist : Int?
	let servertime : Int?
	let skilllist : Int?
	let sortieinfo : Int?
	let soundExData : Int?
	let spdrama : Int?
	let speedruninfo : Int?
	let spquestinfo : Int?
	let subjugationexpeditioninfo : Int?
	let supporterskill : Int?
	let teacherdisciple : Int?
	let towerinfo : Int?
	let uzuinfo : Int?
	let various : Int?
	let vignette : Int?
	let weaponcompose : Int?
	let weaponcomposeevent : Int?
	let weaponlist : Int?
	let worldinfo : Int?

	enum CodingKeys: String, CodingKey {

		case battleinfo = "battleinfo"
		case booklist = "booklist"
		case bossinfo = "bossinfo"
		case casinoinfo = "casinoinfo"
		case charainfo = "charainfo"
		case chropowerinfo = "chropowerinfo"
		case coverinfo = "coverinfo"
		case denju = "denju"
		case enemyinfo = "enemyinfo"
		case episodeinfo = "episodeinfo"
		case eventPortal = "eventPortal"
		case eventareainfo = "eventareainfo"
		case eventbadge = "eventbadge"
		case eventplace = "eventplace"
		case explorerinfo = "explorerinfo"
		case explorerlocation = "explorerlocation"
		case gachainfo = "gachainfo"
		case heroicskilllist = "heroicskilllist"
		case homelist = "homelist"
		case itemlist = "itemlist"
		case medalinfo = "medalinfo"
		case missionlist = "missionlist"
		case motionlist = "motionlist"
		case openseainfo = "openseainfo"
		case questdigest = "questdigest"
		case questroute = "questroute"
		case questtree = "questtree"
		case reload = "reload"
		case repeatmissionlist = "repeatmissionlist"
		case servertime = "servertime"
		case skilllist = "skilllist"
		case sortieinfo = "sortieinfo"
		case soundExData = "soundExData"
		case spdrama = "spdrama"
		case speedruninfo = "speedruninfo"
		case spquestinfo = "spquestinfo"
		case subjugationexpeditioninfo = "subjugationexpeditioninfo"
		case supporterskill = "supporterskill"
		case teacherdisciple = "teacherdisciple"
		case towerinfo = "towerinfo"
		case uzuinfo = "uzuinfo"
		case various = "various"
		case vignette = "vignette"
		case weaponcompose = "weaponcompose"
		case weaponcomposeevent = "weaponcomposeevent"
		case weaponlist = "weaponlist"
		case worldinfo = "worldinfo"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		battleinfo = try values.decodeIfPresent(Int.self, forKey: .battleinfo)
		booklist = try values.decodeIfPresent(Int.self, forKey: .booklist)
		bossinfo = try values.decodeIfPresent(Int.self, forKey: .bossinfo)
		casinoinfo = try values.decodeIfPresent(Int.self, forKey: .casinoinfo)
		charainfo = try values.decodeIfPresent(Int.self, forKey: .charainfo)
		chropowerinfo = try values.decodeIfPresent(Int.self, forKey: .chropowerinfo)
		coverinfo = try values.decodeIfPresent(Int.self, forKey: .coverinfo)
		denju = try values.decodeIfPresent(Int.self, forKey: .denju)
		enemyinfo = try values.decodeIfPresent(Int.self, forKey: .enemyinfo)
		episodeinfo = try values.decodeIfPresent(Int.self, forKey: .episodeinfo)
		eventPortal = try values.decodeIfPresent(Int.self, forKey: .eventPortal)
		eventareainfo = try values.decodeIfPresent(Int.self, forKey: .eventareainfo)
		eventbadge = try values.decodeIfPresent(Int.self, forKey: .eventbadge)
		eventplace = try values.decodeIfPresent(Int.self, forKey: .eventplace)
		explorerinfo = try values.decodeIfPresent(Int.self, forKey: .explorerinfo)
		explorerlocation = try values.decodeIfPresent(Int.self, forKey: .explorerlocation)
		gachainfo = try values.decodeIfPresent(Int.self, forKey: .gachainfo)
		heroicskilllist = try values.decodeIfPresent(Int.self, forKey: .heroicskilllist)
		homelist = try values.decodeIfPresent(Int.self, forKey: .homelist)
		itemlist = try values.decodeIfPresent(Int.self, forKey: .itemlist)
		medalinfo = try values.decodeIfPresent(Int.self, forKey: .medalinfo)
		missionlist = try values.decodeIfPresent(Int.self, forKey: .missionlist)
		motionlist = try values.decodeIfPresent(Int.self, forKey: .motionlist)
		openseainfo = try values.decodeIfPresent(Int.self, forKey: .openseainfo)
		questdigest = try values.decodeIfPresent(Int.self, forKey: .questdigest)
		questroute = try values.decodeIfPresent(Int.self, forKey: .questroute)
		questtree = try values.decodeIfPresent(Int.self, forKey: .questtree)
		reload = try values.decodeIfPresent(Int.self, forKey: .reload)
		repeatmissionlist = try values.decodeIfPresent(Int.self, forKey: .repeatmissionlist)
		servertime = try values.decodeIfPresent(Int.self, forKey: .servertime)
		skilllist = try values.decodeIfPresent(Int.self, forKey: .skilllist)
		sortieinfo = try values.decodeIfPresent(Int.self, forKey: .sortieinfo)
		soundExData = try values.decodeIfPresent(Int.self, forKey: .soundExData)
		spdrama = try values.decodeIfPresent(Int.self, forKey: .spdrama)
		speedruninfo = try values.decodeIfPresent(Int.self, forKey: .speedruninfo)
		spquestinfo = try values.decodeIfPresent(Int.self, forKey: .spquestinfo)
		subjugationexpeditioninfo = try values.decodeIfPresent(Int.self, forKey: .subjugationexpeditioninfo)
		supporterskill = try values.decodeIfPresent(Int.self, forKey: .supporterskill)
		teacherdisciple = try values.decodeIfPresent(Int.self, forKey: .teacherdisciple)
		towerinfo = try values.decodeIfPresent(Int.self, forKey: .towerinfo)
		uzuinfo = try values.decodeIfPresent(Int.self, forKey: .uzuinfo)
		various = try values.decodeIfPresent(Int.self, forKey: .various)
		vignette = try values.decodeIfPresent(Int.self, forKey: .vignette)
		weaponcompose = try values.decodeIfPresent(Int.self, forKey: .weaponcompose)
		weaponcomposeevent = try values.decodeIfPresent(Int.self, forKey: .weaponcomposeevent)
		weaponlist = try values.decodeIfPresent(Int.self, forKey: .weaponlist)
		worldinfo = try values.decodeIfPresent(Int.self, forKey: .worldinfo)
	}

}