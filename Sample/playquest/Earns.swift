/* 
Copyright (c) 2019 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Earns : Codable {
	let bonus : Bonus?
	let bonus_gold : Int?
	let chara_exp : Int?
	let exp : Int?
	let gold : Int?
	let is_comeback_exp_up : Bool?
	let is_newcomer_exp_up : Bool?
	let point : Int?
	let treasure : [Treasure]?

	enum CodingKeys: String, CodingKey {

		case bonus = "bonus"
		case bonus_gold = "bonus_gold"
		case chara_exp = "chara_exp"
		case exp = "exp"
		case gold = "gold"
		case is_comeback_exp_up = "is_comeback_exp_up"
		case is_newcomer_exp_up = "is_newcomer_exp_up"
		case point = "point"
		case treasure = "treasure"
	}

	init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: CodingKeys.self)
		bonus = try values.decodeIfPresent(Bonus.self, forKey: .bonus)
		bonus_gold = try values.decodeIfPresent(Int.self, forKey: .bonus_gold)
		chara_exp = try values.decodeIfPresent(Int.self, forKey: .chara_exp)
		exp = try values.decodeIfPresent(Int.self, forKey: .exp)
		gold = try values.decodeIfPresent(Int.self, forKey: .gold)
		is_comeback_exp_up = try values.decodeIfPresent(Bool.self, forKey: .is_comeback_exp_up)
		is_newcomer_exp_up = try values.decodeIfPresent(Bool.self, forKey: .is_newcomer_exp_up)
		point = try values.decodeIfPresent(Int.self, forKey: .point)
		treasure = try values.decodeIfPresent([Treasure].self, forKey: .treasure)
	}

}