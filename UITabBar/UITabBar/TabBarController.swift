//
//  TabBarController.swift
//  UITabBar
//
//  Created by Mikhail Chuparnov on 20.01.2023.
//

import UIKit

final class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor =  .systemGray6
        self.tabBar.tintColor = .systemTeal
        let vcArray = [
        setupTabBar(viewController: WorldClockViewController(), title: "Мировые часы", image: "network"),
        setupTabBar(viewController: AlarmClockViewController(), title: "Будильник", image: "alarm.fill"),
        setupTabBar(viewController: StopwatchViewController(), title: "Секундомер", image: "stopwatch.fill"),
        setupTabBar(viewController: TimerViewController(), title: "Таймер", image: "timer")
        ]
        self.viewControllers = vcArray
    }

    
    private func setupTabBar(viewController: UIViewController, title: String, image: String) -> UIViewController {
        
        let vc = UINavigationController(rootViewController: viewController)
        vc.tabBarItem.title = title
        vc.tabBarItem.image = UIImage(systemName: image)
        return vc
        
    }

}
