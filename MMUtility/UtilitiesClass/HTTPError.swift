//
//  HTTPError.swift
//  ConstantsAndUtilities
//
//  Created by manish on 29/12/16.
//  Copyright © 2016 manish. All rights reserved.
//

import Foundation

enum Errors: Error {
    // 4xx Client Error
    case Bad_Request // 400
    case Unauthorized // 401
    case Payment_Required // 402
    case Forbidden // 403
    case Not_Found // 404
    case Method_Not_Allowed // 405
    case Not_Acceptable // 406
    case Proxy_Authentication_Required // 407
    case Request_Time_out // 408
    case Conflict // 409
    case Length_Required // 411
    case URI_Too_Long // 414
    case Unsupported_Media_Type // 415
    case Expectation_Failed // 417
    case Locked // 423
    case Upgrade_Required // 426
    case Too_Many_Requests // 429
    case Request_Header_Fields_Too_Large // 431
    
    // 5xx Server Error
    case Internal_Server_Error // 500
    case Not_Implemented // 501
    case Bad_Gateway // 502
    case Service_Unavailable // 503
    case Gateway_Time_out // 504
    case HTTP_Version_Not_Supported // 505
    case Insufficient_Storage // 507
    case Network_Authentication_Required // 511
    
    // Unofficial codes
    case Method_Failure // 420
    case Invalid_Token // 498
    case Token_Required // 499
    case Bandwidth_Limit_Exceeded // 509
    
    // nginx
    case No_Response // 444
    case SSL_Certificate_Error // 495
    case SSL_Certificate_Required // 496
    
    // Cloudflare
    case Unknown_Error //520
    case Web_Server_Is_Down // 521
    case Connection_Timed_Out // 522
    case Origin_Is_Unreachable // 523
    case A_Timeout_Occurred // 524
    case Invalid_SSL_Certificate // 526
    
}

