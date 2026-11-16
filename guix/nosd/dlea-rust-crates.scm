;;; SPDX-License-Identifier: GPL-3.0-or-later
;;; Copyright © 2026 BrokenShine <xchai404@gmail.com>
;;;
;;; Vendored Rust crate sources for the Dlea file manager.
;;; Generated, do not edit by hand - regenerate with:
;;;
;;;   cd <Dlea checkout>
;;;   guix import crate --lockfile=./Cargo.lock dlea > /tmp/dlea-import.scm
;;;
;;; then rerun the splitter that produced this file.  The git-sourced
;;; gpui-pre-* entries guix import emits are intentionally absent: dlea.scm
;;; points those two Cargo.toml declarations at a single gpui-omarchy
;;; checkout (the helix-steel pattern), so one origin replaces fifteen.

(define-module (nosd dlea-rust-crates)
  #:use-module (guix build-system cargo)
  #:export (dlea-cargo-inputs))

(define rust-accesskit-0.24.1
  (crate-source "accesskit" "0.24.1"
                "0863s1yvjk5f0a3ka46jhkaayaaqahi7dv80004nhpvybbwggdyk"))

(define rust-accesskit-atspi-common-0.19.1
  (crate-source "accesskit_atspi_common" "0.19.1"
                "0dnnazin69358bnyrnlq6bczifxrxw10na6mj9qdyikz17js0g82"))

(define rust-accesskit-consumer-0.38.0
  (crate-source "accesskit_consumer" "0.38.0"
                "0ic2z39avgqp2c26pkav3pq1whw5cw220ig4683xg1vgz4va442x"))

(define rust-accesskit-unix-0.22.1
  (crate-source "accesskit_unix" "0.22.1"
                "0brnj55m13xlw6si1qd7v01r723cpiqjdvwlx3pmxqq273nmdq83"))

(define rust-addr2line-0.25.1
  (crate-source "addr2line" "0.25.1"
                "0jwb96gv17vdr29hbzi0ha5q6jkpgjyn7rjlg5nis65k41rk0p8v"))

(define rust-adler2-2.0.1
  (crate-source "adler2" "2.0.1"
                "1ymy18s9hs7ya1pjc9864l30wk8p2qfqdi7mhhcc5nfakxbij09j"))

(define rust-aes-0.8.4
  (crate-source "aes" "0.8.4"
                "1853796anlwp4kqim0s6wm1srl4ib621nm0cl2h3c8klsjkgfsdi"))

(define rust-ahash-0.8.12
  (crate-source "ahash" "0.8.12"
                "0xbsp9rlm5ki017c0w6ay8kjwinwm8knjncci95mii30rmwz25as"))

(define rust-aho-corasick-1.1.5
  (crate-source "aho-corasick" "1.1.5"
                "1fhjkp2nbs7gg4y1b68hpc8028rpax8aiscfh9b60q78m4pn90n9"))

(define rust-aligned-0.4.3
  (crate-source "aligned" "0.4.3"
                "1186lhb3gb4x6spzw7ff0zcraa8cr9zqk4ldpm5g1vb2ijc0higf"))

(define rust-aligned-vec-0.6.4
  (crate-source "aligned-vec" "0.6.4"
                "16vnf78hvfix5cwzd5xs5a2g6afmgb4h7n6yfsc36bv0r22072fw"))

(define rust-allocator-api2-0.2.21
  (crate-source "allocator-api2" "0.2.21"
                "08zrzs022xwndihvzdn78yqarv2b9696y67i6h78nla3ww87jgb8"))

(define rust-android-system-properties-0.1.6
  (crate-source "android_system_properties" "0.1.6"
                "1g3z4ga15a9022vbgi31qqyb7pgk23saq7xfarn6yslpr54ic8mf"))

(define rust-anyhow-1.0.104
  (crate-source "anyhow" "1.0.104"
                "0w34jjcm02p5g9kvsjr1dvpw0zs2fi7igi6nr414fkm5gz85w2ik"))

(define rust-arbitrary-1.5.0
  (crate-source "arbitrary" "1.5.0"
                "1v8a080p8z746w8pi7lggaa5791qpk1i9mb313sj2cy3gk4jmiiv"))

(define rust-arg-enum-proc-macro-0.3.4
  (crate-source "arg_enum_proc_macro" "0.3.4"
                "1sjdfd5a8j6r99cf0bpqrd6b160x9vz97y5rysycsjda358jms8a"))

(define rust-arrayref-0.3.9
  (crate-source "arrayref" "0.3.9"
                "1jzyp0nvp10dmahaq9a2rnxqdd5wxgbvp8xaibps3zai8c9fi8kn"))

(define rust-arrayvec-0.7.8
  (crate-source "arrayvec" "0.7.8"
                "0mmd8lrijbvg1qp4c5zis5dq41a3mjv2rb6bxkyj9kwaw2k6gyyk"))

(define rust-as-raw-xcb-connection-1.0.1
  (crate-source "as-raw-xcb-connection" "1.0.1"
                "0sqgpz2ymv5yx76r5j2npjq2x5qvvqnw0vrs35cyv30p3pfp2m8p"))

(define rust-as-slice-0.2.1
  (crate-source "as-slice" "0.2.1"
                "05j52y1ws8kir5zjxnl48ann0if79sb56p9nm76hvma01r7nnssi"))

(define rust-ash-0.38.0+1.3.281
  (crate-source "ash" "0.38.0+1.3.281"
                "0vx4yf689v1rc680jvy8bnysx5sgd8f33wnp2vqaizh0v0v4kd0b"))

(define rust-ashpd-0.13.13
  (crate-source "ashpd" "0.13.13"
                "04gilshi52djppigiy1y65iz05cvcs5japvk4spmyjk4m6m2317v"))

(define rust-async-broadcast-0.7.2
  (crate-source "async-broadcast" "0.7.2"
                "0ckmqcwyqwbl2cijk1y4r0vy60i89gqc86ijrxzz5f2m4yjqfnj3"))

(define rust-async-channel-2.5.0
  (crate-source "async-channel" "2.5.0"
                "1ljq24ig8lgs2555myrrjighycpx2mbjgrm3q7lpa6rdsmnxjklj"))

(define rust-async-executor-1.14.0
  (crate-source "async-executor" "1.14.0"
                "0al1rmxjy7p7r6h50z698q5lwssqs5a2vzmqbazm1z2sv1rgjsy9"))

(define rust-async-fs-2.2.0
  (crate-source "async-fs" "2.2.0"
                "1iclw9970mh4ndb0bd68a6901kqy81rf9yypvf78pvaavy0scd40"))

(define rust-async-io-2.6.0
  (crate-source "async-io" "2.6.0"
                "1z16s18bm4jxlmp6rif38mvn55442yd3wjvdfhvx4hkgxf7qlss5"))

(define rust-async-lock-3.4.2
  (crate-source "async-lock" "3.4.2"
                "04c3xrrdrfrvh9v0ajxrangpy38qi76qq268zslphnxxjqjpy3r9"))

(define rust-async-net-2.0.0
  (crate-source "async-net" "2.0.0"
                "1xyc5a5vcp3a7h1q2lbfh79wz8136dig4q4x6g4w2ws8ml7h0j5r"))

(define rust-async-process-2.5.0
  (crate-source "async-process" "2.5.0"
                "0xfswxmng6835hjlfhv7k0jrfp7czqxpfj6y2s5dsp05q0g94l7w"))

(define rust-async-recursion-1.2.0
  (crate-source "async-recursion" "1.2.0"
                "0lg4v61ax9wnfb5b5m11895qddcmq5a6h57cihf6n9mdp89br2jg"))

(define rust-async-signal-0.2.14
  (crate-source "async-signal" "0.2.14"
                "11dlpb15la279r5cazppy18gbk2xzzl60ahzl19m1kr0l2psmdaj"))

(define rust-async-task-4.7.1
  (crate-source "async-task" "4.7.1"
                "1pp3avr4ri2nbh7s6y9ws0397nkx1zymmcr14sq761ljarh3axcb"))

(define rust-async-trait-0.1.92
  (crate-source "async-trait" "0.1.92"
                "0rqn5iga1hlv2lm8xzav1zhar46jb4dvx89i6kfv93kb53maxxl2"))

(define rust-atomic-0.5.3
  (crate-source "atomic" "0.5.3"
                "1fhc6ayg4d5vw1cibqwff15d45fc5448zg9i3drk42k5phsdp6y5"))

(define rust-atomic-waker-1.1.2
  (crate-source "atomic-waker" "1.1.2"
                "1h5av1lw56m0jf0fd3bchxq8a30xv0b4wv8s4zkp4s0i7mfvs18m"))

(define rust-atspi-0.29.0
  (crate-source "atspi" "0.29.0"
                "0ggvxv82n18kg497kfwrlzyfxw66c14fdrsakbc9q772gcjqcy67"))

(define rust-atspi-common-0.13.0
  (crate-source "atspi-common" "0.13.0"
                "0ggn55dgk2wz18spjx00gfkyfg747z8rlhhn6009h33lamqn3i90"))

(define rust-atspi-proxies-0.13.0
  (crate-source "atspi-proxies" "0.13.0"
                "1z690hglzw3rzv6xckxxgfvc086a69mbdslni44b8gpdhy3y8c12"))

(define rust-autocfg-1.5.1
  (crate-source "autocfg" "1.5.1"
                "0lqasy5i30flcgih1b50kvsk6z32g09r1q4ql7q81pj6228jy0zj"))

(define rust-av-scenechange-0.14.1
  (crate-source "av-scenechange" "0.14.1"
                "1543y7riwcy4mmsgcalxcm3bnb41hvwiqiz774nbj68fq9vischg"))

(define rust-av1-grain-0.2.5
  (crate-source "av1-grain" "0.2.5"
                "1y3p43i5xncbny0pfh8kw09am3l3mgyg82ln65r3f434443xpzcc"))

(define rust-avif-serialize-0.8.9
  (crate-source "avif-serialize" "0.8.9"
                "0f3z55fma6xmdj0a0x15vz91cqisiardrfgbjlwb2q6lyzjqy5z7"))

(define rust-backtrace-0.3.76
  (crate-source "backtrace" "0.3.76"
                "1mibx75x4jf6wz7qjifynld3hpw3vq6sy3d3c9y5s88sg59ihlxv"))

(define rust-base64-0.23.1
  (crate-source "base64" "0.23.1"
                "19cdw4vh3d8qndbxjmbf6ddvmpicyddg704b4fjxjlchz7ncs1xc"))

(define rust-bit-field-0.10.3
  (crate-source "bit_field" "0.10.3"
                "1ikhbph4ap4w692c33r8bbv6yd2qxm1q3f64845grp1s6b3l0jqy"))

(define rust-bit-set-0.11.1
  (crate-source "bit-set" "0.11.1"
                "0739d91jr6k2rbmbcsh26sx6srd40rcl7wkv9yj597r2wia77n2n"))

(define rust-bit-set-0.9.1
  (crate-source "bit-set" "0.9.1"
                "1pd32sbz8kszw2ldbnaadwh1bhbpxs0jqm3rqyjvc6j2jllyzp9l"))

(define rust-bit-vec-0.10.1
  (crate-source "bit-vec" "0.10.1"
                "0s8jwc28d4fyi1ivh1wj69a9y9nh1raksz1v1bp4ykvxm5gv29sp"))

(define rust-bit-vec-0.9.1
  (crate-source "bit-vec" "0.9.1"
                "0l9zc1dkjmqykbfx1j14rnfy9rl1pjj5hwjs8j311zn1lby9h5xp"))

(define rust-bitflags-1.3.2
  (crate-source "bitflags" "1.3.2"
                "12ki6w8gn1ldq7yz9y680llwk5gmrhrzszaa17g1sbrw2r2qvwxy"))

(define rust-bitflags-2.13.2
  (crate-source "bitflags" "2.13.2"
                "01hbgjwvid66850fzi76mvn5f2bqycx6sf165ng1kfjqq9bl1v9x"))

(define rust-bitstream-io-4.10.0
  (crate-source "bitstream-io" "4.10.0"
                "07zxcy47l51k6vsxphzhgcnqyzl21pprs7212687c64s56z01zvy"))

(define rust-block-0.1.6
  (crate-source "block" "0.1.6"
                "16k9jgll25pzsq14f244q22cdv0zb4bqacldg3kx6h89d7piz30d"))

(define rust-block-buffer-0.10.4
  (crate-source "block-buffer" "0.10.4"
                "0w9sa2ypmrsqqvc20nhwr75wbb5cjr4kkyhpjm1z1lv2kdicfy1h"))

(define rust-block-padding-0.3.3
  (crate-source "block-padding" "0.3.3"
                "14wdad0r1qk5gmszxqd8cky6vx8qg7c153jv981mixzrpzmlz2d8"))

(define rust-block2-0.6.2
  (crate-source "block2" "0.6.2"
                "1xcfllzx6c3jc554nmb5qy6xmlkl6l6j5ib4wd11800n0n3rvsyd"))

(define rust-blocking-1.7.0
  (crate-source "blocking" "1.7.0"
                "1ykd0gj18r4v4b8r692hds5dsg2w6y9fq4nlxs2l7fbcvwll63m7"))

(define rust-borsh-1.8.1
  (crate-source "borsh" "1.8.1"
                "02p2lhz49944wc6j5dzr42y1mkrv0znbicg3cl61b9bbda25sg2m"))

(define rust-borsh-derive-1.8.1
  (crate-source "borsh-derive" "1.8.1"
                "0mlzrbwzcr7qaky1iap09m0nrzp6crjd79sinj4iz808cxjzxk8j"))

(define rust-built-0.8.1
  (crate-source "built" "0.8.1"
                "1saq332pd6g3svvc9ah8myjpfvgqlzl2ksb1ypp3976kjcfm63jw"))

(define rust-bumpalo-3.20.3
  (crate-source "bumpalo" "3.20.3"
                "0jc6va3nwcqikm7chnpdv1s87my3gs2j7g1sc7g3k91brg3arxbj"))

(define rust-bytemuck-1.25.2
  (crate-source "bytemuck" "1.25.2"
                "15rp2m7j7kq22s76cbjwmrkd5r8lvacnm0mnrj013cnzka22x0wm"))

(define rust-bytemuck-derive-1.12.1
  (crate-source "bytemuck_derive" "1.12.1"
                "17379imphax0d85jzkc50acw746mw89hjbrxqxlw1wmnhxjqj7va"))

(define rust-byteorder-1.5.0
  (crate-source "byteorder" "1.5.0"
                "0jzncxyf404mwqdbspihyzpkndfgda450l0893pz5xj685cg5l0z"))

(define rust-byteorder-lite-0.1.0
  (crate-source "byteorder-lite" "0.1.0"
                "15alafmz4b9az56z6x7glcbcb6a8bfgyd109qc3bvx07zx4fj7wg"))

(define rust-bytes-1.12.1
  (crate-source "bytes" "1.12.1"
                "017z19dpg4f942h051m7bpnzcgng042hhcpd7bmg7bjjqd42lrgw"))

(define rust-calloop-0.14.5
  (crate-source "calloop" "0.14.5"
                "0pjf9fmgq3zf3fnbcb3w9cml19lr0vv9pvhpklf75j1px49j7cs3"))

(define rust-calloop-wayland-source-0.4.1
  (crate-source "calloop-wayland-source" "0.4.1"
                "1yi1c23naqhd8m94q3v366s4cak8l50zy7ldrkqfn0hajkqgr3hk"))

(define rust-cbc-0.1.2
  (crate-source "cbc" "0.1.2"
                "19l9y9ccv1ffg6876hshd123f2f8v7zbkc4nkckqycxf8fajmd96"))

(define rust-cc-1.8.0
  (crate-source "cc" "1.8.0"
                "0f6q6vc8fj6xn4j1wd4yakiza6lhgwai49gp1zdwgzggh3nwjlb6"))

(define rust-cfg-aliases-0.2.2
  (crate-source "cfg_aliases" "0.2.2"
                "09rm3dv28gbsal7w6q76lg2nfyn8wp789ska9b8vr1w750xfhygh"))

(define rust-cfg-if-1.0.5
  (crate-source "cfg-if" "1.0.5"
                "0026j56901nzjraap3da0a8njw42j66zcxnn6s2s9aa5bcblhxjf"))

(define rust-chacha20-0.10.2
  (crate-source "chacha20" "0.10.2"
                "01hvvbgdmqkcgs2s4f12s9wa5h2gbq05rqvypv61azlwd55mxhv5"))

(define rust-chrono-0.4.45
  (crate-source "chrono" "0.4.45"
                "09rkcgk6is2sdhqs9142zv8xqnj8ryx8m9hknllqwyv9wxi9x9qs"))

(define rust-cipher-0.4.4
  (crate-source "cipher" "0.4.4"
                "1b9x9agg67xq5nq879z66ni4l08m6m3hqcshk37d4is4ysd3ngvp"))

(define rust-cocoa-0.25.0
  (crate-source "cocoa" "0.25.0"
                "0g1pl5hq28arqmvsswf2ib7smj445miwa58qa7wrfvksz54h857n"))

(define rust-cocoa-foundation-0.1.2
  (crate-source "cocoa-foundation" "0.1.2"
                "1xwk1khdyqw3dwsl15vr8p86shdcn544fr60ass8biz4nb5k8qlc"))

(define rust-codespan-reporting-0.13.1
  (crate-source "codespan-reporting" "0.13.1"
                "10gnryisncjpfv7wi3jv9mhmrvqz6ksvfzddw3gf99q9k5b1sjdg"))

(define rust-color-quant-1.1.0
  (crate-source "color_quant" "1.1.0"
                "12q1n427h2bbmmm1mnglr57jaz2dj9apk0plcxw7nwqiai7qjyrx"))

(define rust-concurrent-queue-2.5.0
  (crate-source "concurrent-queue" "2.5.0"
                "0wrr3mzq2ijdkxwndhf79k952cp4zkz35ray8hvsxl96xrx1k82c"))

(define rust-const-random-0.1.18
  (crate-source "const-random" "0.1.18"
                "0n8kqz3y82ks8znvz1mxn3a9hadca3amzf33gmi6dc3lzs103q47"))

(define rust-const-random-macro-0.1.16
  (crate-source "const-random-macro" "0.1.16"
                "03iram4ijjjq9j5a7hbnmdngj8935wbsd0f5bm8yw2hblbr3kn7r"))

(define rust-convert-case-0.10.0
  (crate-source "convert_case" "0.10.0"
                "1fff1x78mp2c233g68my0ag0zrmjdbym8bfyahjbfy4cxza5hd33"))

(define rust-convert-case-0.11.0
  (crate-source "convert_case" "0.11.0"
                "0jfv1ajyr65bjlx533n5alfkfjdl8ks4zxfywdiz1jnj1qcz1yxg"))

(define rust-core-detect-1.0.0
  (crate-source "core_detect" "1.0.0"
                "0j0xp1j6f9lrp4ybylc3d0zdg8jq2hkmr1122qyil14qk84q13vz"))

(define rust-core-foundation-0.10.1
  (crate-source "core-foundation" "0.10.1"
                "1xjns6dqf36rni2x9f47b65grxwdm20kwdg9lhmzdrrkwadcv9mj"))

(define rust-core-foundation-0.9.4
  (crate-source "core-foundation" "0.9.4"
                "13zvbbj07yk3b61b8fhwfzhy35535a583irf23vlcg59j7h9bqci"))

(define rust-core-foundation-sys-0.8.7
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "core-foundation-sys" "0.8.7"
                "12w8j73lazxmr1z0h98hf3z623kl8ms7g07jch7n4p8f9nwlhdkp"))

