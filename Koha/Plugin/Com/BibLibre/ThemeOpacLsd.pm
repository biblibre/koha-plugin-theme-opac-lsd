package Koha::Plugin::Com::BibLibre::ThemeOpacLsd;

use Modern::Perl;

use base qw(Koha::Plugins::Base);

use C4::Context;

our $VERSION = '1.1';

our $metadata = {
    name   => 'Theme OPAC LSD',
    author => 'BibLibre',
    description => 'An hallucinating theme for OPAC',
    date_authored   => '2021-08-16',
    date_updated    => '2023-10-10',
    minimum_version => '19.11',
    maximum_version => undef,
    version         => $VERSION,
};

sub new {
    my ( $class, $args ) = @_;

    $args->{'metadata'} = $metadata;
    $args->{'metadata'}->{'class'} = $class;

    my $self = $class->SUPER::new($args);

    return $self;
}

# Mandatory even if does nothing
sub install {
    my ( $self, $args ) = @_;
 
    return 1;
}
 
# Mandatory even if does nothing
sub upgrade {
    my ( $self, $args ) = @_;
 
    return 1;
}
 
# Mandatory even if does nothing
sub uninstall {
    my ( $self, $args ) = @_;
 
    return 1;
}

sub opac_head {
    my ( $self ) = @_;

    return q|
<style>
/*
 * LSD OPAC Theme
 */
body {
    background-color: ivory;
}
.breadcrumb {
    background-color: indigo;
}
</style>
|;
}

1;
