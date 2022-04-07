# Single line with number-sign
// Single line with double-slash
/*
Multi line comment block
*/
structure { }
structure "arg0" { }
structure "arg0" "arg1" { }
structure "arg0" "arg1" "arg2" { 
    interpolation = "${lookup(element(var.foo, "bar"))}"
    decimal = -42 
    hexidecimal = 0xDEADBEEF
    size = 1024Kb
    boolean = true
    string = "test"
    heredoc = <<EOT
        test
    EOT
    array = [ "foo", "bar", 42 ]
    map = { 
        "foo" : true,
        "bar" : "baz"
    }

    struct_assignment = {
        "some_thing" = "cool string thing: ${interpolation(some.thing)}"
        some_nested_thing = {
            "the_thing" = "some_value ${with(inter.polation)}"
            the_thing_also = the.reference
            the_thing_some_other_way: the.reference
            var1: true
            var2: 99
            var3: "string"
            var = true
            var5 = 99
            var6 = "string"
        }
        some_other_thing = ""
    }
    
    nested-structure {
        foo = 348743
        bar = "348743Gb"
    }
}





