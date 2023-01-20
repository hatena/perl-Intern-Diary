# 日記クラス
package Diary;
use strict;
use warnings;
use Entry;
use Data::Dumper;
use feature qw(state);

state %entries;

# Diary インスタンスを生成します
sub new {
    my ($class, %args) = @_;
    return bless \%args, $class;
}

# 日記名を返却します
sub name {
    my $class = shift;
    return $class->{name};
}

# 日記にエントリーを追加します
sub add_entry {
    my ($class, %args) = @_;
    my $entry = Entry->new(%args);
    stock_entries($class->{name}, $entry);
}

# エントリー配列にエントリー追加します
sub stock_entries {
    my ($diary_name, $entry) = @_;
    push @{$entries{$diary_name}}, $entry;
}

# 最新順のエントリー配列を返却します
sub get_recent_entries {
    my $class = shift;
    my $diary_name = $class->{name};
    my @result_entries = reverse @{$entries{$diary_name}};
    return \@result_entries;
}

1;