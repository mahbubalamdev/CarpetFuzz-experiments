Command line used to find this crash:

/root/fuzzer/CarpetFuzz/fuzzer_afl/afl-fuzz -i /root/programs/libsixel-git-6a5be/input -o /root/CarpetFuzz-experiments/output/carpetfuzz_dataset/img2sixel_carpetfuzz_random_3 -b 13 -m none -K /root/CarpetFuzz-experiments/configures/carpetfuzz_dataset/argvs/libsixel-git-6a5be/random_stubs_img2sixel_3.txt -- /root/programs/libsixel-git-6a5be/build_carpetfuzz/bin/img2sixel @@ -o /tmp/foo

If you can't reproduce a bug outside of afl-fuzz, be sure to set the same
memory limit. The limit used for this fuzzing session was 0 B.

Need a tool to minimize test cases before investigating the crashes or sending
them to a vendor? Check out the afl-tmin that comes with the fuzzer!

Found any cool bugs in open-source tools using afl-fuzz? If yes, please drop
me a mail at <lcamtuf@coredump.cx> once the issues are fixed - I'd love to
add your finds to the gallery at:

  http://lcamtuf.coredump.cx/afl/

Thanks :-)
