After do |scenario|
    scenario_name = scenario.name.gsub(/\s+/,'_').tr('/', '_')

    if scenario.failed?
        print_screen(scenario_name.downcase!, 'failed')
    else
        print_screen(scenario_name.downcase!, 'pass')
    end

end