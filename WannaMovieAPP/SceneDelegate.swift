//
//  SceneDelegate.swift
//  WannaMovieAPP
//
//  Created by Jhen Mu on 2022/1/11.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let setWindow = (scene as? UIWindowScene) else { return }
        self.window = UIWindow(windowScene: setWindow)
        let tabBar = UITabBarController()
        self.window?.rootViewController = tabBar
        self.window?.makeKeyAndVisible()
        
        tabBar.tabBar.barTintColor = .white
        tabBar.selectedIndex = 0
        let homeViewController = UINavigationController(rootViewController: HomePageViewController())
        let suggestViewController = UINavigationController(rootViewController: SuggestViewController())
        let commentViewController = UINavigationController(rootViewController: CommentViewController())
        
        homeViewController.tabBarItem = UITabBarItem(title:"HomePage", image: UIImage(named: "house"), selectedImage: UIImage(named: "house.fill"))
        suggestViewController.tabBarItem = UITabBarItem(title:"推薦電影", image: UIImage(named: "film"), selectedImage: UIImage(named:"film.fill"))
        commentViewController.tabBarItem = UITabBarItem(title: "電影評論", image: UIImage(named: "text.bubble"), selectedImage:UIImage(named:"text.bubble.fill"))
        tabBar.viewControllers = [homeViewController,suggestViewController,commentViewController]
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