(define rust-core-graphics-0.23.2
  (crate-source "core-graphics" "0.23.2"
                "10dhv3gk4kmbzl14xxkrhhky4fdp8h6nzff6h0019qgr6nz84xy0"))

(define rust-core-graphics-0.24.0
  (crate-source "core-graphics" "0.24.0"
                "1w8n8gqqm8swkanaibilqya8ryldp9fvf80byjxsaprn493a75gs"))

(define rust-core-graphics-helmer-fork-0.24.0
  (crate-source "core-graphics-helmer-fork" "0.24.0"
                "1mcwisxgzs287vbj76qhm0vr616dgv79k403lqvx9xp998sprsrj"))

(define rust-core-graphics-types-0.1.3
  (crate-source "core-graphics-types" "0.1.3"
                "1bxg8nxc8fk4kxnqyanhf36wq0zrjr552c58qy6733zn2ihhwfa5"))

(define rust-core-graphics-types-0.2.0
  (crate-source "core-graphics-types" "0.2.0"
                "1sqka1rz84lr3p69i1s6lggnpnznmrw4ngc5q76w9xhky80s2i1x"))

(define rust-core-maths-0.1.1
  (crate-source "core_maths" "0.1.1"
                "0c0dv11ixxpc9bsx5xasvl98mb1dlprzcm6qq6ls3nsygw0mwx3p"))

(define rust-core-text-21.0.0
  (crate-source "core-text" "21.0.0"
                "0c61m5fb389br06n13cw808q6cfiw7czs38559xh1m6bcrxj54x5"))

(define rust-cosmic-text-0.19.0
  (crate-source "cosmic-text" "0.19.0"
                "0wys9shmdcibqacxl3qy50z5h48ff2xbx8j87zhlr4qda64bc5xy"))

(define rust-cpufeatures-0.2.17
  (crate-source "cpufeatures" "0.2.17"
                "10023dnnaghhdl70xcds12fsx2b966sxbxjq5sxs49mvxqw5ivar"))

(define rust-cpufeatures-0.3.1
  (crate-source "cpufeatures" "0.3.1"
                "0rkm1l35jy1z1yfg723fddsxc7vr0gc1hhfvc138hnqiwc58p8jw"))

(define rust-crc32fast-1.5.2
  (crate-source "crc32fast" "1.5.2"
                "0y0f955n2hr5a8rd9nw9sr23nhjc42ddx3bjc47dnlmqssgpk9q1"))

(define rust-crossbeam-deque-0.8.8
  (crate-source "crossbeam-deque" "0.8.8"
                "06kip6ay8wcx5y4flg6wxbnyd44ay8308c8lf8y3iglh6v3kybv2"))

(define rust-crossbeam-epoch-0.9.21
  (crate-source "crossbeam-epoch" "0.9.21"
                "17bdp2linl0milbmx00s3bda3fphgc85im1gqwa3p6hhhw39hx6w"))

(define rust-crossbeam-queue-0.3.14
  (crate-source "crossbeam-queue" "0.3.14"
                "1bizbcv98anbink3gr3xhnb757d9vj6pcv7df2f4hybl5xvbvs03"))

(define rust-crossbeam-utils-0.8.23
  (crate-source "crossbeam-utils" "0.8.23"
                "1ilan2nw7fvka8hki80fr57a5dgd4mvcsvwq60437j6yvlwyw7m3"))

(define rust-crunchy-0.2.4
  (crate-source "crunchy" "0.2.4"
                "1mbp5navim2qr3x48lyvadqblcxc1dm0lqr0swrkkwy2qblvw3s6"))

(define rust-crypto-common-0.1.7
  (crate-source "crypto-common" "0.1.7"
                "02nn2rhfy7kvdkdjl457q2z0mklcvj9h662xrq6dzhfialh2kj3q"))

(define rust-ctor-1.0.13
  (crate-source "ctor" "1.0.13"
                "03cqq01sx1jp07c26wdhm60ip6nvw8wigkppryyz4jidgidpajli"))

(define rust-data-url-0.3.2
  (crate-source "data-url" "0.3.2"
                "0xl30jidc8s3kh2z3nvnn1nyzhbq5b2wpiqwzj9gjdrndk50n7my"))

(define rust-deranged-0.5.9
  (crate-source "deranged" "0.5.9"
                "13nj445c8frp617vx84g1m5yp1gg63sg09gscbf907xdw8nfg7cy"))

(define rust-derive-more-2.1.1
  (crate-source "derive_more" "2.1.1"
                "0d5i10l4aff744jw7v4n8g6cv15rjk5mp0f1z522pc2nj7jfjlfp"))

(define rust-derive-more-impl-2.1.1
  (crate-source "derive_more-impl" "2.1.1"
                "1jwdp836vymp35d7mfvvalplkdgk2683nv3zjlx65n1194k9g6kr"))

(define rust-digest-0.10.7
  (crate-source "digest" "0.10.7"
                "14p2n6ih29x81akj097lvz7wi9b6b9hvls0lwrv7b6xwyy0s5ncy"))

(define rust-dirs-5.0.1
  (crate-source "dirs" "5.0.1"
                "0992xk5vx75b2x91nw9ssb51mpl8x73j9rxmpi96cryn0ffmmi24"))

(define rust-dirs-sys-0.4.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "dirs-sys" "0.4.1"
                "071jy0pvaad9lsa6mzawxrh7cmr7hsmsdxwzm7jzldfkrfjha3sj"))

(define rust-dispatch-0.2.0
  (crate-source "dispatch" "0.2.0"
                "0fwjr9b7582ic5689zxj8lf7zl94iklhlns3yivrnv8c9fxr635x"))

(define rust-dispatch2-0.3.1
  (crate-source "dispatch2" "0.3.1"
                "0f5xmnbzpaz1g80m27kd804p75nswh0ikb6wvqh4ba3x9rz3c3hy"))

(define rust-displaydoc-0.2.7
  (crate-source "displaydoc" "0.2.7"
                "1a42mwpgpwcqq2qqgkcc630wvsc2p2dkmgacjnclginwfz9js8y6"))

(define rust-dlib-0.5.3
  (crate-source "dlib" "0.5.3"
                "0jpr4smrwrv8xj70mz4ixnbc6ljm82f12z2mz1hv89056y3wv3mb"))

(define rust-document-features-0.2.12
  (crate-source "document-features" "0.2.12"
                "0qcgpialq3zgvjmsvar9n6v10rfbv6mk6ajl46dd4pj5hn3aif6l"))

(define rust-downcast-rs-1.2.1
  (crate-source "downcast-rs" "1.2.1"
                "1lmrq383d1yszp7mg5i7i56b17x2lnn3kb91jwsq0zykvg2jbcvm"))

(define rust-dwrote-0.11.5
  (crate-source "dwrote" "0.11.5"
                "00jd7grrf7sz10y4zzipl0z8s27sbpirdl7fkjqwib1j4i9ka6wy"))

(define rust-dyn-clone-1.0.20
  (crate-source "dyn-clone" "1.0.20"
                "0m956cxcg8v2n8kmz6xs5zl13k2fak3zkapzfzzp7pxih6hix26h"))

(define rust-either-1.19.0
  (crate-source "either" "1.19.0"
                "1gjq21g0sgk5ylpj85zafcinwhh3jj91i6drhb4278vw2v17370f"))

(define rust-embed-resource-3.0.12
  (crate-source "embed-resource" "3.0.12"
                "17r4794rvg84pwqq02yalqvf85l0hjqh04pydqz6gckybrxlhs31"))

(define rust-encoding-rs-0.8.42
  (crate-source "encoding_rs" "0.8.42"
                "0ycnbndly2jw5j69jl1r1lm512h2w9vb1dnjp0px46l7a425x64f"))

(define rust-endi-1.1.1
  (crate-source "endi" "1.1.1"
                "16a0076dx41vgrzzimm9clcym77h732czqjiajanmzvd1i1y5dv6"))

(define rust-enumflags2-0.7.12
  (crate-source "enumflags2" "0.7.12"
                "1vzcskg4dca2jiflsfx1p9yw1fvgzcakcs7cpip0agl51ilgf9qh"))

(define rust-enumflags2-derive-0.7.12
  (crate-source "enumflags2_derive" "0.7.12"
                "09rqffacafl1b83ir55hrah9gza0x7pzjn6lr6jm76fzix6qmiv7"))

(define rust-enumn-0.1.14
  (crate-source "enumn" "0.1.14"
                "0f1gagm6841sih4ipw46c7gn1idjgqfay1f5q6hchdwjg2rxd7ig"))

(define rust-equator-0.4.2
  (crate-source "equator" "0.4.2"
                "1z760z5r0haxjyakbqxvswrz9mq7c29arrivgq8y1zldhc9v44a7"))

(define rust-equator-macro-0.4.2
  (crate-source "equator-macro" "0.4.2"
                "1cqzx3cqn9rxln3a607xr54wippzff56zs5chqdf3z2bnks3rwj4"))

(define rust-equivalent-1.0.3
  (crate-source "equivalent" "1.0.3"
                "09nqddaa84mix3vil6r02jlmya3qypi4j45dhzb8yphf83ap9l80"))

(define rust-errno-0.3.14
  (crate-source "errno" "0.3.14"
                "1szgccmh8vgryqyadg8xd58mnwwicf39zmin3bsn63df2wbbgjir"))

(define rust-etagere-0.2.15
  (crate-source "etagere" "0.2.15"
                "0hjkik00nl8bm9fafpzqkb6yah3mkphc21zpc159a5fwwncvz2gw"))

(define rust-euclid-0.22.14
  (crate-source "euclid" "0.22.14"
                "01ksjl4vb8ms89laswnjpld3z4n6c1s7qlqq0djx3imiwdjm787i"))

(define rust-event-listener-5.4.2
  (crate-source "event-listener" "5.4.2"
                "1lk9sv7r07l58jk263s18896l55mx9jv0g1rm4hj2mpi3paas8ss"))

(define rust-event-listener-strategy-0.5.4
  (crate-source "event-listener-strategy" "0.5.4"
                "14rv18av8s7n8yixg38bxp5vg2qs394rl1w052by5npzmbgz7scb"))

(define rust-exr-1.74.2
  (crate-source "exr" "1.74.2"
                "1wxd45pcgcc1zs7dcl39i2c4plp1w2gkzfizxq0mwab4k4nf87vi"))

(define rust-fastrand-2.5.0
  (crate-source "fastrand" "2.5.0"
                "08q2r30y62winysimnlpbvw9kiwn0rmdlidqlmzd6z90mv764z6s"))

(define rust-fax-0.2.7
  (crate-source "fax" "0.2.7"
                "0nmc65jjdym0f7lr4qm2q7awz1p5arm8i19wv1cmsg92cfahgwfa"))

(define rust-fdeflate-0.3.7
  (crate-source "fdeflate" "0.3.7"
                "130ga18vyxbb5idbgi07njymdaavvk6j08yh1dfarm294ssm6s0y"))

(define rust-filedescriptor-0.8.3
  (crate-source "filedescriptor" "0.8.3"
                "0bb8qqa9h9sj2mzf09yqxn260qkcqvmhmyrmdjvyxcn94knmh1z4"))

(define rust-find-msvc-tools-0.1.14
  (crate-source "find-msvc-tools" "0.1.14"
                "112ljldlv150fpl8xr2jl5czg51k3kdfn6cy5fqdsvkl14sgpp5f"))

(define rust-fixedbitset-0.5.7
  (crate-source "fixedbitset" "0.5.7"
                "16fd3v9d2cms2vddf9xhlm56sz4j0zgrk3d2h6v1l7hx760lwrqx"))

(define rust-flate2-1.1.10
  (crate-source "flate2" "1.1.10"
                "1jvd2cl8j5hyf8imi62y1x7gwzz1hajirni0801yxhds1qp4wqvf"))

(define rust-float-cmp-0.9.0
  (crate-source "float-cmp" "0.9.0"
                "1i799ksbq7fj9rm9m82g1yqgm6xi3jnrmylddmqknmksajylpplq"))

(define rust-float-next-after-1.0.0
  (crate-source "float_next_after" "1.0.0"
                "1s7ikn69b394frihag05b0qcw9i9y04qanlhp5c8sjrw70bcrxwb"))

(define rust-float-ord-0.3.2
  (crate-source "float-ord" "0.3.2"
                "0gbvx6dzz8xvj38bj02cajpqd9p5syxjx9jyqpj8414amr4izs4c"))

(define rust-flume-0.12.0
  (crate-source "flume" "0.12.0"
                "1gnk7gji9r12ig35czj2cq441zf5ijmz0bgnz9gfnxx7dk29n4sy"))

(define rust-fnv-1.0.7
  (crate-source "fnv" "1.0.7"
                "1hc2mcqha06aibcaza94vbi81j6pr9a1bbxrxjfhc91zin8yr7iz"))

(define rust-foldhash-0.1.5
  (crate-source "foldhash" "0.1.5"
                "1wisr1xlc2bj7hk4rgkcjkz3j2x4dhd1h9lwk7mj8p71qpdgbi6r"))

(define rust-foldhash-0.2.0
  (crate-source "foldhash" "0.2.0"
                "1nvgylb099s11xpfm1kn2wcsql080nqmnhj1l25bp3r2b35j9kkp"))

(define rust-font-types-0.11.3
  (crate-source "font-types" "0.11.3"
                "1mygnhm4xrnm803w2ax63ka3nm0s56l4h26mrs9xkbbdby8ssf2v"))

(define rust-font-types-0.12.7
  (crate-source "font-types" "0.12.7"
                "0pgks8skqzhjidjpxkyp154rl335pjf7yf6ydh17jjj6h7byjnl3"))

(define rust-fontconfig-parser-0.5.8
  (crate-source "fontconfig-parser" "0.5.8"
                "0ijnbzg31sl6v49g7q2l7sl76hjj8z0hvlsz77cdvm029vi77ixv"))

(define rust-fontdb-0.23.0
  (crate-source "fontdb" "0.23.0"
                "0199vry9x8zn9ix4x4rqvv53dy2ryhy68l53jwr580hj7ndphzj5"))

(define rust-fontdb-0.24.0
  (crate-source "fontdb" "0.24.0"
                "03r9lf9863cd128vb8qr11hyy156xfgllki9n4nnvxvv2plwaq16"))

(define rust-foreign-types-0.5.0
  (crate-source "foreign-types" "0.5.0"
                "0rfr2zfxnx9rz3292z5nyk8qs2iirznn5ff3rd4vgdwza6mdjdyp"))

(define rust-foreign-types-macros-0.2.4
  (crate-source "foreign-types-macros" "0.2.4"
                "09aj8wl64pqvm6ix1800khgypdhinwinxhfv7n3yn5b95qc90lga"))

(define rust-foreign-types-shared-0.3.1
  (crate-source "foreign-types-shared" "0.3.1"
                "0nykdvv41a3d4py61bylmlwjhhvdm0b3bcj9vxhqgxaxnp5ik6ma"))

(define rust-form-urlencoded-1.2.2
  (crate-source "form_urlencoded" "1.2.2"
                "1kqzb2qn608rxl3dws04zahcklpplkd5r1vpabwga5l50d2v4k6b"))

(define rust-freetype-sys-0.20.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "freetype-sys" "0.20.1"
                "0d5iiv95ap3lwy7b0hxbc8caa9ng1fg3wlwrvb7rld39jrdxqzhf"))

(define rust-futures-0.3.34
  (crate-source "futures" "0.3.34"
                "18yhwmbdalhz2z9i1vm10hy2v0cfm82dkgcb6vr2msxazfix4ccs"))

(define rust-futures-channel-0.3.34
  (crate-source "futures-channel" "0.3.34"
                "1i4kwcanpaphn1ax62ci3nx176kglxqx0gnhzqpqdr1rkpbf7ydi"))

(define rust-futures-concurrency-7.7.1
  (crate-source "futures-concurrency" "7.7.1"
                "19lfx85mc4p15pj86bsyzv2f7690iw47bylgy63mpm71m76dhp0p"))

(define rust-futures-core-0.3.34
  (crate-source "futures-core" "0.3.34"
                "0pjgv4fx0np6hrs5sz5a2phabwv0z70yr51v03injbi44bjrkmlj"))

(define rust-futures-executor-0.3.34
  (crate-source "futures-executor" "0.3.34"
                "0cjl3y7jgg60wwb96ikxj23r6q91ylvx8v675yychv1w3b7lf6q3"))

(define rust-futures-io-0.3.34
  (crate-source "futures-io" "0.3.34"
                "1v9z6wj92ra18kpv0xig21hgpzrvcwmcr8fszyzh64yyay0zmh2k"))

(define rust-futures-lite-2.6.1
  (crate-source "futures-lite" "2.6.1"
                "1ba4dg26sc168vf60b1a23dv1d8rcf3v3ykz2psb7q70kxh113pp"))

(define rust-futures-macro-0.3.34
  (crate-source "futures-macro" "0.3.34"
                "0i0czvcvsqq4hrccibq2f23004si5z34zjwdxfmqhlrmm15nbfcz"))

(define rust-futures-sink-0.3.34
  (crate-source "futures-sink" "0.3.34"
                "07cfvrgc3vxk6sw5g8a8dnrm1mzg6d5mwy08ywa1sgyhyxml4i0r"))

(define rust-futures-task-0.3.34
  (crate-source "futures-task" "0.3.34"
                "1zfilqs8nwlfqz4prk7ihvpp5avvzins87ibzlxzq5fhs7ipshfd"))

(define rust-futures-util-0.3.34
  (crate-source "futures-util" "0.3.34"
                "1g3r9ghzq7c2fh34lis43i72xavk9p84npgfwgb5vfpqcwjajl0d"))

(define rust-generic-array-0.14.7
  (crate-source "generic-array" "0.14.7"
                "16lyyrzrljfq424c3n8kfwkqihlimmsg5nhshbbp48np3yjrqr45"))

(define rust-gethostname-1.1.0
  (crate-source "gethostname" "1.1.0"
                "1n6bj9gh503ggjblfjcai96gmxynxsrykaynljlrfdra34q95m0v"))

(define rust-getrandom-0.2.17
  (crate-source "getrandom" "0.2.17"
                "1l2ac6jfj9xhpjjgmcx6s1x89bbnw9x6j9258yy6xjkzpq0bqapz"))

(define rust-getrandom-0.3.4
  (crate-source "getrandom" "0.3.4"
                "1zbpvpicry9lrbjmkd4msgj3ihff1q92i334chk7pzf46xffz7c9"))

(define rust-getrandom-0.4.3
  (crate-source "getrandom" "0.4.3"
                "16b0202fkdwz3p2cyll82dv24ljbn0wiyy829v4lwbkbflyqh3ih"))

(define rust-gif-0.14.2
  (crate-source "gif" "0.14.2"
                "0n81js7vlb9bwrjb765sicza3k0vrihjddrgm2mvpbfr272gr37f"))

(define rust-gimli-0.32.3
  (crate-source "gimli" "0.32.3"
                "1iqk5xznimn5bfa8jy4h7pa1dv3c624hzgd2dkz8mpgkiswvjag6"))

(define rust-gl-generator-0.14.0
  (crate-source "gl_generator" "0.14.0"
                "0k8j1hmfnff312gy7x1aqjzcm8zxid7ij7dlb8prljib7b1dz58s"))

(define rust-glow-0.17.0
  (crate-source "glow" "0.17.0"
                "1dddw6wh5lm4apn1w6ikgh92w00n33pgwy6gndmwqr1k90f8w0r9"))

(define rust-glutin-wgl-sys-0.6.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "glutin_wgl_sys" "0.6.1"
                "0gng2810jb5x133lmy17qifjx6s90lnprm86afg7mfls505y0kic"))

