package t::Intern::Diary::DBI::Factory;
use strict;
use warnings;
use utf8;

use lib 't/lib';

use parent 'Test::Class';

use Test::More;

use Test::Intern::Diary;

use Intern::Diary::Context;

sub _use : Test(1) {
    use_ok 'Intern::Diary::Context';
}

sub _db_config : Test(3) {
    my $factory = Intern::Diary::Context->new;
    my $db_config = $factory->db_config('intern_diary');
    is $db_config->{user}, 'nobody';
    is $db_config->{password}, 'nobody';
    is $db_config->{dsn}, 'dbi:mysql:dbname=intern_diary_test;host=localhost';
}

sub _dbh : Test(1) {
    my $factory = Intern::Diary::Context->new;
    my $dbh = $factory->dbh;
    ok $dbh;

}

__PACKAGE__->runtests;

1;
