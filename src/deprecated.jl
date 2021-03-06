
# BEGIN 1.2.1  deprecations 
@deprecate get_energy_value(val::BatteryEMS) get_energy_surplus_cost(
    get_operation_cost(val),
)
@deprecate get_penalty_cost(val::BatteryEMS) get_energy_shortage_cost(
    get_operation_cost(val),
)

@deprecate set_energy_value!(val::BatteryEMS, v) set_energy_shortage_cost!(
    get_operation_cost(val),
    v,
)
@deprecate set_penalty_cost!(val::BatteryEMS, v) set_energy_surplus_cost!(
    get_operation_cost(val),
    v,
)

export get_energy_value
export get_penalty_cost
export set_energy_value!
export set_penalty_cost!

# END 1.2.1 deprecations
