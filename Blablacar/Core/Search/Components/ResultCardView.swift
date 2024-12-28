//
//  ResultCardView.swift
//  Blablacar
//
//  Created by abdullah on 28.12.2024.
//

import SwiftUI

struct ResultCardView: View {
    var result: SearchResult

    var body: some View {
        VStack {
           
            HStack(alignment: .top) {
                HStack {
                    VStack(alignment: .leading) {
                        VStack(alignment: .leading) {
                            Text(result.departureTime)
                                .font(.system(size: 18))
                            
                            Text(travelDuration())
                                .font(.system(size: 13))
                                .foregroundStyle(Color.white.opacity(0.5))
                        }
                        Spacer()
                        Text(result.arrivalTime)
                            .font(.system(size: 18))
                    }
                    .frame(height: 60)
                    
                    WaySeperatorView()
                    
                    VStack(alignment: .leading) {
                        Text(result.departure)
                            .font(.system(size: 18))
                        Spacer()
                        Text(result.destination)
                            .font(.system(size: 18))
                    }
                    .frame(height: 60)
                    
                }
                .fontWeight(.medium)
                .frame(maxWidth: .infinity, alignment: .leading)
                
                HStack(alignment: .top, spacing: 0) {
                    Text("₺\(Int(result.price))")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                    Text(",00")
                        .font(.system(size: 15))
                        .fontWeight(.semibold)
                }
            }
            
            Rectangle()
                .fill(Color.white.opacity(0.5))
                .frame(height: 0.3)
                .padding(.vertical)
            
            HStack(spacing: 25) {
                Image(systemName: "car.side")
             
                BBImageProfileView(image: result.driverProfileImage, size: .s)
                
                VStack(alignment: .leading) {
                    Text(result.driverName)
                    HStack(spacing: 2) {
                        Image(systemName: "star.fill")
                            .font(.caption)
                        Text("\(result.driverRating, specifier: "%.1f")")
                    }
                }
                .fontWeight(.semibold)
                
                Spacer()
                Image(systemName: "carseat.left.2")
            }
            .foregroundStyle(.white.opacity(0.5))
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 16)
                .fill(Color.cardBackground)
        )
    }
    
    private func travelDuration() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        if let start = formatter.date(from: result.departureTime),
           let end = formatter.date(from: result.arrivalTime) {
            let interval = Int(end.timeIntervalSince(start)) / 60
            let hours = interval / 60
            let minutes = interval % 60
            return "\(hours) saat \(minutes) min"
        }
        return "Time Error"
    }
}

#Preview {
    ResultCardView(result: BlaBlaDataService.shared.searchResults[0])
}
