
import SwiftUI

struct ProfileEditor: View {
    @Binding var profile: Profile
    
    var dateRange: ClosedRange<Date> {
        let min = Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate)!
        let max = Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate)!
        
        /// ..< と同義で範囲を示す
        return min...max
    }
    
    var body: some View {
        List {
            HStack {
                Text("Username").bold()
                Spacer().frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                TextField(
                    "Username",
                    text: $profile.username
                )
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notifications").bold()
            }
            
            VStack(alignment: .leading, spacing: 20){
                Text("Seasonal Photo").bold()
                
                Picker(
                    "Seasonal Photo",
                    selection: $profile.seasonalPhoto
                ) {
                    ForEach(Profile.Season.allCases) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
                .pickerStyle(.segmented)
            }
            
            DatePicker(
                selection: $profile.goalDate,
                in: dateRange,
                displayedComponents: .date
            ) {
                Text("Goal Date").bold()
            }
        }
    }
}

#Preview {
    ProfileEditor(profile: .constant(.default))
}
