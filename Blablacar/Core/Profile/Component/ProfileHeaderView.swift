//
//  ProfileHeaderView.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import SwiftUI

struct ProfileHeaderView: View {
    @Binding var selectedOption: ProfileSectionOption
    var nameSpace: Namespace.ID
    
    var body: some View {
        HStack(spacing: 0) {
            ForEach(ProfileSectionOption.allCases, id: \.rawValue) { option in
                            
                Button {
                    withAnimation {
                        selectedOption = option
                    }
                } label: {
                                
                    VStack(spacing: 10) {
                        Text(option.rawValue)
                            .foregroundStyle(selectedOption == option ? .title : .subTitle)
                                    
                        ZStack {
                            if selectedOption == option {
                                Rectangle()
                                    .frame(height: 1)
                                    .matchedGeometryEffect(id: "underline", in:nameSpace)
                            }
                            else {
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundStyle(.clear)
                                               
                            }
                        }
                               
                    }.foregroundStyle(.title)
                                  
                }
                            
            }
                        
        }
    }
}

