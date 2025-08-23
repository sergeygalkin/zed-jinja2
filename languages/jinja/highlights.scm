"{%" @punctuation.bracket
"%}" @punctuation.bracket
"{{" @punctuation.bracket
"}}" @punctuation.bracket
"{#" @punctuation.bracket
"#}" @punctuation.bracket


(comment) @comment

(raw_block) @string.special


(if) @keyword
(elif) @keyword
(else) @keyword
(for) @keyword
(endfor) @keyword
(endif) @keyword
(block) @keyword
(endblock) @keyword
(macro) @keyword
(endmacro) @keyword
(set) @keyword
(include) @keyword
(import) @keyword
(from) @keyword
(filter) @keyword
(endfilter) @keyword
(with) @keyword
(endwith) @keyword
(call) @keyword
(endcall) @keyword


(identifier) @variable
(filter_name) @function
(test_name) @function
(binary_operator) @operator
(unary_operator) @operator


(string) @string
(number) @number
(boolean) @constant.builtin
(nil) @constant.builtin
