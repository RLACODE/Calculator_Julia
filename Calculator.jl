function add(x::Float64, y::Float64)::Float64
    return x + y 
    end 
function subtract(x::Float64, y::Float64)::Float64 
    return x - y 
    end
function multiply(x::Float64, y::Float64)::Float64
    return x * y 
    end 
function divide(x::Float64, y::Float64)::Float64 
    if y == 0 
        throw(DivideError()) 
        end 
    return x / y
    end 
 
function calculator()
    println("Simple Calculator") 
    println("=================") 
    println("Enter first number:") 
    x = parse(Float64, readline()) 
    
    println("Enter an operation (+, -, *, /):") 
    operation = readline() 
    
    println("Enter second number:") 
    y = parse(Float64, readline()) 

    result = NaN 
    
    if operation == "+"
        result = add(x, y) 
    elseif operation == "-"
            result = subtract(x, y) 
    elseif operation == "*"
            result = multiply(x, y) 
    elseif operation == "/"
            result = divide(x, y) 
    else println("Invalid operation") 
        return 
    end
        println("Result: ", result) 
    end 

calculator()