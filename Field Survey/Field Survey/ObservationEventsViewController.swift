//
//  ObservationEventsViewController.swift
//  Field Survey
//
//  Created by Eric Rachell on 4/6/18.
//  Copyright © 2018 Eric Rachell. All rights reserved.
//

import UIKit

class ObservationEventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let dateFormatter = DateFormatter()
    
    @IBOutlet weak var observationEventsTabelView: UITableView!
    let observationEvents = ObservationEventsJSONLoader.load(filename: "field_observations")

    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return observationEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "observationEventCell", for: indexPath)
        if let cell = cell as? ObservationEventTableViewCell{
            let observationEvent = observationEvents[indexPath.row]
            cell.observationIconImageView.image = observationEvent.observation.image
            cell.titleLable.text = observationEvent.title
            cell.dateLabel.text = dateFormatter.string(from: observationEvent.date)
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       if let destination = segue.destination as? ObservationEventDetailViewController,
        let row = observationEventsTabelView.indexPathForSelectedRow?.row {
        destination.observationEvent = observationEvents[row]
            
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
