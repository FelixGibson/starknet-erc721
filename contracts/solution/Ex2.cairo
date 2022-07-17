%lang starknet

from openzeppelin.token.erc721.ERC721_Mintable_Burnable import constructor

from starkware.cairo.common.math import assert_not_zero
from starkware.cairo.common.cairo_builtins import HashBuiltin, BitwiseBuiltin
from starkware.cairo.common.uint256 import (
    Uint256,
    uint256_add,
    uint256_sub,
    uint256_le,
    uint256_lt,
    uint256_check,
    uint256_eq,
)

@storage_var
func leg() -> (value : felt):
end

@storage_var
func sex() -> (value : felt):
end

@storage_var
func wings() -> (value : felt):
end

@view
func get_leg{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}() -> (value : felt):
    let (value) = leg.read()
    return (value)
end

@view
func get_sex{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}() -> (value : felt):
    let (value) = sex.read()
    return (value)
end

@view
func get_wings{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}() -> (value : felt):
    let (value) = wings.read()
    return (value)
end

@external
func set_leg{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(value : felt):
    leg.write(value)

    return ()
end

@external
func set_sex{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(value : felt):
    sex.write(value)

    return ()
end

@external
func set_wings{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(value : felt):
    wings.write(value)

    return ()
end

@view
func get_animal_characteristics{syscall_ptr : felt*, pedersen_ptr : HashBuiltin*, range_check_ptr}(token_id : Uint256) -> (sex : felt, legs : felt, wings : felt):
    let (legs) = leg.read()

    let (sex_) = sex.read()
    let (wings_) = wings.read()

    return (sex_, legs, wings_)
end