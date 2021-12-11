option = ""
while option != "6"
    system "clear"
    print "Welcome to #{cafe_name}"
    option = print_options

    case option
        when "1"
            menu.show_menu
        when "2"
            add_product(menu)
        when "3"
            edit_product(menu)
        when "4"
            delete_product(menu)
        when "5"
            take_order(menu)
        when "6"
            next
        else
            puts "invalid option"
    end
    puts "press Enter to continue..."
    gets
    system "clear"
end
puts "Goodbye!"