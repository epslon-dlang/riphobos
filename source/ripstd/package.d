/++
Convenience file that allows to import entire Phobos in one import.
+/
module std;

///
@safe unittest
{
    import std;

    int len;
    const r = 6.iota
              .filter!(a => a % 2) // 1 3 5
              .map!(a => a * 2) // 2 6 10
              .tee!(_ => len++)
              .substitute(6, -6) // 2 -6 10
              .sum
              .reverseArgs!format("Sum: %d");

    assert(len == 3);
    assert(r == "Sum: 6");
}

///
@safe unittest
{
    import std;
    assert(10.iota.map!(a => pow(2, a)).sum == 1023);
}

public import
 ripstd.algorithm,
 ripstd.array,
 ripstd.ascii,
 ripstd.base64,
 ripstd.bigint,
 ripstd.bitmanip,
 ripstd.compiler,
 ripstd.complex,
 ripstd.concurrency,
 ripstd.container,
 ripstd.conv,
 ripstd.csv,
 ripstd.datetime,
 ripstd.demangle,
 ripstd.digest,
 ripstd.encoding,
 ripstd.exception,
 ripstd.file,
 ripstd.format,
 ripstd.functional,
 ripstd.getopt,
 ripstd.json,
 ripstd.math,
 ripstd.mathspecial,
 ripstd.meta,
 ripstd.mmfile,
 ripstd.net.curl,
 ripstd.net.isemail,
 ripstd.numeric,
 ripstd.parallelism,
 ripstd.path,
 ripstd.process,
 ripstd.random,
 ripstd.range,
 ripstd.regex,
 ripstd.signals,
 ripstd.socket,
 ripstd.stdint,
 ripstd.stdio,
 ripstd.string,
 ripstd.sumtype,
 ripstd.system,
 ripstd.traits,
 ripstd.typecons,
 ripstd.uni,
 ripstd.uri,
 ripstd.utf,
 ripstd.uuid,
 ripstd.variant,
 ripstd.zip,
 ripstd.zlib;
