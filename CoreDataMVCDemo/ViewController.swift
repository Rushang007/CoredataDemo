//
//  ViewController.swift
//  CoreDataMVCDemo
//
//  Created by Abhishek Mehta on 22/06/17.
//  Copyright © 2017 Abhishek Mehta. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        //set user insert
        let user:User = NSEntityDescription.insertNewObject(forEntityName: "User", into: DatabaseController.getContext()) as! User
        //let user:User = User()
        user.username = "abc"
        user.age = 20
        DatabaseController.saveContext()
        
        
        //get data
        let fetchRequest:NSFetchRequest<User> = User.fetchRequest()
        
        do{
            let searchResults = try DatabaseController.getContext().fetch(fetchRequest)
            print("number of results: \(searchResults.count)")
        
            for result in searchResults as [User]{
                print("\(result.username) is \(result.age) years old.")
            }
        }
        catch{
            print("Error: \(error)")
        }
        
        // MARK:- Get Context
        
        //        func getContext () -> NSManagedObjectContext {
        //            let appDelegate = UIApplication.shared.delegate as! AppDelegate
        //            return appDelegate.persistentContainer.viewContext
        ////        }

        //MARK:- FILTER
        //**********************FILTER****************************//
        
//        let request = CSTProjectDetails.fetchRequest()
//        request.predicate = NSPredicate(format: "projectID == %@", tempVar)
//        cstProjectDetails = try context.fetch(request)
        
//        To "filter" results in Core Data, use NSPredicate like so:
//        
//        let filter = "products"
//        let predicate = NSPredicate(format: "type = %@", filter)
//        fetchRequest.predicate = predicate
        //**********************FILTER END****************************//

    //**********************FETCH RECORDS****************************//
        //MARK:- FETCH
//        func fetchData(){
//            
//            onlyDateArr.removeAll()
//            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
//            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "PhotoData")
//            
//            do {
//                let results = try context.fetch(fetchRequest)
//                let  dateCreated = results as! [PhotoData]
//                
//                for _datecreated in dateCreated {
//                    print(_datecreated.dateCreation!)
//                    onlyDateArr.append(_datecreated)
//                }
//            }catch let err as NSError {
//                print(err.debugDescription)
//            }
//            
//            
//        }
//        
//        
//        
     //**********************FETCH END****************************//
        
        
        
    //**********************SORTING ****************************//
        //MARK:- SORTING
//        func getData() {
//            let context = appDelegate.persistentContainer.viewContext
//            
//            let fetchRequest: NSFetchRequest<Expenses> = Expenses.fetchRequest()
//            let sort = NSSortDescriptor(key: #keyPath(Expenses.date), ascending: true)
//            fetchRequest.sortDescriptors = [sort]
//            do {
//                expenses = try context.fetch(fetchRequest)
//            } catch {
//                print("Cannot fetch Expenses")
//            }
//        }
        
        
        //**********************SORTING END****************************//
        
        
//*****************INSERT AND RETRIVE IMAGE ****************************//
        
        //MARK:- INSERT AND RETRIVE IMAGE
        
        //save an image 
        //step 1
        //let img = UIImage(named: "f.png")
        //let imgData = UIImageJPEGRepresentation(img!, 1)//convert into data
        //newUser.setValue(imgData, forKey: "photo")
//        While when you retrieve the info, you are doing like photo was a UIImage object:
//            
//            if let photoinData = result.value(forKey: "photo") as? UIImage{
//            imageView.image = photoinData
//        }
//        This is not logical according to previous lines. It should be something like that:
//            
//            if let imageData = result.value(forKey: "photo") as? NSData {
//            if let image = UIImage(data:imageData) as? UIImage {
//                imageView.image = image
//            }
//        }

    //*****************INSERT AND RETRIVE IMAGE END*********************//
        
        //*****************SORTING with NSPredicate*********************//

         //MARK:- SORTING with NSPredicate
        
//        To fetch all objects satisfying some condition you don't need a sort descriptor but a predicate, for example:
//        
//        let predicate = NSPredicate(format: "timeStamp < %@", date)
//        fetchRequest.predicate = predicate
//        You need a sort descriptor to get the objects in a specified order, for example:
//        
//        let sectionSortDescriptor = NSSortDescriptor(key: "timeStamp", ascending: true)
//        let sortDescriptors = [sectionSortDescriptor]
//        fetchRequest.sortDescriptors = sortDescriptors
        
        //*****************SORTING with NSPredicate END*********************//
        
         //*****************SORTING with LIMIT END*********************//
        //MARK:- SORTING with LIMIT
//        let sort = NSSortDescriptor(key: "recordingTime", ascending: true)
//        request.sortDescriptors = [sort]
//        request.fetchLimit = 5
        
         //*****************SORTING with LIMIT END*********************//
        
    //*****************DELETE OBJECT IN CORE DATA*********************//
        
        // MARK:- DELETE
        //Delete Data Records
        
//        func deleteRecords() -> Void {
//            let moc = getContext()
//            let fetchRequest = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
//            
//            let result = try? moc.fetch(fetchRequest)
//            let resultData = result as! [Person]
//            
//            for object in resultData {
//                moc.delete(object)
//            }
//            
//            do {
//                try moc.save()
//                print("saved!")
//            } catch let error as NSError  {
//                print("Could not save \(error), \(error.userInfo)")
//            } catch {
//                
//            }
//            
//        }
        
        
        
        //*****************DELETE OBJECT IN CORE DATA  END*********************//
        
        //*****************UPDATE OBJECT IN CORE DATA  *********************//
        
        //MARK:- UPDATE 
        
//        func updateName(index: Int, newName: String){
//            let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
//            peoples[index].name = newName
//            appDelegate.saveContext()
//            
//        }
        
         //*****************UPDATE OBJECT IN CORE DATA END *********************//

      
    }

    
}

