//
//  StorageProvider.swift
//  HelloCoreData
//
//  Created by jyrnan on 2021/9/29.
//

import CoreData

class StorageProvider {
    
    let persistentContainer: NSPersistentContainer
    
    init() {
        persistentContainer = NSPersistentContainer(name: "HelloCoreData")
        
        persistentContainer.loadPersistentStores(completionHandler: {description, error in
            if let error = error {
                fatalError("Core Data store failed to load with error: \(error)")
            }
        })
    }
}

extension StorageProvider {
    func saveMovie(named name: String) {
        let movie = Movie(context: persistentContainer.viewContext)
        movie.name = name
        
        do {
            try persistentContainer.viewContext.save()
            print("Movie saved succesfully")
        } catch {
            print("Failed to save movie: \(error)")
        }
    }
}
