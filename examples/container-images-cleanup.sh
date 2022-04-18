# Working with containers I find myself messing up my local storage with
# container images over time. A quick way to cleanup for me is to pipe all
# images and details into a file,
#
#   $ podman images > container-image-cleanup.sh
#
# review it,
#
#   $ vim container-image-cleanup.sh
#
# reduce it to the image names that I want to remove. Go through the file line
# by line, to "highlight" a line mark it in visual mode using `V`, delete a
# marked area with `d` or delete a line in normal mode with `dd`. When done
# we remove it to the image ids using the visual block mode `Ctrl+v`. Note that
# `$` jumps to the end of a line, `G` end of a file.
#
# When finished there is a single column left with the image ids left to
# remove. I select all with `vG` and "join lines" with `J`, add a podman
# command `podman rmi ` in front and run the file.
#
#   $ bash container-image-cleanup.sh
#

REPOSITORY                                     TAG             IMAGE ID      CREATED        SIZE
docker.io/library/golang                       1.18            3abbb425095a  4 weeks ago    987 MB
docker.io/library/nginx                        latest          c919045c4c2b  6 weeks ago    146 MB
<none>                                         <none>          48a41c02928a  14 months ago  247 MB
<none>                                         <none>          4280284b941d  14 months ago  918 MB
<none>                                         <none>          9a633d946413  14 months ago  944 MB
<none>                                         <none>          c5fd4a216d1a  14 months ago  918 MB
<none>                                         <none>          d50db07a56d2  14 months ago  932 MB
<none>                                         <none>          e9c2309c2e12  14 months ago  918 MB
<none>                                         <none>          ce4da25168a2  14 months ago  918 MB
<none>                                         <none>          3dc032e9725a  14 months ago  918 MB
docker.io/library/python                       3               4b9378be0bb9  14 months ago  908 MB
docker.io/library/golang                       1.15            3360fba69704  15 months ago  860 MB
docker.io/library/redis                        latest          621ceef7494a  15 months ago  108 MB
localhost/logger                               latest          0276ad0d8309  15 months ago  99.3 MB
<none>                                         <none>          1e04d466f4f3  15 months ago  99.3 MB
<none>                                         <none>          8a86e2da2a3c  15 months ago  99.3 MB
<none>                                         <none>          b9671d9fcd16  15 months ago  99.3 MB
<none>                                         <none>          5cdd016c1168  15 months ago  99.3 MB
<none>                                         <none>          85e01849dd5c  15 months ago  99.3 MB
<none>                                         <none>          ace908553eee  15 months ago  99.3 MB
<none>                                         <none>          4749c4140260  15 months ago  99.3 MB
<none>                                         <none>          0404bb864b35  15 months ago  126 MB
<none>                                         <none>          9700adf16e05  15 months ago  5.85 MB
<none>                                         <none>          6b605f8f3e87  15 months ago  5.85 MB
<none>                                         <none>          de197018624c  15 months ago  5.85 MB
<none>                                         <none>          9eb2040bde33  15 months ago  5.85 MB
<none>                                         <none>          46a5b95d1c2d  15 months ago  5.85 MB
<none>                                         <none>          0accea32b350  15 months ago  5.85 MB
<none>                                         <none>          d5236dafd1df  15 months ago  369 MB
<none>                                         <none>          fe6de9984b2d  15 months ago  369 MB
<none>                                         <none>          18d9136caa42  15 months ago  369 MB
<none>                                         <none>          45d8bfded63f  15 months ago  295 MB
<none>                                         <none>          5d9af55102eb  15 months ago  149 MB
<none>                                         <none>          14dd7dc1314d  15 months ago  249 MB
<none>                                         <none>          95280ef685f8  15 months ago  249 MB
docker.io/grafana/loki                         latest          67736858e865  15 months ago  58.5 MB
<none>                                         <none>          8e220fdc1902  15 months ago  315 MB
<none>                                         <none>          46e064b5c141  15 months ago  315 MB
<none>                                         <none>          913b7b9f2460  15 months ago  315 MB
<none>                                         <none>          65dad7d71134  15 months ago  295 MB
docker.io/library/ruby                         2.7             7e58098089a4  16 months ago  865 MB
docker.io/timberio/vector                      latest-alpine   de9de5cd11a8  16 months ago  99.4 MB
docker.io/library/alpine                       latest          389fef711851  16 months ago  5.85 MB
docker.io/grafana/grafana                      latest          3c7f99671289  16 months ago  191 MB
docker.io/library/ruby                         3.0.0-preview2  b51526b406bd  16 months ago  873 MB
docker.io/library/debian                       stable          8eba3e46fb73  16 months ago  119 MB
docker.io/library/memcached                    latest          08ea1a3256c4  16 months ago  85.8 MB
docker.io/library/postgres                     latest          f51c55ac75ed  17 months ago  322 MB
registry.fedoraproject.org/f33/fedora-toolbox  latest          3ac100502d21  17 months ago  358 MB
registry.fedoraproject.org/f33/fedora-toolbox  33              92d6fdd7ebda  17 months ago  331 MB
localhost/headless-cli                         latest          54dc87f1e119  18 months ago  1.35 GB
<none>                                         <none>          e4fb43db3a65  18 months ago  1.35 GB
docker.io/library/node                         latest          5377c9a2fb1f  18 months ago  972 MB
localhost/mongdb-charts                        latest          653ed0036dd0  18 months ago  721 MB
docker.io/library/mongo                        latest          923803327a36  19 months ago  497 MB
docker.io/library/ruby                         2.6             3b3341750de7  19 months ago  862 MB
localhost/dmi-tcat                             latest          476577fd6cf2  19 months ago  262 MB
<none>                                         <none>          eabf2a759ae4  19 months ago  262 MB
<none>                                         <none>          bcb7a30f530a  19 months ago  262 MB
<none>                                         <none>          6ed61d6202c8  19 months ago  231 MB
docker.io/library/debian                       9               6d935b41319b  20 months ago  106 MB
docker.io/library/debian                       latest          ee11c54e6bb7  20 months ago  119 MB
quay.io/mongodb/charts                         latest          bfd64537eef0  21 months ago  721 MB
registry.fedoraproject.org/f32/fedora-toolbox  32              7e4d1b69a358  21 months ago  394 MB
k8s.gcr.io/pause                               3.2             80d28bedfe5d  2 years ago    688 kB
docker.io/library/alpine                       3.8             c8bccc0af957  2 years ago    4.67 MB
docker.elastic.co/elasticsearch/elasticsearch  5.6.16          8b4495052160  3 years ago    538 MB
