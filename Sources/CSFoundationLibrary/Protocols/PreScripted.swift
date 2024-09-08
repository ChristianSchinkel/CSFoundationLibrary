//
//  PreScripted.swift
//  CareNote
//
//  Created by Christian Schinkel on 2023-11-11.
//

import Foundation

public protocol PreScripted {
    public var asNeeded: Bool { get set }
    public var asNeededMaxDoseAmount: Double { get set }
    public var asNeededMaxDosePerDayDate: Date { get set }
    public var asNeededMaxDoseStrengthValue: Double { get set }
    public var asNeededMaxDoseStrengthValueUnit: String { get set }
    
    public var frequency: String { get set }
    public var givenDate: Date { get set }
    public var instruction: String { get set }
    
    public var isGiven: Bool { get set }
    public var isPlanned: Bool { get set }
    public var isPrescripted: Bool { get set }
    public var isSkipped: Bool { get set }
    
    public var medicineActiveSubstance: String { get set }
    public var medicineDoseAmount: Double { get set }
    public var medicineAmountValue: Double { get set }
    public var medicineAmountValueUnit: String { get set }
    public var medicineForm: String { get set }
    public var medicineName: String { get set }
    public var medicineStrengthValue: Double { get set }
    public var medicineStrengthValueUnit: String { get set }
    
    public var modeOfAdministration: String { get set }
    public var reasonOfPrescribing: String { get set }
    
    public var shouldNotBeReplaced: Bool { get set }
    public var shouldNotBeReplacedReason: String { get set }
    
    public var skippedDate: Date { get set }
    
    public var treatmentDurationEndDate: Date { get set }
    public var treatmentDurationEndReason: String { get set }
    public var treatmentDurationStartDate: Date { get set }
}