(define rust-gpu-allocator-0.28.0
  (crate-source "gpu-allocator" "0.28.0"
                "15c7izilxm5j52d9hr9kqjb2pjram293xm182mgnrnxarykmw9ai"))

(define rust-gpu-descriptor-0.3.2
  (crate-source "gpu-descriptor" "0.3.2"
                "1jm0acxkw9lrzzcbvjqynwdr53qsqz7vx5d8c8h77qq5j4s8775q"))

(define rust-gpu-descriptor-types-0.2.0
  (crate-source "gpu-descriptor-types" "0.2.0"
                "14ab90klss7w0ybj95fcnqxjsjya17xjhf576dpvi4zq5ml45wpx"))

(define rust-half-2.7.1
  (crate-source "half" "2.7.1"
                "0jyq42xfa6sghc397mx84av7fayd4xfxr4jahsqv90lmjr5xi8kf"))

(define rust-harfrust-0.12.0
  (crate-source "harfrust" "0.12.0"
                "1ybn0c0yq6f1xw1749g45126hzwa95mdfz9g52xrn25a2jd98gf0"))

(define rust-harfrust-0.5.2
  (crate-source "harfrust" "0.5.2"
                "1ya5d0j39lf15vk27vncz616cbbadm6rggvp95k9cvhzhapfb8lx"))

(define rust-hash32-0.3.1
  (crate-source "hash32" "0.3.1"
                "01h68z8qi5gl9lnr17nz10lay8wjiidyjdyd60kqx8ibj090pmj7"))

(define rust-hashbrown-0.14.5
  (crate-source "hashbrown" "0.14.5"
                "1wa1vy1xs3mp11bn3z9dv0jricgr6a2j0zkf1g19yz3vw4il89z5"))

(define rust-hashbrown-0.15.5
  (crate-source "hashbrown" "0.15.5"
                "189qaczmjxnikm9db748xyhiw04kpmhm9xj9k9hg0sgx7pjwyacj"))

(define rust-hashbrown-0.16.1
  (crate-source "hashbrown" "0.16.1"
                "004i3njw38ji3bzdp9z178ba9x3k0c1pgy8x69pj7yfppv4iq7c4"))

(define rust-hashbrown-0.17.1
  (crate-source "hashbrown" "0.17.1"
                "0jmqz7i4yl6cm7rbn0i2ffkfrmwi6xkmzkaldr2v8bcsx2v0jngd"))

(define rust-heapless-0.9.3
  (crate-source "heapless" "0.9.3"
                "192s7fnk1mqacc16qr74bc86lqkfqwa5gp6q9s5va5cl7zc4pfi5"))

(define rust-heck-0.5.0
  (crate-source "heck" "0.5.0"
                "1sjmpsdl8czyh9ywl3qcsfsq9a307dg4ni2vnlwgnzzqhc4y0113"))

(define rust-hermit-abi-0.5.3
  (crate-source "hermit-abi" "0.5.3"
                "115jzi6ixx2nhkzbr2ijj36634agz32n6ilz2rg7vk5s1vb94xg1"))

(define rust-hex-0.4.3
  (crate-source "hex" "0.4.3"
                "0w1a4davm1lgzpamwnba907aysmlrnygbqmfis2mqjx5m552a93z"))

(define rust-hexf-parse-0.2.1
  (crate-source "hexf-parse" "0.2.1"
                "1pr3a3sk66ddxdyxdxac7q6qaqjcn28v0njy22ghdpfn78l8d9nz"))

(define rust-hkdf-0.12.4
  (crate-source "hkdf" "0.12.4"
                "1xxxzcarz151p1b858yn5skmhyrvn8fs4ivx5km3i1kjmnr8wpvv"))

(define rust-hmac-0.12.1
  (crate-source "hmac" "0.12.1"
                "0pmbr069sfg76z7wsssfk5ddcqd9ncp79fyz6zcm6yn115yc6jbc"))

(define rust-http-1.5.0
  (crate-source "http" "1.5.0"
                "1q4wpz5hb4cf37g3jrdyffrpa6ngidmd9wrfph92fddzprl3b3ci"))

(define rust-http-body-1.1.0
  (crate-source "http-body" "1.1.0"
                "0b5wj0rdj8p03k20q8x0jy249amg2db919fnmh7zcrgf2clqyana"))

(define rust-iana-time-zone-0.1.65
  (crate-source "iana-time-zone" "0.1.65"
                "0w64khw5p8s4nzwcf36bwnsmqzf61vpwk9ca1920x82bk6nwj6z3"))

(define rust-iana-time-zone-haiku-0.1.2
  (crate-source "iana-time-zone-haiku" "0.1.2"
                "17r6jmj31chn7xs9698r122mapq85mfnv98bb4pg6spm0si2f67k"))

(define rust-icu-collections-2.3.0
  (crate-source "icu_collections" "2.3.0"
                "04x59h6vdq0cnpippim1nr471ivlsnnn470sj1d5v864h48d4s7s"))

(define rust-icu-locale-core-2.3.0
  (crate-source "icu_locale_core" "2.3.0"
                "1sqdj16wwl7h9y6r7j394av4kpdb7zryz9h169ffwbm9imc2hvnm"))

(define rust-icu-normalizer-2.3.0
  (crate-source "icu_normalizer" "2.3.0"
                "0vv43ixk2wmbxrx7kl33cwkhx1wdyb1q3pa18qkyshan4dgwzy8j"))

(define rust-icu-normalizer-data-2.3.0
  (crate-source "icu_normalizer_data" "2.3.0"
                "1811h0ppb7lwq1q2492p5x6lcmlwmhbmkf69fhyvzcz0scgdlqqm"))

(define rust-icu-properties-2.3.0
  (crate-source "icu_properties" "2.3.0"
                "0j51hi8qgf0l6a7qzvnwsc61598w2fpnsklicld6ci9immva4z3y"))

(define rust-icu-properties-data-2.3.0
  (crate-source "icu_properties_data" "2.3.0"
                "1akw1gp5rcaiz377xzsnkx8f92qax4kh3lfn9y4rcjj6q4wg1475"))

(define rust-icu-provider-2.3.1
  (crate-source "icu_provider" "2.3.1"
                "0wrydhwprwgyka3r3sw6276syjnlw6fpqr2zsm2srvxv7afvnyyj"))

(define rust-idna-1.1.0
  (crate-source "idna" "1.1.0"
                "1pp4n7hppm480zcx411dsv9wfibai00wbpgnjj4qj0xa7kr7a21v"))

(define rust-idna-adapter-1.2.2
  (crate-source "idna_adapter" "1.2.2"
                "0557p76l8hj35r9zn1yv7c6x1c0qbrsffmg80n0yy8361ly3fs6b"))

(define rust-image-0.25.10
  (crate-source "image" "0.25.10"
                "0131b9fsd5grxf3lchfs2ci0rg8ga2mh1ygai7k2zh1k8cwq1aw5"))

(define rust-image-webp-0.2.4
  (crate-source "image-webp" "0.2.4"
                "1hz814csyi9283vinzlkix6qpnd6hs3fkw7xl6z2zgm4w7rrypjj"))

(define rust-imagesize-0.15.0
  (crate-source "imagesize" "0.15.0"
                "0ah45pw3bjwwca0nfq13z7yz6hikkbnkiicl7xzh6ay9q9h79ck5"))

(define rust-imgref-1.12.3
  (crate-source "imgref" "1.12.3"
                "0byjryn74gh3jxshkvmf81r7hnphspr67aah3m22zj54xajb0i3f"))

(define rust-indexmap-2.14.2
  (crate-source "indexmap" "2.14.2"
                "0mf86hbjkkcd82cpq683bblbs0zwa8ndla96ci8p1ji6bl7ijknc"))

(define rust-inout-0.1.4
  (crate-source "inout" "0.1.4"
                "008xfl1jn9rxsq19phnhbimccf4p64880jmnpg59wqi07kk117w7"))

(define rust-interpolate-name-0.2.4
  (crate-source "interpolate_name" "0.2.4"
                "0q7s5mrfkx4p56dl8q9zq71y1ysdj4shh6f28qf9gly35l21jj63"))

(define rust-inventory-0.3.25
  (crate-source "inventory" "0.3.25"
                "0z6d57l6pkan8sdr4j87fwk1rfih1awir6hwpy8ss8n84ql2ha39"))

(define rust-is-docker-0.2.0
  (crate-source "is-docker" "0.2.0"
                "1cyibrv6817cqcpf391m327ss40xlbik8wxcv5h9pj9byhksx2wj"))

(define rust-is-wsl-0.4.0
  (crate-source "is-wsl" "0.4.0"
                "19bs5pq221d4bknnwiqqkqrnsx2in0fsk8fylxm1747iim4hjdhp"))

(define rust-itertools-0.14.0
  (crate-source "itertools" "0.14.0"
                "118j6l1vs2mx65dqhwyssbrxpawa90886m3mzafdvyip41w2q69b"))

(define rust-itoa-1.0.18
  (crate-source "itoa" "1.0.18"
                "10jnd1vpfkb8kj38rlkn2a6k02afvj3qmw054dfpzagrpl6achlg"))

(define rust-jni-sys-0.3.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "jni-sys" "0.3.1"
                "0n1j8fbz081w1igfrpc79n6vgm7h3ik34nziy5fjgq5nz7hm59j1"))

(define rust-jni-sys-0.4.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "jni-sys" "0.4.1"
                "1wlahx6f2zhczdjqyn8mk7kshb8x5vsd927sn3lvw41rrf47ldy6"))

(define rust-jni-sys-macros-0.4.1
  (crate-source "jni-sys-macros" "0.4.1"
                "0r32gbabrak15a7p487765b5wc0jcna2yv88mk6m1zjqyi1bkh1q"))

(define rust-jobserver-0.1.35
  (crate-source "jobserver" "0.1.35"
                "1crwgbb0wjph42ni4hqryjxlv4vlr0hyk81g76id9fpa56ysq00w"))

(define rust-js-sys-0.3.106
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "js-sys" "0.3.106"
                "1icwmpjw54lb7vg5926k5y4y5jbiih0zxhwgjwnzn475v90xk0vq"))

(define rust-khronos-api-3.1.0
  (crate-source "khronos_api" "3.1.0"
                "1p0xj5mlbagqyvvnv8wmv3cr7l9y1m153888pxqwg3vk3mg5inz2"))

(define rust-khronos-egl-6.0.0
  (crate-source "khronos-egl" "6.0.0"
                "0xnzdx0n1bil06xmh8i1x6dbxvk7kd2m70bbm6nw1qzc43r1vbka"))

(define rust-kurbo-0.13.1
  (crate-source "kurbo" "0.13.1"
                "1qjhhjgwr9admlz6r1s7kp38dl8nbd95abhryrnr4av55z1xyq2b"))

(define rust-lazy-static-1.5.1
  (crate-source "lazy_static" "1.5.1"
                "1yqaqmp510xw2ldpw88mx9b5s5qj8flb4rw0wd9ks1zpk9j0z1r0"))

(define rust-lebe-0.5.3
  (crate-source "lebe" "0.5.3"
                "1f459clndzzm35nyd15vj5dlasyagfasp7hcgl6lh2b658rs6ybs"))

(define rust-libc-0.2.191
  (crate-source "libc" "0.2.191"
                "02i4j7pjh129y92rijaia4576131fa2xjsii1dc3c1fnlv4qgkb5"))

(define rust-libfuzzer-sys-0.4.13
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "libfuzzer-sys" "0.4.13"
                "1li9z5q55wi81zzyifm7a4rw1xvcclsnqsqbkbvrk86bl50jzzd9"))

(define rust-libloading-0.8.9
  (crate-source "libloading" "0.8.9"
                "0mfwxwjwi2cf0plxcd685yxzavlslz7xirss3b9cbrzyk4hv1i6p"))

(define rust-libm-0.2.16
  (crate-source "libm" "0.2.16"
                "10brh0a3qjmbzkr5mf5xqi887nhs5y9layvnki89ykz9xb1wxlmn"))

(define rust-libredox-0.1.25
  (crate-source "libredox" "0.1.25"
                "078pc91l1c1w9hbzi7m4ph5qjnk4i2zgsqhg4hx80yh7yv591zv1"))

(define rust-linebender-resource-handle-0.1.1
  (crate-source "linebender_resource_handle" "0.1.1"
                "1x34mrmqan0m3m9xf2iy6vpkcx6vwiiyzm2g3ixqdi56rimzz9fl"))

(define rust-link-section-0.19.3
  (crate-source "link-section" "0.19.3"
                "1nacjp2pfndy5xm1db28g6qy0xi3dsmw3gcphk035pz3gihrmhir"))

(define rust-linktime-proc-macro-0.2.3
  (crate-source "linktime-proc-macro" "0.2.3"
                "05ln47rqwf1gpa2hz9bnzmvnj8fj3pxwv0a2c1yd63w63s6c6mvy"))

(define rust-linux-raw-sys-0.12.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "linux-raw-sys" "0.12.1"
                "0lwasljrqxjjfk9l2j8lyib1babh2qjlnhylqzl01nihw14nk9ij"))

(define rust-litemap-0.8.3
  (crate-source "litemap" "0.8.3"
                "1bpgpj87560hmckh3875fbahpmfxbk4g8pzns84h3ykf3nfx3na7"))

(define rust-litrs-1.0.1
  (crate-source "litrs" "1.0.1"
                "0w0d0gkx9ixccx9c00rq164ih9ak3jdq0jsivrpbh3czjn1y6i27"))

(define rust-lock-api-0.4.14
  (crate-source "lock_api" "0.4.14"
                "0rg9mhx7vdpajfxvdjmgmlyrn20ligzqvn8ifmaz7dc79gkrjhr2"))

(define rust-log-0.4.34
  (crate-source "log" "0.4.34"
                "1ihkzn0m33ab79fcl4mkb04n5iwqzbxzyw7l7hazqkffaqzbvy7r"))

(define rust-loop9-0.1.5
  (crate-source "loop9" "0.1.5"
                "0qphc1c0cbbx43pwm6isnwzwbg6nsxjh7jah04n1sg5h4p0qgbhg"))

(define rust-lyon-1.0.19
  (crate-source "lyon" "1.0.19"
                "1dz70iwmcjij4f30gqgcs3wivy72lkiv3cmqhy4ximmpxjyph1dx"))

(define rust-lyon-algorithms-1.0.21
  (crate-source "lyon_algorithms" "1.0.21"
                "02b0yc8g0sf2l4yx1kz9g5g6zfmfjjcvbqrmvd6r2msyz62qgynd"))

(define rust-lyon-geom-1.0.19
  (crate-source "lyon_geom" "1.0.19"
                "14ib0jwn7rhxggvrsjdxnp71fg00sr723lnsy8ygjap354p50dj3"))

(define rust-lyon-path-1.0.19
  (crate-source "lyon_path" "1.0.19"
                "07k2v24lxiwqdwzlhcqf3l8jj7m69b73kkaxi3ncazwb8af3yijw"))

(define rust-lyon-tessellation-1.0.22
  (crate-source "lyon_tessellation" "1.0.22"
                "01b0pqawwyf51jncymqjnfp7rwp7lk3l01rw3gvcwzk30vwxrf23"))

(define rust-mac-notification-sys-0.6.15
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "mac-notification-sys" "0.6.15"
                "1jmyr75x4py3wzr1w8rgxw36a55sjvxw14qiaqdw3p4djmrljq7x"))

(define rust-malloc-buf-0.0.6
  (crate-source "malloc_buf" "0.0.6"
                "1jqr77j89pwszv51fmnknzvd53i1nkmcr8rjrvcxhm4dx1zr1fv2"))

(define rust-maybe-rayon-0.1.1
  (crate-source "maybe-rayon" "0.1.1"
                "06cmvhj4n36459g327ng5dnj8d58qs472pv5ahlhm7ynxl6g78cf"))

(define rust-md-5-0.10.6
  (crate-source "md-5" "0.10.6"
                "1kvq5rnpm4fzwmyv5nmnxygdhhb2369888a06gdc9pxyrzh7x7nq"))

(define rust-memchr-2.8.3
  (crate-source "memchr" "2.8.3"
                "161xa63ipfanf8v3nb82xd5hqgydv55nzw59wyngqbz6alfaz2yg"))

(define rust-memmap2-0.9.11
  (crate-source "memmap2" "0.9.11"
                "1h4qnzgarnn488ljjpg9ns5y4bw0sq0xv0fj0iqywagjnz8rw8fi"))

(define rust-memoffset-0.9.1
  (crate-source "memoffset" "0.9.1"
                "12i17wh9a9plx869g7j4whf62xw68k5zd4k0k5nh6ys5mszid028"))

(define rust-miniz-oxide-0.8.9
  (crate-source "miniz_oxide" "0.8.9"
                "05k3pdg8bjjzayq3rf0qhpirq9k37pxnasfn4arbs17phqn6m9qz"))

(define rust-miniz-oxide-0.9.1
  (crate-source "miniz_oxide" "0.9.1"
                "0k2bgjzk2sbsynpsv4wizwxbqp6vs7g08y5anbkrh3l6a15bqgxn"))

(define rust-moxcms-0.8.1
  (crate-source "moxcms" "0.8.1"
                "0jz4fd5f7pdn1rngqc96lxriqjkym1lswdhdbjr037s8p9ac31dv"))

(define rust-multiversion-no-op-1.0.0
  (crate-source "multiversion_no_op" "1.0.0"
                "03d2k7xk7vky38q48h08miw4jca34ymckggnrqggn60vlddvagvl"))

(define rust-naga-29.0.4
  (crate-source "naga" "29.0.4"
                "1py81ph72a97ws2nwi70r12hsglrzgibm0fq4z5mm5z746b93gxj"))

(define rust-ndk-sys-0.6.0+11769913
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "ndk-sys" "0.6.0+11769913"
                "0wx8r6pji20if4xs04g73gxl98nmjrfc73z0v6w1ypv6a4qdlv7f"))

(define rust-new-debug-unreachable-1.0.6
  (crate-source "new_debug_unreachable" "1.0.6"
                "11phpf1mjxq6khk91yzcbd3ympm78m3ivl7xg6lg2c0lf66fy3k5"))

(define rust-no-std-io2-0.9.4
  (crate-source "no_std_io2" "0.9.4"
                "00w0ggkaaacbwiv4qw188ih5llmhf53qgp20wk5gdyrldldvv2j1"))

(define rust-nom-8.0.0
  (crate-source "nom" "8.0.0"
                "01cl5xng9d0gxf26h39m0l8lprgpa00fcc75ps1yzgbib1vn35yz"))

(define rust-noop-proc-macro-0.3.0
  (crate-source "noop_proc_macro" "0.3.0"
                "1j2v1c6ric4w9v12h34jghzmngcwmn0hll1ywly4h6lcm4rbnxh6"))

(define rust-notify-rust-4.18.2
  (crate-source "notify-rust" "4.18.2"
                "1bzqpf3rprd0dkms6v2kdb2l0lr01aipbpxk54s36x00k953d1s5"))

(define rust-ntapi-0.4.3
  (crate-source "ntapi" "0.4.3"
                "1bl0d73avwla7laa4pkqvzvifjbs0avg65w01zxjydgx3likbcy3"))

(define rust-num-0.4.3
  (crate-source "num" "0.4.3"
                "08yb2fc1psig7pkzaplm495yp7c30m4pykpkwmi5bxrgid705g9m"))

(define rust-num-bigint-0.4.8
  (crate-source "num-bigint" "0.4.8"
                "0ry3xjal8f5xhdinani268ci13h14mf7j4w0y1gflfzhw3knk7n8"))

(define rust-num-bigint-dig-0.9.1
  (crate-source "num-bigint-dig" "0.9.1"
                "16g0xa96dc9nh2vxprw63rkm94lbyp16fmp6s1x1h3bv15paiyd7"))

