USING: atbash-cipher tools.test ;

! encode
{ "bvh"                                  } [ "yes"                                encode ] unit-test
{ "ml"                                   } [ "no"                                 encode ] unit-test
{ "lnt"                                  } [ "OMG"                                encode ] unit-test
{ "lnt"                                  } [ "O M G"                              encode ] unit-test
{ "nrmwy oldrm tob"                      } [ "mindblowingly"                      encode ] unit-test
{ "gvhgr mt123 gvhgr mt"                 } [ "Testing,1 2 3, testing."            encode ] unit-test
{ "gifgs rhurx grlm"                     } [ "Truth is fiction."                   encode ] unit-test
{ "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt" } [ "The quick brown fox jumps over the lazy dog." encode ] unit-test
{ "09znm aznma"                          } [ "/09:@AMNZ[`amnz{"                   encode ] unit-test

! decode
{ "exercism"                             } [ "vcvix rhn"                           decode ] unit-test
{ "anobstacleisoftenasteppingstone"      } [ "zmlyh gzxov rhlug vmzhg vkkrm thglm v" decode ] unit-test
{ "testing123testing"                    } [ "gvhgr mt123 gvhgr mt"               decode ] unit-test
{ "thequickbrownfoxjumpsoverthelazydog"  } [ "gsvjf rxpyi ldmul cqfnk hlevi gsvoz abwlt" decode ] unit-test
{ "exercism"                             } [ "vc vix    r hn"                      decode ] unit-test
{ "anobstacleisoftenasteppingstone"      } [ "zmlyhgzxovrhlugvmzhgvkkrmthglmv"    decode ] unit-test
