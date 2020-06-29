//
//  RemoteAPI.swift
//  HospitalFaceDetect
//
//  Created by song on 2019/9/12.
//  Copyright © 2019 song. All rights reserved.

import Foundation
import PromiseKit

protocol RemoteAPI {
    func login(name: String, idCard: String) -> Promise<UserSession>
    func agreement(userSession: UserSession) -> Promise<UserSession>
//    func recognizeFace(name: String, idCard: String) -> Promise<UserSession>
    func checkInFace(userSession: UserSession,faceStrs: [String]) -> Promise<UserSession>
    func loadAgreeHtml() -> Promise<String>
}
