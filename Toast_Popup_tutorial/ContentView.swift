//
//  ContentView.swift
//  Toast_Popup_tutorial
//
//  Created by minkyuLee on 2022/07/27.
//

import SwiftUI
import ExytePopupView

struct ContentView: View {
    
    @State var shouldShowBottomSolidMessage : Bool = false
    
    @State var shouldShowBottomToastMessage : Bool = false
    
    @State var shouldShowTopSolidMessage : Bool = false
    
    @State var shouldShowTopToastMessage : Bool = false
    
    @State var shouldShowPopup : Bool = false
    
    func createBottomSolidMessage() -> some View {
        HStack(spacing: 10){
            
            Image(systemName: "book.fill")
                .font(.system(size: 40))
                .foregroundColor(Color.white)
                //.background(Color.yellow)
            
            VStack(alignment: .leading){
                Text("안내 메시지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)

                Text("토스트 메시지 입니다.")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)
            }
            //.background(Color.red)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 0 : 15)
        .background(Color.purple)
    }
    
    fileprivate func createBottomToastMessage() -> some View {
        return HStack(alignment: .top, spacing: 10){
            
            Image("cat")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y:10)
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text("내 고양이")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                
                Text("토스트 메시지 입니다.;woeifja;woefij;aowiefj;oawiefj;oawiefj;oaweifj;oaiwefj;oawiefj;oaweifj;oawiefj;oawiefj;oaweifj;oawiefj;oawiefj;oawiefj;oawiefj;oawiefj;oawefj;oawiefj;aoweifj;aowiefj;oawefj;oaiwefj;")
                    //.lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)
            }
            //.background(Color.red)
        }
        .padding(15)
        .frame(width:300)
        .background(Color.green)
        .cornerRadius(20)
    }
    
    fileprivate func createTopSolidMessage() -> some View {
        return HStack(spacing: 10){
            
            Image("hammer_icon")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fill)
                .offset(y:10)
                .frame(width: 60, height: 60, alignment: .center)
                .cornerRadius(10)
            
            VStack(alignment: .leading){
                Text("개발하는 망치통의 메시지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                
                Text("안녕하세요. 오늘도 빡코딩하고 계신가요? \n 오늘은 토스트 메시지와 팝업에 대해 알아보겠습니다.")
                    .lineLimit(2)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                Divider().opacity(0)
            }
            //.background(Color.red)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .frame(width: UIScreen.main.bounds.width)
        .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.bottom == 0 ? 20 : 35)
        .background(Color.blue)
    }
    
    fileprivate func createTopToastMessage() -> some View {
        return HStack(alignment: .top, spacing: 10){
            
            Image(systemName: "paperplane.fill")
                .font(.system(size: 25))
                .padding(.leading, 5)
                .foregroundColor(Color.white)
            VStack(alignment: .leading, spacing: 2){
                Text("망치통님의 메시지")
                    .fontWeight(.black)
                    .foregroundColor(Color.white)
                
                Text("오늘도 빡코딩하고 계신가요?")
                    .lineLimit(1)
                    .font(.system(size: 14))
                    .foregroundColor(Color.white)
                //Divider().opacity(0)
            }
            .padding(.trailing, 15)
            //.background(Color.red)
        }
        .padding(.vertical, 5)
        .padding(.horizontal, 10)
        .background(Color.orange)
        .cornerRadius(25)
    }
    
    fileprivate func createPopUp() -> some View {
        return VStack(spacing: 10){
            
            Image("hammer_icon")
                .resizable()
                .aspectRatio(contentMode: ContentMode.fit)
                .frame(width:100, height: 100)
            
            Text("망치통님의 메시지")
                .fontWeight(.black)
                .foregroundColor(Color.white)
            
            Text("오늘도 빡코딩하고 계신가요?")
                .lineLimit(1)
                .font(.system(size: 12))
                .foregroundColor(Color(red:0.9, green: 0.9, blue: 0.9))
                .multilineTextAlignment(.center)
            
            Spacer().frame(height: 10)
            
            Button(action : {
                self.shouldShowPopup = false
            }) {
                Text("닫기")
                    .font(.system(size:14))
                    .foregroundColor(.black)
                    .fontWeight(.bold)
            }
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(20.0)
        }
        .padding(.horizontal, 10)
        .frame(width: 300, height: 400)
        .background(Color(hexcode: "8226b0" ))
        .cornerRadius(10.0)
        .shadow(color: Color(.sRGBLinear, white: 0, opacity: 0.13), radius: 10.0)
    }
    
    var body: some View {
        ZStack{
            VStack(spacing: 10){
                //createPopUp()
                Spacer()
                Button(action: {
                    self.shouldShowBottomSolidMessage = true
                }, label:{
                    Text("바텀솔리드메시지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.purple)
                        .cornerRadius(10)
                })
                Button(action: {
                    self.shouldShowBottomToastMessage = true
                }, label:{
                    Text("바텀토스트메시지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                })
                Button(action: {
                    self.shouldShowTopSolidMessage = true
                }, label:{
                    Text("탑솔리드메시지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                })
                Button(action: {
                    self.shouldShowTopToastMessage = true
                }, label:{
                    Text("탑토스트메시지")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.init(hexcode: "8227b0"))
                        .cornerRadius(10)
                })
                Button(action: {
                    self.shouldShowPopup = true
                }, label:{
                    Text("팝업")
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.orange)
                        .cornerRadius(10)
                })
                Spacer()
                
                
                
            
                
                
            } // VStack
        } // ZStack
        .edgesIgnoringSafeArea(.all)
        .popup(isPresented: $shouldShowBottomSolidMessage, type: .toast, position: .bottom, animation: .easeInOut, autohideIn: 2, dragToDismiss: true, closeOnTap: true, closeOnTapOutside: true, view: {
            createBottomSolidMessage()
        })
        .popup(isPresented: $shouldShowBottomToastMessage, type: .floater(verticalPadding: 20, useSafeAreaInset: true), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createBottomToastMessage()
        })
        .popup(isPresented: $shouldShowTopSolidMessage, type: .toast, position: .top, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createTopSolidMessage()
        })
        .popup(isPresented: $shouldShowTopToastMessage, type: .floater(verticalPadding: 20, useSafeAreaInset: true), position: .top, animation: .spring(), autohideIn: 2, closeOnTap: true, closeOnTapOutside: true, view: {
            self.createTopToastMessage()
        })
        .popup(isPresented: $shouldShowPopup, type: .floater(verticalPadding: 20, useSafeAreaInset: true), position: .bottom, animation: .spring(), autohideIn: 2, closeOnTap: false, closeOnTapOutside: false, view: {
            self.createPopUp()
            
        })
    }
}

extension Color {
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
