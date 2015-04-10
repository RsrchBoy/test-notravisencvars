package Test::NoTravisEncVars;

# ABSTRACT: Make sure "secret" Travis variables are not exposed.

!!42;
__END__

=head1 SYNOPSIS

    # ...

=head1 DESCRIPTION

This distribution currently provides no functionality.

...in here.  Its tests, however, do fail if it's run on Travis and the
decryption keys are available in the environment.

That is, we're a sanity check.  If our tests fail, our secrets may be
breached.  This is really only a concern if we're running third-party code;
e.g. installing CPAN packages and having running their tests.  It's possible
that someone may write a test in such a way as to accidentally -- or
deliberately -- make public the secrets guarding the encrypted data you've
stashed in your project.

=head1 SEE ALSO

http://travis-ci.org

https://github.com/RsrchBoy/travis-p5-cache#readme

=cut
