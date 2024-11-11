#!/bin/bash

classes=()

for class in *.hpp; do
	if ! [ -s "$class" ]; then
		className="${class%.hpp}"
		classes+=("$className")
	fi
done

for class in "${classes[@]}"; do
	
	class_upper=$(echo "$class" | tr 'a-z' 'A-Z')
	
	echo "#ifndef ${class_upper}_HPP
# define ${class_upper}_HPP
# include <iostream>

class $class
{
	private:
		std::string attribute_1;
		std::string attribute_2;
	public:
		$class();
		$class(const $class &);
		$class &operator=(const $class &);
		~$class();
};

#endif" > "${class}.hpp"
done
