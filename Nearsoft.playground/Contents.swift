//: Playground - Nearsoft a great place to code
import UIKit
import Foundation

protocol TeamProtocol{
    var name:String {get set}
}

struct TeamStruct:TeamProtocol{
    var name: String
}

class TeamClass:TeamProtocol{
    var name:String
    init(name:String){
        self.name = name
    }
}

func changeNameBy(byName:String, team:TeamProtocol){
    var t = team
    t.name = byName
}

var teamStr = TeamStruct(name: "Mexico")
var teamCls = TeamClass(name: "Germany")

changeNameBy(byName:"Mexico don't quit", team: teamStr)
changeNameBy(byName:"Germany, the current champion", team: teamCls)

print("\tteamStr.name..:\(teamStr.name)")
print("\tteamCls.name..:\(teamCls.name)")

