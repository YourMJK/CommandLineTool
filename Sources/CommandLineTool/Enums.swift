//
//  Enums.swift
//  CommandLineTool
//
//  Created by Max-Joseph on 27.07.23.
//

import ArgumentParser


public typealias ArgumentEnum = ExpressibleByArgument & CaseIterable


extension CaseIterable where Self: RawRepresentable, RawValue == String {
	public static var allCasesRegexString: String {
		allCases.map(\.rawValue).joined(separator: " | ")
	}
}