(define rust-num-complex-0.4.6
  (crate-source "num-complex" "0.4.6"
                "15cla16mnw12xzf5g041nxbjjm9m85hdgadd5dl5d0b30w9qmy3k"))

(define rust-num-conv-0.2.2
  (crate-source "num-conv" "0.2.2"
                "0hg4f9bwmy7cwpxdkm165dmkfc8jhkkayci234jsmi5ssb33j5sj"))

(define rust-num-cpus-1.17.0
  (crate-source "num_cpus" "1.17.0"
                "0fxjazlng4z8cgbmsvbzv411wrg7x3hyxdq8nxixgzjswyylppwi"))

(define rust-num-derive-0.4.2
  (crate-source "num-derive" "0.4.2"
                "00p2am9ma8jgd2v6xpsz621wc7wbn1yqi71g15gc3h67m7qmafgd"))

(define rust-num-integer-0.1.47
  (crate-source "num-integer" "0.1.47"
                "02z1p3azy6p10n99skrab4a6hhfd4amf2i9gm8sxqd1p9dfxkqkw"))

(define rust-num-iter-0.1.46
  (crate-source "num-iter" "0.1.46"
                "12q4x0lp9l6bvsak1p5q24lvfzl99ak9vzmwhqbwksm1d6yh0a69"))

(define rust-num-rational-0.4.2
  (crate-source "num-rational" "0.4.2"
                "093qndy02817vpgcqjnj139im3jl7vkq4h68kykdqqh577d18ggq"))

(define rust-num-traits-0.2.19
  (crate-source "num-traits" "0.2.19"
                "0h984rhdkkqd4ny9cif7y2azl3xdfb7768hb9irhpsch4q3gq787"))

(define rust-objc-0.2.7
  (crate-source "objc" "0.2.7"
                "1cbpf6kz8a244nn1qzl3xyhmp05gsg4n313c9m3567625d3innwi"))

(define rust-objc-exception-0.1.2
  (crate-source "objc_exception" "0.1.2"
                "191cmdmlypp6piw67y4m8y5swlxf5w0ss8n1lk5xd2l1ans0z5xd"))

(define rust-objc-foundation-0.1.1
  (crate-source "objc-foundation" "0.1.1"
                "1y9bwb3m5fdq7w7i4bnds067dhm4qxv4m1mbg9y61j9nkrjipp8s"))

(define rust-objc-id-0.1.1
  (crate-source "objc_id" "0.1.1"
                "0fq71hnp2sdblaighjc82yrac3adfmqzhpr11irhvdfp9gdlsbf9"))

(define rust-objc2-0.6.5
  (crate-source "objc2" "0.6.5"
                "1y41g7xhc3idzymsgr5vh414xzl43jp5cs39ayaaxpv78yyrp108"))

(define rust-objc2-core-foundation-0.3.2
  (crate-source "objc2-core-foundation" "0.3.2"
                "0dnmg7606n4zifyjw4ff554xvjmi256cs8fpgpdmr91gckc0s61a"))

(define rust-objc2-core-video-0.3.2
  (crate-source "objc2-core-video" "0.3.2"
                "19j1a7f863gh30nq03w70x1js3f3vdg3wp4azllky8vkvzqwl9fl"))

(define rust-objc2-encode-4.1.0
  (crate-source "objc2-encode" "4.1.0"
                "0cqckp4cpf68mxyc2zgnazj8klv0z395nsgbafa61cjgsyyan9gg"))

(define rust-objc2-foundation-0.3.2
  (crate-source "objc2-foundation" "0.3.2"
                "0wijkxzzvw2xkzssds3fj8279cbykz2rz9agxf6qh7y2agpsvq73"))

(define rust-objc2-metal-0.3.2
  (crate-source "objc2-metal" "0.3.2"
                "1527q158b8kagmdzlmvg782s5m7h15j62x1d2ps0ml0hd9vmy4m0"))

(define rust-objc2-quartz-core-0.3.2
  (crate-source "objc2-quartz-core" "0.3.2"
                "07vzaf6y1lk7zygkgvpp23mm19ipdm9yq8af22gvywdkaa23bhcn"))

(define rust-object-0.37.3
  (crate-source "object" "0.37.3"
                "1zikiy9xhk6lfx1dn2gn2pxbnfpmlkn0byd7ib1n720x0cgj0xpz"))

(define rust-omi-1.0.0
  (crate-source "omi" "1.0.0"
                "05hd41fq8f2jvzika872s6f7xbh8689d760n55ds63s7im128iw3"))

(define rust-once-cell-1.21.4
  (crate-source "once_cell" "1.21.4"
                "0l1v676wf71kjg2khch4dphwh1jp3291ffiymr2mvy1kxd5kwz4z"))

(define rust-oo7-0.6.0
  (crate-source "oo7" "0.6.0"
                "1gffc8fn0lf3hwn68j999s4sw52yy83r7bfw915qnqgij3nvzwkq"))

(define rust-open-5.4.4
  (crate-source "open" "5.4.4"
                "1g7ffnbgl46s9nkwl8lxxwrpii1nfgk63066xj780yrb61v6qmxa"))

(define rust-option-ext-0.2.0
  (crate-source "option-ext" "0.2.0"
                "0zbf7cx8ib99frnlanpyikm1bx8qn8x602sw1n7bg6p9x94lyx04"))

(define rust-ordered-float-5.5.0
  (crate-source "ordered-float" "5.5.0"
                "1h23hd8nf0nx9j2zg0iy130zwjqp4k3vl8070wk9yn13kc6rwz4c"))

(define rust-ordered-stream-0.2.0
  (crate-source "ordered-stream" "0.2.0"
                "0l0xxp697q7wiix1gnfn66xsss7fdhfivl2k7bvpjs4i3lgb18ls"))

(define rust-parking-2.2.1
  (crate-source "parking" "2.2.1"
                "1fnfgmzkfpjd69v4j9x737b1k8pnn054bvzcn5dm3pkgq595d3gk"))

(define rust-parking-lot-0.12.5
  (crate-source "parking_lot" "0.12.5"
                "06jsqh9aqmc94j2rlm8gpccilqm6bskbd67zf6ypfc0f4m9p91ck"))

(define rust-parking-lot-core-0.9.12
  (crate-source "parking_lot_core" "0.9.12"
                "1hb4rggy70fwa1w9nb0svbyflzdc69h047482v2z3sx2hmcnh896"))

(define rust-paste-1.0.15
  (crate-source "paste" "1.0.15"
                "02pxffpdqkapy292harq6asfjvadgp1s005fip9ljfsn9fvxgh2p"))

(define rust-pastey-0.1.1
  (crate-source "pastey" "0.1.1"
                "1v389jkifv757903flrrps67dvc6q6giwlyx3xi33hcfjmgjxyrm"))

(define rust-pathfinder-geometry-0.5.1
  (crate-source "pathfinder_geometry" "0.5.1"
                "1lssir0s1cmrpzzrk49jm31nkssh2j715gryww6700x79rxpwyqb"))

(define rust-pathfinder-simd-0.5.6
  (crate-source "pathfinder_simd" "0.5.6"
                "0xsp8dh6pgrkm3anwdc4870bdv0sinaknvzk4gag2jif60606025"))

(define rust-pbkdf2-0.12.2
  (crate-source "pbkdf2" "0.12.2"
                "1wms79jh4flpy1zi8xdp4h8ccxv4d85adc6zjagknvppc5vnmvgq"))

(define rust-percent-encoding-2.3.2
  (crate-source "percent-encoding" "2.3.2"
                "083jv1ai930azvawz2khv7w73xh8mnylk7i578cifndjn5y64kwv"))

(define rust-phf-0.13.1
  (crate-source "phf" "0.13.1"
                "1pzswx5gdglgjgp4azyzwyr4gh031r0kcnpqq6jblga72z3jsmn1"))

(define rust-phf-generator-0.13.1
  (crate-source "phf_generator" "0.13.1"
                "0dwpp11l41dy9mag4phkyyvhpf66lwbp79q3ik44wmhyfqxcwnhk"))

(define rust-phf-macros-0.13.1
  (crate-source "phf_macros" "0.13.1"
                "1vv9h8pr7xh18sigpvq1hxc8q9nmjmv6gdpqsp65krxiahmh6bw1"))

(define rust-phf-shared-0.13.1
  (crate-source "phf_shared" "0.13.1"
                "0rpjchnswm0x5l4mz9xqfpw0j4w68sjvyqrdrv13h7lqqmmyyzz5"))

(define rust-pico-args-0.5.0
  (crate-source "pico-args" "0.5.0"
                "05d30pvxd6zlnkg2i3ilr5a70v3f3z2in18m67z25vinmykngqav"))

(define rust-pin-project-1.1.13
  (crate-source "pin-project" "1.1.13"
                "09091qp946lpmjz4yp0xil1r5v4hgc91fi19dg5csayhdqrv4ri4"))

(define rust-pin-project-internal-1.1.13
  (crate-source "pin-project-internal" "1.1.13"
                "12rzlh07i1sdgrvzj6wgkka5bjqyvbfsl8knq6qi7g16m7q9aqy9"))

(define rust-pin-project-lite-0.2.17
  (crate-source "pin-project-lite" "0.2.17"
                "1kfmwvs271si96zay4mm8887v5khw0c27jc9srw1a75ykvgj54x8"))

(define rust-piper-0.2.5
  (crate-source "piper" "0.2.5"
                "1hd3j94mw5dwc457gs9ssb2r5b9iipywndf5srqx7pj38jd4fdf8"))

(define rust-pkg-config-0.3.34
  (crate-source "pkg-config" "0.3.34"
                "0j05h08nzg0q8rf6lzw7nry0b7kn7x97vc9n4hwrl52fqzxn9d7n"))

(define rust-png-0.18.1
  (crate-source "png" "0.18.1"
                "0qca282xp8a6d7mikxrwji3f52mjn4vnqxz2v9iz5adj665rnxk0"))

(define rust-polling-3.11.0
  (crate-source "polling" "3.11.0"
                "0622qfbxi3gb0ly2c99n3xawp878fkrd1sl83hjdhisx11cly3jx"))

(define rust-pollster-0.2.5
  (crate-source "pollster" "0.2.5"
                "1xzji8cq4crr795c7liy3ksd798sb45pjphbm8h5gvnp7whb18sx"))

(define rust-pollster-0.4.0
  (crate-source "pollster" "0.4.0"
                "1qqcn0h2bvmgm9rlhfrdk7lfaiw1ad86g9500bhx1rj1s0c9yfig"))

(define rust-polycool-0.4.0
  (crate-source "polycool" "0.4.0"
                "19m52bzlr779l2ci8vpqp9qxyrlfaq4h5m5cbkvxanpb17f6snah"))

(define rust-portable-atomic-1.15.0
  (crate-source "portable-atomic" "1.15.0"
                "11csag858ndk5w4yz17h91vy53ynh67r2903gwwdn2cnilzbdj05"))

(define rust-portable-atomic-util-0.2.8
  (crate-source "portable-atomic-util" "0.2.8"
                "059729m166s1ccvqfyj6lv0wz5kr4qh6yb2gphf3mk5yyfvkxaqh"))

(define rust-postage-0.5.0
  (crate-source "postage" "0.5.0"
                "1hfk0rdwgv87aicna89ak0y3kz9ayakn28vwjdvgnx18cccbcgxg"))

(define rust-potential-utf-0.1.6
  (crate-source "potential_utf" "0.1.6"
                "0qbndl2fpphq7mph41m11vaixs05xrh1s451wxlgap4fdnybjgnq"))

(define rust-powerfmt-0.2.1
  (crate-source "powerfmt" "0.2.1"
                "0n293rvnpisjmxdqhq6zmrvcdql7j1c4zrcy5053vrv5x6wr8qsa"))

(define rust-ppv-lite86-0.2.21
  (crate-source "ppv-lite86" "0.2.21"
                "1abxx6qz5qnd43br1dd9b2savpihzjza8gb4fbzdql1gxp2f7sl5"))

(define rust-presser-0.3.1
  (crate-source "presser" "0.3.1"
                "1ykvqx861sjmhkdh540aafqba7i7li7gqgwrcczy6v56i9m8xkz8"))

(define rust-proc-macro-crate-3.5.0
  (crate-source "proc-macro-crate" "3.5.0"
                "0kv1g1d1zjwxlgcaba2qlshzyy32j03xic8rskqlcr5mnblsfyz6"))

(define rust-proc-macro2-1.0.107
  (crate-source "proc-macro2" "1.0.107"
                "1nb6ly8kp65f724kj73ippc7lvydss24sm2vagk6qpklpg4pwplq"))

(define rust-profiling-1.0.18
  (crate-source "profiling" "1.0.18"
                "1xdwlvxlgy99nn1dra7arzinkc8lbqljvcwpq70m7g16lda5wn9x"))

(define rust-profiling-procmacros-1.0.18
  (crate-source "profiling-procmacros" "1.0.18"
                "1jxvqff6j1z7ph3qghw2xhv18z7pf6cs6cja6fwscjwsdfis9224"))

(define rust-proptest-1.12.0
  (crate-source "proptest" "1.12.0"
                "186g52z5077c7q1xqm6v0kw43wqpwgxhj074qx8swpmirh200lxq"))

(define rust-proptest-macro-0.6.0
  (crate-source "proptest-macro" "0.6.0"
                "04n21cr7bwbwdmdyrfbcqa8v557ms8h14z48qq32533967m855z9"))

(define rust-pulp-0.22.3
  (crate-source "pulp" "0.22.3"
                "0sj9294yb8yr6z7vdlx467cfs4vvcwnygj0p8wpfqhlnk1ds8sh4"))

(define rust-pulp-wasm-simd-flag-0.1.1
  (crate-source "pulp-wasm-simd-flag" "0.1.1"
                "0h67yf9psibw4768lihrcidsdfqiqnhrrrblbaa64fcwggh713qx"))

(define rust-pxfm-0.1.30
  (crate-source "pxfm" "0.1.30"
                "1slrnbxd0nc96sny6x50ss1sm9ci0gig0fp1w8mw0pkgm5prapfm"))

(define rust-qoi-0.4.1
  (crate-source "qoi" "0.4.1"
                "00c0wkb112annn2wl72ixyd78mf56p4lxkhlmsggx65l3v3n8vbz"))

(define rust-quick-error-1.2.3
  (crate-source "quick-error" "1.2.3"
                "1q6za3v78hsspisc197bg3g7rpc989qycy8ypr8ap8igv10ikl51"))

(define rust-quick-error-2.0.1
  (crate-source "quick-error" "2.0.1"
                "18z6r2rcjvvf8cn92xjhm2qc3jpd1ljvcbf12zv0k9p565gmb4x9"))

(define rust-quick-xml-0.41.0
  (crate-source "quick-xml" "0.41.0"
                "1h9y8zry34r3mxfd5vqfj50vvvzvri4kzbx5d657jkqjalg4aq76"))

(define rust-quote-1.0.47
  (crate-source "quote" "1.0.47"
                "00ch0yyzvv6s671ik0kcsbw8nigdaj2g3fr61kcahwx48aqlvgqz"))

(define rust-r-efi-5.3.0
  (crate-source "r-efi" "5.3.0"
                "03sbfm3g7myvzyylff6qaxk4z6fy76yv860yy66jiswc2m6b7kb9"))

(define rust-r-efi-6.0.0
  (crate-source "r-efi" "6.0.0"
                "1gyrl2k5fyzj9k7kchg2n296z5881lg7070msabid09asp3wkp7q"))

(define rust-rand-0.10.3
  (crate-source "rand" "0.10.3"
                "1bxlhj4m9zrgfgk1yirf0nny86izrngscydfx9w387n9rfbgpjb5"))

(define rust-rand-0.8.8
  (crate-source "rand" "0.8.8"
                "0k3d9psya5icpiylff1w1wjbnc3q4pb1953n1iw7gbr61ggcfn70"))

(define rust-rand-0.9.5
  (crate-source "rand" "0.9.5"
                "0hbvllk8g28mqjld6hqmckk69w296qpzg95whm3didsyg46ivvxr"))

(define rust-rand-chacha-0.3.1
  (crate-source "rand_chacha" "0.3.1"
                "123x2adin558xbhvqb8w4f6syjsdkmqff8cxwhmjacpsl1ihmhg6"))

(define rust-rand-chacha-0.9.0
  (crate-source "rand_chacha" "0.9.0"
                "1jr5ygix7r60pz0s1cv3ms1f6pd1i9pcdmnxzzhjc3zn3mgjn0nk"))

(define rust-rand-core-0.10.1
  (crate-source "rand_core" "0.10.1"
                "0s9wiacxrr100icl7i41308gcj85nlcclrc5jx1jd6p10dhigf33"))

(define rust-rand-core-0.6.4
  (crate-source "rand_core" "0.6.4"
                "0b4j2v4cb5krak1pv6kakv4sz6xcwbrmy2zckc32hsigbrwy82zc"))

(define rust-rand-core-0.9.5
  (crate-source "rand_core" "0.9.5"
                "0g6qc5r3f0hdmz9b11nripyp9qqrzb0xqk9piip8w8qlvqkcibvn"))

(define rust-rand-xorshift-0.5.0
  (crate-source "rand_xorshift" "0.5.0"
                "1krcvzh8zb8ps8hy86lkj1wcr9zqcmp2xq0j60r72a731gw6mak0"))

(define rust-range-alloc-0.1.5
  (crate-source "range-alloc" "0.1.5"
                "020xrpn0qaabkxg49wpi0hgy92d8ikji55cyancphnmfi6bl2ifa"))

(define rust-rangemap-1.8.0
  (crate-source "rangemap" "1.8.0"
                "0gdaws5kkg3md7z4w7ln4sf3jkz6n3f3xl5pfr6fngvla1dx24d6"))

(define rust-rav1e-0.8.1
  (crate-source "rav1e" "0.8.1"
                "0axk3ji3jmlr81svmsy5zvj8shmhpp8lz5nyghkq752xx1bdvdj3"))

(define rust-ravif-0.13.0
  (crate-source "ravif" "0.13.0"
                "0ifcpczxf6kcsqlky08vbjrvw9yd1m9mfszywxdhy6wpglci08z5"))

(define rust-raw-cpuid-11.6.0
  (crate-source "raw-cpuid" "11.6.0"
                "11j1lmrjqqnc43bxkrz0xai1g9piw3z9aap53qsj8cnpb7fd1329"))

(define rust-raw-window-handle-0.6.2
  (crate-source "raw-window-handle" "0.6.2"
                "0ff5c648hncwx7hm2a8fqgqlbvbl4xawb6v3xxv9wkpjyrr5arr0"))

(define rust-raw-window-metal-1.1.0
  (crate-source "raw-window-metal" "1.1.0"
                "0dg1ghsngiwhp0g42hls9h8zipblw0q76g112j9ca7azb92i7lj0"))

(define rust-rayon-1.12.0
  (crate-source "rayon" "1.12.0"
                "0vcj63xgnk72c30vdrak7dhl53snnaqv9x2faf1d94hzg1kb2fgv"))

(define rust-rayon-core-1.13.0
  (crate-source "rayon-core" "1.13.0"
                "14dbr0sq83a6lf1rfjq5xdpk5r6zgzvmzs5j6110vlv2007qpq92"))

(define rust-read-fonts-0.37.0
  (crate-source "read-fonts" "0.37.0"
                "1r82vwrmsai9i7bgmnblb7sn08k2kca75lpz0x9v3yijy2mlyqvv"))

