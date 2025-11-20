import UIKit
import Foundation

var greeting = "Hello, playground"


//usage of URL components
var components = URLComponents()
components.scheme = "https"
components.host = "google.com"
components.path = "/images"

//URL SessionDownloadTask
//func downloadTask(
//    with request: URLRequest,
//    completionHandler: @escaping @Sendable (URL?, URLResponse?, Error?) -> Void
//) -> URLSessionDownloadTask

//
//
//downloadTask.resume()
//downloadTask.cancel()
URLSessionDataTask
