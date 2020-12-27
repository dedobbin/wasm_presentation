(module
	
	;; (import "env" "memory" (memory (;0;) 256 256))
  	;; (import "env" "table" (table (;0;) 10 10 anyfunc))
  	;; (import "env" "memoryBase" (global (;0;) i32))
  	;; (import "env" "tableBase" (global (;1;) i32))	

	(import "env" "log" (func $log (param i32)))

	(memory $mem 1)	;;shorthand for declaring and exporting = (memory (export "memory") 1)
	(export "memory" (memory $mem))

	(data (i32.const 0) "inital value")

	(func $twice (param $i i32) (result i32)
		get_local $i	;;get the param i, and put on stack, because wasm is STACKMACHINE
		i32.const 2		;;put constant on stack
		i32.mul			;;multiplies last 2 values on stack
						;;return value is that is left on stack, compiler seems to force you to have just 1 value there
	)

	(func $add (param $x i32) (param $y i32) (result i32)
		get_local $x	
		get_local $y	
		i32.add		
	)	

	(func $call_js(param $i i32)
		(get_local $i)
		(i32.const 1)
		call $add
		call $log	;;function we imported from JS
	)

	(func $logic_flow (param $i i32) (result i32)
		(if (result i32)
			(i32.lt_s
			(get_local $i)
			(i32.const 10)
		)
		(then
			(i32.const 10)
		)
		(else
			(get_local $i)
		)
		)
	)

	;; We exported the memory, to expose it to JS
	;; instance.exports.memory.buffer is written to using 4byte numbers.
	;;Now this function demos how we can access this memory in wat
	(func $get_from_memory (param $idx i32) (result i32)
		(local $tmp i32)
		(local.set $tmp (i32.load (i32.mul(local.get $idx)(i32.const 4))))	;;load memory from idx * 4 (32bit)
		;;(local.set $tmp (i32.load (local.get $idx)))	;; first tried this, but of course does not take in account values are 32bit, not 8bit
		(get_local $tmp)
	)

	(func $accumulate (param $ptr i32) (param $len i32) (result i32)
		(local $end i32)
		(local $sum i32)
		(local.set $end (i32.add (local.get $ptr) (i32.mul (local.get $len) (i32.const 4))))
		(block $break (loop $top
		(br_if $break (i32.eq (local.get $ptr) (local.get $end)))
		(local.set $sum (i32.add (local.get $sum)
								(i32.load (local.get $ptr))))
			(local.set $ptr (i32.add (local.get $ptr) (i32.const 4)))
			(br $top)
		))
		(local.get $sum)
	)
	
	(export "some_other_function" (func $twice))	;; When using emsdk, this is in 'exported' function
	(export "some_function" (func $add))
	(export "logic_flow" (func $logic_flow))
	(export "accumulate" (func $accumulate))
	(export "call_js" (func $call_js))
	(export "get_from_memory" (func $get_from_memory))
)
