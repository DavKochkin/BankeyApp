//
//  AccountSummaryViewControllerTests.swift
//  BankeyUnitTests
//
//  Created by David Kochkin on 07.06.2023.
//

import Foundation
import XCTest

@testable import Bankey

class AccountSummaryViewControllerTests: XCTestCase {
    var vc: AccountSummaryViewController!
    var mockManager: MockProfileManager!
    
    class MockProfileManager: ProfileManageable {
            var profile: Profile?
            var error: NetworkError?
            
            func fetchProfile(forUserId userId: String, completion: @escaping (Result<Profile, NetworkError>) -> Void) {
                if error != nil {
                    completion(.failure(error!))
                    return
                }
                profile = Profile(id: "1", firstName: "FirstName", lastName: "LastName")
                completion(.success(profile!))
            }
        }
    
    override func setUp() {
        super.setUp()
        vc = AccountSummaryViewController()
        // vc.loadViewIfNeeded()
        
        mockManager = MockProfileManager()
        vc.profileManager = mockManager
    }
    
    func testSomething() throws {
        let titleAndMessage = vc.titleAndMessageForTesting(for: .serverError)
        XCTAssertEqual("Server Error", titleAndMessage.0)
        XCTAssertEqual("Please check your connectivity and try again", titleAndMessage.1)
    }
    
    func testSomething1() throws {
        let titleAndMessage = vc.titleAndMessageForTesting(for: .decodingError)
        XCTAssertEqual("Decoding Error", titleAndMessage.0)
        XCTAssertEqual("We could not process your request. Please try again", titleAndMessage.1)
    }
    
    func testAlertForServerError() throws {
        mockManager.error = NetworkError.serverError
        vc.forceGetchProfile()
        
        XCTAssertEqual("Server Error", vc.errorAlert.title)
        XCTAssertEqual("Please check your connectivity and try again", vc.errorAlert.message)
    }
}
