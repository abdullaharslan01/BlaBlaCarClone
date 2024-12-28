//
//  ProfileView.swift
//  Blablacar
//
//  Created by abdullah on 25.12.2024.
//

import SwiftUI

enum ProfileSectionOption: String, CaseIterable {
    case about = "About", account = "Accoount"
}

struct ProfileView: View {
   
    @Namespace var animation
    
    @State var vm = ProfileViewModel()
    
    var body: some View {
        VStack {
            
            ProfileHeaderView(selectedOption: $vm.selectedOption, nameSpace: animation)
        
            ZStack {
                if vm.selectedOption == .about {
                    ScrollView {

                        VStack {
                            profileSectionView
                                                    
                            ProfileSectionSeparator()
                                                    
                            verifiedSectionView
                                                    
                            ProfileSectionSeparator()
                                                    
                            aboutSectionView
                                                    
                            ProfileSectionSeparator()
                                                    
                            VStack(spacing: 25) {
                                profileSectionHeaderView(ConstantStrigns.Profile.vehicles)
                                                        
                                AddInfoView(title: ConstantStrigns.Profile.addCar) {}
                            }.padding(.vertical)
                                                    
                        }.padding(.horizontal)
                            .padding(.bottom, getSafeArea().bottom + 80)
                    }.transition(.move(edge: .leading))
                }
                
                else {
                    ScrollView {
                        accountSectionView
                    }.transition(.move(edge: .trailing))
                        .padding(.bottom, getSafeArea().bottom + 80)
                }
            }
            
        }
    }
    
}

struct AccountSettignsView: View {
    
    // I will use NavigationLink with path in the future..
    let title: String
    var onTapGesture: () -> ()
    var body: some View {
        Button {
            onTapGesture()
        } label: {
            HStack {
                Text(title)
                    .font(.body)
                    .foregroundStyle(.title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                                                                
                Image(systemName: "chevron.right")
                    .foregroundStyle(.subTitle)
                                                                    
            }
        }
    }
}

extension ProfileView {
    
    var accountSectionView: some View {
        VStack(spacing: 20) {
            ForEach(vm.sections.indices, id: \.self) { sectionIndex in
                                
                VStack(spacing: 40) {
                    ForEach(vm.sections[sectionIndex], id: \.self) { title in
                                                
                        AccountSettignsView(title: title) {}
                    }
                }
                                        
                ProfileSectionSeparator()
                    .padding(.vertical)
                                        
            }
                                    
            profileAccountSection(ConstantStrigns.Profile.exit) {}
                                                            
            ProfileSectionSeparator()
                .padding(.vertical)
                                                            
            profileAccountSection(ConstantStrigns.Profile.closeAccount) {}
        }.padding(.horizontal)
            .padding(.top)
    }
    
    func profileAccountSection(_ title: String, onTapGesture: @escaping () -> ()) -> some View {
        
        Button {
            onTapGesture()
        } label: {
            
            Text(title)
                .font(.body)
                .foregroundStyle(.primary0)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
    
    func profileSectionHeaderView(_ sectionTitle: String) -> some View {
        Text(sectionTitle)
            .font(.title2)
            .fontWeight(.bold)
            .foregroundStyle(.title)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    var aboutSectionView: some View {
        VStack(spacing: 25) {
            profileSectionHeaderView(ConstantStrigns.Profile.about)
                                
            Text(vm.currentUser.about)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
                .multilineTextAlignment(.leading)
                .font(.callout)
                .foregroundStyle(.subTitle)
                                
            AddInfoView(title: ConstantStrigns.Profile.addJourney) {}
                                
        }.padding(.vertical)
    }
    
    var verifiedSectionView: some View {
        VStack {
           
            VStack(alignment: .leading, spacing: 30) {
                profileSectionHeaderView(vm.currentUser.allVerifiedState.rawValue)
                ProfileVerifiedStateView(title: vm.currentUser.isVerifiedIdState.rawValue, isVerified: vm.currentUser.isVerifiedIdState == .verified)
                                    
                ProfileVerifiedStateView(title: vm.currentUser.email, isVerified: vm.currentUser.isVerifiedEmail)
                                    
                ProfileVerifiedStateView(title: vm.currentUser.phoneNumber, isVerified: vm.currentUser.isVerifiedPhoneNumber)
            }.padding(.vertical)
                                
        }.padding(.top)
    }
    
    var profileSectionView: some View {
        VStack(alignment: .leading, spacing: 50) {
                                
            HStack {
                VStack(alignment: .leading, spacing: 5) {
                    Text(vm.currentUser.name)
                        .font(.title)
                        .foregroundStyle(.title)
                        .fontWeight(.bold)
                                        
                    Text(vm.currentUser.blaBlaCarAmbassador.rawValue)
                        .font(.callout)
                        .foregroundStyle(.subTitle)
                }.frame(maxWidth: .infinity, alignment: .leading)
                                    
                Button {} label: {
                                        
                    BBImageProfileView(image: vm.currentUser.profileImageURL, size: .l)
                        .padding(.trailing, 15)
                                        
                    Image(systemName: "chevron.right")
                        .foregroundStyle(.subTitle)
                }
                                    
            }
                                
            VStack(alignment: .leading, spacing: 40) {
                ProfileEditButton(title: ConstantStrigns.Profile.editProfilePicture) {}
                                    
                ProfileEditButton(title: ConstantStrigns.Profile.editPersonelInfo) {}
            }
                               
        }.padding([.top, .bottom])
    }
}

#Preview {
    ProfileView()
}
