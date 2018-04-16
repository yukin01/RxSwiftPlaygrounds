//: Playground - noun: a place where people can play

import UIKit
import RxSwift
import RxCocoa

let selectedUser = Variable<String?>(nil)
let showUser = PublishSubject<Void>()

let disposable1  = selectedUser.asObservable()
    .filter { $0 != nil }
    .subscribe({ _ in
        showUser.onNext(())
    })

let disposable2 = showUser
    .flatMap { selectedUser.asObservable() }
    .subscribe(onNext: { user in
        print("print user = ", user as Any)
    })

print("set apple")
selectedUser.value = "apple"

selectedUser.value = nil

disposable1.dispose()
disposable2.dispose()

