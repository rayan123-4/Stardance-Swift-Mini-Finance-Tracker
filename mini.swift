// Swift Mini Finance Tracker
// The Swift Programming Language
// https://docs.swift.org/swift-book

@main
struct SwiftPlayground {
    static func main() {
        // Constants

        /// The max hours of work time.
        let maxHours: Double = 20.00

        /// The minimum hours of work time.
        let minHours: Double = 1.00

        /// The minimum wage for youths.
        let youthMinimumWage: Double = 18.80

        /// The minimum wage for adults.
        let adultMinimumWage: Double = 23.50

        /// The number of tax for the calculation.
        let tax: Double = 0.15


        // Variables


        /// The number of hours the user spent working this week.
        var hoursSpent: Double = 0.00

        /// The number of the users hourly rate.
        var hourlyRate: Double = 0.00

        /// The number of money the user earns weekly.
        var weeklyEarning: Double = 0.00

        /// How much money is subtracted from the users weeklyEarning because of the tax.
        var incomeTaxed: Double = 0.00


        /// The variable to start the while loop that is asking how many hours the user has spent working. The 'Bool' means that askingHours always stays either true or false.
        var askingHours: Bool = true

        /// The variable to start the while loop that is asking how much the users hourly rate is. The 'Bool' means that askingRate always stays either true or false.
        var askingRate: Bool = true


        // The title of my Assesment.
        print("Welcome to Rayan's Personal Finances Tracker")

        // Asks how many hours the user worked this week.
        while askingHours {
            print("Enter your work hours this week from \(minHours) to \(maxHours):")
            if let hourInput = readLine(),
                let hours: Double = Double(hourInput)
            {
                if hours <= maxHours && hours >= minHours {
                    hoursSpent += hours
                    askingHours = false
                    // Else statement for if the user types something that isn't in the boundaries
                } else {
                    print("Enter a valid integer from \(minHours) to \(maxHours)")
                }
                // Else statement for if the user types something that isn't a Double.
            } else {
                print("Enter a valid integer from \(minHours) to \(maxHours)")
            }
        }

        while askingRate {
            print("Enter your hourly rate:")
            if let rateInput = readLine(),
                let rate: Double = Double(rateInput)
            {
                if rate <= adultMinimumWage && rate >= youthMinimumWage {
                    hourlyRate += rate
                    weeklyEarning = (rate * hoursSpent)
                    askingRate = false
                    // Else statement for if the user types something that isn't in the boudaries
                } else {
                    print("Enter a valid Double from \(youthMinimumWage) to \(adultMinimumWage)")
                }
                // Else statement for if the user types something that isn't a Double.
            } else {
                print("Enter a valid Double from \(youthMinimumWage) to \(adultMinimumWage)")
            }
        }
        // Prints the weeklyEarning.
        print("You earn $\(weeklyEarning) per week before tax.")

        // Calculates how much needs to be subtracted from the weeklyEarning for the tax.
        incomeTaxed = (weeklyEarning * tax)

        // Prints how much is subtracted because of the tax.
        print("You pay $\(incomeTaxed) in income tax")

        // Calculates the final total after tax.
        weeklyEarning = (weeklyEarning - incomeTaxed)

        // Prints the final total after tax.-
        print("You earn $\(weeklyEarning) after tax TOTAL.")


var askingIfGood: Bool = true
var askingWhy: Bool = false

let jobs: [String] = ["McDonalds", "A Supermarket", "A Mall Security Guard", "And many more in your local job finder app."]

print("Do you think this is a good amount to be earning? (y/n)")

while askingIfGood {
    let amountInput = readLine()

    if amountInput == "y" {
        print("Ok")
        askingIfGood = false
    } else if amountInput == "n" {
        print("Ok")
        askingIfGood = false
        askingWhy = true
    } else {
        print("Please enter a valid answer (y/n)")
    }
}

while askingWhy {
    print("If you're not happy with your current job, here are a few jobs that you could apply to:")

    for job in jobs {
        print(job)
    }

    askingWhy = false
}

        

        }
        }

        // Note: work did on Aug 5, but on different sofware.