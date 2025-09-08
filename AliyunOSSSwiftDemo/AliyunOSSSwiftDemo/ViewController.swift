//
//  ViewController.swift
//  AliyunOSSSwiftDemo
//
//  Created by sylar on 2025/9/8.
//

import UIKit
import AliyunOSSiOS
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Import AliyunOSSiOS successfully")
        let credentialProvider = OSSFederationCredentialProvider.init(federationTokenGetter: {
            print("Dummy Initialization")
            var token = OSSFederationToken()
            return token
        })
        
        let cfg = OSSClientConfiguration()
        
        let _ = OSSClient.init(endpoint: "https://oss-cn-hangzhou.aliyuncs.com", credentialProvider: credentialProvider, clientConfiguration: cfg)
    }


}

