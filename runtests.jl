using Test

include("diamond.jl")

# Tests adapted from `problem-specifications//canonical-data.json` @ v1.1.0


println("\n"^2, "-"^60, "\n"^3)

@testset "Single a row: A." begin
    result = ["A"]
    @test rows('A') == result
end
println()

@testset "Smallest diamond with even side length: B." begin
    result = [" A ", "B B", " A "]
    @test rows('B') == result
end
println()

@testset "Smallest diamond with odd side length greater than 1: C." begin
    result = ["  A  ", " B B ", "C   C", " B B ", "  A  "]
    @test rows('C') == result
end
println()

@testset "D." begin
    result = [
        "   A   ",
        "  B B  ",
        " C   C ",
        "D     D",
        " C   C ",
        "  B B  ",
        "   A   ",
    ]
    @test rows('D') == result
end
println()

@testset "Z." begin
    result = [
        "                         A                         ",
        "                        B B                        ",
        "                       C   C                       ",
        "                      D     D                      ",
        "                     E       E                     ",
        "                    F         F                    ",
        "                   G           G                   ",
        "                  H             H                  ",
        "                 I               I                 ",
        "                J                 J                ",
        "               K                   K               ",
        "              L                     L              ",
        "             M                       M             ",
        "            N                         N            ",
        "           O                           O           ",
        "          P                             P          ",
        "         Q                               Q         ",
        "        R                                 R        ",
        "       S                                   S       ",
        "      T                                     T      ",
        "     U                                       U     ",
        "    V                                         V    ",
        "   W                                           W   ",
        "  X                                             X  ",
        " Y                                               Y ",
        "Z                                                 Z",
        " Y                                               Y ",
        "  X                                             X  ",
        "   W                                           W   ",
        "    V                                         V    ",
        "     U                                       U     ",
        "      T                                     T      ",
        "       S                                   S       ",
        "        R                                 R        ",
        "         Q                               Q         ",
        "          P                             P          ",
        "           O                           O           ",
        "            N                         N            ",
        "             M                       M             ",
        "              L                     L              ",
        "               K                   K               ",
        "                J                 J                ",
        "                 I               I                 ",
        "                  H             H                  ",
        "                   G           G                   ",
        "                    F         F                    ",
        "                     E       E                     ",
        "                      D     D                      ",
        "                       C   C                       ",
        "                        B B                        ",
        "                         A                         ",
    ]
    @test rows('Z') == result
end
println()
