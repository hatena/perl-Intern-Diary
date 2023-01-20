# エントリークラス
package Entry;
use strict;
use warnings;
use feature qw(state);

# Entry インスタンスを生成します
sub new {
    my ($class, %args) = @_;
    return bless \%args, $class;
}

1;