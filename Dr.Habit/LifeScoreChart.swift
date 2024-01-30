//
//  LifeScoreChart.swift
//  Dr.Habit
//
//  Created by RKD on 1/29/24.
//

import SwiftUI
import Charts


struct LifeScoreChart: View {
    var body: some View {
            Chart {
                LineMark(x: .value("Type", "bird"),
                        y: .value("Population", 1))
                .foregroundStyle(.pink)

                LineMark(x: .value("Type", "dog"),
                        y: .value("Population", 10))
                .foregroundStyle(.green)

                LineMark(x: .value("Type", "cat"),
                        y: .value("Population", 3))
                .foregroundStyle(.blue)
            }
            .aspectRatio(1, contentMode: .fit)
            .padding()
        }
}

#Preview {
    LifeScoreChart()
}
