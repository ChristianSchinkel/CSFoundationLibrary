//
//  PreScripted.swift
//  CareNote
//
//  Created by Christian Schinkel on 2023-11-11.
//

import Foundation

protocol PreScripted {
    var asNeeded: Bool { get set }
    var asNeededMaxDoseAmount: Double { get set }
    var asNeededMaxDosePerDayDate: Date { get set }
    var asNeededMaxDoseStrengthValue: Double { get set }
    var asNeededMaxDoseStrengthValueUnit: String { get set }
    
    var frequency: String { get set }
    var givenDate: Date { get set }
    var instruction: String { get set }
    
    var isGiven: Bool { get set }
    var isPlanned: Bool { get set }
    var isPrescripted: Bool { get set }
    var isSkipped: Bool { get set }
    
    var medicineActiveSubstance: String { get set }
    var medicineDoseAmount: Double { get set }
    var medicineAmountValue: Double { get set }
    var medicineAmountValueUnit: String { get set }
    var medicineForm: String { get set }
    var medicineName: String { get set }
    var medicineStrengthValue: Double { get set }
    var medicineStrengthValueUnit: String { get set }
    
    var modeOfAdministration: String { get set }
    var reasonOfPrescribing: String { get set }
    
    var shouldNotBeReplaced: Bool { get set }
    var shouldNotBeReplacedReason: String { get set }
    
    var skippedDate: Date { get set }
    
    var treatmentDurationEndDate: Date { get set }
    var treatmentDurationEndReason: String { get set }
    var treatmentDurationStartDate: Date { get set }
}
