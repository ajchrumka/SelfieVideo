var questionIndex = 0
var showText: [String] = ["You've just spotted a teammate taking a performance enhancing substance. They don't know you've seen them. What do you do?","What did you do when you last hit a /,quit point… a brick wall… where you couldn't see a way to go on?","Is there ever a good time when it is OK to cheat? If so when?"]
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        self.window = {
            let window = UIWindow(frame: UIScreen.main.bounds)
            let vc = MainVC()
            window.rootViewController = vc
            window.makeKeyAndVisible()/*since we have no Main storyboard*/
            return window
        }()
        return true
    }
    /**
     * Boilerplate
     */
    func applicationWillResignActive(_ application: UIApplication) {}
    func applicationDidEnterBackground(_ application: UIApplication) { }
    func applicationWillEnterForeground(_ application: UIApplication) { }
    func applicationDidBecomeActive(_ application: UIApplication) { }
    func applicationWillTerminate(_ application: UIApplication) { }
}
