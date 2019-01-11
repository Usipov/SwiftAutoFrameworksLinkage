import UIKit
import Dynamic

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        print(DynamicClass.self)
        
        // Add a delay to let all `dyld: loaded:` messages appear in the logs
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            print("exiting")
            exit(0)
        }
        
        return true
    }
}
