//
//  CommandLineTool.swift
//  CommandLineTool
//
//  Created by YourMJK on 07.06.26.
//

import Foundation

public enum CommandLineTool {
	public static func findExecutablePath(name: String) -> String? {
		let pathVariable = ProcessInfo.processInfo.environment["PATH"]
		let pathVariableComponents = pathVariable?.split(separator: ":").map { String($0) }
		let searchPaths = (pathVariableComponents ?? []) + defaultSearchPaths
		for searchPath in searchPaths {
			let executablePath = String(searchPath) + "/" + name
			if FileManager.default.isExecutableFile(atPath: executablePath) {
				return executablePath
			}
		}
		return nil
	}
	
	private static let defaultSearchPaths = [
		"/usr/bin",
		"/bin",
		"/usr/sbin",
		"/sbin",
		"/usr/local/bin",
	]
}
