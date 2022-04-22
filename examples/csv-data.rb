#!/usr/bin/env ruby

# Build some example CSV file using ruby. First you need to install the single
# dependency `$ gem install faker`, then pipe the output into a file using
# `$ ruby csv-data.rb > 50_000-cov-test.csv`.
#
# Opening the file works with any interruption. You can also search in such
# a large file without any problems. You can jump to the end of the file `G`
# or to the beginning `gg` seamless.
#
# In this scenario we have received a CSV file - probably via email :facepalm:
# - and we need to feed it to some application. Unfortunately the software does
# only recognize US-format birthdates but the dates in the CSV files are in
# DE-format. As we need to run such a CSV file only once, we can use Vim to
# correct the date quickly.
#
# Given
#   Karl,Price,02.06.1964,positive
#   Adan,Vandervort,03.08.1967,negative
# Result
#   Karl,Price,1964-06-02,positive
#   Adan,Vandervort,1967-08-03,negative
#
# A possible macro to record would be:
#   `3f,i--<ESC>F.dbf-p2F.dbf,PF,lxx0j`
# or
#   `3f,db<ESC>F,pa-<ESC>ldf.f,PxF.r-0j`
#

require 'faker'

def record
  [
    Faker::Name.first_name,
    Faker::Name.last_name,
    Faker::Date.birthday.strftime('%d.%m.%Y'),
    ['positive', 'negative'].sample
  ]
end

ENV.fetch('COUNT', 50_000).times { puts record.join(',') }