(define rust-read-fonts-0.41.0
  (crate-source "read-fonts" "0.41.0"
                "02c7q458gz6cfsyryiss5w6xp0k8dl2n4l1gncjrhidg9mkpssh4"))

(define rust-reborrow-0.5.5
  (crate-source "reborrow" "0.5.5"
                "0c14ccj3fdf47a1ya21bkxqv7s2hxrcfhaw98aqd6jqg029i2983"))

(define rust-redox-syscall-0.5.18
  (crate-source "redox_syscall" "0.5.18"
                "0b9n38zsxylql36vybw18if68yc9jczxmbyzdwyhb9sifmag4azd"))

(define rust-redox-users-0.4.6
  (crate-source "redox_users" "0.4.6"
                "0hya2cxx6hxmjfxzv9n8rjl5igpychav7zfi1f81pz6i4krry05s"))

(define rust-ref-cast-1.0.27
  (crate-source "ref-cast" "1.0.27"
                "1hv5sf0j7b65gz2g57c3wp0fzr5r3807dywf6fap455lwjs0yi3y"))

(define rust-ref-cast-impl-1.0.27
  (crate-source "ref-cast-impl" "1.0.27"
                "0fnzgkvddgl9xs3884x5ypi9rd0dgc1p5vd1k4b74lw49ybdiv4j"))

(define rust-regex-1.13.1
  (crate-source "regex" "1.13.1"
                "1391a0a4100ik8cp7l577p3ip3haqq03rd9c5vdr7vcfdixj687h"))

(define rust-regex-automata-0.4.18
  (crate-source "regex-automata" "0.4.18"
                "1cml0rm0ssqfkibh9nh3gy4b6hbsbicj1rihpwf2a4v4nawm71dd"))

(define rust-regex-syntax-0.8.11
  (crate-source "regex-syntax" "0.8.11"
                "1m25h5q2wp976fb9gc3dsc9l99svcvd5cri8lncb51c46ydgzxnn"))

(define rust-renderdoc-sys-1.1.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "renderdoc-sys" "1.1.0"
                "0cj8zjs7k0gvchcx3jhpg8r9bbqy8b1hsgbz0flcq2ydn12hmcqr"))

(define rust-resvg-0.48.1
  (crate-source "resvg" "0.48.1"
                "1gcn2590qwl3hzs3qqz1j96j00l1gb8csvkwpw6fi6drjwzq1qv7"))

(define rust-rgb-0.8.53
  (crate-source "rgb" "0.8.53"
                "1i0c55whln68zs6f5qqrkbg1mzai0p3qk1mwkwzdgr9i3dw4pcs7"))

(define rust-roxmltree-0.20.0
  (crate-source "roxmltree" "0.20.0"
                "15vw91ps91wkmmgy62khf9zb63bdinvm80957dascbsw7dwvc83c"))

(define rust-roxmltree-0.21.1
  (crate-source "roxmltree" "0.21.1"
                "1fxc3jgvl2rk05bw0hj86azqg6mzlijh06gyi9pw69b1qw84p5pi"))

(define rust-rustc-demangle-0.1.28
  (crate-source "rustc-demangle" "0.1.28"
                "1sr083jamg89zcxmchia1pdn584smsy2r32kk9q30a5vm3zmcjxp"))

(define rust-rustc-hash-1.1.0
  (crate-source "rustc-hash" "1.1.0"
                "1qkc5khrmv5pqi5l5ca9p5nl5hs742cagrndhbrlk3dhlrx3zm08"))

(define rust-rustc-hash-2.1.3
  (crate-source "rustc-hash" "2.1.3"
                "0bbla578m87qmf3yr55q49l97gxn7z0ha1dwqlnvwwc58ad7y7kb"))

(define rust-rustc-version-0.4.1
  (crate-source "rustc_version" "0.4.1"
                "14lvdsmr5si5qbqzrajgb6vfn69k0sfygrvfvr2mps26xwi3mjyg"))

(define rust-rustix-1.1.5
  (crate-source "rustix" "1.1.5"
                "17b2srw7rcqmrs1shj89g8i3r1447lihv7qrbxvp11j1psxgl7l9"))

(define rust-rustversion-1.0.23
  (crate-source "rustversion" "1.0.23"
                "07z2a843fs80fawwflj9jwn49k9b0bd0dhhbvy0ar69vaxd72m6g"))

(define rust-rusty-fork-0.3.1
  (crate-source "rusty-fork" "0.3.1"
                "1qkf9rvz2irb1wlbkrhrns8n9hnax48z1lgql5nqyr2fyagzfsyc"))

(define rust-ryu-1.0.23
  (crate-source "ryu" "1.0.23"
                "0zs70sg00l2fb9jwrf6cbkdyscjs53anrvai2hf7npyyfi5blx4p"))

(define rust-same-file-1.0.6
  (crate-source "same-file" "1.0.6"
                "00h5j1w87dmhnvbv9l8bic3y7xxsnjmssvifw2ayvgx9mb1ivz4k"))

(define rust-schemars-1.2.3
  (crate-source "schemars" "1.2.3"
                "0vnzz8smh3ixzy297898mwzfx0r5aadz2vxsbafwlxsaywk8hl5b"))

(define rust-schemars-derive-1.2.3
  (crate-source "schemars_derive" "1.2.3"
                "0sgwpzi91y6ibw7ns4wpqzgm9ddnmi7q8ia62am62zgsjhhakhz1"))

(define rust-scoped-tls-1.0.1
  (crate-source "scoped-tls" "1.0.1"
                "15524h04mafihcvfpgxd8f4bgc3k95aclz8grjkg9a0rxcvn9kz1"))

(define rust-scopeguard-1.2.0
  (crate-source "scopeguard" "1.2.0"
                "0jcz9sd47zlsgcnm1hdw0664krxwb5gczlif4qngj2aif8vky54l"))

(define rust-screencapturekit-0.2.8
  (crate-source "screencapturekit" "0.2.8"
                "0knn97lc4j304wdz8b4ssb4f8njqwqml0k7zwp7n0jf9gasywphs"))

(define rust-screencapturekit-sys-0.2.8
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "screencapturekit-sys" "0.2.8"
                "0q2cvqmwh4hci33ypx7gwlg5xmkgxq9qh695h3h7z7nlyxbinh92"))

(define rust-seahash-4.1.0
  (crate-source "seahash" "4.1.0"
                "0sxsb64np6bvnppjz5hg4rqpnkczhsl8w8kf2a5lr1c08xppn40w"))

(define rust-self-cell-1.3.0
  (crate-source "self_cell" "1.3.0"
                "04x883z7awzkmn5lqb67n51xynrj2pa9339jgq4j1qa94yh2rd1a"))

(define rust-semver-1.0.28
  (crate-source "semver" "1.0.28"
                "1kaimrpy876bcgi8bfj0qqfxk77zm9iz2zhn1hp9hj685z854y4a"))

(define rust-serde-1.0.229
  (crate-source "serde" "1.0.229"
                "1fp04fq4a79bpm61xz1zy0pbz4kpc7d771zii1k3inmszq55jj21"))

(define rust-serde-bytes-0.11.19
  (crate-source "serde_bytes" "0.11.19"
                "1a1y1v0r9akqyvprxnmpgc0i8wybqqpvgi01mi8qxn3rkrq41m55"))

(define rust-serde-core-1.0.229
  (crate-source "serde_core" "1.0.229"
                "0j1ajiha76h3nmd976il9li6975k121xa7jb39ws8n0yqp4s5p37"))

(define rust-serde-derive-1.0.229
  (crate-source "serde_derive" "1.0.229"
                "0j4k63i7h1bikxwz2c89ig0hrwbnl9mz1czn85xx99x5cc9dg9g7"))

(define rust-serde-derive-internals-0.30.0
  (crate-source "serde_derive_internals" "0.30.0"
                "1gd9n45na7n79nr54ghfl79rygkbzw2ybk3wyr6nlp83rry16lpq"))

(define rust-serde-json-1.0.154
  (crate-source "serde_json" "1.0.154"
                "1mjby21g8fxhrsfp73yz8wg6n2f4h23ah0nczds409l53f5wrsg7"))

(define rust-serde-repr-0.1.21
  (crate-source "serde_repr" "0.1.21"
                "01l987ghc17h1y9cf9xbzmcs77575mbrjf4ca2h70g15vqlicfwd"))

(define rust-serde-spanned-1.1.2
  (crate-source "serde_spanned" "1.1.2"
                "0b0crd16vvp0n81pgh0ldi3apld0ph5ywsrml80y5v2ynnz26xaf"))

(define rust-serde-urlencoded-0.7.1
  (crate-source "serde_urlencoded" "0.7.1"
                "1zgklbdaysj3230xivihs30qi5vkhigg323a9m62k8jwf4a1qjfk"))

(define rust-sha1-smol-1.0.1
  (crate-source "sha1_smol" "1.0.1"
                "0pbh2xjfnzgblws3hims0ib5bphv7r5rfdpizyh51vnzvnribymv"))

(define rust-sha2-0.10.9
  (crate-source "sha2" "0.10.9"
                "10xjj843v31ghsksd9sl9y12qfc48157j1xpb8v1ml39jy0psl57"))

(define rust-shlex-2.0.1
  (crate-source "shlex" "2.0.1"
                "1fjsll1cd7d2bcpdij9kd6w62rpbc7qqzvydvs021vsmr1cxvypq"))

(define rust-signal-hook-registry-1.4.8
  (crate-source "signal-hook-registry" "1.4.8"
                "06vc7pmnki6lmxar3z31gkyg9cw7py5x9g7px70gy2hil75nkny4"))

(define rust-simd-adler32-0.3.10
  (crate-source "simd-adler32" "0.3.10"
                "1sny4y2qa5mwyxx5x59ln2p02vsdh92004njlslnx98imjc9489s"))

(define rust-simd-helpers-0.1.0
  (crate-source "simd_helpers" "0.1.0"
                "19idqicn9k4vhd04ifh2ff41wvna79zphdf2c81rlmpc7f3hz2cm"))

(define rust-simdutf8-0.1.5
  (crate-source "simdutf8" "0.1.5"
                "0vmpf7xaa0dnaikib5jlx6y4dxd3hxqz6l830qb079g7wcsgxag3"))

(define rust-simplecss-0.2.2
  (crate-source "simplecss" "0.2.2"
                "0v0kid7b2602kcka2x2xs9wwfjf8lnvpgpl8x287qg4wra1ni73s"))

(define rust-siphasher-1.0.4
  (crate-source "siphasher" "1.0.4"
                "0mn28y43123jdpskdn6r9wibmn066f7h30zkkqn88bd6hj8zxx1k"))

(define rust-skrifa-0.40.0
  (crate-source "skrifa" "0.40.0"
                "1b1lfid1326df2aq4cjqz7jv63m3i21czrgks7fxgyvm4hyzxgbz"))

(define rust-skrifa-0.44.0
  (crate-source "skrifa" "0.44.0"
                "0s5a3fnyrxfv514vjjrn268lyhihmh5nb9fyv7cp4ghx5gbbg6l1"))

(define rust-slab-0.4.12
  (crate-source "slab" "0.4.12"
                "1xcwik6s6zbd3lf51kkrcicdq2j4c1fw0yjdai2apy9467i0sy8c"))

(define rust-slotmap-1.1.1
  (crate-source "slotmap" "1.1.1"
                "0f20xf53zaysx9ydzkwwqm6hsjyb8lj2j6amhg57iln3jcy8rmdx"))

(define rust-smallvec-1.16.3
  (crate-source "smallvec" "1.16.3"
                "06z0akmcq2zc9qg22dxda298p50gg3di5ggl3y2nllag8ypwhgav"))

(define rust-smol-2.0.2
  (crate-source "smol" "2.0.2"
                "17srgkyzswns43cnqcfb1846a8nsna47qj7wrk1rj8c9c3id6fx3"))

(define rust-smol-str-0.3.6
  (crate-source "smol_str" "0.3.6"
                "08qm7y1k2fkzrs8k78m03h4z4wbarv5g0bfr5m62m1glzil77aja"))

(define rust-spin-0.10.1
  (crate-source "spin" "0.10.1"
                "1lvxq2sdaissp7dzij94fsbrkxl9mmh2bcw0hr1vr38kncf22fh2"))

(define rust-spin-0.9.9
  (crate-source "spin" "0.9.9"
                "03psal0vh1xdxp7agphw09p7kf50v3bj1zshijq1s5bkdd7jcqrp"))

(define rust-spirv-0.4.0+sdk-1.4.341.0
  (crate-source "spirv" "0.4.0+sdk-1.4.341.0"
                "0kvlfqliwrrbdca9cpvwy43avimxkmzx4gjbmy34rn7b22liwmyr"))

(define rust-stable-deref-trait-1.2.1
  (crate-source "stable_deref_trait" "1.2.1"
                "15h5h73ppqyhdhx6ywxfj88azmrpml9gl6zp3pwy2malqa6vxqkc"))

(define rust-static-assertions-1.1.0
  (crate-source "static_assertions" "1.1.0"
                "0gsl6xmw10gvn3zs1rv99laj5ig7ylffnh71f9l34js4nr4r7sx2"))

(define rust-strict-num-0.1.1
  (crate-source "strict-num" "0.1.1"
                "0cb7l1vhb8zj90mzm8avlk815k40sql9515s865rqdrdfavvldv6"))

(define rust-strum-0.28.0
  (crate-source "strum" "0.28.0"
                "1ggr0if083c1mz9w33hkdjsp0iqk2fz9n49bvb73knwihydxwa4n"))

(define rust-strum-macros-0.28.0
  (crate-source "strum_macros" "0.28.0"
                "0r7n6v5b3x85m52isyc8wq78irmr22g0hmj1xn3pbq8f4yhfx1db"))

(define rust-subtle-2.6.1
  (crate-source "subtle" "2.6.1"
                "14ijxaymghbl1p0wql9cib5zlwiina7kall6w7g89csprkgbvhhk"))

(define rust-svg-fmt-0.4.5
  (crate-source "svg_fmt" "0.4.5"
                "1yq2kv7klg8s5k19prn36cprlnb811cqgwhy079g7lng651wr4q1"))

(define rust-svgtypes-0.16.1
  (crate-source "svgtypes" "0.16.1"
                "0gdw5a7znyv5sh4a575ddlhkvnvf45dd5grvkflsy78knf85fnv9"))

(define rust-swash-0.2.10
  (crate-source "swash" "0.2.10"
                "0bprhdib5yjpzvfb0nkqplwpm47di9qnh8ibhy416lr6v319j93c"))

(define rust-syn-2.0.119
  (crate-source "syn" "2.0.119"
                "15vjy620l91a3q4n4f4gzhnflmdr6pnm38v2m6cpk86i8av32a47"))

(define rust-syn-3.0.9
  (crate-source "syn" "3.0.9"
                "0fw28lhl90kls24q2h2sp39yjb0lsvz5cwh9fd3f3w3v9kp8v36p"))

(define rust-synstructure-0.14.0
  (crate-source "synstructure" "0.14.0"
                "00kzyz38xqvs7x1dn6rp64y0ckly4m7ywf3qk3qkgqfzs3nh85wh"))

(define rust-sys-locale-0.3.2
  (crate-source "sys-locale" "0.3.2"
                "1i16hq9mkwpzqvixjfy1ph4i2q5klgagjg4hibz6k894l2crmawf"))

(define rust-sysinfo-0.31.4
  (crate-source "sysinfo" "0.31.4"
                "1gm1d4pxwnx4gmh6kwawchv8v8djb7y0a3qvbsq09cwrhx7vwp9m"))

(define rust-taffy-0.13.0
  (crate-source "taffy" "0.13.0"
                "03qxmgrg6m6sl1x98j86qxsm0wcpawjc4qrqlvd14np8drgy0d60"))

(define rust-tao-core-video-sys-0.2.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "tao-core-video-sys" "0.2.0"
                "1xlqdcp7a5hni0jwc7yn7p4mij68f86ffv0cfb8did4w53mm0517"))

(define rust-tauri-winrt-notification-0.8.1
  (crate-source "tauri-winrt-notification" "0.8.1"
                "0dnbghfcx348ryhqxmf952nnsmsr75zd96zd4biwk3yj9wsnqypk"))

(define rust-tempfile-3.27.0
  (crate-source "tempfile" "3.27.0"
                "1gblhnyfjsbg9wjg194n89wrzah7jy3yzgnyzhp56f3v9jd7wj9j"))

(define rust-termcolor-1.4.1
  (crate-source "termcolor" "1.4.1"
                "0mappjh3fj3p2nmrg4y7qv94rchwi9mzmgmfflr8p2awdj7lyy86"))

(define rust-thiserror-1.0.69
  (crate-source "thiserror" "1.0.69"
                "0lizjay08agcr5hs9yfzzj6axs53a2rgx070a1dsi3jpkcrzbamn"))

(define rust-thiserror-2.0.21
  (crate-source "thiserror" "2.0.21"
                "17hq1lh5dyr3bkc7zzjrbrp4qgkvhc48kgq1n5fdxkindaw2rr89"))

(define rust-thiserror-impl-1.0.69
  (crate-source "thiserror-impl" "1.0.69"
                "1h84fmn2nai41cxbhk6pqf46bxqq1b344v8yz089w1chzi76rvjg"))

(define rust-thiserror-impl-2.0.21
  (crate-source "thiserror-impl" "2.0.21"
                "0945n8agp7kg6n6b35yyjb4g5xv2q22vrw15h6jj1nw76a99flgy"))

(define rust-tiff-0.11.3
  (crate-source "tiff" "0.11.3"
                "0lmw68ic77sixk17r4rl2vsv00rqhja3yj2h9p5bcd9x6krylgxn"))

(define rust-time-0.3.55
  (crate-source "time" "0.3.55"
                "0d6iyws47z50zlksf5m3cflxvjrcgfhjglhn112gmpahxjappf6d"))

(define rust-time-core-0.1.9
  (crate-source "time-core" "0.1.9"
                "028ix0ax7ixp1h1k5zsqwgw85w6y1q32irslma7ci6ddd5kr074y"))

(define rust-tiny-keccak-2.0.2
  (crate-source "tiny-keccak" "2.0.2"
                "0dq2x0hjffmixgyf6xv9wgsbcxkd65ld0wrfqmagji8a829kg79c"))

(define rust-tiny-skia-0.12.0
  (crate-source "tiny-skia" "0.12.0"
                "1sliba6ghl038ig7r4wds7aq9v5x1swmdqxh1xipylpmm9gfxzs7"))

(define rust-tiny-skia-path-0.12.0
  (crate-source "tiny-skia-path" "0.12.0"
                "1fgfzl0mzf2vfcqk3817wxynhmvcza05jg2r0rysdk5c7xf3djpd"))

(define rust-tinystr-0.8.4
  (crate-source "tinystr" "0.8.4"
                "0hzncw8rgk4syla79qscfml46jm7ll1zdp7kdacc42cj8n8prqmi"))

(define rust-tinyvec-1.13.3
  (crate-source "tinyvec" "1.13.3"
                "1vphg4gnlpykjy5h4v7r8nl38ij4zr9qyh7qd34ddvwjyqaa6g7x"))

(define rust-tokio-1.53.3
  (crate-source "tokio" "1.53.3"
                "0kny1nnbpy11dllv6ncxy3n804wh0ddn3msq78rxl744f7x3acyf"))

(define rust-toml-1.1.8+spec-1.1.0
  (crate-source "toml" "1.1.8+spec-1.1.0"
                "13b7kqvw7aa4x08i03d2fpima1i75v0lqxl0wrmisx6qwh09wj10"))

(define rust-toml-datetime-1.1.2+spec-1.1.0
  (crate-source "toml_datetime" "1.1.2+spec-1.1.0"
                "0lrhcmqvhjr259w4f2kijya7fgi0kpmhg9fb3m144v3cj1kxg1ib"))

