//
//  main.swift
//  GetPicFromDPM
//
//  Created by  on 张颖达 2016/12/21.
//  Copyright © 2016年 张颖达. All rights reserved.
//  不惜歌者苦 但伤知音稀

import Foundation

// Open the file with json
//http://mobileapps.dpm.org.cn/AppInterfaces/Content.aspx?from=2100-01-01&m=get_date_content&to=2100-01-01
let filePath:String="/Volumes/osx2/thepalacemuseum/2016.json"
let jsonData=NSData(contentsOfFile:filePath)


// parse the json
let jsonArr=try JSONSerialization.jsonObject(with:jsonData! as Data,options: JSONSerialization.ReadingOptions.mutableContainers) as! [[String: Any]]
for json in jsonArr{
    //print("年代: ",json["content_year"]!)
    //print("月: ",json["title"]!)
    //print("日期: ",json["sub_title"]!)
    //print("content_name: ",json["content_name"]!)
    //print("content_image: ",json["content_image"]!)
    print(json["content_image"]!)
    //print("cover_image: ",json["cover_image"]!)
}

