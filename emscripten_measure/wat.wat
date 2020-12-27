(module
  (type (;0;) (func (param i32 i32 i32)))
  (type (;1;) (func (param i32 i32 i32) (result i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func (param i32 i32) (result i32)))
  (type (;4;) (func))
  (type (;5;) (func (param i32)))
  (type (;6;) (func (result i32)))
  (type (;7;) (func (param i32 f64 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i64 i32) (result i32)))
  (type (;9;) (func (param i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32)))
  (type (;11;) (func (param i32 i32 i32 i32 i32)))
  (type (;12;) (func (param i32 i32 i32 i32) (result i32)))
  (type (;13;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;14;) (func (param i64 i32 i32) (result i32)))
  (type (;15;) (func (param i32 i64 i32) (result i64)))
  (type (;16;) (func (param i32) (result f64)))
  (type (;17;) (func (param f64 i32) (result f64)))
  (import "a" "a" (func (;0;) (type 12)))
  (import "a" "b" (func (;1;) (type 6)))
  (import "a" "c" (func (;2;) (type 1)))
  (import "a" "memory" (memory (;0;) 256 256))
  (import "a" "table" (table (;0;) 5 funcref))
  (func (;3;) (type 0) (param i32 i32 i32)
    local.get 0
    i32.load8_u
    i32.const 32
    i32.and
    i32.eqz
    if  ;; label = @1
      local.get 1
      local.get 2
      local.get 0
      call 26
    end)
  (func (;4;) (type 11) (param i32 i32 i32 i32 i32)
    (local i32)
    global.get 0
    i32.const 256
    i32.sub
    local.tee 5
    global.set 0
    block  ;; label = @1
      local.get 2
      local.get 3
      i32.le_s
      br_if 0 (;@1;)
      local.get 4
      i32.const 73728
      i32.and
      br_if 0 (;@1;)
      local.get 5
      local.get 1
      local.get 2
      local.get 3
      i32.sub
      local.tee 2
      i32.const 256
      local.get 2
      i32.const 256
      i32.lt_u
      local.tee 1
      select
      call 8
      local.get 1
      i32.eqz
      if  ;; label = @2
        loop  ;; label = @3
          local.get 0
          local.get 5
          i32.const 256
          call 3
          local.get 2
          i32.const -256
          i32.add
          local.tee 2
          i32.const 255
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 0
      local.get 5
      local.get 2
      call 3
    end
    local.get 5
    i32.const 256
    i32.add
    global.set 0)
  (func (;5;) (type 8) (param i64 i32) (result i32)
    (local i32 i32 i32 i64)
    block  ;; label = @1
      local.get 0
      i64.const 4294967296
      i64.lt_u
      if  ;; label = @2
        local.get 0
        local.set 5
        br 1 (;@1;)
      end
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        local.get 0
        i64.const 10
        i64.div_u
        local.tee 5
        i64.const 10
        i64.mul
        i64.sub
        i32.wrap_i64
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 42949672959
        i64.gt_u
        local.set 2
        local.get 5
        local.set 0
        local.get 2
        br_if 0 (;@2;)
      end
    end
    local.get 5
    i32.wrap_i64
    local.tee 2
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 2
        local.get 2
        i32.const 10
        i32.div_u
        local.tee 3
        i32.const 10
        i32.mul
        i32.sub
        i32.const 48
        i32.or
        i32.store8
        local.get 2
        i32.const 9
        i32.gt_u
        local.set 4
        local.get 3
        local.set 2
        local.get 4
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;6;) (type 13) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64)
    global.get 0
    i32.const 80
    i32.sub
    local.tee 6
    global.set 0
    local.get 6
    local.get 1
    i32.store offset=76
    local.get 6
    i32.const 55
    i32.add
    local.set 20
    local.get 6
    i32.const 56
    i32.add
    local.set 17
    i32.const 0
    local.set 1
    block  ;; label = @1
      block  ;; label = @2
        loop  ;; label = @3
          block  ;; label = @4
            local.get 15
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
            local.get 1
            i32.const 2147483647
            local.get 15
            i32.sub
            i32.gt_s
            if  ;; label = @5
              i32.const 2016
              i32.const 61
              i32.store
              i32.const -1
              local.set 15
              br 1 (;@4;)
            end
            local.get 1
            local.get 15
            i32.add
            local.set 15
          end
          local.get 6
          i32.load offset=76
          local.tee 11
          local.set 1
          block  ;; label = @4
            block  ;; label = @5
              local.get 11
              i32.load8_u
              local.tee 7
              if  ;; label = @6
                loop  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      local.get 7
                      i32.const 255
                      i32.and
                      local.tee 8
                      i32.eqz
                      if  ;; label = @10
                        local.get 1
                        local.set 7
                        br 1 (;@9;)
                      end
                      local.get 8
                      i32.const 37
                      i32.ne
                      br_if 1 (;@8;)
                      local.get 1
                      local.set 7
                      loop  ;; label = @10
                        local.get 1
                        i32.load8_u offset=1
                        i32.const 37
                        i32.ne
                        br_if 1 (;@9;)
                        local.get 6
                        local.get 1
                        i32.const 2
                        i32.add
                        local.tee 8
                        i32.store offset=76
                        local.get 7
                        i32.const 1
                        i32.add
                        local.set 7
                        local.get 1
                        i32.load8_u offset=2
                        local.set 10
                        local.get 8
                        local.set 1
                        local.get 10
                        i32.const 37
                        i32.eq
                        br_if 0 (;@10;)
                      end
                    end
                    local.get 7
                    local.get 11
                    i32.sub
                    local.set 1
                    local.get 0
                    if  ;; label = @9
                      local.get 0
                      local.get 11
                      local.get 1
                      call 3
                    end
                    local.get 1
                    br_if 5 (;@3;)
                    i32.const -1
                    local.set 16
                    i32.const 1
                    local.set 7
                    local.get 6
                    i32.load offset=76
                    local.set 1
                    block  ;; label = @9
                      local.get 6
                      i32.load offset=76
                      i32.load8_s offset=1
                      i32.const -48
                      i32.add
                      i32.const 10
                      i32.ge_u
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_u offset=2
                      i32.const 36
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_s offset=1
                      i32.const -48
                      i32.add
                      local.set 16
                      i32.const 1
                      local.set 19
                      i32.const 3
                      local.set 7
                    end
                    local.get 6
                    local.get 1
                    local.get 7
                    i32.add
                    local.tee 1
                    i32.store offset=76
                    i32.const 0
                    local.set 7
                    block  ;; label = @9
                      local.get 1
                      i32.load8_s
                      local.tee 18
                      i32.const -32
                      i32.add
                      local.tee 10
                      i32.const 31
                      i32.gt_u
                      if  ;; label = @10
                        local.get 1
                        local.set 8
                        br 1 (;@9;)
                      end
                      local.get 1
                      local.set 8
                      i32.const 1
                      local.get 10
                      i32.shl
                      local.tee 13
                      i32.const 75913
                      i32.and
                      i32.eqz
                      br_if 0 (;@9;)
                      loop  ;; label = @10
                        local.get 6
                        local.get 1
                        i32.const 1
                        i32.add
                        local.tee 8
                        i32.store offset=76
                        local.get 7
                        local.get 13
                        i32.or
                        local.set 7
                        local.get 1
                        i32.load8_s offset=1
                        local.tee 18
                        i32.const -32
                        i32.add
                        local.tee 10
                        i32.const 31
                        i32.gt_u
                        br_if 1 (;@9;)
                        local.get 8
                        local.set 1
                        i32.const 1
                        local.get 10
                        i32.shl
                        local.tee 13
                        i32.const 75913
                        i32.and
                        br_if 0 (;@10;)
                      end
                    end
                    block  ;; label = @9
                      local.get 18
                      i32.const 42
                      i32.eq
                      if  ;; label = @10
                        local.get 6
                        block (result i32)  ;; label = @11
                          block  ;; label = @12
                            local.get 8
                            i32.load8_s offset=1
                            i32.const -48
                            i32.add
                            i32.const 10
                            i32.ge_u
                            br_if 0 (;@12;)
                            local.get 6
                            i32.load offset=76
                            local.tee 1
                            i32.load8_u offset=2
                            i32.const 36
                            i32.ne
                            br_if 0 (;@12;)
                            local.get 1
                            i32.load8_s offset=1
                            i32.const 2
                            i32.shl
                            local.get 4
                            i32.add
                            i32.const -192
                            i32.add
                            i32.const 10
                            i32.store
                            local.get 1
                            i32.load8_s offset=1
                            i32.const 3
                            i32.shl
                            local.get 3
                            i32.add
                            i32.const -384
                            i32.add
                            i32.load
                            local.set 14
                            i32.const 1
                            local.set 19
                            local.get 1
                            i32.const 3
                            i32.add
                            br 1 (;@11;)
                          end
                          local.get 19
                          br_if 9 (;@2;)
                          i32.const 0
                          local.set 19
                          i32.const 0
                          local.set 14
                          local.get 0
                          if  ;; label = @12
                            local.get 2
                            local.get 2
                            i32.load
                            local.tee 1
                            i32.const 4
                            i32.add
                            i32.store
                            local.get 1
                            i32.load
                            local.set 14
                          end
                          local.get 6
                          i32.load offset=76
                          i32.const 1
                          i32.add
                        end
                        local.tee 1
                        i32.store offset=76
                        local.get 14
                        i32.const -1
                        i32.gt_s
                        br_if 1 (;@9;)
                        i32.const 0
                        local.get 14
                        i32.sub
                        local.set 14
                        local.get 7
                        i32.const 8192
                        i32.or
                        local.set 7
                        br 1 (;@9;)
                      end
                      local.get 6
                      i32.const 76
                      i32.add
                      call 10
                      local.tee 14
                      i32.const 0
                      i32.lt_s
                      br_if 7 (;@2;)
                      local.get 6
                      i32.load offset=76
                      local.set 1
                    end
                    i32.const -1
                    local.set 9
                    block  ;; label = @9
                      local.get 1
                      i32.load8_u
                      i32.const 46
                      i32.ne
                      br_if 0 (;@9;)
                      local.get 1
                      i32.load8_u offset=1
                      i32.const 42
                      i32.eq
                      if  ;; label = @10
                        block  ;; label = @11
                          local.get 1
                          i32.load8_s offset=2
                          i32.const -48
                          i32.add
                          i32.const 10
                          i32.ge_u
                          br_if 0 (;@11;)
                          local.get 6
                          i32.load offset=76
                          local.tee 1
                          i32.load8_u offset=3
                          i32.const 36
                          i32.ne
                          br_if 0 (;@11;)
                          local.get 1
                          i32.load8_s offset=2
                          i32.const 2
                          i32.shl
                          local.get 4
                          i32.add
                          i32.const -192
                          i32.add
                          i32.const 10
                          i32.store
                          local.get 1
                          i32.load8_s offset=2
                          i32.const 3
                          i32.shl
                          local.get 3
                          i32.add
                          i32.const -384
                          i32.add
                          i32.load
                          local.set 9
                          local.get 6
                          local.get 1
                          i32.const 4
                          i32.add
                          local.tee 1
                          i32.store offset=76
                          br 2 (;@9;)
                        end
                        local.get 19
                        br_if 8 (;@2;)
                        local.get 0
                        if (result i32)  ;; label = @11
                          local.get 2
                          local.get 2
                          i32.load
                          local.tee 1
                          i32.const 4
                          i32.add
                          i32.store
                          local.get 1
                          i32.load
                        else
                          i32.const 0
                        end
                        local.set 9
                        local.get 6
                        local.get 6
                        i32.load offset=76
                        i32.const 2
                        i32.add
                        local.tee 1
                        i32.store offset=76
                        br 1 (;@9;)
                      end
                      local.get 6
                      local.get 1
                      i32.const 1
                      i32.add
                      i32.store offset=76
                      local.get 6
                      i32.const 76
                      i32.add
                      call 10
                      local.set 9
                      local.get 6
                      i32.load offset=76
                      local.set 1
                    end
                    i32.const 0
                    local.set 8
                    loop  ;; label = @9
                      local.get 8
                      local.set 13
                      i32.const -1
                      local.set 12
                      local.get 1
                      i32.load8_s
                      i32.const -65
                      i32.add
                      i32.const 57
                      i32.gt_u
                      br_if 8 (;@1;)
                      local.get 6
                      local.get 1
                      i32.const 1
                      i32.add
                      local.tee 18
                      i32.store offset=76
                      local.get 1
                      i32.load8_s
                      local.set 8
                      local.get 18
                      local.set 1
                      local.get 8
                      local.get 13
                      i32.const 58
                      i32.mul
                      i32.add
                      i32.const 1055
                      i32.add
                      i32.load8_u
                      local.tee 8
                      i32.const -1
                      i32.add
                      i32.const 8
                      i32.lt_u
                      br_if 0 (;@9;)
                    end
                    local.get 8
                    i32.eqz
                    br_if 7 (;@1;)
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          local.get 8
                          i32.const 19
                          i32.eq
                          if  ;; label = @12
                            local.get 16
                            i32.const -1
                            i32.le_s
                            br_if 1 (;@11;)
                            br 11 (;@1;)
                          end
                          local.get 16
                          i32.const 0
                          i32.lt_s
                          br_if 1 (;@10;)
                          local.get 4
                          local.get 16
                          i32.const 2
                          i32.shl
                          i32.add
                          local.get 8
                          i32.store
                          local.get 6
                          local.get 3
                          local.get 16
                          i32.const 3
                          i32.shl
                          i32.add
                          i64.load
                          i64.store offset=64
                        end
                        i32.const 0
                        local.set 1
                        local.get 0
                        i32.eqz
                        br_if 7 (;@3;)
                        br 1 (;@9;)
                      end
                      local.get 0
                      i32.eqz
                      br_if 5 (;@4;)
                      local.get 6
                      i32.const -64
                      i32.sub
                      local.get 8
                      local.get 2
                      call 9
                      local.get 6
                      i32.load offset=76
                      local.set 18
                    end
                    local.get 7
                    i32.const -65537
                    i32.and
                    local.tee 10
                    local.get 7
                    local.get 7
                    i32.const 8192
                    i32.and
                    select
                    local.set 7
                    i32.const 0
                    local.set 12
                    i32.const 1088
                    local.set 16
                    local.get 17
                    local.set 8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block (result i32)  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block (result i32)  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    local.get 18
                                                    i32.const -1
                                                    i32.add
                                                    i32.load8_s
                                                    local.tee 1
                                                    i32.const -33
                                                    i32.and
                                                    local.get 1
                                                    local.get 1
                                                    i32.const 15
                                                    i32.and
                                                    i32.const 3
                                                    i32.eq
                                                    select
                                                    local.get 1
                                                    local.get 13
                                                    select
                                                    local.tee 1
                                                    i32.const -88
                                                    i32.add
                                                    br_table 4 (;@20;) 19 (;@5;) 19 (;@5;) 19 (;@5;) 19 (;@5;) 19 (;@5;) 19 (;@5;) 19 (;@5;) 19 (;@5;) 14 (;@10;) 19 (;@5;) 15 (;@9;) 6 (;@18;) 14 (;@10;) 14 (;@10;) 14 (;@10;) 19 (;@5;) 6 (;@18;) 19 (;@5;) 19 (;@5;) 19 (;@5;) 19 (;@5;) 2 (;@22;) 5 (;@19;) 3 (;@21;) 19 (;@5;) 19 (;@5;) 9 (;@15;) 19 (;@5;) 1 (;@23;) 19 (;@5;) 19 (;@5;) 4 (;@20;) 0 (;@24;)
                                                  end
                                                  block  ;; label = @24
                                                    local.get 1
                                                    i32.const -65
                                                    i32.add
                                                    br_table 14 (;@10;) 19 (;@5;) 11 (;@13;) 19 (;@5;) 14 (;@10;) 14 (;@10;) 14 (;@10;) 0 (;@24;)
                                                  end
                                                  local.get 1
                                                  i32.const 83
                                                  i32.eq
                                                  br_if 9 (;@14;)
                                                  br 18 (;@5;)
                                                end
                                                local.get 6
                                                i64.load offset=64
                                                local.set 21
                                                i32.const 1088
                                                br 5 (;@17;)
                                              end
                                              i32.const 0
                                              local.set 1
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            local.get 13
                                                            i32.const 255
                                                            i32.and
                                                            br_table 0 (;@28;) 1 (;@27;) 2 (;@26;) 3 (;@25;) 4 (;@24;) 25 (;@3;) 5 (;@23;) 6 (;@22;) 25 (;@3;)
                                                          end
                                                          local.get 6
                                                          i32.load offset=64
                                                          local.get 15
                                                          i32.store
                                                          br 24 (;@3;)
                                                        end
                                                        local.get 6
                                                        i32.load offset=64
                                                        local.get 15
                                                        i32.store
                                                        br 23 (;@3;)
                                                      end
                                                      local.get 6
                                                      i32.load offset=64
                                                      local.get 15
                                                      i64.extend_i32_s
                                                      i64.store
                                                      br 22 (;@3;)
                                                    end
                                                    local.get 6
                                                    i32.load offset=64
                                                    local.get 15
                                                    i32.store16
                                                    br 21 (;@3;)
                                                  end
                                                  local.get 6
                                                  i32.load offset=64
                                                  local.get 15
                                                  i32.store8
                                                  br 20 (;@3;)
                                                end
                                                local.get 6
                                                i32.load offset=64
                                                local.get 15
                                                i32.store
                                                br 19 (;@3;)
                                              end
                                              local.get 6
                                              i32.load offset=64
                                              local.get 15
                                              i64.extend_i32_s
                                              i64.store
                                              br 18 (;@3;)
                                            end
                                            local.get 9
                                            i32.const 8
                                            local.get 9
                                            i32.const 8
                                            i32.gt_u
                                            select
                                            local.set 9
                                            local.get 7
                                            i32.const 8
                                            i32.or
                                            local.set 7
                                            i32.const 120
                                            local.set 1
                                          end
                                          local.get 6
                                          i64.load offset=64
                                          local.get 17
                                          local.get 1
                                          i32.const 32
                                          i32.and
                                          call 25
                                          local.set 11
                                          local.get 7
                                          i32.const 8
                                          i32.and
                                          i32.eqz
                                          br_if 3 (;@16;)
                                          local.get 6
                                          i64.load offset=64
                                          i64.eqz
                                          br_if 3 (;@16;)
                                          local.get 1
                                          i32.const 4
                                          i32.shr_u
                                          i32.const 1088
                                          i32.add
                                          local.set 16
                                          i32.const 2
                                          local.set 12
                                          br 3 (;@16;)
                                        end
                                        local.get 6
                                        i64.load offset=64
                                        local.get 17
                                        call 23
                                        local.set 11
                                        local.get 7
                                        i32.const 8
                                        i32.and
                                        i32.eqz
                                        br_if 2 (;@16;)
                                        local.get 9
                                        local.get 17
                                        local.get 11
                                        i32.sub
                                        local.tee 1
                                        i32.const 1
                                        i32.add
                                        local.get 9
                                        local.get 1
                                        i32.gt_s
                                        select
                                        local.set 9
                                        br 2 (;@16;)
                                      end
                                      local.get 6
                                      i64.load offset=64
                                      local.tee 21
                                      i64.const -1
                                      i64.le_s
                                      if  ;; label = @18
                                        local.get 6
                                        i64.const 0
                                        local.get 21
                                        i64.sub
                                        local.tee 21
                                        i64.store offset=64
                                        i32.const 1
                                        local.set 12
                                        i32.const 1088
                                        br 1 (;@17;)
                                      end
                                      local.get 7
                                      i32.const 2048
                                      i32.and
                                      if  ;; label = @18
                                        i32.const 1
                                        local.set 12
                                        i32.const 1089
                                        br 1 (;@17;)
                                      end
                                      i32.const 1090
                                      i32.const 1088
                                      local.get 7
                                      i32.const 1
                                      i32.and
                                      local.tee 12
                                      select
                                    end
                                    local.set 16
                                    local.get 21
                                    local.get 17
                                    call 5
                                    local.set 11
                                  end
                                  local.get 7
                                  i32.const -65537
                                  i32.and
                                  local.get 7
                                  local.get 9
                                  i32.const -1
                                  i32.gt_s
                                  select
                                  local.set 7
                                  local.get 6
                                  i64.load offset=64
                                  local.set 21
                                  block  ;; label = @16
                                    local.get 9
                                    br_if 0 (;@16;)
                                    local.get 21
                                    i64.eqz
                                    i32.eqz
                                    br_if 0 (;@16;)
                                    i32.const 0
                                    local.set 9
                                    local.get 17
                                    local.set 11
                                    br 11 (;@5;)
                                  end
                                  local.get 9
                                  local.get 21
                                  i64.eqz
                                  local.get 17
                                  local.get 11
                                  i32.sub
                                  i32.add
                                  local.tee 1
                                  local.get 9
                                  local.get 1
                                  i32.gt_s
                                  select
                                  local.set 9
                                  br 10 (;@5;)
                                end
                                local.get 6
                                i32.load offset=64
                                local.tee 1
                                i32.const 1098
                                local.get 1
                                select
                                local.tee 11
                                local.get 9
                                call 24
                                local.tee 1
                                local.get 9
                                local.get 11
                                i32.add
                                local.get 1
                                select
                                local.set 8
                                local.get 10
                                local.set 7
                                local.get 1
                                local.get 11
                                i32.sub
                                local.get 9
                                local.get 1
                                select
                                local.set 9
                                br 9 (;@5;)
                              end
                              local.get 9
                              if  ;; label = @14
                                local.get 6
                                i32.load offset=64
                                br 2 (;@12;)
                              end
                              i32.const 0
                              local.set 1
                              local.get 0
                              i32.const 32
                              local.get 14
                              i32.const 0
                              local.get 7
                              call 4
                              br 2 (;@11;)
                            end
                            local.get 6
                            i32.const 0
                            i32.store offset=12
                            local.get 6
                            local.get 6
                            i64.load offset=64
                            i64.store32 offset=8
                            local.get 6
                            local.get 6
                            i32.const 8
                            i32.add
                            i32.store offset=64
                            i32.const -1
                            local.set 9
                            local.get 6
                            i32.const 8
                            i32.add
                          end
                          local.set 8
                          i32.const 0
                          local.set 1
                          block  ;; label = @12
                            loop  ;; label = @13
                              local.get 8
                              i32.load
                              local.tee 10
                              i32.eqz
                              br_if 1 (;@12;)
                              block  ;; label = @14
                                local.get 6
                                i32.const 4
                                i32.add
                                local.get 10
                                call 7
                                local.tee 11
                                i32.const 0
                                i32.lt_s
                                local.tee 10
                                br_if 0 (;@14;)
                                local.get 11
                                local.get 9
                                local.get 1
                                i32.sub
                                i32.gt_u
                                br_if 0 (;@14;)
                                local.get 8
                                i32.const 4
                                i32.add
                                local.set 8
                                local.get 9
                                local.get 1
                                local.get 11
                                i32.add
                                local.tee 1
                                i32.gt_u
                                br_if 1 (;@13;)
                                br 2 (;@12;)
                              end
                            end
                            i32.const -1
                            local.set 12
                            local.get 10
                            br_if 11 (;@1;)
                          end
                          local.get 0
                          i32.const 32
                          local.get 14
                          local.get 1
                          local.get 7
                          call 4
                          local.get 1
                          i32.eqz
                          if  ;; label = @12
                            i32.const 0
                            local.set 1
                            br 1 (;@11;)
                          end
                          i32.const 0
                          local.set 13
                          local.get 6
                          i32.load offset=64
                          local.set 8
                          loop  ;; label = @12
                            local.get 8
                            i32.load
                            local.tee 10
                            i32.eqz
                            br_if 1 (;@11;)
                            local.get 6
                            i32.const 4
                            i32.add
                            local.get 10
                            call 7
                            local.tee 10
                            local.get 13
                            i32.add
                            local.tee 13
                            local.get 1
                            i32.gt_s
                            br_if 1 (;@11;)
                            local.get 0
                            local.get 6
                            i32.const 4
                            i32.add
                            local.get 10
                            call 3
                            local.get 8
                            i32.const 4
                            i32.add
                            local.set 8
                            local.get 13
                            local.get 1
                            i32.lt_u
                            br_if 0 (;@12;)
                          end
                        end
                        local.get 0
                        i32.const 32
                        local.get 14
                        local.get 1
                        local.get 7
                        i32.const 8192
                        i32.xor
                        call 4
                        local.get 14
                        local.get 1
                        local.get 14
                        local.get 1
                        i32.gt_s
                        select
                        local.set 1
                        br 7 (;@3;)
                      end
                      local.get 0
                      local.get 6
                      f64.load offset=64
                      local.get 14
                      local.get 9
                      local.get 7
                      local.get 1
                      local.get 5
                      call_indirect (type 7)
                      local.set 1
                      br 6 (;@3;)
                    end
                    local.get 6
                    local.get 6
                    i64.load offset=64
                    i64.store8 offset=55
                    i32.const 1
                    local.set 9
                    local.get 20
                    local.set 11
                    local.get 10
                    local.set 7
                    br 3 (;@5;)
                  end
                  local.get 6
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 8
                  i32.store offset=76
                  local.get 1
                  i32.load8_u offset=1
                  local.set 7
                  local.get 8
                  local.set 1
                  br 0 (;@7;)
                  unreachable
                end
                unreachable
              end
              local.get 15
              local.set 12
              local.get 0
              br_if 4 (;@1;)
              local.get 19
              i32.eqz
              br_if 1 (;@4;)
              i32.const 1
              local.set 1
              loop  ;; label = @6
                local.get 4
                local.get 1
                i32.const 2
                i32.shl
                i32.add
                i32.load
                local.tee 0
                if  ;; label = @7
                  local.get 3
                  local.get 1
                  i32.const 3
                  i32.shl
                  i32.add
                  local.get 0
                  local.get 2
                  call 9
                  i32.const 1
                  local.set 12
                  local.get 1
                  i32.const 1
                  i32.add
                  local.tee 1
                  i32.const 10
                  i32.ne
                  br_if 1 (;@6;)
                  br 6 (;@1;)
                end
              end
              i32.const 1
              local.set 12
              local.get 1
              i32.const 9
              i32.gt_u
              br_if 4 (;@1;)
              i32.const -1
              local.set 12
              local.get 4
              local.get 1
              i32.const 2
              i32.shl
              i32.add
              i32.load
              br_if 4 (;@1;)
              loop  ;; label = @6
                local.get 1
                local.tee 0
                i32.const 1
                i32.add
                local.tee 1
                i32.const 10
                i32.ne
                if  ;; label = @7
                  local.get 4
                  local.get 1
                  i32.const 2
                  i32.shl
                  i32.add
                  i32.load
                  i32.eqz
                  br_if 1 (;@6;)
                end
              end
              i32.const -1
              i32.const 1
              local.get 0
              i32.const 9
              i32.lt_u
              select
              local.set 12
              br 4 (;@1;)
            end
            local.get 0
            i32.const 32
            local.get 12
            local.get 8
            local.get 11
            i32.sub
            local.tee 10
            local.get 9
            local.get 9
            local.get 10
            i32.lt_s
            select
            local.tee 8
            i32.add
            local.tee 13
            local.get 14
            local.get 14
            local.get 13
            i32.lt_s
            select
            local.tee 1
            local.get 13
            local.get 7
            call 4
            local.get 0
            local.get 16
            local.get 12
            call 3
            local.get 0
            i32.const 48
            local.get 1
            local.get 13
            local.get 7
            i32.const 65536
            i32.xor
            call 4
            local.get 0
            i32.const 48
            local.get 8
            local.get 10
            i32.const 0
            call 4
            local.get 0
            local.get 11
            local.get 10
            call 3
            local.get 0
            i32.const 32
            local.get 1
            local.get 13
            local.get 7
            i32.const 8192
            i32.xor
            call 4
            br 1 (;@3;)
          end
        end
        i32.const 0
        local.set 12
        br 1 (;@1;)
      end
      i32.const -1
      local.set 12
    end
    local.get 6
    i32.const 80
    i32.add
    global.set 0
    local.get 12)
  (func (;7;) (type 3) (param i32 i32) (result i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      return
    end
    local.get 0
    local.get 1
    call 13)
  (func (;8;) (type 0) (param i32 i32 i32)
    (local i32 i32 i64)
    block  ;; label = @1
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
      local.get 0
      local.get 2
      i32.add
      local.tee 3
      i32.const -1
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8
      local.get 2
      i32.const 3
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const -2
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=1
      local.get 3
      i32.const -3
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=2
      local.get 2
      i32.const 7
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      i32.const -4
      i32.add
      local.get 1
      i32.store8
      local.get 0
      local.get 1
      i32.store8 offset=3
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i32.const 0
      local.get 0
      i32.sub
      i32.const 3
      i32.and
      local.tee 4
      i32.add
      local.tee 3
      local.get 1
      i32.const 255
      i32.and
      i32.const 16843009
      i32.mul
      local.tee 0
      i32.store
      local.get 3
      local.get 2
      local.get 4
      i32.sub
      i32.const -4
      i32.and
      local.tee 2
      i32.add
      local.tee 1
      i32.const -4
      i32.add
      local.get 0
      i32.store
      local.get 2
      i32.const 9
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=8
      local.get 3
      local.get 0
      i32.store offset=4
      local.get 1
      i32.const -8
      i32.add
      local.get 0
      i32.store
      local.get 1
      i32.const -12
      i32.add
      local.get 0
      i32.store
      local.get 2
      i32.const 25
      i32.lt_u
      br_if 0 (;@1;)
      local.get 3
      local.get 0
      i32.store offset=24
      local.get 3
      local.get 0
      i32.store offset=20
      local.get 3
      local.get 0
      i32.store offset=16
      local.get 3
      local.get 0
      i32.store offset=12
      local.get 1
      i32.const -16
      i32.add
      local.get 0
      i32.store
      local.get 1
      i32.const -20
      i32.add
      local.get 0
      i32.store
      local.get 1
      i32.const -24
      i32.add
      local.get 0
      i32.store
      local.get 1
      i32.const -28
      i32.add
      local.get 0
      i32.store
      local.get 2
      local.get 3
      i32.const 4
      i32.and
      i32.const 24
      i32.or
      local.tee 1
      i32.sub
      local.tee 2
      i32.const 32
      i32.lt_u
      br_if 0 (;@1;)
      local.get 0
      i64.extend_i32_u
      local.tee 5
      i64.const 32
      i64.shl
      local.get 5
      i64.or
      local.set 5
      local.get 1
      local.get 3
      i32.add
      local.set 1
      loop  ;; label = @2
        local.get 1
        local.get 5
        i64.store offset=24
        local.get 1
        local.get 5
        i64.store offset=16
        local.get 1
        local.get 5
        i64.store offset=8
        local.get 1
        local.get 5
        i64.store
        local.get 1
        i32.const 32
        i32.add
        local.set 1
        local.get 2
        i32.const -32
        i32.add
        local.tee 2
        i32.const 31
        i32.gt_u
        br_if 0 (;@2;)
      end
    end)
  (func (;9;) (type 0) (param i32 i32 i32)
    block  ;; label = @1
      block  ;; label = @2
        local.get 1
        i32.const 20
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const -9
                        i32.add
                        br_table 0 (;@10;) 1 (;@9;) 2 (;@8;) 9 (;@1;) 3 (;@7;) 4 (;@6;) 5 (;@5;) 6 (;@4;) 9 (;@1;) 7 (;@3;) 8 (;@2;)
                      end
                      local.get 2
                      local.get 2
                      i32.load
                      local.tee 1
                      i32.const 4
                      i32.add
                      i32.store
                      local.get 0
                      local.get 1
                      i32.load
                      i32.store
                      return
                    end
                    local.get 2
                    local.get 2
                    i32.load
                    local.tee 1
                    i32.const 4
                    i32.add
                    i32.store
                    local.get 0
                    local.get 1
                    i64.load32_s
                    i64.store
                    return
                  end
                  local.get 2
                  local.get 2
                  i32.load
                  local.tee 1
                  i32.const 4
                  i32.add
                  i32.store
                  local.get 0
                  local.get 1
                  i64.load32_u
                  i64.store
                  return
                end
                local.get 2
                local.get 2
                i32.load
                local.tee 1
                i32.const 4
                i32.add
                i32.store
                local.get 0
                local.get 1
                i64.load16_s
                i64.store
                return
              end
              local.get 2
              local.get 2
              i32.load
              local.tee 1
              i32.const 4
              i32.add
              i32.store
              local.get 0
              local.get 1
              i64.load16_u
              i64.store
              return
            end
            local.get 2
            local.get 2
            i32.load
            local.tee 1
            i32.const 4
            i32.add
            i32.store
            local.get 0
            local.get 1
            i64.load8_s
            i64.store
            return
          end
          local.get 2
          local.get 2
          i32.load
          local.tee 1
          i32.const 4
          i32.add
          i32.store
          local.get 0
          local.get 1
          i64.load8_u
          i64.store
          return
        end
        local.get 0
        local.get 2
        i32.const 0
        call_indirect (type 9)
      end
      return
    end
    local.get 2
    local.get 2
    i32.load
    i32.const 7
    i32.add
    i32.const -8
    i32.and
    local.tee 1
    i32.const 8
    i32.add
    i32.store
    local.get 0
    local.get 1
    i64.load
    i64.store)
  (func (;10;) (type 2) (param i32) (result i32)
    (local i32 i32 i32)
    local.get 0
    i32.load
    i32.load8_s
    i32.const -48
    i32.add
    i32.const 10
    i32.lt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 0
        i32.load
        local.tee 1
        i32.load8_s
        local.set 3
        local.get 0
        local.get 1
        i32.const 1
        i32.add
        i32.store
        local.get 3
        local.get 2
        i32.const 10
        i32.mul
        i32.add
        i32.const -48
        i32.add
        local.set 2
        local.get 1
        i32.load8_s offset=1
        i32.const -48
        i32.add
        i32.const 10
        i32.lt_u
        br_if 0 (;@2;)
      end
    end
    local.get 2)
  (func (;11;) (type 10) (param i32 i32 i32 i32)
    (local i32 i32 i32)
    global.get 0
    i32.const 208
    i32.sub
    local.tee 4
    global.set 0
    local.get 4
    local.get 2
    i32.store offset=204
    i32.const 0
    local.set 2
    local.get 4
    i32.const 160
    i32.add
    i32.const 0
    i32.const 40
    call 8
    local.get 4
    local.get 4
    i32.load offset=204
    i32.store offset=200
    block  ;; label = @1
      i32.const 0
      local.get 1
      local.get 4
      i32.const 200
      i32.add
      local.get 4
      i32.const 80
      i32.add
      local.get 4
      i32.const 160
      i32.add
      local.get 3
      call 6
      i32.const 0
      i32.lt_s
      br_if 0 (;@1;)
      local.get 0
      i32.load offset=76
      i32.const 0
      i32.ge_s
      if  ;; label = @2
        i32.const 1
        local.set 2
      end
      local.get 0
      i32.load
      local.set 5
      local.get 0
      i32.load8_s offset=74
      i32.const 0
      i32.le_s
      if  ;; label = @2
        local.get 0
        local.get 5
        i32.const -33
        i32.and
        i32.store
      end
      local.get 5
      i32.const 32
      i32.and
      local.set 6
      block (result i32)  ;; label = @2
        local.get 0
        i32.load offset=48
        if  ;; label = @3
          local.get 0
          local.get 1
          local.get 4
          i32.const 200
          i32.add
          local.get 4
          i32.const 80
          i32.add
          local.get 4
          i32.const 160
          i32.add
          local.get 3
          call 6
          br 1 (;@2;)
        end
        local.get 0
        i32.const 80
        i32.store offset=48
        local.get 0
        local.get 4
        i32.const 80
        i32.add
        i32.store offset=16
        local.get 0
        local.get 4
        i32.store offset=28
        local.get 0
        local.get 4
        i32.store offset=20
        local.get 0
        i32.load offset=44
        local.set 5
        local.get 0
        local.get 4
        i32.store offset=44
        local.get 0
        local.get 1
        local.get 4
        i32.const 200
        i32.add
        local.get 4
        i32.const 80
        i32.add
        local.get 4
        i32.const 160
        i32.add
        local.get 3
        call 6
        local.get 5
        i32.eqz
        br_if 0 (;@2;)
        drop
        local.get 0
        i32.const 0
        i32.const 0
        local.get 0
        i32.load offset=36
        call_indirect (type 1)
        drop
        local.get 0
        i32.const 0
        i32.store offset=48
        local.get 0
        local.get 5
        i32.store offset=44
        local.get 0
        i32.const 0
        i32.store offset=28
        local.get 0
        i32.const 0
        i32.store offset=16
        local.get 0
        i32.load offset=20
        drop
        local.get 0
        i32.const 0
        i32.store offset=20
        i32.const 0
      end
      drop
      local.get 0
      local.get 0
      i32.load
      local.get 6
      i32.or
      i32.store
      local.get 2
      i32.eqz
      br_if 0 (;@1;)
    end
    local.get 4
    i32.const 208
    i32.add
    global.set 0)
  (func (;12;) (type 17) (param f64 i32) (result f64)
    (local i32 i64)
    local.get 0
    i64.reinterpret_f64
    local.tee 3
    i64.const 52
    i64.shr_u
    i32.wrap_i64
    i32.const 2047
    i32.and
    local.tee 2
    i32.const 2047
    i32.ne
    if (result f64)  ;; label = @1
      local.get 2
      i32.eqz
      if  ;; label = @2
        local.get 1
        local.get 0
        f64.const 0x0p+0 (;=0;)
        f64.eq
        if (result i32)  ;; label = @3
          i32.const 0
        else
          local.get 0
          f64.const 0x1p+64 (;=1.84467e+19;)
          f64.mul
          local.get 1
          call 12
          local.set 0
          local.get 1
          i32.load
          i32.const -64
          i32.add
        end
        i32.store
        local.get 0
        return
      end
      local.get 1
      local.get 2
      i32.const -1022
      i32.add
      i32.store
      local.get 3
      i64.const -9218868437227405313
      i64.and
      i64.const 4602678819172646912
      i64.or
      f64.reinterpret_i64
    else
      local.get 0
    end)
  (func (;13;) (type 3) (param i32 i32) (result i32)
    block  ;; label = @1
      local.get 0
      if (result i32)  ;; label = @2
        local.get 1
        i32.const 127
        i32.le_u
        br_if 1 (;@1;)
        block  ;; label = @3
          i32.const 1960
          i32.load
          i32.load
          i32.eqz
          if  ;; label = @4
            local.get 1
            i32.const -128
            i32.and
            i32.const 57216
            i32.eq
            br_if 3 (;@1;)
            br 1 (;@3;)
          end
          local.get 1
          i32.const 2047
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 192
            i32.or
            i32.store8
            i32.const 2
            return
          end
          local.get 1
          i32.const 55296
          i32.ge_u
          i32.const 0
          local.get 1
          i32.const -8192
          i32.and
          i32.const 57344
          i32.ne
          select
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 224
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 3
            return
          end
          local.get 1
          i32.const -65536
          i32.add
          i32.const 1048575
          i32.le_u
          if  ;; label = @4
            local.get 0
            local.get 1
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=3
            local.get 0
            local.get 1
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8
            local.get 0
            local.get 1
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=2
            local.get 0
            local.get 1
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=1
            i32.const 4
            return
          end
        end
        i32.const 2016
        i32.const 25
        i32.store
        i32.const -1
      else
        i32.const 1
      end
      return
    end
    local.get 0
    local.get 1
    i32.store8
    i32.const 1)
  (func (;14;) (type 15) (param i32 i64 i32) (result i64)
    i64.const 0)
  (func (;15;) (type 2) (param i32) (result i32)
    i32.const 0)
  (func (;16;) (type 1) (param i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 3
    global.set 0
    local.get 3
    local.get 0
    i32.load offset=28
    local.tee 5
    i32.store offset=16
    local.get 0
    i32.load offset=20
    local.set 4
    local.get 3
    local.get 2
    i32.store offset=28
    local.get 3
    local.get 1
    i32.store offset=24
    local.get 3
    local.get 4
    local.get 5
    i32.sub
    local.tee 1
    i32.store offset=20
    local.get 1
    local.get 2
    i32.add
    local.set 5
    i32.const 2
    local.set 7
    local.get 3
    i32.const 16
    i32.add
    local.set 1
    block (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block (result i32)  ;; label = @4
            i32.const 0
            local.get 0
            i32.load offset=60
            local.get 3
            i32.const 16
            i32.add
            i32.const 2
            local.get 3
            i32.const 12
            i32.add
            call 0
            local.tee 4
            i32.eqz
            br_if 0 (;@4;)
            drop
            i32.const 2016
            local.get 4
            i32.store
            i32.const -1
          end
          i32.eqz
          if  ;; label = @4
            loop  ;; label = @5
              local.get 5
              local.get 3
              i32.load offset=12
              local.tee 4
              i32.eq
              br_if 2 (;@3;)
              local.get 4
              i32.const -1
              i32.le_s
              br_if 3 (;@2;)
              local.get 1
              local.get 4
              local.get 1
              i32.load offset=4
              local.tee 8
              i32.gt_u
              local.tee 6
              i32.const 3
              i32.shl
              i32.add
              local.tee 9
              local.get 4
              local.get 8
              i32.const 0
              local.get 6
              select
              i32.sub
              local.tee 8
              local.get 9
              i32.load
              i32.add
              i32.store
              local.get 1
              i32.const 12
              i32.const 4
              local.get 6
              select
              i32.add
              local.tee 9
              local.get 9
              i32.load
              local.get 8
              i32.sub
              i32.store
              local.get 5
              local.get 4
              i32.sub
              local.set 5
              block (result i32)  ;; label = @6
                i32.const 0
                local.get 0
                i32.load offset=60
                local.get 1
                i32.const 8
                i32.add
                local.get 1
                local.get 6
                select
                local.tee 1
                local.get 7
                local.get 6
                i32.sub
                local.tee 7
                local.get 3
                i32.const 12
                i32.add
                call 0
                local.tee 4
                i32.eqz
                br_if 0 (;@6;)
                drop
                i32.const 2016
                local.get 4
                i32.store
                i32.const -1
              end
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 3
          i32.const -1
          i32.store offset=12
          local.get 5
          i32.const -1
          i32.ne
          br_if 1 (;@2;)
        end
        local.get 0
        local.get 0
        i32.load offset=44
        local.tee 1
        i32.store offset=28
        local.get 0
        local.get 1
        i32.store offset=20
        local.get 0
        local.get 1
        local.get 0
        i32.load offset=48
        i32.add
        i32.store offset=16
        local.get 2
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store offset=28
      local.get 0
      i64.const 0
      i64.store offset=16
      local.get 0
      local.get 0
      i32.load
      i32.const 32
      i32.or
      i32.store
      i32.const 0
      local.get 7
      i32.const 2
      i32.eq
      br_if 0 (;@1;)
      drop
      local.get 2
      local.get 1
      i32.load offset=4
      i32.sub
    end
    local.set 0
    local.get 3
    i32.const 32
    i32.add
    global.set 0
    local.get 0)
  (func (;17;) (type 2) (param i32) (result i32)
    global.get 0
    local.get 0
    i32.sub
    i32.const -16
    i32.and
    local.tee 0
    global.set 0
    local.get 0)
  (func (;18;) (type 5) (param i32)
    local.get 0
    global.set 0)
  (func (;19;) (type 6) (result i32)
    global.get 0)
  (func (;20;) (type 5) (param i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 1
    local.get 0
    i32.store offset=12
    i32.const 1084
    i32.load
    i32.const 1047
    local.get 0
    i32.const 4
    call 11
    local.get 1
    i32.const 16
    i32.add
    global.set 0)
  (func (;21;) (type 4)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=12
    i32.const 1084
    i32.load
    i32.const 1024
    i32.const 0
    i32.const 0
    call 11
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;22;) (type 7) (param i32 f64 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i64 f64)
    global.get 0
    i32.const 560
    i32.sub
    local.tee 9
    global.set 0
    local.get 9
    i32.const 0
    i32.store offset=44
    block (result i32)  ;; label = @1
      local.get 1
      i64.reinterpret_f64
      local.tee 23
      i64.const -1
      i64.le_s
      if  ;; label = @2
        i32.const 1
        local.set 17
        local.get 1
        f64.neg
        local.tee 1
        i64.reinterpret_f64
        local.set 23
        i32.const 1600
        br 1 (;@1;)
      end
      local.get 4
      i32.const 2048
      i32.and
      if  ;; label = @2
        i32.const 1
        local.set 17
        i32.const 1603
        br 1 (;@1;)
      end
      i32.const 1606
      i32.const 1601
      local.get 4
      i32.const 1
      i32.and
      local.tee 17
      select
    end
    local.set 21
    block  ;; label = @1
      local.get 23
      i64.const 9218868437227405312
      i64.and
      i64.const 9218868437227405312
      i64.eq
      if  ;; label = @2
        local.get 0
        i32.const 32
        local.get 2
        local.get 17
        i32.const 3
        i32.add
        local.tee 12
        local.get 4
        i32.const -65537
        i32.and
        call 4
        local.get 0
        local.get 21
        local.get 17
        call 3
        local.get 0
        i32.const 1627
        i32.const 1631
        local.get 5
        i32.const 5
        i32.shr_u
        i32.const 1
        i32.and
        local.tee 3
        select
        i32.const 1619
        i32.const 1623
        local.get 3
        select
        local.get 1
        local.get 1
        f64.ne
        select
        i32.const 3
        call 3
        br 1 (;@1;)
      end
      local.get 9
      i32.const 16
      i32.add
      local.set 16
      block  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 1
            local.get 9
            i32.const 44
            i32.add
            call 12
            local.tee 1
            local.get 1
            f64.add
            local.tee 1
            f64.const 0x0p+0 (;=0;)
            f64.ne
            if  ;; label = @5
              local.get 9
              local.get 9
              i32.load offset=44
              local.tee 6
              i32.const -1
              i32.add
              i32.store offset=44
              local.get 5
              i32.const 32
              i32.or
              local.tee 15
              i32.const 97
              i32.ne
              br_if 1 (;@4;)
              br 3 (;@2;)
            end
            local.get 5
            i32.const 32
            i32.or
            local.tee 15
            i32.const 97
            i32.eq
            br_if 2 (;@2;)
            local.get 9
            i32.load offset=44
            local.set 11
            i32.const 6
            local.get 3
            local.get 3
            i32.const 0
            i32.lt_s
            select
            br 1 (;@3;)
          end
          local.get 9
          local.get 6
          i32.const -29
          i32.add
          local.tee 11
          i32.store offset=44
          local.get 1
          f64.const 0x1p+28 (;=2.68435e+08;)
          f64.mul
          local.set 1
          i32.const 6
          local.get 3
          local.get 3
          i32.const 0
          i32.lt_s
          select
        end
        local.set 10
        local.get 9
        i32.const 48
        i32.add
        local.get 9
        i32.const 336
        i32.add
        local.get 11
        i32.const 0
        i32.lt_s
        select
        local.tee 14
        local.set 8
        loop  ;; label = @3
          local.get 8
          block (result i32)  ;; label = @4
            local.get 1
            f64.const 0x1p+32 (;=4.29497e+09;)
            f64.lt
            local.get 1
            f64.const 0x0p+0 (;=0;)
            f64.ge
            i32.and
            if  ;; label = @5
              local.get 1
              i32.trunc_f64_u
              br 1 (;@4;)
            end
            i32.const 0
          end
          local.tee 3
          i32.store
          local.get 8
          i32.const 4
          i32.add
          local.set 8
          local.get 1
          local.get 3
          f64.convert_i32_u
          f64.sub
          f64.const 0x1.dcd65p+29 (;=1e+09;)
          f64.mul
          local.tee 1
          f64.const 0x0p+0 (;=0;)
          f64.ne
          br_if 0 (;@3;)
        end
        block  ;; label = @3
          local.get 11
          i32.const 1
          i32.lt_s
          if  ;; label = @4
            local.get 11
            local.set 3
            local.get 8
            local.set 6
            local.get 14
            local.set 7
            br 1 (;@3;)
          end
          local.get 14
          local.set 7
          local.get 11
          local.set 3
          loop  ;; label = @4
            local.get 3
            i32.const 29
            local.get 3
            i32.const 29
            i32.lt_s
            select
            local.set 13
            block  ;; label = @5
              local.get 8
              i32.const -4
              i32.add
              local.tee 6
              local.get 7
              i32.lt_u
              br_if 0 (;@5;)
              local.get 13
              i64.extend_i32_u
              local.set 24
              i64.const 0
              local.set 23
              loop  ;; label = @6
                local.get 6
                local.get 23
                i64.const 4294967295
                i64.and
                local.get 6
                i64.load32_u
                local.get 24
                i64.shl
                i64.add
                local.tee 23
                local.get 23
                i64.const 1000000000
                i64.div_u
                local.tee 23
                i64.const 1000000000
                i64.mul
                i64.sub
                i64.store32
                local.get 6
                i32.const -4
                i32.add
                local.tee 6
                local.get 7
                i32.ge_u
                br_if 0 (;@6;)
              end
              local.get 23
              i32.wrap_i64
              local.tee 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 7
              i32.const -4
              i32.add
              local.tee 7
              local.get 3
              i32.store
            end
            loop  ;; label = @5
              local.get 8
              local.tee 6
              local.get 7
              i32.gt_u
              if  ;; label = @6
                local.get 6
                i32.const -4
                i32.add
                local.tee 8
                i32.load
                i32.eqz
                br_if 1 (;@5;)
              end
            end
            local.get 9
            local.get 9
            i32.load offset=44
            local.get 13
            i32.sub
            local.tee 3
            i32.store offset=44
            local.get 6
            local.set 8
            local.get 3
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
          end
        end
        local.get 3
        i32.const -1
        i32.le_s
        if  ;; label = @3
          local.get 10
          i32.const 25
          i32.add
          i32.const 9
          i32.div_s
          i32.const 1
          i32.add
          local.set 18
          local.get 15
          i32.const 102
          i32.eq
          local.set 22
          loop  ;; label = @4
            i32.const 9
            i32.const 0
            local.get 3
            i32.sub
            local.get 3
            i32.const -9
            i32.lt_s
            select
            local.set 12
            block  ;; label = @5
              local.get 7
              local.get 6
              i32.ge_u
              if  ;; label = @6
                local.get 7
                local.get 7
                i32.const 4
                i32.add
                local.get 7
                i32.load
                select
                local.set 7
                br 1 (;@5;)
              end
              i32.const 1000000000
              local.get 12
              i32.shr_u
              local.set 20
              i32.const -1
              local.get 12
              i32.shl
              i32.const -1
              i32.xor
              local.set 19
              i32.const 0
              local.set 3
              local.get 7
              local.set 8
              loop  ;; label = @6
                local.get 8
                local.get 3
                local.get 8
                i32.load
                local.tee 13
                local.get 12
                i32.shr_u
                i32.add
                i32.store
                local.get 13
                local.get 19
                i32.and
                local.get 20
                i32.mul
                local.set 3
                local.get 8
                i32.const 4
                i32.add
                local.tee 8
                local.get 6
                i32.lt_u
                br_if 0 (;@6;)
              end
              local.get 7
              local.get 7
              i32.const 4
              i32.add
              local.get 7
              i32.load
              select
              local.set 7
              local.get 3
              i32.eqz
              br_if 0 (;@5;)
              local.get 6
              local.get 3
              i32.store
              local.get 6
              i32.const 4
              i32.add
              local.set 6
            end
            local.get 9
            local.get 9
            i32.load offset=44
            local.get 12
            i32.add
            local.tee 3
            i32.store offset=44
            local.get 14
            local.get 7
            local.get 22
            select
            local.tee 8
            local.get 18
            i32.const 2
            i32.shl
            i32.add
            local.get 6
            local.get 6
            local.get 8
            i32.sub
            i32.const 2
            i32.shr_s
            local.get 18
            i32.gt_s
            select
            local.set 6
            local.get 3
            i32.const 0
            i32.lt_s
            br_if 0 (;@4;)
          end
        end
        i32.const 0
        local.set 8
        block  ;; label = @3
          local.get 7
          local.get 6
          i32.ge_u
          br_if 0 (;@3;)
          local.get 14
          local.get 7
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          local.set 8
          i32.const 10
          local.set 3
          local.get 7
          i32.load
          local.tee 13
          i32.const 10
          i32.lt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 8
            i32.const 1
            i32.add
            local.set 8
            local.get 13
            local.get 3
            i32.const 10
            i32.mul
            local.tee 3
            i32.ge_u
            br_if 0 (;@4;)
          end
        end
        local.get 10
        i32.const 0
        local.get 8
        local.get 15
        i32.const 102
        i32.eq
        select
        i32.sub
        local.get 15
        i32.const 103
        i32.eq
        local.get 10
        i32.const 0
        i32.ne
        i32.and
        i32.sub
        local.tee 3
        local.get 6
        local.get 14
        i32.sub
        i32.const 2
        i32.shr_s
        i32.const 9
        i32.mul
        i32.const -9
        i32.add
        i32.lt_s
        if  ;; label = @3
          local.get 3
          i32.const 9216
          i32.add
          local.tee 19
          i32.const 9
          i32.div_s
          local.tee 13
          i32.const 2
          i32.shl
          local.get 9
          i32.const 48
          i32.add
          i32.const 4
          i32.or
          local.get 9
          i32.const 340
          i32.add
          local.get 11
          i32.const 0
          i32.lt_s
          select
          i32.add
          i32.const -4096
          i32.add
          local.set 12
          i32.const 10
          local.set 3
          local.get 19
          local.get 13
          i32.const 9
          i32.mul
          i32.sub
          local.tee 13
          i32.const 7
          i32.le_s
          if  ;; label = @4
            loop  ;; label = @5
              local.get 3
              i32.const 10
              i32.mul
              local.set 3
              local.get 13
              i32.const 1
              i32.add
              local.tee 13
              i32.const 8
              i32.ne
              br_if 0 (;@5;)
            end
          end
          block  ;; label = @4
            i32.const 0
            local.get 6
            local.get 12
            i32.const 4
            i32.add
            local.tee 18
            i32.eq
            local.get 12
            i32.load
            local.tee 19
            local.get 19
            local.get 3
            i32.div_u
            local.tee 13
            local.get 3
            i32.mul
            i32.sub
            local.tee 20
            select
            br_if 0 (;@4;)
            f64.const 0x1p-1 (;=0.5;)
            f64.const 0x1p+0 (;=1;)
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 20
            local.get 3
            i32.const 1
            i32.shr_u
            local.tee 11
            i32.eq
            select
            f64.const 0x1.8p+0 (;=1.5;)
            local.get 6
            local.get 18
            i32.eq
            select
            local.get 20
            local.get 11
            i32.lt_u
            select
            local.set 25
            f64.const 0x1.0000000000001p+53 (;=9.0072e+15;)
            f64.const 0x1p+53 (;=9.0072e+15;)
            local.get 13
            i32.const 1
            i32.and
            select
            local.set 1
            block  ;; label = @5
              local.get 17
              i32.eqz
              br_if 0 (;@5;)
              local.get 21
              i32.load8_u
              i32.const 45
              i32.ne
              br_if 0 (;@5;)
              local.get 25
              f64.neg
              local.set 25
              local.get 1
              f64.neg
              local.set 1
            end
            local.get 12
            local.get 19
            local.get 20
            i32.sub
            local.tee 11
            i32.store
            local.get 1
            local.get 25
            f64.add
            local.get 1
            f64.eq
            br_if 0 (;@4;)
            local.get 12
            local.get 3
            local.get 11
            i32.add
            local.tee 3
            i32.store
            local.get 3
            i32.const 1000000000
            i32.ge_u
            if  ;; label = @5
              loop  ;; label = @6
                local.get 12
                i32.const 0
                i32.store
                local.get 12
                i32.const -4
                i32.add
                local.tee 12
                local.get 7
                i32.lt_u
                if  ;; label = @7
                  local.get 7
                  i32.const -4
                  i32.add
                  local.tee 7
                  i32.const 0
                  i32.store
                end
                local.get 12
                local.get 12
                i32.load
                i32.const 1
                i32.add
                local.tee 3
                i32.store
                local.get 3
                i32.const 999999999
                i32.gt_u
                br_if 0 (;@6;)
              end
            end
            local.get 14
            local.get 7
            i32.sub
            i32.const 2
            i32.shr_s
            i32.const 9
            i32.mul
            local.set 8
            i32.const 10
            local.set 3
            local.get 7
            i32.load
            local.tee 11
            i32.const 10
            i32.lt_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 8
              i32.const 1
              i32.add
              local.set 8
              local.get 11
              local.get 3
              i32.const 10
              i32.mul
              local.tee 3
              i32.ge_u
              br_if 0 (;@5;)
            end
          end
          local.get 12
          i32.const 4
          i32.add
          local.tee 3
          local.get 6
          local.get 6
          local.get 3
          i32.gt_u
          select
          local.set 6
        end
        block (result i32)  ;; label = @3
          loop  ;; label = @4
            i32.const 0
            local.get 6
            local.tee 11
            local.get 7
            i32.le_u
            br_if 1 (;@3;)
            drop
            local.get 11
            i32.const -4
            i32.add
            local.tee 6
            i32.load
            i32.eqz
            br_if 0 (;@4;)
          end
          i32.const 1
        end
        local.set 22
        block  ;; label = @3
          local.get 15
          i32.const 103
          i32.ne
          if  ;; label = @4
            local.get 4
            i32.const 8
            i32.and
            local.set 15
            br 1 (;@3;)
          end
          local.get 8
          i32.const -1
          i32.xor
          i32.const -1
          local.get 10
          i32.const 1
          local.get 10
          select
          local.tee 6
          local.get 8
          i32.gt_s
          local.get 8
          i32.const -5
          i32.gt_s
          i32.and
          local.tee 3
          select
          local.get 6
          i32.add
          local.set 10
          i32.const -1
          i32.const -2
          local.get 3
          select
          local.get 5
          i32.add
          local.set 5
          local.get 4
          i32.const 8
          i32.and
          local.tee 15
          br_if 0 (;@3;)
          i32.const 9
          local.set 6
          block  ;; label = @4
            local.get 22
            i32.eqz
            br_if 0 (;@4;)
            local.get 11
            i32.const -4
            i32.add
            i32.load
            local.tee 3
            i32.eqz
            br_if 0 (;@4;)
            i32.const 10
            local.set 13
            i32.const 0
            local.set 6
            local.get 3
            i32.const 10
            i32.rem_u
            br_if 0 (;@4;)
            loop  ;; label = @5
              local.get 6
              i32.const 1
              i32.add
              local.set 6
              local.get 3
              local.get 13
              i32.const 10
              i32.mul
              local.tee 13
              i32.rem_u
              i32.eqz
              br_if 0 (;@5;)
            end
          end
          local.get 11
          local.get 14
          i32.sub
          i32.const 2
          i32.shr_s
          i32.const 9
          i32.mul
          i32.const -9
          i32.add
          local.set 3
          local.get 5
          i32.const -33
          i32.and
          i32.const 70
          i32.eq
          if  ;; label = @4
            i32.const 0
            local.set 15
            local.get 10
            local.get 3
            local.get 6
            i32.sub
            local.tee 3
            i32.const 0
            local.get 3
            i32.const 0
            i32.gt_s
            select
            local.tee 3
            local.get 10
            local.get 3
            i32.lt_s
            select
            local.set 10
            br 1 (;@3;)
          end
          i32.const 0
          local.set 15
          local.get 10
          local.get 3
          local.get 8
          i32.add
          local.get 6
          i32.sub
          local.tee 3
          i32.const 0
          local.get 3
          i32.const 0
          i32.gt_s
          select
          local.tee 3
          local.get 10
          local.get 3
          i32.lt_s
          select
          local.set 10
        end
        local.get 10
        local.get 15
        i32.or
        local.tee 20
        i32.const 0
        i32.ne
        local.set 19
        local.get 0
        i32.const 32
        local.get 2
        block (result i32)  ;; label = @3
          local.get 8
          i32.const 0
          local.get 8
          i32.const 0
          i32.gt_s
          select
          local.get 5
          i32.const -33
          i32.and
          local.tee 13
          i32.const 70
          i32.eq
          br_if 0 (;@3;)
          drop
          local.get 16
          local.get 8
          local.get 8
          i32.const 31
          i32.shr_s
          local.tee 3
          i32.add
          local.get 3
          i32.xor
          i64.extend_i32_u
          local.get 16
          call 5
          local.tee 6
          i32.sub
          i32.const 1
          i32.le_s
          if  ;; label = @4
            loop  ;; label = @5
              local.get 6
              i32.const -1
              i32.add
              local.tee 6
              i32.const 48
              i32.store8
              local.get 16
              local.get 6
              i32.sub
              i32.const 2
              i32.lt_s
              br_if 0 (;@5;)
            end
          end
          local.get 6
          i32.const -2
          i32.add
          local.tee 18
          local.get 5
          i32.store8
          local.get 6
          i32.const -1
          i32.add
          i32.const 45
          i32.const 43
          local.get 8
          i32.const 0
          i32.lt_s
          select
          i32.store8
          local.get 16
          local.get 18
          i32.sub
        end
        local.get 10
        local.get 17
        i32.add
        local.get 19
        i32.add
        i32.add
        i32.const 1
        i32.add
        local.tee 12
        local.get 4
        call 4
        local.get 0
        local.get 21
        local.get 17
        call 3
        local.get 0
        i32.const 48
        local.get 2
        local.get 12
        local.get 4
        i32.const 65536
        i32.xor
        call 4
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              local.get 13
              i32.const 70
              i32.eq
              if  ;; label = @6
                local.get 9
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set 3
                local.get 9
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 8
                local.get 14
                local.get 7
                local.get 7
                local.get 14
                i32.gt_u
                select
                local.tee 5
                local.set 7
                loop  ;; label = @7
                  local.get 7
                  i64.load32_u
                  local.get 8
                  call 5
                  local.set 6
                  block  ;; label = @8
                    local.get 5
                    local.get 7
                    i32.ne
                    if  ;; label = @9
                      local.get 6
                      local.get 9
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 6
                        i32.const -1
                        i32.add
                        local.tee 6
                        i32.const 48
                        i32.store8
                        local.get 6
                        local.get 9
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 6
                    local.get 8
                    i32.ne
                    br_if 0 (;@8;)
                    local.get 9
                    i32.const 48
                    i32.store8 offset=24
                    local.get 3
                    local.set 6
                  end
                  local.get 0
                  local.get 6
                  local.get 8
                  local.get 6
                  i32.sub
                  call 3
                  local.get 7
                  i32.const 4
                  i32.add
                  local.tee 7
                  local.get 14
                  i32.le_u
                  br_if 0 (;@7;)
                end
                local.get 20
                if  ;; label = @7
                  local.get 0
                  i32.const 1635
                  i32.const 1
                  call 3
                end
                local.get 7
                local.get 11
                i32.ge_u
                br_if 1 (;@5;)
                local.get 10
                i32.const 1
                i32.lt_s
                br_if 1 (;@5;)
                loop  ;; label = @7
                  local.get 7
                  i64.load32_u
                  local.get 8
                  call 5
                  local.tee 6
                  local.get 9
                  i32.const 16
                  i32.add
                  i32.gt_u
                  if  ;; label = @8
                    loop  ;; label = @9
                      local.get 6
                      i32.const -1
                      i32.add
                      local.tee 6
                      i32.const 48
                      i32.store8
                      local.get 6
                      local.get 9
                      i32.const 16
                      i32.add
                      i32.gt_u
                      br_if 0 (;@9;)
                    end
                  end
                  local.get 0
                  local.get 6
                  local.get 10
                  i32.const 9
                  local.get 10
                  i32.const 9
                  i32.lt_s
                  select
                  call 3
                  local.get 10
                  i32.const -9
                  i32.add
                  local.set 6
                  local.get 7
                  i32.const 4
                  i32.add
                  local.tee 7
                  local.get 11
                  i32.ge_u
                  br_if 3 (;@4;)
                  local.get 10
                  i32.const 9
                  i32.gt_s
                  local.set 3
                  local.get 6
                  local.set 10
                  local.get 3
                  br_if 0 (;@7;)
                end
                br 2 (;@4;)
              end
              block  ;; label = @6
                local.get 10
                i32.const 0
                i32.lt_s
                br_if 0 (;@6;)
                local.get 11
                local.get 7
                i32.const 4
                i32.add
                local.get 22
                select
                local.set 5
                local.get 9
                i32.const 16
                i32.add
                i32.const 8
                i32.or
                local.set 3
                local.get 9
                i32.const 16
                i32.add
                i32.const 9
                i32.or
                local.set 11
                local.get 7
                local.set 8
                loop  ;; label = @7
                  local.get 11
                  local.get 8
                  i64.load32_u
                  local.get 11
                  call 5
                  local.tee 6
                  i32.eq
                  if  ;; label = @8
                    local.get 9
                    i32.const 48
                    i32.store8 offset=24
                    local.get 3
                    local.set 6
                  end
                  block  ;; label = @8
                    local.get 7
                    local.get 8
                    i32.ne
                    if  ;; label = @9
                      local.get 6
                      local.get 9
                      i32.const 16
                      i32.add
                      i32.le_u
                      br_if 1 (;@8;)
                      loop  ;; label = @10
                        local.get 6
                        i32.const -1
                        i32.add
                        local.tee 6
                        i32.const 48
                        i32.store8
                        local.get 6
                        local.get 9
                        i32.const 16
                        i32.add
                        i32.gt_u
                        br_if 0 (;@10;)
                      end
                      br 1 (;@8;)
                    end
                    local.get 0
                    local.get 6
                    i32.const 1
                    call 3
                    local.get 6
                    i32.const 1
                    i32.add
                    local.set 6
                    local.get 15
                    i32.eqz
                    i32.const 0
                    local.get 10
                    i32.const 1
                    i32.lt_s
                    select
                    br_if 0 (;@8;)
                    local.get 0
                    i32.const 1635
                    i32.const 1
                    call 3
                  end
                  local.get 0
                  local.get 6
                  local.get 11
                  local.get 6
                  i32.sub
                  local.tee 6
                  local.get 10
                  local.get 10
                  local.get 6
                  i32.gt_s
                  select
                  call 3
                  local.get 10
                  local.get 6
                  i32.sub
                  local.set 10
                  local.get 8
                  i32.const 4
                  i32.add
                  local.tee 8
                  local.get 5
                  i32.ge_u
                  br_if 1 (;@6;)
                  local.get 10
                  i32.const -1
                  i32.gt_s
                  br_if 0 (;@7;)
                end
              end
              local.get 0
              i32.const 48
              local.get 10
              i32.const 18
              i32.add
              i32.const 18
              i32.const 0
              call 4
              local.get 0
              local.get 18
              local.get 16
              local.get 18
              i32.sub
              call 3
              br 2 (;@3;)
            end
            local.get 10
            local.set 6
          end
          local.get 0
          i32.const 48
          local.get 6
          i32.const 9
          i32.add
          i32.const 9
          i32.const 0
          call 4
        end
        br 1 (;@1;)
      end
      local.get 21
      i32.const 9
      i32.add
      local.get 21
      local.get 5
      i32.const 32
      i32.and
      local.tee 11
      select
      local.set 10
      block  ;; label = @2
        local.get 3
        i32.const 11
        i32.gt_u
        br_if 0 (;@2;)
        i32.const 12
        local.get 3
        i32.sub
        local.tee 6
        i32.eqz
        br_if 0 (;@2;)
        f64.const 0x1p+3 (;=8;)
        local.set 25
        loop  ;; label = @3
          local.get 25
          f64.const 0x1p+4 (;=16;)
          f64.mul
          local.set 25
          local.get 6
          i32.const -1
          i32.add
          local.tee 6
          br_if 0 (;@3;)
        end
        local.get 10
        i32.load8_u
        i32.const 45
        i32.eq
        if  ;; label = @3
          local.get 25
          local.get 1
          f64.neg
          local.get 25
          f64.sub
          f64.add
          f64.neg
          local.set 1
          br 1 (;@2;)
        end
        local.get 1
        local.get 25
        f64.add
        local.get 25
        f64.sub
        local.set 1
      end
      local.get 16
      local.get 9
      i32.load offset=44
      local.tee 6
      local.get 6
      i32.const 31
      i32.shr_s
      local.tee 6
      i32.add
      local.get 6
      i32.xor
      i64.extend_i32_u
      local.get 16
      call 5
      local.tee 6
      i32.eq
      if  ;; label = @2
        local.get 9
        i32.const 48
        i32.store8 offset=15
        local.get 9
        i32.const 15
        i32.add
        local.set 6
      end
      local.get 17
      i32.const 2
      i32.or
      local.set 14
      local.get 9
      i32.load offset=44
      local.set 8
      local.get 6
      i32.const -2
      i32.add
      local.tee 13
      local.get 5
      i32.const 15
      i32.add
      i32.store8
      local.get 6
      i32.const -1
      i32.add
      i32.const 45
      i32.const 43
      local.get 8
      i32.const 0
      i32.lt_s
      select
      i32.store8
      local.get 4
      i32.const 8
      i32.and
      local.set 8
      local.get 9
      i32.const 16
      i32.add
      local.set 7
      loop  ;; label = @2
        local.get 7
        local.tee 5
        block (result i32)  ;; label = @3
          local.get 1
          f64.abs
          f64.const 0x1p+31 (;=2.14748e+09;)
          f64.lt
          if  ;; label = @4
            local.get 1
            i32.trunc_f64_s
            br 1 (;@3;)
          end
          i32.const -2147483648
        end
        local.tee 6
        i32.const 1584
        i32.add
        i32.load8_u
        local.get 11
        i32.or
        i32.store8
        local.get 1
        local.get 6
        f64.convert_i32_s
        f64.sub
        f64.const 0x1p+4 (;=16;)
        f64.mul
        local.set 1
        block  ;; label = @3
          local.get 5
          i32.const 1
          i32.add
          local.tee 7
          local.get 9
          i32.const 16
          i32.add
          i32.sub
          i32.const 1
          i32.ne
          br_if 0 (;@3;)
          block  ;; label = @4
            local.get 8
            br_if 0 (;@4;)
            local.get 3
            i32.const 0
            i32.gt_s
            br_if 0 (;@4;)
            local.get 1
            f64.const 0x0p+0 (;=0;)
            f64.eq
            br_if 1 (;@3;)
          end
          local.get 5
          i32.const 46
          i32.store8 offset=1
          local.get 5
          i32.const 2
          i32.add
          local.set 7
        end
        local.get 1
        f64.const 0x0p+0 (;=0;)
        f64.ne
        br_if 0 (;@2;)
      end
      local.get 0
      i32.const 32
      local.get 2
      local.get 14
      block (result i32)  ;; label = @2
        block  ;; label = @3
          local.get 3
          i32.eqz
          br_if 0 (;@3;)
          local.get 7
          local.get 9
          i32.sub
          i32.const -18
          i32.add
          local.get 3
          i32.ge_s
          br_if 0 (;@3;)
          local.get 3
          local.get 16
          i32.add
          local.get 13
          i32.sub
          i32.const 2
          i32.add
          br 1 (;@2;)
        end
        local.get 16
        local.get 9
        i32.const 16
        i32.add
        i32.sub
        local.get 13
        i32.sub
        local.get 7
        i32.add
      end
      local.tee 3
      i32.add
      local.tee 12
      local.get 4
      call 4
      local.get 0
      local.get 10
      local.get 14
      call 3
      local.get 0
      i32.const 48
      local.get 2
      local.get 12
      local.get 4
      i32.const 65536
      i32.xor
      call 4
      local.get 0
      local.get 9
      i32.const 16
      i32.add
      local.get 7
      local.get 9
      i32.const 16
      i32.add
      i32.sub
      local.tee 5
      call 3
      local.get 0
      i32.const 48
      local.get 3
      local.get 5
      local.get 16
      local.get 13
      i32.sub
      local.tee 3
      i32.add
      i32.sub
      i32.const 0
      i32.const 0
      call 4
      local.get 0
      local.get 13
      local.get 3
      call 3
    end
    local.get 0
    i32.const 32
    local.get 2
    local.get 12
    local.get 4
    i32.const 8192
    i32.xor
    call 4
    local.get 9
    i32.const 560
    i32.add
    global.set 0
    local.get 2
    local.get 12
    local.get 12
    local.get 2
    i32.lt_s
    select)
  (func (;23;) (type 8) (param i64 i32) (result i32)
    local.get 0
    i64.eqz
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 7
        i32.and
        i32.const 48
        i32.or
        i32.store8
        local.get 0
        i64.const 3
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;24;) (type 3) (param i32 i32) (result i32)
    (local i32)
    local.get 1
    i32.const 0
    i32.ne
    local.set 2
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          local.get 1
          i32.eqz
          br_if 0 (;@3;)
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 0
            i32.load8_u
            i32.eqz
            br_if 2 (;@2;)
            local.get 0
            i32.const 1
            i32.add
            local.set 0
            local.get 1
            i32.const -1
            i32.add
            local.tee 1
            i32.const 0
            i32.ne
            local.set 2
            local.get 1
            i32.eqz
            br_if 1 (;@3;)
            local.get 0
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        local.get 2
        i32.eqz
        br_if 1 (;@1;)
      end
      block  ;; label = @2
        local.get 0
        i32.load8_u
        i32.eqz
        br_if 0 (;@2;)
        local.get 1
        i32.const 4
        i32.lt_u
        br_if 0 (;@2;)
        loop  ;; label = @3
          local.get 0
          i32.load
          local.tee 2
          i32.const -1
          i32.xor
          local.get 2
          i32.const -16843009
          i32.add
          i32.and
          i32.const -2139062144
          i32.and
          br_if 1 (;@2;)
          local.get 0
          i32.const 4
          i32.add
          local.set 0
          local.get 1
          i32.const -4
          i32.add
          local.tee 1
          i32.const 3
          i32.gt_u
          br_if 0 (;@3;)
        end
      end
      local.get 1
      i32.eqz
      br_if 0 (;@1;)
      loop  ;; label = @2
        local.get 0
        i32.load8_u
        i32.eqz
        if  ;; label = @3
          local.get 0
          return
        end
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        br_if 0 (;@2;)
      end
    end
    i32.const 0)
  (func (;25;) (type 14) (param i64 i32 i32) (result i32)
    local.get 0
    i64.eqz
    i32.eqz
    if  ;; label = @1
      loop  ;; label = @2
        local.get 1
        i32.const -1
        i32.add
        local.tee 1
        local.get 0
        i32.wrap_i64
        i32.const 15
        i32.and
        i32.const 1584
        i32.add
        i32.load8_u
        local.get 2
        i32.or
        i32.store8
        local.get 0
        i64.const 4
        i64.shr_u
        local.tee 0
        i64.const 0
        i64.ne
        br_if 0 (;@2;)
      end
    end
    local.get 1)
  (func (;26;) (type 0) (param i32 i32 i32)
    (local i32 i32 i32)
    block  ;; label = @1
      local.get 2
      i32.load offset=16
      local.tee 4
      if (result i32)  ;; label = @2
        local.get 4
      else
        local.get 2
        call 28
        br_if 1 (;@1;)
        local.get 2
        i32.load offset=16
      end
      local.get 2
      i32.load offset=20
      local.tee 5
      i32.sub
      local.get 1
      i32.lt_u
      if  ;; label = @2
        local.get 2
        local.get 0
        local.get 1
        local.get 2
        i32.load offset=36
        call_indirect (type 1)
        drop
        return
      end
      block  ;; label = @2
        local.get 2
        i32.load8_s offset=75
        i32.const 0
        i32.lt_s
        br_if 0 (;@2;)
        local.get 1
        local.set 4
        loop  ;; label = @3
          local.get 4
          local.tee 3
          i32.eqz
          br_if 1 (;@2;)
          local.get 0
          local.get 3
          i32.const -1
          i32.add
          local.tee 4
          i32.add
          i32.load8_u
          i32.const 10
          i32.ne
          br_if 0 (;@3;)
        end
        local.get 2
        local.get 0
        local.get 3
        local.get 2
        i32.load offset=36
        call_indirect (type 1)
        local.get 3
        i32.lt_u
        br_if 1 (;@1;)
        local.get 1
        local.get 3
        i32.sub
        local.set 1
        local.get 0
        local.get 3
        i32.add
        local.set 0
        local.get 2
        i32.load offset=20
        local.set 5
      end
      local.get 5
      local.get 0
      local.get 1
      call 27
      local.get 2
      local.get 2
      i32.load offset=20
      local.get 1
      i32.add
      i32.store offset=20
    end)
  (func (;27;) (type 0) (param i32 i32 i32)
    (local i32 i32)
    local.get 2
    i32.const 512
    i32.ge_u
    if  ;; label = @1
      local.get 0
      local.get 1
      local.get 2
      call 2
      drop
      return
    end
    local.get 0
    local.get 2
    i32.add
    local.set 3
    block  ;; label = @1
      local.get 0
      local.get 1
      i32.xor
      i32.const 3
      i32.and
      i32.eqz
      if  ;; label = @2
        block  ;; label = @3
          local.get 2
          i32.const 1
          i32.lt_s
          if  ;; label = @4
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          i32.const 3
          i32.and
          i32.eqz
          if  ;; label = @4
            local.get 0
            local.set 2
            br 1 (;@3;)
          end
          local.get 0
          local.set 2
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load8_u
            i32.store8
            local.get 1
            i32.const 1
            i32.add
            local.set 1
            local.get 2
            i32.const 1
            i32.add
            local.tee 2
            local.get 3
            i32.ge_u
            br_if 1 (;@3;)
            local.get 2
            i32.const 3
            i32.and
            br_if 0 (;@4;)
          end
        end
        block  ;; label = @3
          local.get 3
          i32.const -4
          i32.and
          local.tee 0
          i32.const 64
          i32.lt_u
          br_if 0 (;@3;)
          local.get 2
          local.get 0
          i32.const -64
          i32.add
          local.tee 4
          i32.gt_u
          br_if 0 (;@3;)
          loop  ;; label = @4
            local.get 2
            local.get 1
            i32.load
            i32.store
            local.get 2
            local.get 1
            i32.load offset=4
            i32.store offset=4
            local.get 2
            local.get 1
            i32.load offset=8
            i32.store offset=8
            local.get 2
            local.get 1
            i32.load offset=12
            i32.store offset=12
            local.get 2
            local.get 1
            i32.load offset=16
            i32.store offset=16
            local.get 2
            local.get 1
            i32.load offset=20
            i32.store offset=20
            local.get 2
            local.get 1
            i32.load offset=24
            i32.store offset=24
            local.get 2
            local.get 1
            i32.load offset=28
            i32.store offset=28
            local.get 2
            local.get 1
            i32.load offset=32
            i32.store offset=32
            local.get 2
            local.get 1
            i32.load offset=36
            i32.store offset=36
            local.get 2
            local.get 1
            i32.load offset=40
            i32.store offset=40
            local.get 2
            local.get 1
            i32.load offset=44
            i32.store offset=44
            local.get 2
            local.get 1
            i32.load offset=48
            i32.store offset=48
            local.get 2
            local.get 1
            i32.load offset=52
            i32.store offset=52
            local.get 2
            local.get 1
            i32.load offset=56
            i32.store offset=56
            local.get 2
            local.get 1
            i32.load offset=60
            i32.store offset=60
            local.get 1
            i32.const -64
            i32.sub
            local.set 1
            local.get 2
            i32.const -64
            i32.sub
            local.tee 2
            local.get 4
            i32.le_u
            br_if 0 (;@4;)
          end
        end
        local.get 2
        local.get 0
        i32.ge_u
        br_if 1 (;@1;)
        loop  ;; label = @3
          local.get 2
          local.get 1
          i32.load
          i32.store
          local.get 1
          i32.const 4
          i32.add
          local.set 1
          local.get 2
          i32.const 4
          i32.add
          local.tee 2
          local.get 0
          i32.lt_u
          br_if 0 (;@3;)
        end
        br 1 (;@1;)
      end
      local.get 3
      i32.const 4
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 3
      i32.const -4
      i32.add
      local.tee 4
      local.get 0
      i32.lt_u
      if  ;; label = @2
        local.get 0
        local.set 2
        br 1 (;@1;)
      end
      local.get 0
      local.set 2
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 2
        local.get 1
        i32.load8_u offset=1
        i32.store8 offset=1
        local.get 2
        local.get 1
        i32.load8_u offset=2
        i32.store8 offset=2
        local.get 2
        local.get 1
        i32.load8_u offset=3
        i32.store8 offset=3
        local.get 1
        i32.const 4
        i32.add
        local.set 1
        local.get 2
        i32.const 4
        i32.add
        local.tee 2
        local.get 4
        i32.le_u
        br_if 0 (;@2;)
      end
    end
    local.get 2
    local.get 3
    i32.lt_u
    if  ;; label = @1
      loop  ;; label = @2
        local.get 2
        local.get 1
        i32.load8_u
        i32.store8
        local.get 1
        i32.const 1
        i32.add
        local.set 1
        local.get 2
        i32.const 1
        i32.add
        local.tee 2
        local.get 3
        i32.ne
        br_if 0 (;@2;)
      end
    end)
  (func (;28;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    local.get 0
    i32.load8_u offset=74
    local.tee 1
    i32.const -1
    i32.add
    local.get 1
    i32.or
    i32.store8 offset=74
    local.get 0
    i32.load
    local.tee 1
    i32.const 8
    i32.and
    if  ;; label = @1
      local.get 0
      local.get 1
      i32.const 32
      i32.or
      i32.store
      i32.const -1
      return
    end
    local.get 0
    i64.const 0
    i64.store offset=4 align=4
    local.get 0
    local.get 0
    i32.load offset=44
    local.tee 1
    i32.store offset=28
    local.get 0
    local.get 1
    i32.store offset=20
    local.get 0
    local.get 1
    local.get 0
    i32.load offset=48
    i32.add
    i32.store offset=16
    i32.const 0)
  (func (;29;) (type 16) (param i32) (result f64)
    (local i32 i32 i32 i32 f64)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 1
    global.set 0
    local.get 0
    if  ;; label = @1
      call 21
    end
    call 1
    local.set 4
    loop  ;; label = @1
      local.get 3
      local.get 2
      i32.const 99999999
      i32.gt_u
      i32.add
      local.set 3
      local.get 2
      i32.const 1
      i32.add
      local.tee 2
      i32.const 1000000000
      i32.ne
      br_if 0 (;@1;)
    end
    call 1
    local.get 4
    i32.sub
    f64.convert_i32_s
    f64.const 0x1.e848p+19 (;=1e+06;)
    f64.div
    local.set 5
    local.get 0
    if  ;; label = @1
      local.get 1
      local.get 3
      i32.store offset=8
      local.get 1
      local.get 5
      f64.store
      local.get 1
      call 20
    end
    local.get 1
    i32.const 16
    i32.add
    global.set 0
    local.get 5)
  (func (;30;) (type 4)
    nop)
  (global (;0;) (mut i32) (i32.const 5246672))
  (export "d" (func 30))
  (export "e" (func 29))
  (export "f" (func 19))
  (export "g" (func 18))
  (export "h" (func 17))
  (elem (;0;) (i32.const 1) func 15 16 14 22)
  (data (;0;) (i32.const 1024) "starting WASM measure\0a\00Duration: %f seconds (result: %d)\0a\00\00\00h\06\00\00-+   0X0x\00(null)")
  (data (;1;) (i32.const 1120) "\11\00\0a\00\11\11\11\00\00\00\00\05\00\00\00\00\00\00\09\00\00\00\00\0b\00\00\00\00\00\00\00\00\11\00\0f\0a\11\11\11\03\0a\07\00\01\00\09\0b\0b\00\00\09\06\0b\00\00\0b\00\06\11\00\00\00\11\11\11")
  (data (;2;) (i32.const 1201) "\0b\00\00\00\00\00\00\00\00\11\00\0a\0a\11\11\11\00\0a\00\00\02\00\09\0b\00\00\00\09\00\0b\00\00\0b")
  (data (;3;) (i32.const 1259) "\0c")
  (data (;4;) (i32.const 1271) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c")
  (data (;5;) (i32.const 1317) "\0e")
  (data (;6;) (i32.const 1329) "\0d\00\00\00\04\0d\00\00\00\00\09\0e\00\00\00\00\00\0e\00\00\0e")
  (data (;7;) (i32.const 1375) "\10")
  (data (;8;) (i32.const 1387) "\0f\00\00\00\00\0f\00\00\00\00\09\10\00\00\00\00\00\10\00\00\10\00\00\12\00\00\00\12\12\12")
  (data (;9;) (i32.const 1442) "\12\00\00\00\12\12\12\00\00\00\00\00\00\09")
  (data (;10;) (i32.const 1491) "\0b")
  (data (;11;) (i32.const 1503) "\0a\00\00\00\00\0a\00\00\00\00\09\0b\00\00\00\00\00\0b\00\00\0b")
  (data (;12;) (i32.const 1549) "\0c")
  (data (;13;) (i32.const 1561) "\0c\00\00\00\00\0c\00\00\00\00\09\0c\00\00\00\00\00\0c\00\00\0c\00\000123456789ABCDEF-0X+0X 0X-0x+0x 0x\00inf\00INF\00nan\00NAN\00.")
  (data (;14;) (i32.const 1640) "\05")
  (data (;15;) (i32.const 1652) "\01")
  (data (;16;) (i32.const 1676) "\02\00\00\00\03\00\00\00\f8\07\00\00\00\04")
  (data (;17;) (i32.const 1700) "\01")
  (data (;18;) (i32.const 1715) "\0a\ff\ff\ff\ff")
  (data (;19;) (i32.const 1960) " \0c"))