(define rust-toml-edit-0.25.17+spec-1.1.0
  (crate-source "toml_edit" "0.25.17+spec-1.1.0"
                "174w1b2fjg1jb0wi7384v1m59g7ga79458i022gafjakpddisr73"))

(define rust-toml-parser-1.1.5+spec-1.1.0
  (crate-source "toml_parser" "1.1.5+spec-1.1.0"
                "0k3lljyi4zxchdklaqghkwbl7wkd2ab1w16hlyniqzid0fl979ms"))

(define rust-toml-writer-1.1.3+spec-1.1.0
  (crate-source "toml_writer" "1.1.3+spec-1.1.0"
                "0w17cps8mfg7wcwyp0gggi9cpgmxldb9pwl55qp8ssq5zj6bvg86"))

(define rust-tracing-0.1.44
  (crate-source "tracing" "0.1.44"
                "006ilqkg1lmfdh3xhg3z762izfwmxcvz0w7m4qx2qajbz9i1drv3"))

(define rust-tracing-attributes-0.1.31
  (crate-source "tracing-attributes" "0.1.31"
                "1np8d77shfvz0n7camx2bsf1qw0zg331lra0hxb4cdwnxjjwz43l"))

(define rust-tracing-core-0.1.36
  (crate-source "tracing-core" "0.1.36"
                "16mpbz6p8vd6j7sf925k9k8wzvm9vdfsjbynbmaxxyq6v7wwm5yv"))

(define rust-ttf-parser-0.25.1
  (crate-source "ttf-parser" "0.25.1"
                "0cbgqglcwwjg3hirwq6xlza54w04mb5x02kf7zx4hrw50xmr1pyj"))

(define rust-typenum-1.20.1
  (crate-source "typenum" "1.20.1"
                "086s9ly0906kw5yw41249fba97w5zfxf03pyfwdkffvcprqfixdn"))

(define rust-uds-windows-1.2.1
  (crate-source "uds_windows" "1.2.1"
                "0vidqwwfgn8wyzvbxiqil787b4wyqjia50zpdbbjqx7n8wlgpxpj"))

(define rust-unarray-0.1.4
  (crate-source "unarray" "0.1.4"
                "154smf048k84prsdgh09nkm2n0w0336v84jd4zikyn6v6jrqbspa"))

(define rust-unicode-bidi-0.3.18
  (crate-source "unicode-bidi" "0.3.18"
                "1xcxwbsqa24b8vfchhzyyzgj0l6bn51ib5v8j6krha0m77dva72w"))

(define rust-unicode-ident-1.0.27
  (crate-source "unicode-ident" "1.0.27"
                "0qv54hz0sxmspjyr162z3435pnyylzjjhx3j4k1s359pqgb59ix2"))

(define rust-unicode-linebreak-0.1.5
  (crate-source "unicode-linebreak" "0.1.5"
                "07spj2hh3daajg335m4wdav6nfkl0f6c0q72lc37blr97hych29v"))

(define rust-unicode-normalization-0.1.25
  (crate-source "unicode-normalization" "0.1.25"
                "1s76dcrxw7vs32yhpi0p074apdc3s7lak7809f3qvclwij3zdm2z"))

(define rust-unicode-script-0.5.8
  (crate-source "unicode-script" "0.5.8"
                "1vmifpgd0map3frmvhszhl96k82crcry083prv05wii7p45x8fiq"))

(define rust-unicode-segmentation-1.13.3
  (crate-source "unicode-segmentation" "1.13.3"
                "1a47zaq83p386r3baq4m018xd5q4q0grdg56i1x042dzn71x7xf6"))

(define rust-unicode-vo-0.1.0
  (crate-source "unicode-vo" "0.1.0"
                "151sha088v9jyfvbg5164xh4dk72g53b82xm4zzbf5dlagzqdlxi"))

(define rust-unicode-width-0.2.2
  (crate-source "unicode-width" "0.2.2"
                "0m7jjzlcccw716dy9423xxh0clys8pfpllc5smvfxrzdf66h9b5l"))

(define rust-url-2.5.8
  (crate-source "url" "2.5.8"
                "1v8f7nx3hpr1qh76if0a04sj08k86amsq4h8cvpw6wvk76jahrzz"))

(define rust-usvg-0.48.1
  (crate-source "usvg" "0.48.1"
                "149y95i3g0dwlcbg1ipb1awqkq3napwhkzlr9913z4zgpm50lzcp"))

(define rust-utf8-iter-1.0.4
  (crate-source "utf8_iter" "1.0.4"
                "1gmna9flnj8dbyd8ba17zigrp9c4c3zclngf5lnb5yvz1ri41hdn"))

(define rust-uuid-1.28.0
  (crate-source "uuid" "1.28.0"
                "01mnlhz09hwdjaxwzjd6bql3fjb5zl9n8dzaxn7dvdxyhiiiihbw"))

(define rust-v-frame-0.3.9
  (crate-source "v_frame" "0.3.9"
                "1qkvb4ks33zck931vzqckjn36hkngj6l2cwmvfsnlpc7r0kpfsv6"))

(define rust-version-check-0.9.5
  (crate-source "version_check" "0.9.5"
                "0nhhi4i5x89gm911azqbn7avs9mdacw2i3vcz3cnmz3mv4rqz4hb"))

(define rust-vswhom-0.1.0
  (crate-source "vswhom" "0.1.0"
                "12v0fjjzxdc3y5c0lcwycfhphz7zf2s06hl5krwhawah0xzrp5xy"))

(define rust-vswhom-sys-0.1.3
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "vswhom-sys" "0.1.3"
                "0l0i4fijapsybmfckfqh53yqxsg0bm5ikja6vz8ngw0zpm67w1pv"))

(define rust-wait-timeout-0.2.1
  (crate-source "wait-timeout" "0.2.1"
                "04azqv9mnfxgvnc8j2wp362xraybakh2dy1nj22gj51rdl93pb09"))

(define rust-waker-fn-1.2.0
  (crate-source "waker-fn" "1.2.0"
                "1dvk0qsv88kiq22x8w0qz0k9nyrxxm5a9a9czdwdvvhcvjh12wii"))

(define rust-walkdir-2.5.0
  (crate-source "walkdir" "2.5.0"
                "0jsy7a710qv8gld5957ybrnc07gavppp963gs32xk4ag8130jy99"))

(define rust-wasi-0.11.1+wasi-snapshot-preview1
  (crate-source "wasi" "0.11.1+wasi-snapshot-preview1"
                "0jx49r7nbkbhyfrfyhz0bm4817yrnxgd3jiwwwfv0zl439jyrwyc"))

(define rust-wasip2-1.0.4+wasi-0.2.12
  (crate-source "wasip2" "1.0.4+wasi-0.2.12"
                "11wl7lqwq4pbmlmzr6n7bwz0hzy1z6sxc4554bkmrr86w4vznzmn"))

(define rust-wasm-bindgen-0.2.129
  (crate-source "wasm-bindgen" "0.2.129"
                "02flhqld01jqb6vbfyx1gb8s78g1pnq2164daxad93y6mhrlzdcv"))

(define rust-wasm-bindgen-futures-0.4.79
  (crate-source "wasm-bindgen-futures" "0.4.79"
                "03k1wcg5j3wqk6vgy6gzcq868vsa9k81dlhqissfk0nrw96v7fiw"))

(define rust-wasm-bindgen-macro-0.2.129
  (crate-source "wasm-bindgen-macro" "0.2.129"
                "0dc5xq09sy1v9ns1fhb0cnyqz5p1wcjjvkdmxskj9qhnbg1x0a9f"))

(define rust-wasm-bindgen-macro-support-0.2.129
  (crate-source "wasm-bindgen-macro-support" "0.2.129"
                "1dx6w90f14avmhri7ss9lyz03060g6475r4axy3bm7biqf5ill3g"))

(define rust-wasm-bindgen-shared-0.2.129
  (crate-source "wasm-bindgen-shared" "0.2.129"
                "1ilmp5d3sl8lrq9djhcs90gk66yvk8mgwk4sfrvpvkd75b2wkw13"))

(define rust-wayland-backend-0.3.17
  (crate-source "wayland-backend" "0.3.17"
                "0y50cw56f09cdcsinbbl94naz91xf7iqaj87s4f7py6zmm71pa9q"))

(define rust-wayland-client-0.31.15
  (crate-source "wayland-client" "0.31.15"
                "0ww0d0r6rn2h0sn8ma1f7zvxj40l6930p07j044nvmqshq7nmhz3"))

(define rust-wayland-cursor-0.31.14
  (crate-source "wayland-cursor" "0.31.14"
                "0kdk7xwj465idk54jf1f24024gdp63wyagca68a176xyh23x2lja"))

(define rust-wayland-protocols-0.32.13
  (crate-source "wayland-protocols" "0.32.13"
                "1dn4injzx1lnmacnhl3q60m743lvshxmmy0aabb2xaixvq9wil13"))

(define rust-wayland-protocols-plasma-0.3.12
  (crate-source "wayland-protocols-plasma" "0.3.12"
                "14adi3xgkldbih60705gshlq2lskds5chhsn3znk271cxgqqqv9b"))

(define rust-wayland-protocols-wlr-0.3.12
  (crate-source "wayland-protocols-wlr" "0.3.12"
                "0d424vn2hj27r4gjlshm6hy8fcqysr805jkqdjbwgmrng0pya17b"))

(define rust-wayland-scanner-0.31.11
  (crate-source "wayland-scanner" "0.31.11"
                "1h0al3271l2w124sxlh77s1kmjg0z24ns2mk1vbnfars3d3313ik"))

(define rust-wayland-sys-0.31.11
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "wayland-sys" "0.31.11"
                "1gp3hlkxx13i55lyyi794vnw9a780z3skx0xhj71zr69xwzv5snq"))

(define rust-web-sys-0.3.106
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "web-sys" "0.3.106"
                "195bd1m14w3hsw5fg3sr938mh7y4cb260d0sq6a6brffxjfin9l8"))

(define rust-web-time-1.1.0
  (crate-source "web-time" "1.1.0"
                "1fx05yqx83dhx628wb70fyy10yjfq1jpl20qfqhdkymi13rq0ras"))

(define rust-weezl-0.1.12
  (crate-source "weezl" "0.1.12"
                "122a1dhha6cib5az4ihcqlh60ns2bi6rskdv875p94lbvj6wk2m2"))

(define rust-wgpu-29.0.4
  (crate-source "wgpu" "29.0.4"
                "01sx6b31110cxc0h8k06zwkg8sm54xv19lhqpd61v2523c789s3n"))

(define rust-wgpu-core-29.0.4
  (crate-source "wgpu-core" "29.0.4"
                "1mx48dc3k1gnfaqs193gdwmp0pxpvibszi20k5d9cmjf4lr9hl9g"))

(define rust-wgpu-core-deps-apple-29.0.4
  (crate-source "wgpu-core-deps-apple" "29.0.4"
                "1ws70f53b4yj9p52ziwzcn1m7x4zyxn5863xws4pbq60qhk9xqzm"))

(define rust-wgpu-core-deps-emscripten-29.0.4
  (crate-source "wgpu-core-deps-emscripten" "29.0.4"
                "1bzhr47sh1c6l1km50i5mmfjgasmdv3b5xnmpnc994ywa7jrpq01"))

(define rust-wgpu-core-deps-wasm-29.0.4
  (crate-source "wgpu-core-deps-wasm" "29.0.4"
                "0n9hjjf37g35k31brs2hmwscpc4vsdr4y8jcgm4i5ag2idwv27xg"))

(define rust-wgpu-core-deps-windows-linux-android-29.0.4
  (crate-source "wgpu-core-deps-windows-linux-android" "29.0.4"
                "0mq24drvyv691rqdji25pcr7mvlcpmp6cvmf8xv09bgnpqdjqnaf"))

(define rust-wgpu-hal-29.0.4
  (crate-source "wgpu-hal" "29.0.4"
                "13a49nwmfj5mvydq7k4xz4dfhvgaaspkykkflhi1qc97fz0y3b4p"))

(define rust-wgpu-naga-bridge-29.0.4
  (crate-source "wgpu-naga-bridge" "29.0.4"
                "0qf1pgzp6k5fzahbvbb2npfak6jlzfj1dkc168i4nm27yl9n08lm"))

(define rust-wgpu-types-29.0.4
  (crate-source "wgpu-types" "29.0.4"
                "1xgqmpyl0zpffqp23b5fcq6gr6yz3a7qd8r3nbi4bjm8kk6q9gw4"))

(define rust-which-8.0.6
  (crate-source "which" "8.0.6"
                "0kq3r101j662briq4hrlrd9jv090ppsr3k0smcf7lr0np2rg5qms"))

(define rust-winapi-0.3.9
  (crate-source "winapi" "0.3.9"
                "06gl025x418lchw1wxj64ycr7gha83m44cjr5sarhynd9xkrm0sw"))

(define rust-winapi-i686-pc-windows-gnu-0.4.0
  (crate-source "winapi-i686-pc-windows-gnu" "0.4.0"
                "1dmpa6mvcvzz16zg6d5vrfy4bxgg541wxrcip7cnshi06v38ffxc"))

(define rust-winapi-util-0.1.11
  (crate-source "winapi-util" "0.1.11"
                "08hdl7mkll7pz8whg869h58c1r9y7in0w0pk8fm24qc77k0b39y2"))

(define rust-winapi-x86-64-pc-windows-gnu-0.4.0
  (crate-source "winapi-x86_64-pc-windows-gnu" "0.4.0"
                "0gqq64czqb64kskjryj8isp62m2sgvx25yyj3kpc2myh85w24bki"))

(define rust-windows-0.57.0
  (crate-source "windows" "0.57.0"
                "0hqid10bqvxa3pbpgvrh2cilf950lxsd9zqfv3rldc73v2s2qd0j"))

(define rust-windows-0.61.3
  (crate-source "windows" "0.61.3"
                "14v8dln7i4ccskd8danzri22bkjkbmgzh284j3vaxhd4cykx7awv"))

(define rust-windows-0.62.2
  (crate-source "windows" "0.62.2"
                "10457l9ihrbw8j79z2v4plyjxkf6xvb5npd0lqwmkh702gpaszsj"))

(define rust-windows-aarch64-gnullvm-0.48.5
  (crate-source "windows_aarch64_gnullvm" "0.48.5"
                "1n05v7qblg1ci3i567inc7xrkmywczxrs1z3lj3rkkxw18py6f1b"))

(define rust-windows-aarch64-gnullvm-0.52.6
  (crate-source "windows_aarch64_gnullvm" "0.52.6"
                "1lrcq38cr2arvmz19v32qaggvj8bh1640mdm9c2fr877h0hn591j"))

(define rust-windows-aarch64-msvc-0.48.5
  (crate-source "windows_aarch64_msvc" "0.48.5"
                "1g5l4ry968p73g6bg6jgyvy9lb8fyhcs54067yzxpcpkf44k2dfw"))

(define rust-windows-aarch64-msvc-0.52.6
  (crate-source "windows_aarch64_msvc" "0.52.6"
                "0sfl0nysnz32yyfh773hpi49b1q700ah6y7sacmjbqjjn5xjmv09"))

(define rust-windows-capture-1.5.0
  (crate-source "windows-capture" "1.5.0"
                "091bi2fg3kgcy4l8vxzgxvarg31v6ak2r73y3bnbkpgyjlzgfk9s"))

(define rust-windows-collections-0.2.0
  (crate-source "windows-collections" "0.2.0"
                "1s65anr609qvsjga7w971p6iq964h87670dkfqfypnfgwnswxviv"))

(define rust-windows-collections-0.3.2
  (crate-source "windows-collections" "0.3.2"
                "0436rjbkqn3j9m2v2lcmwwk0l3n2r57yvqb7fcy4m8d8y5ddkci3"))

(define rust-windows-core-0.57.0
  (crate-source "windows-core" "0.57.0"
                "0bc3jxw2jw76xkk3ddvnp5b2m76qmbzv1qncgvb6qrlhl8wj9vfj"))

(define rust-windows-core-0.61.2
  (crate-source "windows-core" "0.61.2"
                "1qsa3iw14wk4ngfl7ipcvdf9xyq456ms7cx2i9iwf406p7fx7zf0"))

(define rust-windows-core-0.62.2
  (crate-source "windows-core" "0.62.2"
                "1swxpv1a8qvn3bkxv8cn663238h2jccq35ff3nsj61jdsca3ms5q"))

(define rust-windows-future-0.2.1
  (crate-source "windows-future" "0.2.1"
                "13mdzcdn51ckpzp3frb8glnmkyjr1c30ym9wnzj9zc97hkll2spw"))

(define rust-windows-future-0.3.2
  (crate-source "windows-future" "0.3.2"
                "1jq5qs2dwzf6rl60f8gr49z2mifxsrdh4y4yfdws467ya41gkmp1"))

(define rust-windows-i686-gnu-0.48.5
  (crate-source "windows_i686_gnu" "0.48.5"
                "0gklnglwd9ilqx7ac3cn8hbhkraqisd0n83jxzf9837nvvkiand7"))

(define rust-windows-i686-gnu-0.52.6
  (crate-source "windows_i686_gnu" "0.52.6"
                "02zspglbykh1jh9pi7gn8g1f97jh1rrccni9ivmrfbl0mgamm6wf"))

(define rust-windows-i686-gnullvm-0.52.6
  (crate-source "windows_i686_gnullvm" "0.52.6"
                "0rpdx1537mw6slcpqa0rm3qixmsb79nbhqy5fsm3q2q9ik9m5vhf"))

(define rust-windows-i686-msvc-0.48.5
  (crate-source "windows_i686_msvc" "0.48.5"
                "01m4rik437dl9rdf0ndnm2syh10hizvq0dajdkv2fjqcywrw4mcg"))

(define rust-windows-i686-msvc-0.52.6
  (crate-source "windows_i686_msvc" "0.52.6"
                "0rkcqmp4zzmfvrrrx01260q3xkpzi6fzi2x2pgdcdry50ny4h294"))

(define rust-windows-implement-0.57.0
  (crate-source "windows-implement" "0.57.0"
                "1mqs7qypclnmx5r8yq5jy3g2d8i27vzag9yzzzxzpdnmb70ds1wi"))

(define rust-windows-implement-0.60.2
  (crate-source "windows-implement" "0.60.2"
                "1psxhmklzcf3wjs4b8qb42qb6znvc142cb5pa74rsyxm1822wgh5"))

(define rust-windows-interface-0.57.0
  (crate-source "windows-interface" "0.57.0"
                "19zwlzr0q1z9s692681yb5w2lhvwcyx4v95s25hfdkd3isry9gi9"))

(define rust-windows-interface-0.59.3
  (crate-source "windows-interface" "0.59.3"
                "0n73cwrn4247d0axrk7gjp08p34x1723483jxjxjdfkh4m56qc9z"))

(define rust-windows-link-0.1.3
  (crate-source "windows-link" "0.1.3"
                "12kr1p46dbhpijr4zbwr2spfgq8i8c5x55mvvfmyl96m01cx4sjy"))

(define rust-windows-link-0.2.1
  (crate-source "windows-link" "0.2.1"
                "1rag186yfr3xx7piv5rg8b6im2dwcf8zldiflvb22xbzwli5507h"))

(define rust-windows-numerics-0.2.0
  (crate-source "windows-numerics" "0.2.0"
                "1cf2j8nbqf0hqqa7chnyid91wxsl2m131kn0vl3mqk3c0rlayl4i"))

(define rust-windows-numerics-0.3.1
  (crate-source "windows-numerics" "0.3.1"
                "09hgbg8pf89r4090yyhh9q29ppi7yyxkgmga9ascshy19a240bkf"))

