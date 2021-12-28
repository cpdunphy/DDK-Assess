//
//  AboutDDK.swift
//  AboutDDK
//
//  Created by Collin Dunphy on 7/23/21.
//

import SwiftUI
import StoreKit

struct AboutDDK: View {
    var body: some View {
        ScrollView {
            VStack {
                
                // App Information
                VStack {
                    Text("DDK")
                        .font(.system(size: 100, weight: .regular, design: .rounded))
                    Text("Version \(getAppCurrentVersionNumber())".capitalized)
                        .font(.system(.callout, design: .rounded))
                        .foregroundColor(.secondary)
                }//.padding(.bottom, 32)
                
                // Description
                VStack {
                    Text("Made with love. ❤️")
                        .font(.headline)
                        .padding(.bottom, 4)
                    
                    Text("DDK, an assessment utility tool, orignally was intended for Speech Language Pathologists, but has grown to serve a bigger purpose.")
                }
                .padding(.vertical)
                
                // Contact + People Ackknolegments
                VStack {
                    Divider()
                    
                    HStack {
                        Text("Collin Dunphy")
                        Spacer()
                        
                        // TODO: Contact Logos + Links
                        Image(systemName: "applelogo")
                            .font(.largeTitle)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Made in partnership with\n")
                            .foregroundColor(.secondary)
                        + Text("Kelly Lundis M.S. CCC-SLP")
                        
                    }.padding(.top)
                }.padding(.vertical)
                
                // TODO: 3rd Party Packages
                
                
            }
            .multilineTextAlignment(.center)
            .scenePadding()
        }
        .navigationTitle("About")
        .navigationBarTitleDisplayMode(.inline)
    }
    
    func getAppCurrentVersionNumber() -> String {
        let dictionary = Bundle.main.infoDictionary!
        let version: AnyObject? = dictionary["CFBundleShortVersionString"] as AnyObject?
        let build : AnyObject? = dictionary["CFBundleVersion"] as AnyObject?
        let versionStr = version as! String
        let buildStr = build as! String
        return "\(versionStr) (\(buildStr))"
    }
    
    func versionDescription() -> String {
        return "\(getAppCurrentVersionNumber())"
    }
}

struct AboutDDK_Previews: PreviewProvider {
    static var previews: some View {
        AboutDDK()
    }
}
