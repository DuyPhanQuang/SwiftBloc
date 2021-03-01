//
//  ViewController.swift
//  SwiftBloc
//
//  Created by v.kachalov on 02/27/2021.
//  Copyright (c) 2021 v.kachalov. All rights reserved.
//

import SwiftBloc
import SwiftUI

struct CubitContentView: View {
    @ObservedObject var cubit = CounterCubit()

    var body: some View {
        VStack {
            Button(action: {
                self.cubit.increment()
            }, label: {
                Text("Increment")
            })
            Button(action: {
                self.cubit.decrement()
            }, label: {
                Text("Decrement")
            })
            Text("Count: \(cubit.state)")
        }
    }
}

struct CubitContentView_Previews: PreviewProvider {
    static var previews: some View {
        CubitContentView()
    }
}
