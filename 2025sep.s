sra  t1, a0, 31
xor  a0, a0, t1
sub  a0, a0, t1

ekane thn apoluth timh

###########################
#gia pollaplasiasmo slli.

slli	t0 s0 2  #ousiastika epi 4, afou kanei 2 shift, ara *2 kai *2
ara phgaine sto epomeno stoixeio ousiastika.

##########################
#gia maska: px vazw mia and, h praksh ginetai bitwise
#ara px exw arithmo 0000 0000 0000 01100 1001
#kai arithmo 	    0000 0000 0000 11111 1111
#to and tha vgalei:

# 1010 1100 1111 01100 1001
# 0000 0000 0000 11111 1111
# and:
# 0000 0000 0000 01100 1001

# ousiastika vazw ston deutero asous mono gia ton meros tou arithmou pou thelw na krathsw
# afou mono 1and1=1. Ara px an thelw na krathsw ta 2 ligotero shmantika bytes, bazw ston deutero
#arithmo ola 0, ektos apo ta 2 teleutaia bytes. Ara telika tha ginoun ola 0, ektos apo ta 2
#teleutaia bytes, pou tha meinoun ws exein.

#XOR: pairnw ton antitheto arithmo

