# ユーザークラス
package User;
use strict;
use warnings;
use Diary;

# User インスタンスを生成します
sub new {
    my ($class, %args) = @_;
    return bless \%args, $class;
}

# 日記を追加します
sub add_diary {
    my ($class, %args) = @_;
    Diary->new(%args);
}

1;