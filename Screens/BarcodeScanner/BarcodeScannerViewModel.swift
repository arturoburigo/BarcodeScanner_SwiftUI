//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Arturo Burigo on 5/18/23.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned": scannedCode
    }
    
    var statusTextColor: Color {
       scannedCode.isEmpty ? .red : .green
    }
    
}