(define rust-windows-result-0.1.2
  (crate-source "windows-result" "0.1.2"
                "1y274q1v0vy21lhkgslpxpq1m08hvr1mcs2l88h1b1gcx0136f2y"))

(define rust-windows-result-0.3.4
  (crate-source "windows-result" "0.3.4"
                "1il60l6idrc6hqsij0cal0mgva6n3w6gq4ziban8wv6c6b9jpx2n"))

(define rust-windows-result-0.4.1
  (crate-source "windows-result" "0.4.1"
                "1d9yhmrmmfqh56zlj751s5wfm9a2aa7az9rd7nn5027nxa4zm0bp"))

(define rust-windows-strings-0.4.2
  (crate-source "windows-strings" "0.4.2"
                "0mrv3plibkla4v5kaakc2rfksdd0b14plcmidhbkcfqc78zwkrjn"))

(define rust-windows-strings-0.5.1
  (crate-source "windows-strings" "0.5.1"
                "14bhng9jqv4fyl7lqjz3az7vzh8pw0w4am49fsqgcz67d67x0dvq"))

(define rust-windows-sys-0.48.0
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.48.0"
                "1aan23v5gs7gya1lc46hqn9mdh8yph3fhxmhxlw36pn6pqc28zb7"))

(define rust-windows-sys-0.61.2
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "windows-sys" "0.61.2"
                "1z7k3y9b6b5h52kid57lvmvm05362zv1v8w0gc7xyv5xphlp44xf"))

(define rust-windows-targets-0.48.5
  (crate-source "windows-targets" "0.48.5"
                "034ljxqshifs1lan89xwpcy1hp0lhdh4b5n0d2z4fwjx2piacbws"))

(define rust-windows-targets-0.52.6
  (crate-source "windows-targets" "0.52.6"
                "0wwrx625nwlfp7k93r2rra568gad1mwd888h1jwnl0vfg5r4ywlv"))

(define rust-windows-threading-0.1.0
  (crate-source "windows-threading" "0.1.0"
                "19jpn37zpjj2q7pn07dpq0ay300w65qx7wdp13wbp8qf5snn6r5n"))

(define rust-windows-threading-0.2.1
  (crate-source "windows-threading" "0.2.1"
                "0dsvsy33vxs0153z4n39sqkzx382cjjkrd46rb3z3zfak5dvsj9r"))

(define rust-windows-version-0.1.7
  (crate-source "windows-version" "0.1.7"
                "0c9nnqpcq770977k77mw1p66gpw45khwhqkjdcrd1f89l4fhl1p4"))

(define rust-windows-x86-64-gnu-0.48.5
  (crate-source "windows_x86_64_gnu" "0.48.5"
                "13kiqqcvz2vnyxzydjh73hwgigsdr2z1xpzx313kxll34nyhmm2k"))

(define rust-windows-x86-64-gnu-0.52.6
  (crate-source "windows_x86_64_gnu" "0.52.6"
                "0y0sifqcb56a56mvn7xjgs8g43p33mfqkd8wj1yhrgxzma05qyhl"))

(define rust-windows-x86-64-gnullvm-0.48.5
  (crate-source "windows_x86_64_gnullvm" "0.48.5"
                "1k24810wfbgz8k48c2yknqjmiigmql6kk3knmddkv8k8g1v54yqb"))

(define rust-windows-x86-64-gnullvm-0.52.6
  (crate-source "windows_x86_64_gnullvm" "0.52.6"
                "03gda7zjx1qh8k9nnlgb7m3w3s1xkysg55hkd1wjch8pqhyv5m94"))

(define rust-windows-x86-64-msvc-0.48.5
  (crate-source "windows_x86_64_msvc" "0.48.5"
                "0f4mdp895kkjh9zv8dxvn4pc10xr7839lf5pa9l0193i2pkgr57d"))

(define rust-windows-x86-64-msvc-0.52.6
  (crate-source "windows_x86_64_msvc" "0.52.6"
                "1v7rb5cibyzx8vak29pdrk8nx9hycsjs4w0jgms08qk49jl6v7sq"))

(define rust-winnow-1.0.4
  (crate-source "winnow" "1.0.4"
                "10fzxipa7lx16172p3aca9j60hzbqgjki2f95kqksd5qywcp7f93"))

(define rust-winreg-0.56.0
  (crate-source "winreg" "0.56.0"
                "046a5jpvc0yzr9c0wgik743k6yalr2f0bchy4c0nz7sazyh34vvx"))

(define rust-wio-0.2.2
  (crate-source "wio" "0.2.2"
                "199p404fp96w1f1c93bf1jrvaqwypxf3hmmldhww4jk4yhr9j4jx"))

(define rust-wit-bindgen-0.57.1
  (crate-source "wit-bindgen" "0.57.1"
                "0vjk2jb593ri9k1aq4iqs2si9mrw5q46wxnn78im7hm7hx799gqy"))

(define rust-writeable-0.6.4
  (crate-source "writeable" "0.6.4"
                "1p3r4s4wbf3dksfpj3xyrn7id5p0f7r74mj6qx6ngjfd6cm2vn1s"))

(define rust-x11-2.21.0
  (crate-source "x11" "2.21.0"
                "0bnvl09d7044k067gqdx1ln2r0ljp5f4675icwb0216d9i3aabah"))

(define rust-x11rb-0.13.2
  (crate-source "x11rb" "0.13.2"
                "053lvnaw9ycbl791mgwly2hw27q6vqgzrb1y5kz1as52wmdsm4wr"))

(define rust-x11rb-protocol-0.13.2
  (crate-source "x11rb-protocol" "0.13.2"
                "1g81cznbyn522b0fbis0i44wh3adad2vhsz5pzf99waf3sbc4vza"))

(define rust-xcb-1.7.1
  (crate-source "xcb" "1.7.1"
                "0rh5nf63b68irmbavbakg6z4ncwji4mqdzlsx1p8a8p9w0asvhm6"))

(define rust-xcursor-0.3.11
  (crate-source "xcursor" "0.3.11"
                "08wfv0wrij9rrmbgfd2l8a132gyfax05abypllpmwic6hznk6fqn"))

(define rust-xim-ctext-0.3.0
  (crate-source "xim-ctext" "0.3.0"
                "0k186cy9dcw999w74ak39f1cfp2xhgpywbp8nqvkq3y4c9q1miia"))

(define rust-xim-parser-0.2.2
  (crate-source "xim-parser" "0.2.2"
                "1dyp9ma824i3vslklv8ad7mga96vgm7aiwqa31jmlbapi5gy9kjx"))

(define rust-xkbcommon-0.8.0
  (crate-source "xkbcommon" "0.8.0"
                "1j8s1sfwc6bw9phsca65rw3q3b5l2651v1s0pk5yxm6baa9wlrld"))

(define rust-xkeysym-0.2.1
  (crate-source "xkeysym" "0.2.1"
                "0mksx670cszyd7jln6s7dhkw11hdfv7blwwr3isq98k22ljh1k5r"))

(define rust-xml-rs-0.8.29
  (crate-source "xml-rs" "0.8.29"
                "19y8s93sh2dx21bqlpagkixld2c66f3rln0j9k4k7zqxxnrgjl74"))

(define rust-xmlwriter-0.1.0
  (crate-source "xmlwriter" "0.1.0"
                "1fg0ldmkgiis6hnxpi1c9gy7v23y0lpi824bp8yp12fi3r82lypc"))

(define rust-y4m-0.8.0
  (crate-source "y4m" "0.8.0"
                "0j24y2zf60lpxwd7kyg737hqfyqx16y32s0fjyi6fax6w4hlnnks"))

(define rust-yazi-0.2.1
  (crate-source "yazi" "0.2.1"
                "1dgv0dd0329dcbs57z2wj03daz8y1axgprw3pf5yf5jsbcjkh5z0"))

(define rust-yeslogic-fontconfig-sys-6.0.1
  ;; TODO REVIEW: Check bundled sources.
  (crate-source "yeslogic-fontconfig-sys" "6.0.1"
                "0xjgmw2nh3hr6wh72s9ss41njqrkgk4p25if27zjk6ibj6zqm2qx"))

(define rust-yoke-0.8.3
  (crate-source "yoke" "0.8.3"
                "1xgyj6c2lxj2bp891ynmhws87c6z7yyv2li1v0ss9di40hxf57vh"))

(define rust-yoke-derive-0.8.4
  (crate-source "yoke-derive" "0.8.4"
                "0wbdvvdv9birwxrr9ynxj0k7as0f0ci7ihhck34yi09nvgibv3pc"))

(define rust-zbus-5.19.0
  (crate-source "zbus" "5.19.0"
                "01sram5sgwsg3x8mghx77cjbsfa2c10mar7fnzj23d2w0xybxd2x"))

(define rust-zbus-lockstep-0.5.2
  (crate-source "zbus-lockstep" "0.5.2"
                "0qsqsk67c2vpg26rp0x0ya0cv92fs11r92kjg1sln23s442xx639"))

(define rust-zbus-lockstep-macros-0.5.2
  (crate-source "zbus-lockstep-macros" "0.5.2"
                "1853gk2fymvr2yaird9jpvz4mdp6ms8zmy6dr19payrsgwv0bnhh"))

(define rust-zbus-macros-5.19.0
  (crate-source "zbus_macros" "5.19.0"
                "0h4gr26kyhdyn503rgg8h44sjxm8d6n8qbzpd0cdzrmd15fn7419"))

(define rust-zbus-names-4.3.5
  (crate-source "zbus_names" "4.3.5"
                "1pc8w0m4g8k6f13c2by67fvnc06xib84gw58ivhmjymd9sz14al1"))

(define rust-zbus-xml-5.2.1
  (crate-source "zbus_xml" "5.2.1"
                "0ak849z0h42zrfvgmddsbim1abiq8vjp9n6w2s90mjh13816qn6i"))

(define rust-zcheapstr-1.1.0
  (crate-source "zcheapstr" "1.1.0"
                "0wwlv70bi2rydvvzfq249q6i51mjx85c4m2wxcx1hra5c18yrbyi"))

(define rust-zed-font-kit-0.14.1-zed
  (crate-source "zed-font-kit" "0.14.1-zed"
                "1xdzz6a37y87n4ihnyai94n089j4qf2zkqvjvbnm5y1n1x2qx2d3"))

(define rust-zed-scap-0.0.8-zed
  (crate-source "zed-scap" "0.0.8-zed"
                "1j4ad4zqd360l5r1n43vll57lfih548w31q2l0ya8cxf0pbkicxn"))

(define rust-zed-xim-0.4.0-zed
  (crate-source "zed-xim" "0.4.0-zed"
                "0hl62iwc5pnm5px4r1ygl830wpk61gf4vnakpbck9flf27nlc2qc"))

(define rust-zeno-0.3.3
  (crate-source "zeno" "0.3.3"
                "0915lg3b1qiixizic9kwj2bw42x35baxqvl9dn0m2plkj91drwvd"))

(define rust-zerocopy-0.8.63
  (crate-source "zerocopy" "0.8.63"
                "1n1fm40mq4adw83hvn56j6rhnph0lldccx11jq01l6863f7izzp5"))

(define rust-zerocopy-derive-0.8.63
  (crate-source "zerocopy-derive" "0.8.63"
                "0zqc4g3yf378dkbsr68h1jjx3n0d4k4zvnxf83bv8gr9hfnd6fl6"))

(define rust-zerofrom-0.1.8
  (crate-source "zerofrom" "0.1.8"
                "0wjjdj7gdmd0iq91gzkxl7dlv0nhkk80l4bmdpzh3a1yh48mmh0f"))

(define rust-zerofrom-derive-0.1.8
  (crate-source "zerofrom-derive" "0.1.8"
                "0jhdy4p9c6ja3dynsdck14g2iilq8ai5ch6nsi455x67ys1lcnzp"))

(define rust-zeroize-1.9.1
  (crate-source "zeroize" "1.9.1"
                "0yb8iykihpl3hfw5c4silw2lklpfxajkaa9yj1qw6jsy5hwq8c71"))

(define rust-zeroize-derive-1.5.0
  (crate-source "zeroize_derive" "1.5.0"
                "0a7kq8srk81pn23xqn7c9jw1jpnfy41ffn802x1zrqqgpdf6al1w"))

(define rust-zerotrie-0.2.5
  (crate-source "zerotrie" "0.2.5"
                "0gss16krjzk22m57dz5hkdjg99ibj6pa41qr68na7w1jpp1nk8jf"))

(define rust-zerovec-0.11.8
  (crate-source "zerovec" "0.11.8"
                "1n3xlvyba8riys9s8awy4xp533phqycr78nbsmvdkh86g3hn815v"))

(define rust-zerovec-derive-0.11.6
  (crate-source "zerovec-derive" "0.11.6"
                "1ni5j8v99x3fcf3l8kp64b7aq4vf8y22jshfq74xs9mxkp1nzprl"))

(define rust-zlib-rs-0.6.8
  (crate-source "zlib-rs" "0.6.8"
                "04j158293bx73kv5pj1i89ai411q7fxc9zwk3wkpqgb9gj7fas5j"))

(define rust-zmij-1.0.23
  (crate-source "zmij" "1.0.23"
                "06zwri21nnrl34rwinmvbciap8yk1mrl8qfg9pff7lgspc56sri9"))

(define rust-zune-core-0.5.3
  (crate-source "zune-core" "0.5.3"
                "12v5zdwcmjwzlfz61ajchzdaab75cxasqnmwf2hq929n8vypfqym"))

(define rust-zune-inflate-0.2.54
  (crate-source "zune-inflate" "0.2.54"
                "00kg24jh3zqa3i6rg6yksnb71bch9yi1casqydl00s7nw8pk7avk"))

(define rust-zune-jpeg-0.5.15
  (crate-source "zune-jpeg" "0.5.15"
                "15kjpn6pywxlwb8w5irfd68x31wi3mb4y1da8bqh7havh5drvg17"))

(define rust-zvariant-5.15.1
  (crate-source "zvariant" "5.15.1"
                "1dzvl7la92pc8qyaw9pgfpxgqhy6rn285yscnsn03dm4srn6vgw0"))

(define rust-zvariant-derive-5.15.1
  (crate-source "zvariant_derive" "5.15.1"
                "0va8dm4k7rk2iar573lkzfap8g2v2dinw4zcxasm9jx1dd2p49pg"))

(define rust-zvariant-utils-4.2.0
  (crate-source "zvariant_utils" "4.2.0"
                "18q80094ci64myzvcp0g2l3c6mnx7b3hsii8lfabc853c51jkl5s"))

;;; Every entry of Dlea's Cargo.lock except the gpui-pre-* git sources.

