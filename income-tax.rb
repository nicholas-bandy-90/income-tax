def find_all_taxes(income)
        bracketf = 0
		federal_tax_payable = 0
		if income <= 12750
			bracketf = 1
		elsif 12750 < income and income <= 48600
			bracketf = 2
		else
			bracketf = 3
		end

		if bracketf == 1
			federal_tax_payable = income * 0.1
		elsif bracketf == 2
			federal_tax_payable = ((income - 12750)* 0.15 + 1275)
		else
			federal_tax_payable = ((income - 48600)* 0.25 + 6652.5)
		end

		social_security_tax = income * 0.062
		medicare_tax = income * 0.0145

		brackets = 0
		state_tax_payable = 0
		if income <= 1000
			brackets = 1
		elsif 1000 < income and income <= 2000
			brackets = 2
		elsif 2000 < income and income <=3000
			brackets = 3
		else
			brackets = 4
		end

		if brackets == 1
			state_tax_payable = income * 0.02
		elsif brackets == 2
			state_tax_payable = ((income - 1000)* 0.03 + 20)
		elsif brackets == 3
			state_tax_payable = ((income - 2000)* 0.04 + 50)
		else
			state_tax_payable = ((income - 3000)* 0.0475 + 90)
		end
	puts "Your Federal income tax this year is $#{federal_tax_payable}."
	puts "Your State income tax this year is $#{state_tax_payable}."
	puts "Your FICA income tax this year is $#{social_security_tax + medicare_tax}, with $#{social_security_tax} in Social Security and $#{medicare_tax} in Medicare."
	puts "Your total tax obligation this year is $#{medicare_tax + social_security_tax + state_tax_payable + federal_tax_payable}."
end