(define dlea-cargo-inputs
  (list
        rust-accesskit-0.24.1
        rust-accesskit-atspi-common-0.19.1
        rust-accesskit-consumer-0.38.0
        rust-accesskit-unix-0.22.1
        rust-addr2line-0.25.1
        rust-adler2-2.0.1
        rust-aes-0.8.4
        rust-ahash-0.8.12
        rust-aho-corasick-1.1.5
        rust-aligned-0.4.3
        rust-aligned-vec-0.6.4
        rust-allocator-api2-0.2.21
        rust-android-system-properties-0.1.6
        rust-anyhow-1.0.104
        rust-arbitrary-1.5.0
        rust-arg-enum-proc-macro-0.3.4
        rust-arrayref-0.3.9
        rust-arrayvec-0.7.8
        rust-as-raw-xcb-connection-1.0.1
        rust-as-slice-0.2.1
        rust-ash-0.38.0+1.3.281
        rust-ashpd-0.13.13
        rust-async-broadcast-0.7.2
        rust-async-channel-2.5.0
        rust-async-executor-1.14.0
        rust-async-fs-2.2.0
        rust-async-io-2.6.0
        rust-async-lock-3.4.2
        rust-async-net-2.0.0
        rust-async-process-2.5.0
        rust-async-recursion-1.2.0
        rust-async-signal-0.2.14
        rust-async-task-4.7.1
        rust-async-trait-0.1.92
        rust-atomic-0.5.3
        rust-atomic-waker-1.1.2
        rust-atspi-0.29.0
        rust-atspi-common-0.13.0
        rust-atspi-proxies-0.13.0
        rust-autocfg-1.5.1
        rust-av-scenechange-0.14.1
        rust-av1-grain-0.2.5
        rust-avif-serialize-0.8.9
        rust-backtrace-0.3.76
        rust-base64-0.23.1
        rust-bit-field-0.10.3
        rust-bit-set-0.11.1
        rust-bit-set-0.9.1
        rust-bit-vec-0.10.1
        rust-bit-vec-0.9.1
        rust-bitflags-1.3.2
        rust-bitflags-2.13.2
        rust-bitstream-io-4.10.0
        rust-block-0.1.6
        rust-block-buffer-0.10.4
        rust-block-padding-0.3.3
        rust-block2-0.6.2
        rust-blocking-1.7.0
        rust-borsh-1.8.1
        rust-borsh-derive-1.8.1
        rust-built-0.8.1
        rust-bumpalo-3.20.3
        rust-bytemuck-1.25.2
        rust-bytemuck-derive-1.12.1
        rust-byteorder-1.5.0
        rust-byteorder-lite-0.1.0
        rust-bytes-1.12.1
        rust-calloop-0.14.5
        rust-calloop-wayland-source-0.4.1
        rust-cbc-0.1.2
        rust-cc-1.8.0
        rust-cfg-aliases-0.2.2
        rust-cfg-if-1.0.5
        rust-chacha20-0.10.2
        rust-chrono-0.4.45
        rust-cipher-0.4.4
        rust-cocoa-0.25.0
        rust-cocoa-foundation-0.1.2
        rust-codespan-reporting-0.13.1
        rust-color-quant-1.1.0
        rust-concurrent-queue-2.5.0
        rust-const-random-0.1.18
        rust-const-random-macro-0.1.16
        rust-convert-case-0.10.0
        rust-convert-case-0.11.0
        rust-core-detect-1.0.0
        rust-core-foundation-0.10.1
        rust-core-foundation-0.9.4
        rust-core-foundation-sys-0.8.7
        rust-core-graphics-0.23.2
        rust-core-graphics-0.24.0
        rust-core-graphics-helmer-fork-0.24.0
        rust-core-graphics-types-0.1.3
        rust-core-graphics-types-0.2.0
        rust-core-maths-0.1.1
        rust-core-text-21.0.0
        rust-cosmic-text-0.19.0
        rust-cpufeatures-0.2.17
        rust-cpufeatures-0.3.1
        rust-crc32fast-1.5.2
        rust-crossbeam-deque-0.8.8
        rust-crossbeam-epoch-0.9.21
        rust-crossbeam-queue-0.3.14
        rust-crossbeam-utils-0.8.23
        rust-crunchy-0.2.4
        rust-crypto-common-0.1.7
        rust-ctor-1.0.13
        rust-data-url-0.3.2
        rust-deranged-0.5.9
        rust-derive-more-2.1.1
        rust-derive-more-impl-2.1.1
        rust-digest-0.10.7
        rust-dirs-5.0.1
        rust-dirs-sys-0.4.1
        rust-dispatch-0.2.0
        rust-dispatch2-0.3.1
        rust-displaydoc-0.2.7
        rust-dlib-0.5.3
        rust-document-features-0.2.12
        rust-downcast-rs-1.2.1
        rust-dwrote-0.11.5
        rust-dyn-clone-1.0.20
        rust-either-1.19.0
        rust-embed-resource-3.0.12
        rust-encoding-rs-0.8.42
        rust-endi-1.1.1
        rust-enumflags2-0.7.12
        rust-enumflags2-derive-0.7.12
        rust-enumn-0.1.14
        rust-equator-0.4.2
        rust-equator-macro-0.4.2
        rust-equivalent-1.0.3
        rust-errno-0.3.14
        rust-etagere-0.2.15
        rust-euclid-0.22.14
        rust-event-listener-5.4.2
        rust-event-listener-strategy-0.5.4
        rust-exr-1.74.2
        rust-fastrand-2.5.0
        rust-fax-0.2.7
        rust-fdeflate-0.3.7
        rust-filedescriptor-0.8.3
        rust-find-msvc-tools-0.1.14
        rust-fixedbitset-0.5.7
        rust-flate2-1.1.10
        rust-float-cmp-0.9.0
        rust-float-next-after-1.0.0
        rust-float-ord-0.3.2
        rust-flume-0.12.0
        rust-fnv-1.0.7
        rust-foldhash-0.1.5
        rust-foldhash-0.2.0
        rust-font-types-0.11.3
        rust-font-types-0.12.7
        rust-fontconfig-parser-0.5.8
        rust-fontdb-0.23.0
        rust-fontdb-0.24.0
        rust-foreign-types-0.5.0
        rust-foreign-types-macros-0.2.4
        rust-foreign-types-shared-0.3.1
        rust-form-urlencoded-1.2.2
        rust-freetype-sys-0.20.1
        rust-futures-0.3.34
        rust-futures-channel-0.3.34
        rust-futures-concurrency-7.7.1
        rust-futures-core-0.3.34
        rust-futures-executor-0.3.34
        rust-futures-io-0.3.34
        rust-futures-lite-2.6.1
        rust-futures-macro-0.3.34
        rust-futures-sink-0.3.34
        rust-futures-task-0.3.34
        rust-futures-util-0.3.34
        rust-generic-array-0.14.7
        rust-gethostname-1.1.0
        rust-getrandom-0.2.17
        rust-getrandom-0.3.4
        rust-getrandom-0.4.3
        rust-gif-0.14.2
        rust-gimli-0.32.3
        rust-gl-generator-0.14.0
        rust-glow-0.17.0
        rust-glutin-wgl-sys-0.6.1
        rust-gpu-allocator-0.28.0
        rust-gpu-descriptor-0.3.2
        rust-gpu-descriptor-types-0.2.0
        rust-half-2.7.1
        rust-harfrust-0.12.0
        rust-harfrust-0.5.2
        rust-hash32-0.3.1
        rust-hashbrown-0.14.5
        rust-hashbrown-0.15.5
        rust-hashbrown-0.16.1
        rust-hashbrown-0.17.1
        rust-heapless-0.9.3
        rust-heck-0.5.0
        rust-hermit-abi-0.5.3
        rust-hex-0.4.3
        rust-hexf-parse-0.2.1
        rust-hkdf-0.12.4
        rust-hmac-0.12.1
        rust-http-1.5.0
        rust-http-body-1.1.0
        rust-iana-time-zone-0.1.65
        rust-iana-time-zone-haiku-0.1.2
        rust-icu-collections-2.3.0
        rust-icu-locale-core-2.3.0
        rust-icu-normalizer-2.3.0
        rust-icu-normalizer-data-2.3.0
        rust-icu-properties-2.3.0
        rust-icu-properties-data-2.3.0
        rust-icu-provider-2.3.1
        rust-idna-1.1.0
        rust-idna-adapter-1.2.2
        rust-image-0.25.10
        rust-image-webp-0.2.4
        rust-imagesize-0.15.0
        rust-imgref-1.12.3
        rust-indexmap-2.14.2
        rust-inout-0.1.4
        rust-interpolate-name-0.2.4
        rust-inventory-0.3.25
        rust-is-docker-0.2.0
        rust-is-wsl-0.4.0
        rust-itertools-0.14.0
        rust-itoa-1.0.18
        rust-jni-sys-0.3.1
        rust-jni-sys-0.4.1
        rust-jni-sys-macros-0.4.1
        rust-jobserver-0.1.35
        rust-js-sys-0.3.106
        rust-khronos-api-3.1.0
        rust-khronos-egl-6.0.0
        rust-kurbo-0.13.1
        rust-lazy-static-1.5.1
        rust-lebe-0.5.3
        rust-libc-0.2.191
        rust-libfuzzer-sys-0.4.13
        rust-libloading-0.8.9
        rust-libm-0.2.16
        rust-libredox-0.1.25
        rust-linebender-resource-handle-0.1.1
        rust-link-section-0.19.3
        rust-linktime-proc-macro-0.2.3
        rust-linux-raw-sys-0.12.1
        rust-litemap-0.8.3
        rust-litrs-1.0.1
        rust-lock-api-0.4.14
        rust-log-0.4.34
        rust-loop9-0.1.5
        rust-lyon-1.0.19
        rust-lyon-algorithms-1.0.21
        rust-lyon-geom-1.0.19
        rust-lyon-path-1.0.19
        rust-lyon-tessellation-1.0.22
        rust-mac-notification-sys-0.6.15
        rust-malloc-buf-0.0.6
        rust-maybe-rayon-0.1.1
        rust-md-5-0.10.6
        rust-memchr-2.8.3
        rust-memmap2-0.9.11
        rust-memoffset-0.9.1
        rust-miniz-oxide-0.8.9
        rust-miniz-oxide-0.9.1
        rust-moxcms-0.8.1
        rust-multiversion-no-op-1.0.0
        rust-naga-29.0.4
        rust-ndk-sys-0.6.0+11769913
        rust-new-debug-unreachable-1.0.6
        rust-no-std-io2-0.9.4
        rust-nom-8.0.0
        rust-noop-proc-macro-0.3.0
        rust-notify-rust-4.18.2
        rust-ntapi-0.4.3
        rust-num-0.4.3
        rust-num-bigint-0.4.8
        rust-num-bigint-dig-0.9.1
        rust-num-complex-0.4.6
        rust-num-conv-0.2.2
        rust-num-cpus-1.17.0
        rust-num-derive-0.4.2
        rust-num-integer-0.1.47
        rust-num-iter-0.1.46
        rust-num-rational-0.4.2
        rust-num-traits-0.2.19
        rust-objc-0.2.7
        rust-objc-exception-0.1.2
        rust-objc-foundation-0.1.1
        rust-objc-id-0.1.1
        rust-objc2-0.6.5
        rust-objc2-core-foundation-0.3.2
        rust-objc2-core-video-0.3.2
        rust-objc2-encode-4.1.0
        rust-objc2-foundation-0.3.2
        rust-objc2-metal-0.3.2
        rust-objc2-quartz-core-0.3.2
        rust-object-0.37.3
        rust-omi-1.0.0
        rust-once-cell-1.21.4
        rust-oo7-0.6.0
        rust-open-5.4.4
        rust-option-ext-0.2.0
        rust-ordered-float-5.5.0
        rust-ordered-stream-0.2.0
        rust-parking-2.2.1
        rust-parking-lot-0.12.5
        rust-parking-lot-core-0.9.12
        rust-paste-1.0.15
        rust-pastey-0.1.1
        rust-pathfinder-geometry-0.5.1
        rust-pathfinder-simd-0.5.6
        rust-pbkdf2-0.12.2
        rust-percent-encoding-2.3.2
        rust-phf-0.13.1
        rust-phf-generator-0.13.1
        rust-phf-macros-0.13.1
        rust-phf-shared-0.13.1
        rust-pico-args-0.5.0
        rust-pin-project-1.1.13
        rust-pin-project-internal-1.1.13
        rust-pin-project-lite-0.2.17
        rust-piper-0.2.5
        rust-pkg-config-0.3.34
        rust-png-0.18.1
        rust-polling-3.11.0
        rust-pollster-0.2.5
        rust-pollster-0.4.0
        rust-polycool-0.4.0
        rust-portable-atomic-1.15.0
        rust-portable-atomic-util-0.2.8
        rust-postage-0.5.0
        rust-potential-utf-0.1.6
        rust-powerfmt-0.2.1
        rust-ppv-lite86-0.2.21
        rust-presser-0.3.1
        rust-proc-macro-crate-3.5.0
        rust-proc-macro2-1.0.107
        rust-profiling-1.0.18
        rust-profiling-procmacros-1.0.18
        rust-proptest-1.12.0
        rust-proptest-macro-0.6.0
        rust-pulp-0.22.3
        rust-pulp-wasm-simd-flag-0.1.1
        rust-pxfm-0.1.30
        rust-qoi-0.4.1
        rust-quick-error-1.2.3
        rust-quick-error-2.0.1
        rust-quick-xml-0.41.0
        rust-quote-1.0.47
        rust-r-efi-5.3.0
        rust-r-efi-6.0.0
        rust-rand-0.10.3
        rust-rand-0.8.8
        rust-rand-0.9.5
        rust-rand-chacha-0.3.1
        rust-rand-chacha-0.9.0
        rust-rand-core-0.10.1
        rust-rand-core-0.6.4
        rust-rand-core-0.9.5
        rust-rand-xorshift-0.5.0
        rust-range-alloc-0.1.5
        rust-rangemap-1.8.0
        rust-rav1e-0.8.1
        rust-ravif-0.13.0
        rust-raw-cpuid-11.6.0
        rust-raw-window-handle-0.6.2
        rust-raw-window-metal-1.1.0
        rust-rayon-1.12.0
        rust-rayon-core-1.13.0
        rust-read-fonts-0.37.0
        rust-read-fonts-0.41.0
        rust-reborrow-0.5.5
        rust-redox-syscall-0.5.18
        rust-redox-users-0.4.6
        rust-ref-cast-1.0.27
        rust-ref-cast-impl-1.0.27
        rust-regex-1.13.1
        rust-regex-automata-0.4.18
        rust-regex-syntax-0.8.11
        rust-renderdoc-sys-1.1.0
        rust-resvg-0.48.1
        rust-rgb-0.8.53
        rust-roxmltree-0.20.0
        rust-roxmltree-0.21.1
        rust-rustc-demangle-0.1.28
        rust-rustc-hash-1.1.0
        rust-rustc-hash-2.1.3
        rust-rustc-version-0.4.1
        rust-rustix-1.1.5
        rust-rustversion-1.0.23
        rust-rusty-fork-0.3.1
        rust-ryu-1.0.23
        rust-same-file-1.0.6
        rust-schemars-1.2.3
        rust-schemars-derive-1.2.3
        rust-scoped-tls-1.0.1
        rust-scopeguard-1.2.0
        rust-screencapturekit-0.2.8
        rust-screencapturekit-sys-0.2.8
        rust-seahash-4.1.0
        rust-self-cell-1.3.0
        rust-semver-1.0.28
        rust-serde-1.0.229
        rust-serde-bytes-0.11.19
        rust-serde-core-1.0.229
        rust-serde-derive-1.0.229
        rust-serde-derive-internals-0.30.0
        rust-serde-json-1.0.154
        rust-serde-repr-0.1.21
        rust-serde-spanned-1.1.2
        rust-serde-urlencoded-0.7.1
        rust-sha1-smol-1.0.1
        rust-sha2-0.10.9
        rust-shlex-2.0.1
        rust-signal-hook-registry-1.4.8
        rust-simd-adler32-0.3.10
        rust-simd-helpers-0.1.0
        rust-simdutf8-0.1.5
        rust-simplecss-0.2.2
        rust-siphasher-1.0.4
        rust-skrifa-0.40.0
        rust-skrifa-0.44.0
        rust-slab-0.4.12
        rust-slotmap-1.1.1
        rust-smallvec-1.16.3
        rust-smol-2.0.2
        rust-smol-str-0.3.6
        rust-spin-0.10.1
        rust-spin-0.9.9
        rust-spirv-0.4.0+sdk-1.4.341.0
        rust-stable-deref-trait-1.2.1
        rust-static-assertions-1.1.0
        rust-strict-num-0.1.1
        rust-strum-0.28.0
        rust-strum-macros-0.28.0
        rust-subtle-2.6.1
        rust-svg-fmt-0.4.5
        rust-svgtypes-0.16.1
        rust-swash-0.2.10
        rust-syn-2.0.119
        rust-syn-3.0.9
        rust-synstructure-0.14.0
        rust-sys-locale-0.3.2
        rust-sysinfo-0.31.4
        rust-taffy-0.13.0
        rust-tao-core-video-sys-0.2.0
        rust-tauri-winrt-notification-0.8.1
        rust-tempfile-3.27.0
        rust-termcolor-1.4.1
        rust-thiserror-1.0.69
        rust-thiserror-2.0.21
        rust-thiserror-impl-1.0.69
        rust-thiserror-impl-2.0.21
        rust-tiff-0.11.3
        rust-time-0.3.55
        rust-time-core-0.1.9
        rust-tiny-keccak-2.0.2
        rust-tiny-skia-0.12.0
        rust-tiny-skia-path-0.12.0
        rust-tinystr-0.8.4
        rust-tinyvec-1.13.3
        rust-tokio-1.53.3
        rust-toml-1.1.8+spec-1.1.0
        rust-toml-datetime-1.1.2+spec-1.1.0
        rust-toml-edit-0.25.17+spec-1.1.0
        rust-toml-parser-1.1.5+spec-1.1.0
        rust-toml-writer-1.1.3+spec-1.1.0
        rust-tracing-0.1.44
        rust-tracing-attributes-0.1.31
        rust-tracing-core-0.1.36
        rust-ttf-parser-0.25.1
        rust-typenum-1.20.1
        rust-uds-windows-1.2.1
        rust-unarray-0.1.4
        rust-unicode-bidi-0.3.18
        rust-unicode-ident-1.0.27
        rust-unicode-linebreak-0.1.5
        rust-unicode-normalization-0.1.25
        rust-unicode-script-0.5.8
        rust-unicode-segmentation-1.13.3
        rust-unicode-vo-0.1.0
        rust-unicode-width-0.2.2
        rust-url-2.5.8
        rust-usvg-0.48.1
        rust-utf8-iter-1.0.4
        rust-uuid-1.28.0
        rust-v-frame-0.3.9
        rust-version-check-0.9.5
        rust-vswhom-0.1.0
        rust-vswhom-sys-0.1.3
        rust-wait-timeout-0.2.1
        rust-waker-fn-1.2.0
        rust-walkdir-2.5.0
        rust-wasi-0.11.1+wasi-snapshot-preview1
        rust-wasip2-1.0.4+wasi-0.2.12
        rust-wasm-bindgen-0.2.129
        rust-wasm-bindgen-futures-0.4.79
        rust-wasm-bindgen-macro-0.2.129
        rust-wasm-bindgen-macro-support-0.2.129
        rust-wasm-bindgen-shared-0.2.129
        rust-wayland-backend-0.3.17
        rust-wayland-client-0.31.15
        rust-wayland-cursor-0.31.14
        rust-wayland-protocols-0.32.13
        rust-wayland-protocols-plasma-0.3.12
        rust-wayland-protocols-wlr-0.3.12
        rust-wayland-scanner-0.31.11
        rust-wayland-sys-0.31.11
        rust-web-sys-0.3.106
        rust-web-time-1.1.0
        rust-weezl-0.1.12
        rust-wgpu-29.0.4
        rust-wgpu-core-29.0.4
        rust-wgpu-core-deps-apple-29.0.4
        rust-wgpu-core-deps-emscripten-29.0.4
        rust-wgpu-core-deps-wasm-29.0.4
        rust-wgpu-core-deps-windows-linux-android-29.0.4
        rust-wgpu-hal-29.0.4
        rust-wgpu-naga-bridge-29.0.4
        rust-wgpu-types-29.0.4
        rust-which-8.0.6
        rust-winapi-0.3.9
        rust-winapi-i686-pc-windows-gnu-0.4.0
        rust-winapi-util-0.1.11
        rust-winapi-x86-64-pc-windows-gnu-0.4.0
        rust-windows-0.57.0
        rust-windows-0.61.3
        rust-windows-0.62.2
        rust-windows-aarch64-gnullvm-0.48.5
        rust-windows-aarch64-gnullvm-0.52.6
        rust-windows-aarch64-msvc-0.48.5
        rust-windows-aarch64-msvc-0.52.6
        rust-windows-capture-1.5.0
        rust-windows-collections-0.2.0
        rust-windows-collections-0.3.2
        rust-windows-core-0.57.0
        rust-windows-core-0.61.2
        rust-windows-core-0.62.2
        rust-windows-future-0.2.1
        rust-windows-future-0.3.2
        rust-windows-i686-gnu-0.48.5
        rust-windows-i686-gnu-0.52.6
        rust-windows-i686-gnullvm-0.52.6
        rust-windows-i686-msvc-0.48.5
        rust-windows-i686-msvc-0.52.6
        rust-windows-implement-0.57.0
        rust-windows-implement-0.60.2
        rust-windows-interface-0.57.0
        rust-windows-interface-0.59.3
        rust-windows-link-0.1.3
        rust-windows-link-0.2.1
        rust-windows-numerics-0.2.0
        rust-windows-numerics-0.3.1
        rust-windows-result-0.1.2
        rust-windows-result-0.3.4
        rust-windows-result-0.4.1
        rust-windows-strings-0.4.2
        rust-windows-strings-0.5.1
        rust-windows-sys-0.48.0
        rust-windows-sys-0.61.2
        rust-windows-targets-0.48.5
        rust-windows-targets-0.52.6
        rust-windows-threading-0.1.0
        rust-windows-threading-0.2.1
        rust-windows-version-0.1.7
        rust-windows-x86-64-gnu-0.48.5
        rust-windows-x86-64-gnu-0.52.6
        rust-windows-x86-64-gnullvm-0.48.5
        rust-windows-x86-64-gnullvm-0.52.6
        rust-windows-x86-64-msvc-0.48.5
        rust-windows-x86-64-msvc-0.52.6
        rust-winnow-1.0.4
        rust-winreg-0.56.0
        rust-wio-0.2.2
        rust-wit-bindgen-0.57.1
        rust-writeable-0.6.4
        rust-x11-2.21.0
        rust-x11rb-0.13.2
        rust-x11rb-protocol-0.13.2
        rust-xcb-1.7.1
        rust-xcursor-0.3.11
        rust-xim-ctext-0.3.0
        rust-xim-parser-0.2.2
        rust-xkbcommon-0.8.0
        rust-xkeysym-0.2.1
        rust-xml-rs-0.8.29
        rust-xmlwriter-0.1.0
        rust-y4m-0.8.0
        rust-yazi-0.2.1
        rust-yeslogic-fontconfig-sys-6.0.1
        rust-yoke-0.8.3
        rust-yoke-derive-0.8.4
        rust-zbus-5.19.0
        rust-zbus-lockstep-0.5.2
        rust-zbus-lockstep-macros-0.5.2
        rust-zbus-macros-5.19.0
        rust-zbus-names-4.3.5
        rust-zbus-xml-5.2.1
        rust-zcheapstr-1.1.0
        rust-zed-font-kit-0.14.1-zed
        rust-zed-scap-0.0.8-zed
        rust-zed-xim-0.4.0-zed
        rust-zeno-0.3.3
        rust-zerocopy-0.8.63
        rust-zerocopy-derive-0.8.63
        rust-zerofrom-0.1.8
        rust-zerofrom-derive-0.1.8
        rust-zeroize-1.9.1
        rust-zeroize-derive-1.5.0
        rust-zerotrie-0.2.5
        rust-zerovec-0.11.8
        rust-zerovec-derive-0.11.6
        rust-zlib-rs-0.6.8
        rust-zmij-1.0.23
        rust-zune-core-0.5.3
        rust-zune-inflate-0.2.54
        rust-zune-jpeg-0.5.15
        rust-zvariant-5.15.1
        rust-zvariant-derive-5.15.1
        rust-zvariant-utils-4.2.0
))
