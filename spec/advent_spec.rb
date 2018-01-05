RSpec.describe Advent do
  context "day 1" do
    let(:input) { 3294199471327195994824832197564859876682638188889768298894243832665654681412886862234525991553276578641265589959178414218389329361496673991614673626344552179413995562266818138372393213966143124914469397692587251112663217862879233226763533911128893354536353213847122251463857894159819828724827969576432191847787772732881266875469721189331882228146576832921314638221317393256471998598117289632684663355273845983933845721713497811766995367795857965222183668765517454263354111134841334631345111596131682726196574763165187889337599583345634413436165539744188866156771585647718555182529936669683581662398618765391487164715724849894563314426959348119286955144439452731762666568741612153254469131724137699832984728937865956711925592628456617133695259554548719328229938621332325125972547181236812263887375866231118312954369432937359357266467383318326239572877314765121844831126178173988799765218913178825966268816476559792947359956859989228917136267178571776316345292573489873792149646548747995389669692188457724414468727192819919448275922166321158141365237545222633688372891451842434458527698774342111482498999383831492577615154591278719656798277377363284379468757998373193231795767644654155432692988651312845433511879457921638934877557575241394363721667237778962455961493559848522582413748218971212486373232795878362964873855994697149692824917183375545192119453587398199912564474614219929345185468661129966379693813498542474732198176496694746111576925715493967296487258237854152382365579876894391815759815373319159213475555251488754279888245492373595471189191353244684697662848376529881512529221627313527441221459672786923145165989611223372241149929436247374818467481641931872972582295425936998535194423916544367799522276914445231582272368388831834437562752119325286474352863554693373718848649568451797751926315617575295381964426843625282819524747119726872193569785611959896776143539915299968276374712996485367853494734376257511273443736433464496287219615697341973131715166768916149828396454638596713572963686159214116763 }

    context "part 1" do
      it "does something useful" do
        expect(Advent.sum_sequence(123)).to eq(0)
      end
    end

    context "part 2" do
      it "test input" do
        expect(Advent.sum_even(1212)).to eq(6) # the list contains 4 items, and all four digits match the digit 2 items ahead.
        expect(Advent.sum_even(1221)).to eq(0) # because every comparison is between a 1 and a 2.
        expect(Advent.sum_even(123425)).to eq(4) # because both 2s match each other, but no other digit has a match.
        expect(Advent.sum_even(123123)).to eq(12)
        expect(Advent.sum_even(12131415)).to eq(4)
      end

      it "real input" do
        expect(Advent.sum_even(input)).to eq(1132)
      end
    end
  end

  context "day 2" do
    let(:input) do
      [
        [6046,6349,208,276,4643,1085,1539,4986,7006,5374,252,4751,226,6757,7495,2923],
        [1432,1538,1761,1658,104,826,806,109,939,886,1497,280,1412,127,1651,156],
        [244,1048,133,232,226,1072,883,1045,1130,252,1038,1022,471,70,1222,957],
        [87,172,93,73,67,192,249,239,155,23,189,106,55,174,181,116],
        [5871,204,6466,6437,5716,232,1513,7079,6140,268,350,6264,6420,3904,272,5565],
        [1093,838,90,1447,1224,744,1551,59,328,1575,1544,1360,71,1583,75,370],
        [213,166,7601,6261,247,210,4809,6201,6690,6816,7776,2522,5618,580,2236,3598],
        [92,168,96,132,196,157,116,94,253,128,60,167,192,156,76,148],
        [187,111,141,143,45,132,140,402,134,227,342,276,449,148,170,348],
        [1894,1298,1531,1354,1801,974,85,93,1712,130,1705,110,314,107,449,350],
        [1662,1529,784,1704,1187,83,422,146,147,1869,1941,110,525,1293,158,1752],
        [162,1135,3278,1149,3546,3686,182,149,119,1755,3656,2126,244,3347,157,865],
        [2049,6396,4111,6702,251,669,1491,245,210,4314,6265,694,5131,228,6195,6090],
        [458,448,324,235,69,79,94,78,515,68,380,64,440,508,503,452],
        [198,216,5700,4212,2370,143,5140,190,4934,539,5054,3707,6121,5211,549,2790],
        [3021,3407,218,1043,449,214,1594,3244,3097,286,114,223,1214,3102,257,3345],
      ]
    end

    context "part 1" do
      it "check sum" do
        test_input = [
          [5,1,9,5],
          [7,5,3],
          [2,4,6,8],
        ]
        expect(Advent.check_sum(test_input)).to eq(18)
      end

      it "bigger numbers" do
        test_input = [
          [100,50],
          [66,6,600],
          [1234,234],
        ]
        expect(Advent.check_sum(test_input)).to eq(1644)
      end

      it "real input" do
        expect(Advent.check_sum(input)).to eq(50376)
      end
    end

    context "part 2" do
      it "evenly divisible" do
        test_input = [
          [5,9,2,8],
          [9,4,7,3],
          [3,8,6,5],
        ]
        expect(Advent.evenly_divisible(test_input)).to eq(9)
      end

      it "real input" do
        expect(Advent.evenly_divisible(input)).to eq(267)
      end
    end
  end

  context "day 3" do
    let(:input) { 361527 }

    context "part 1" do
      it "only with 12" do
        expect(Advent.spiral_memory(1)).to eq(0)
      end

      it "test data" do
        expect(Advent.spiral_memory(1)).to eq(0)
        expect(Advent.spiral_memory(12)).to eq(3)
        expect(Advent.spiral_memory(23)).to eq(2)
        expect(Advent.spiral_memory(1024)).to eq(31) # (16,15)
      end

      it "real input" do
        expect(Advent.spiral_memory(input)).to eq(326)
      end
    end

    context "part 2" do
      it "test data" do
        expect(Advent.adjacent_squares(1)).to eq(1)
      end

      it "test data" do
        expect(Advent.spiral_memory(1)).to eq(1)
        expect(Advent.spiral_memory(2)).to eq(1)
        expect(Advent.spiral_memory(11)).to eq(54)
        # expect(Advent.spiral_memory(1024)).to eq(31) # (16,15)
      end
    end

  end

  context "day 4" do
    let(:input) do
%w{
kvvfl\ kvvfl\ olud\ wjqsqa\ olud\ frc
slhm\ rdfm\ yxb\ rsobyt\ rdfm
pib\ wzfr\ xyoakcu\ zoapeze\ rtdxt\ rikc\ jyeps\ wdyo\ hawr\ xyoakcu\ hawr
ismtq\ qwoi\ kzt\ ktgzoc\ gnxblp\ dzfayil\ ftfx\ asscba\ ionxi\ dzfayil\ qwoi
dzuhys\ kfekxe\ nvdhdtj\ hzusdy\ xzhehgc\ dhtvdnj\ oxwlvef
gxg\ qahl\ aaipx\ tkmckn\ hcsuhy\ jsudcmy\ kcefhpn\ kiasaj\ tkmckn
roan\ kqnztj\ edc\ zpjwb
yzc\ roc\ qrygby\ rsvts\ nyijgwr\ xnpqz
jqgj\ hhgtw\ tmychia\ whkm\ vvxoq\ tfbzpe\ ska\ ldjmvmo
nyeeg\ omn\ geyen\ ngyee\ rcjt\ rjuxh
qpq\ udci\ tnp\ fdfk\ kffd\ eyzvmg\ ufppf\ wfuodj\ toamfn\ tkze\ jzsb
rrcgxyp\ rbufd\ tfjmok\ vpyhej\ hcnz\ ftkojm
jnmomfc\ jnmomfc\ bkluz\ izn\ ovvm\ flsch\ bkluz
odisl\ hzwv\ hiasrhi\ hez\ ihihsra\ qpbmi\ ltwjj\ iknkwxf\ nbdtq\ gbo
gjtszl\ gjtszl\ fruo\ fruo
rdapv\ gaik\ cqboix\ sxnizhh\ uxmpali\ jdd\ usqnz\ advrp\ dze
flooz\ flooz\ qad\ tcrq\ yze\ bnoijff\ qpqu\ vup\ hyagwll
lnazok\ dze\ foi\ tqwjsk\ hpx\ qcql\ euzpj\ mwfrk
ilb\ fmviby\ ivybmf\ gtx\ xtg
rpauuu\ timere\ gyg\ wcolt\ ireetm\ safi
croe\ szwmq\ bbhd\ lciird\ vhcci\ pdax
hnc\ ykswt\ qqqmei\ goe\ bri\ wmyai\ hnc\ qpgqc\ pberqf\ bzs
hsnrb\ wdvh\ iezzrq\ iezzrq\ rdbmpta\ iezzrq\ kemnptg\ alkjnp\ wymmz
ngw\ don\ ddvyds\ nlhkoa\ aaf\ gptumum\ ugtpmmu
vmccke\ qbpag\ kvf\ kvf\ tgrfghb\ kvf\ bhpd\ sglgx
obomgk\ bkcgo\ yso\ ttft\ vbw\ ckl\ wjgk
fli\ qvw\ zhin\ dfpgfjb\ udsin\ nihz\ ovr\ tiewo
tgmzmph\ hauzieo\ jmg\ tdbtl\ lvfr\ qpaayq\ qapaqy\ ausioeu\ jun\ piygx
jkp\ guqrnx\ asdqmxf\ vmfvtqb\ tloqgyo\ ioix\ gajowri\ tmek\ ilc\ puhipb
uycn\ zxqm\ znft\ ayal\ znacus\ kvcyd\ ekv\ qqfpnh
fqghur\ xtbtdd\ ztjrylr\ bpuikb\ ziyk
rvakn\ uqbl\ ozitpdh\ uqbl\ dsej\ xehj
laxp\ haz\ jyd\ xnkrb\ ijldth\ woy\ xapl\ iqgg\ alpx\ gnupa\ ukptmmh
dyiy\ dyiy\ ihb\ qcyxr
wbwkd\ hdwu\ zvgkn\ hdwu\ wjc\ sakwhn\ zxujdo\ npllzp\ uyr\ uyr
fxczpmn\ cininu\ akcxs\ ggslxr\ riyxe\ ojisxe
ppbch\ sampq\ dnct\ afikor\ dnct\ edsqy\ pnzyzmc\ afikor
jnvygtn\ hijqjxl\ vsd\ jnvygtn\ nqcqv\ zns\ odq\ gkboxrv\ kolnq\ wrvd
mroq\ mroq\ flsbu\ flsbu
fyshor\ xvpaunj\ qmktlo\ xoce\ wkiyfu\ ukcl\ srndc\ ugwylwm\ ozcwdw\ mtqcste\ kpokr
cfh\ cxjvx\ cfh\ cfh\ uewshh
bpspbap\ bpspbap\ fquj\ mxmn\ bwls\ iirhvuk\ dmpkyt\ exrn\ mxmn
tvyvzk\ ezszod\ ntxr\ xtnr\ och
knfxhy\ kbnyl\ knfxhy\ xhkssx\ lxru\ uprh\ nkxpbx\ oodolxr\ tpvyf
nblmysu\ iwoffs\ upgof\ tyagwf\ aan\ vovji\ ajk\ ywzq\ oyfi\ sfulz
aushzkm\ lcaeki\ mkuzsah\ ynxvte\ rsntd\ refk\ pcm
mgguob\ gobmug\ dzenpty\ gmogbu
yvq\ eepof\ rgnree\ nerger\ fpb\ stfrln\ ernger
hrgkbl\ mzwvswk\ rsrsbk\ ieru\ holco\ pajvvn\ ztgsr\ qkyp\ fyeg\ owpcmoj
fowda\ gmsqdca\ yugj\ mcrroxv\ mqcbojd\ fjnqfji\ qdfsc\ jqs
qnc\ rvjfz\ vvxk\ sjd\ xrma\ ucdjvq\ sbw\ zydyt\ dfzww
ocajazv\ cozaajv\ tqunkla\ udwf\ ecnnmbz\ lsakqg\ bki\ njnda\ zsdu\ ccfqw\ rxpc
qqm\ qdfya\ qxyx\ qmq\ qfday\ uqnfttt
rnbirb\ iapor\ qet\ iapor\ hxkhz\ dfvzig\ pedl\ ybyb
mkgamxg\ xkniv\ meb\ hbzmxjn\ dhbj\ zhbxjmn\ hdjb
ilteux\ pyutyfx\ mau\ lrr\ bacak
sjjonmn\ dbbbgs\ crxyuu\ jztstgd\ ezb\ uiabyaa
tra\ fle\ ufzlvf\ nnaw\ kec\ hiwnnlj\ tei\ wld\ iyt\ syk\ hjdczb
qmd\ jtlud\ dgh\ dbanock\ fzp\ dsjgqru\ wwvo\ jwvxwgv\ xlemfij\ jcacd
rpkx\ oxesil\ snazcgx\ fly\ miiyc\ ikmtmp\ oefyyn\ egbw
ypfpeu\ wldnyd\ acchppb\ yqwcaw\ wldnyd\ turbz\ megci\ nbgxq\ xkc\ ypfpeu
iqqv\ iqqv\ neui\ iqqv
ypsxm\ icqyup\ zyetrwq\ nbisrv
viommi\ toszx\ dpueq\ eyy\ cunjou\ ffcjc\ jaeez\ djefra\ pxvkj\ liudlig\ yye
fhnacbg\ jghchh\ ghjhhc\ iue\ hwqmo
vbjw\ lpn\ cizba\ ltnsfpz\ tzoweml\ irewlc\ uzckhpd\ mszal\ obd
yeos\ utxkft\ hflxkfe\ fxczge\ qpgigkc\ ksgr\ vuumql\ vhlvv
xzmkv\ xzmkv\ krecdi\ klpem\ jsbu\ nwcmik\ emfzxf\ cjmpgnj
vtkjo\ pmiv\ zou\ gxo\ qdiyxsf\ hwyinjk\ jhkgf\ rjq
dyuoc\ ywiyvch\ irfgl\ ywiyvch\ fxb\ fxb
tuz\ onhr\ syu\ rqya\ abkaf\ bcfx\ mbknex\ juwoor\ zmksl
oheg\ spjorx\ ksdy\ vwtq\ fxz\ phvtazk\ tcze\ lrxg
hew\ lbup\ botaj\ ltr\ jpd
dxgc\ tzinkej\ gnz\ hxvvub\ adsqmc\ dxgc\ asgpp\ rqbdcra\ goy\ pmamdua\ bhiacva
xqv\ ygb\ kihxqz\ vyv\ pjcny\ vmyvsdv\ cgsi\ nfyx
tqga\ ssshrw\ ndq\ qlbvwh\ huyd\ pxbgj\ qbxk\ dkkbf\ jxy\ chsobw\ pph
hxl\ iwph\ iwph\ xnr\ otifm\ ljhre
zlgvpd\ kapxpoc\ dve\ rklk\ ogh\ hgnp\ rbrmc\ zzkz\ hhmcx\ aklmo
sar\ gfor\ nkf\ hek\ nkf\ aql\ shc\ aql
dtcrw\ kfjzcjx\ qyhi\ bldson\ whwdayo\ mqtgt\ xhqzp\ ttqmg
omspdml\ isze\ jdl\ nvwo\ qrkm\ wztfg\ ssfgyh\ dryj\ jhp\ unsmty
jxt\ cszylng\ ifht\ ixtuna\ azoi\ xutqlv\ jtx\ tjx
usgm\ azuayp\ fgkby\ ezpyq\ jqwl\ ezofj
tnhvil\ nrvg\ moyrpqs\ sldx\ qymoff\ megflxh\ pyhqwms\ xmdw
zomy\ zcquwnv\ lzx\ bvcna\ yods\ mjp\ dgsez
blklyf\ xokd\ gpit\ tiysj\ yrwfhm\ tofx
dtig\ vhdp\ omuj\ vhpd
fogwxim\ qvdwig\ emdiv\ jvhl\ euwbzkg\ xvxb\ hwmqo\ ujdmlp\ epmykj
sjxll\ sjxll\ pedvgb\ sjxll
drvay\ gtzhgtx\ yrt\ okz\ nqf
haxfazn\ pvkovwb\ pgu\ tgshw\ mxcjf\ pbe\ nwoymzc\ mxcjf\ pbe\ hydwy\ jradcr
prjsloa\ ahylvj\ okbsj\ qbdcdjt\ pmfo\ pagyoeg\ vkmhjzt\ khzmjvt\ opfm\ xfrji\ gyjqyel
lzypt\ jdbtrad\ ogr\ jdbtrad\ heink
rcoucuq\ gdxewa\ rcoucuq\ whlw\ zhhm\ rcoucuq\ azaqohe\ mzyli\ rdvaf
yuag\ ebcf\ yuag\ nsotg\ qqzuxr\ jfmao\ vyucw\ wmoye
qwvk\ xemm\ hgqrr\ wyxkpp\ tojndm\ xlvzypw\ jus\ bgnu\ bgnu\ nklfwhs
daqi\ knenmku\ ccm\ xkiuy\ vkexsbc\ kvvdagx\ umopitw\ yaocnx\ yoakqql\ mllmsp
mrxgl\ gywit\ mfopia\ ncnsvw\ vdxek\ axuiot\ rsejua\ nei\ prndudz\ mnu
egqn\ gaa\ qgen\ urs\ mix\ zbn\ rhn
ewharq\ aihy\ udkdaob\ kgrdd\ kgrdd\ kugbjtj\ fcef\ llqb\ pduxaq\ wcexmm
dwtiw\ nelq\ hppad\ algxgf\ gcc\ upou\ akm\ efnb\ mxmhrud
yxqaa\ ups\ okbhgt\ iet\ qns\ tqn\ rnjqxgp
npmhdm\ cgds\ ldexvr\ typi\ jyivoqk\ zkgq\ vfyxu\ xgfo
dkwnmr\ umm\ dkwnmr\ okpjw\ wqx\ jpztebl\ eqsib\ dkwnmr
dxbild\ wpbup\ evscivq\ dxbild\ dxbild\ geqp\ ojfbpl\ jshvqej
cxdntxs\ csfocjd\ pyy\ tuhws\ teb\ boyloz\ xfw\ scxh\ pxhonky
lteucke\ xrgwy\ hszgzu\ hnyrcvb
pfgsgwg\ dxzh\ fworek\ qbstod
usemcrf\ psczxu\ gcjtr\ brls
hjol\ efxczux\ bqdn\ gvrnpey\ yyoqse\ gbam\ ndzyj\ lbwb\ bhzn\ unsezg
bapw\ xifz\ blupk\ qqdk\ bofvqpp\ wnbuwyt\ rnwocu\ lzwgtt\ zucag\ pov
xkre\ lqvd\ juf\ lqvd\ xio\ xyg\ xyg
tzdao\ ztheib\ aymcf\ aorg\ iyawrch\ hetcxa\ iyawrch\ czdymc\ ccv
ucgl\ azlppu\ jvxqlj\ pest
dvwlw\ fuuy\ mnhmm\ okrp\ ualnqlm\ uyuznba\ fzyejk\ yaq\ crl\ ctprp
odfq\ knox\ mkbcku\ pxucmuf\ lpjpol\ phl
ixongh\ hfs\ ruorbd\ auy\ qyssl\ kykwcix\ aytsm\ rlj\ aytsm\ duq\ segpqhk
izufsk\ wedpzh\ podjkor\ eamo\ vqvev\ ifnz\ podjkor\ xrnuqe
twyfps\ bmdbgtu\ qye\ qkwjms
wlav\ htym\ vhsnu\ cocphsj\ mdsuq\ vhsnu\ jflgmrp
opajag\ itwjhfu\ purnnvk\ opajag
hpkopqp\ vnj\ aialpt\ lzrkzfs\ nwucez\ nwuezc
mcx\ hzcjxq\ zbxr\ dsx\ tpknx\ fva
rlvgm\ xrejsvn\ ghawxb\ efyos\ xty\ wdzdgh\ olahbtn\ rga\ efyos\ vhtm\ nsr
cni\ mbab\ qtgeiow\ ulttn\ rckc\ kmiaju\ jvbq\ emyvpew\ cdlxldn\ ulttn\ brhkprx
eykpffp\ rapik\ qki\ fhjgdyu\ tome\ ehjuy\ bibjk\ htxd\ vexvag
wrk\ dpxt\ gwkuiov\ gbkif\ ike\ gbkif\ pcd\ wpj\ toywyf\ qzsa\ aol
yqwzh\ uujn\ ujun\ ujnu
srs\ ralwxrz\ yxvvmgp\ sjhbhk\ waasid\ cqtxoxf\ whcladv\ jkmaq\ khjbsh\ dlavcwh
mdvsjh\ xaj\ etvxlsy\ fxgiy\ rgjesel\ rlegesj\ ptriz\ ebdyhkp\ kugxm\ dxv\ egljser
lhehwrs\ mqevb\ ygmv\ gri\ izop\ qgb\ ivm
loqqam\ alojlwg\ hgen\ hbyw\ qlwpun\ loqqam\ worgnwk\ kope
phozre\ todsknr\ todsknr\ ibj\ mvllsar
wuripy\ ruwlfbh\ wukbkey\ qhq\ iishw\ tvtvci\ xawvxc\ vxacwx\ hsiwi\ ogq
xryq\ vxwupqa\ zhqex\ aquxpwv\ bnvxrba\ dtbxki
yvvwh\ zvsm\ vqskhp\ vqskhp\ ggqqlw\ bpn\ wbuv
kqz\ tdy\ goqwge\ ygn\ jgd
szjjhdk\ zkpoo\ nxexz\ ebicc
wzuemcj\ oyd\ qupulju\ iaakzmt\ vzkvz
nppahov\ umm\ wpzev\ wxkgfxd\ owgekp\ bhhb\ bbhh\ dgviiw\ kdfgxwx\ wryb
bnc\ rhes\ lmbuhhy\ kwbefga\ bnc\ rtxnvz\ bnc
ani\ mggxf\ mcoixh\ zdd\ nai\ hbhzl\ mes\ bdpqr
mjn\ uinoty\ jjegvze\ bjgqg\ yhqsxbt\ coj\ obylb\ hddude\ xqi\ rhfbhha\ alood
cbjzj\ drmihy\ tfkrhsd\ nuhav\ hihzx\ bvblqpl\ tdd\ szmp\ gjgfv\ box
uumhdxd\ cmwgyf\ vepr\ rwqdkj\ exwk
hwvr\ ydvw\ bqefu\ kghes\ gvbhp\ awms\ iqsqes\ khgse
mrey\ jqfw\ fwvzhps\ komj\ dayvs\ fbui\ zmtd\ cofn\ mrey
dsjds\ fdpx\ irjj\ usndok\ qcctsvf\ fgk\ wvg\ txwxcl\ dxs\ llp\ zyilwtq
xmkelgk\ fdukc\ cye\ legkxkm\ wwly
enlny\ eynln\ cccku\ brkz\ dpof\ mwfoxcd\ yftmnqh\ wpebvyc
ggdn\ jnysl\ dsacffw\ ukj\ hdae\ cmzxku
uqhm\ gcachmn\ kxndfrl\ htmfis\ jfnajz\ fiqiypr\ kekho\ kekho\ ndcw\ ckrndub\ dejfna
keazuq\ ertql\ rauwl\ keazuq\ obmh\ rauwl\ ksrotm
jppp\ poigqhv\ repfsje\ grjk\ xwkyuh\ pkx\ ayzcj\ hoxzv
yhjw\ pcuyad\ icie\ icie\ icie\ hwcsuy\ wcd\ yihjh\ jnrxs
gaug\ ivvx\ ceb\ xujonak\ hbtfkeb\ ttciml\ cctoz
dggyyi\ dggyyi\ gqlyumf\ yasu\ fwdfa\ cbb\ nncn\ verhq
rhgcw\ gpcyct\ kiuhbg\ kiuhbg\ gpcyct\ jlmleo\ nhumm
wulxxu\ jyjek\ hclcp\ ogob\ viex\ wiqcupq
tthu\ nxgzpid\ kcnj\ mss\ ukapgkp\ nnc\ bxjocv\ qwxs\ oejwsif\ aywqtu\ brahkb
dtde\ bgvb\ smu\ vbbg\ zhlu
lyo\ nwjjmep\ ldbok\ wgxhto\ wwuh\ qfgjknk\ wnsl
lleyr\ onha\ hkwulbm\ jfg
bybjwd\ uoxvbh\ mvj\ iqfpnxs\ bybjwd\ zqtszp\ wvc\ lbazjr\ zkzenja\ cev
rbuyyr\ divtslq\ yuqmyt\ ajyveb\ smxsjb\ nlk\ tzqhq\ ims\ fewg\ wpjhr\ gqh
kpewfd\ beq\ klilis\ klisli\ eeezut
euqh\ hueq\ ldoo\ crqurv\ lvrwh\ tmaewp\ oodl
bqi\ lzrf\ jyhvxfh\ bqi\ jyhvxfh\ nbztd\ lwpdn\ cuzi
srjylou\ phavzjd\ wost\ uxkaq\ byh\ sluryoj
ihrdk\ bcegkpq\ nygrs\ qbcq\ wyjg\ dvzme\ pgzhjl\ vibg\ kvv
ijsx\ iedemek\ ktlz\ gtga\ tbal\ lbki\ gtga
vmiaxn\ kefig\ kefig\ vngxz
vrdmfvi\ qts\ vlvhq\ vlvhq\ dihmq
cfz\ dyrz\ zlw\ qnt\ vok\ fwvahg\ skshbqf\ hbwozdc\ ntana\ jdb\ uflp
rimbj\ bxemw\ sfps\ krtk\ umta\ vnk\ ewmbx\ nrlje\ ymrtqrz\ mxewb\ kjxunbt
egnuti\ ozat\ eltl\ ngueti
qtcwoxq\ rmaf\ qtcwoxq\ qtcwoxq
zws\ gcoa\ pydruw\ qsrk\ lrkybdf\ ugr\ wkrxoj\ nyvf\ vitwn
tmr\ hhd\ dojid\ zwrj\ bhsim\ righ\ keqlep\ flzunou
lwoquvy\ acjowxk\ tqudk\ oenvioh\ nyavyl
rgh\ dfhgyke\ iff\ cpxhuz\ hui\ koe\ iff\ hui\ dmukrei
bjiumig\ lcbmbgh\ vleipx\ sfawua\ rnf
gftfh\ qwb\ tfdroe\ xbno\ qhgofm\ vqfoe\ mux
ljdrr\ gyfggai\ iun\ nju\ xrucbis\ mhrcrh\ fukr\ obvuqc\ whlalfe\ xrucbis\ nju
nxjmjr\ egqwg\ arllu\ xqaahri\ lzc\ ivt\ uhsti
sqiepba\ rcmts\ kvesv\ nvp
tiksw\ tiksw\ rjni\ gbhvzm\ ctbq\ zuqfyvz
ibsnm\ kfka\ aoqigwo\ sqouih\ rxz
jmymq\ lxio\ adtmk\ umyu\ sxvzquq\ bporqnb\ heol\ fow
mepa\ eckq\ rqviawv\ dkqoei\ ifmngpp\ jiava\ rtklseu
yuycd\ jiufjci\ yuycd\ uowg\ yuycd\ udq\ izkicbr\ csxobh
nwu\ tfsjavb\ rruoxbn\ oepcov\ elxf\ rruoxbn\ rruoxbn\ azglwth\ jcjm\ ksqiqpv
dthfwip\ zqnwa\ zqnwa\ zqnwa
gso\ wruece\ ufl\ crgnlxv\ vllsm\ dpyfm\ wpa\ ctxko
wvpze\ seodz\ lpq\ lpq\ pmtp\ wsxs\ ffppx
yfxquj\ phvjn\ rtwieq\ rtwieq\ kgxztyu\ vbjvkc\ prqqd\ lyzmdo\ ojbrt\ ojbrt\ qiqjz
esaezr\ rpggiy\ jey\ kbzrhu\ uthus\ osr\ xxaiijd\ qfxlf\ auhzbx\ gkigoqw
yfhcj\ uvgck\ cds\ gjhhrg\ cmempgj\ yfhcj\ cjb
yxi\ voxvtuw\ unwg\ jqqm
igvjr\ ljz\ rus\ sru\ gbjtjt\ qfeg\ ztu\ zjl
leof\ ocxns\ hbkoysh\ hbkoysh\ leof
hab\ lyxmf\ yhh\ qeks\ fwhfxki\ xmbcak\ okqjii\ nfgzyg\ bhtfgdj\ lpmjn
mgognh\ tad\ herere\ lvwnzx\ ixwqs\ zphmuuc\ etdjz\ kczsf
mtej\ rlolsnn\ zbl\ uykek\ dpkan\ gmz\ etxtgj
mihuieo\ emjgbp\ jgks\ mihuieo\ iexrfw\ mjdnr\ bvp\ mcuzea\ xkbusvi
jvqpj\ bwt\ jvqpj\ bwt\ gxr
qpnd\ fpt\ tpor\ bibbpcg\ hmvguez\ wqc\ afl\ ckviua\ gpi
dntmcg\ jglm\ sxtnu\ sxtnu\ sxtnu
fzkbptw\ cbfwo\ ozvwov\ wbv\ gcdd\ izqo\ ovwzov\ lolewo\ xikqpw
nkxyxzd\ kpn\ datf\ fki\ werq\ mwidqx\ oiibor\ zizcjph
xvgyxym\ zor\ ijoy\ lvwsf\ fjuara\ idvvq\ rreit\ mqyyy\ ctio\ tzwqqhj\ rnpee
maqkfpk\ maqkfpk\ xukg\ sfdmnlg\ xjopvr\ xjopvr\ irf
liujcd\ vnlkouy\ dxkwc\ gto\ vhjvtw
swhqhj\ cas\ aupsd\ swhqhj\ cas\ bvbooii\ jquck\ dtdm
igh\ iqicicf\ ghi\ pcxt\ srcrjx\ gmf\ gyscphv
drplj\ drplj\ wopgpnk\ wytag\ wopgpnk
zexe\ ilcqoh\ qiefb\ txkuv\ lirfzv
ovvpn\ ovvpn\ uqeurqx\ uwzn\ hgmucj\ ovvpn\ sjxulms
rox\ silka\ irhsvym\ kutus\ otasof\ tdneav\ pcagds
mkja\ omu\ tyshbfq\ onp\ trxs\ lxa\ tftbv\ bnpl\ djhnc\ zdqfs\ muo
tjj\ rmmqas\ cbbkxs\ qio\ pikk\ ykyew\ gxlxt\ nhsyl\ ykyew
frcprg\ njrz\ oaxcmhc\ qben\ pedm\ ecvtga\ nzxwpb\ ior\ gaklot\ dpem
zyt\ kncau\ spoe\ qlchg\ sqys\ wkpbng\ yflju\ qlchg\ vkve\ bzadbpa
qtq\ pkaicl\ qtq\ mfkfqvr\ dnleiq\ brrjxsx\ uoyxh\ pkaicl\ yvmlug
firwy\ imtlp\ ywl\ qfa\ dqrbazz\ ztzb\ pcsbwhn\ zesmlag
ivey\ ivey\ mtvc\ mtvc
lhize\ acwf\ moa\ cdeoazd\ voktshy\ qmvqq\ jvmuvk\ ljfmq\ tsanygc
xreiqkc\ aawrovl\ pofcsg\ xreiqkc\ xreiqkc
cjbzvn\ ozds\ iniqu\ sdoz\ gqmki\ bablvll\ krs\ vjzcbn
izsod\ htkeqz\ entxn\ qtns\ prpcwu\ omfnmoy
kwfb\ tctzda\ aztctd\ tadtcz\ gyt\ wunbcub\ ydiwdin\ xxk
epnl\ ijcp\ giq\ ltfk\ zjcabve\ zfksmz\ epnl\ giq\ xxxbsom
ulyukpa\ mdjsbn\ dydko\ uhkdt\ qms\ aaaj\ hustlwu
zlsbu\ ohx\ jcwovf\ egf\ zlvpqgx\ qhejm\ wrywdmw
uhxqrzr\ mmu\ kjxcalj\ unuohiq\ rri\ yzngnb\ ikvlxry\ mfiym\ qbksdx
khqciz\ som\ yklmm\ jceb\ khqciz\ jspy\ jceb
ncwggv\ njvi\ nqox\ krtsn\ lnm
bgtqme\ xaxcoq\ qbtgme\ obqual\ vorfk\ baoqul\ lgrb
jli\ tsbb\ nlxjc\ pkwzmz\ dlxrj\ hmho\ gzguko\ ilj\ iyaasm
wlmw\ grkumg\ dynwtyo\ emxhhqr\ huluk\ slpqu\ uhqcmd\ absmr\ ufirmwr
pbs\ pcammxv\ dplfr\ tzvmav\ nccyy\ blvyq\ ffhnz\ bccutq
hgge\ ghge\ vxmvz\ hqxgjdg\ zab\ guo\ gheg
ylj\ bucoyoq\ udndc\ wpgyrbx\ ueh\ udndc\ gxdsdh\ hdoz\ wwgqlg
cjdeh\ gttyqe\ kdkm\ ltzd\ lfeozse\ quvjq\ mnwhokm\ kdv\ oojxm\ nxt
mfkzus\ knqxt\ saxkqww\ njx\ zumsfk\ sbmcyad\ cpt\ agvbuv
tukn\ vyco\ yobvsn\ bzgnn\ klrnzy\ kea\ thzk\ pxpwq\ ryfff\ nxzm
ylbm\ lxlz\ lybm\ lzxl
wgtxoij\ zad\ slgsi\ cvnxfg\ iomswwl\ vmx
hkm\ yinhnkj\ kmh\ kwkw\ kayknck\ chur\ styjif\ yknakck
rtfwhkq\ rtfwhkq\ zsf\ zsf
sldq\ zlntr\ ueegiw\ kajivqc\ ozcbm\ ceft\ snvugom\ pdyc\ elppeed\ nnqrp\ prwwf
lhk\ xjonc\ muc\ tudag\ tsafx\ mmivb\ dvrjbp\ qgrew
hnzer\ fbgqp\ aazta\ aazta\ lxaz\ lmgv\ aazta
victgxu\ victgxu\ mlpd\ ummrnbx\ cazjgnw\ isxcyp\ efy\ zfa\ cyusj
gyojxo\ onzq\ gyojxo\ uxufp\ awi\ ilhl\ wefwfxr\ gcjlt\ tmliynw\ uxufp\ pdcnxah
wjwachn\ xkuhfbp\ oky\ oky\ ybaeqkr\ rbuix\ yreoaw\ wepmye\ brvon\ aasb
kiidorw\ vxtxiqx\ wtqvbrv\ efdth\ isel\ qbom\ vcssyc\ vxtxiqx\ wtqvbrv\ riafzsw\ mqzsj
eurpjd\ vkhdamt\ tmfx\ czeoot\ hiz\ ykz\ lmixzq\ tfur\ jhzr
ipuftpj\ qbll\ sqkkdw\ fwncmiv\ bri\ oeeh\ lehd\ ioh\ wag
suima\ nanngc\ imrmc\ krq\ atxdo\ woy\ atxdo\ akev\ qlr\ aezco\ qlr
cfc\ efwbzck\ ozkmcxv\ moczkvx\ ccf
bnekky\ iakrk\ sask\ uwgnjp\ iyi\ rynev\ bdnas\ ldh\ kass
sicmw\ vvjbvv\ cap\ nsumc\ xgvrlm\ wsoo\ uoqdu\ psykckm
ugg\ mtr\ wnzhmmh\ tjxc\ ehwnji\ lwhu\ mdsckk\ yvmk\ enubrqo
grb\ oxmxz\ ohu\ ytetedv\ ssx\ apzlppg\ fdkamm\ sxofc\ jdt\ ynmu\ wyejok
umoep\ rbyqm\ eqfk\ twqnog\ cptbbi\ dragna\ ngqs\ ffb\ cexxnc\ rbyqm
utizi\ ormkel\ wvwur\ bdx\ ecelqbv\ xiccama\ aag\ glfvmj
znb\ rsuqoa\ uxo\ svc
obs\ lbifa\ cffi\ catpd
qkxwian\ ajlzjz\ wewduzp\ bbyv\ qmt\ fsr\ qgiu\ epinp\ ghmf
hatg\ bfgmb\ aght\ ghat
kuq\ inp\ dun\ cknbun\ wmwsu\ drlmmg\ kyxc\ bdl
bddybth\ swdbf\ jhi\ fva\ qpobio\ bjwm\ wjaztp\ jywi
mgckz\ vhveu\ zkemhp\ zdf\ xtiqqew\ mlx\ wazgd
umbjq\ pya\ lvvxf\ jeavij\ rhrxvew\ bwjqgpr\ piz
xaycpwo\ vjcuc\ qksc\ yuixhni\ sfbfb\ dydyaq\ gdfvb\ tggg\ xidphvf\ bpjdrl\ goskxym
agxfoip\ gguif\ wvo\ agxfoip\ ntkbaw\ fbyggy\ ooft\ zxih
nzvsu\ ffwq\ uxvfbl\ qrql\ olhmhom\ qhdltg\ ymwz\ krtndtx\ olhmhom\ nfsv\ krtndtx
qdp\ jqk\ ustz\ xjripzv\ mnk\ grnodk\ pjwdsj\ uug\ zqxjqj
mufrcox\ zunisfs\ ocvcge\ acamm\ xua\ vor\ bsde\ kxr\ vor\ kxr\ orccxx
ncycbp\ anvcxay\ bmm\ wndmeaw\ oso\ knmk\ mmb\ wamenwd\ kmkv\ ppdd
motdcn\ xzagzwu\ vuzt\ utffrn\ yuqxzrh\ uvzt\ ujttq
tauoqy\ coiy\ ybesz\ tauoqy\ wpmr\ trquyne\ ahxbj\ jzhems\ dsdy
aczq\ ypw\ pgmzz\ srfn\ quatjgf
cih\ ypapk\ bfxvr\ euvhkk\ gugru\ auhqui
vyf\ pssgfvy\ dnhvbfl\ xpacme\ dnhvbfl\ mzdv\ iynq\ hcqu
lbzvbu\ hhxiq\ hdfyiiz\ iyzihfd\ xhqih\ uzdqyxr
iapbdll\ vdr\ cprmrkk\ vdr\ dfjqse\ mlry\ flpqk\ vdr
grrfkq\ xcpxd\ grrfkq\ dxc\ bjpr\ prvwh\ swoc\ swoc
bopo\ chvwuhf\ qhd\ ieesl\ xey\ ieesl\ fnjcbe
kic\ fyq\ hsucnu\ agwyl\ pzzmd\ hqksh\ psw
mxf\ uau\ iti\ lcoz\ lpg\ zbu\ ocre\ wqlocmh\ mxf\ nidqj\ lcoz
bypmix\ ptzxgmf\ xmtzgpf\ hrvzzq
lbfw\ zwusma\ lbfw\ tuyyy
lrf\ uej\ unswvh\ obgsb\ npbl\ zajr\ kenea\ uej\ qnyjcu\ wzufim\ qpzkgya
qcrxj\ llyu\ kligt\ hlm\ ehwtbx\ dda\ lgsvhdt\ xewfcv\ uikn
nfzjx\ izqdbq\ mfbxs\ imiuc\ yqxb\ xlmvix\ izqdbq\ eflqfq\ wku\ omgtuu\ izqdbq
lasdwg\ hiy\ btzt\ eefd\ eyoep\ icn\ nnmhg\ otml\ rek\ luixac\ nyzgn
vekteds\ utsuxdx\ utsuxdx\ vekteds
feyov\ qrij\ zbebwg\ ijrq\ seplram\ wttkwm\ zewbgb\ kzuhuh
dmkgtv\ wohgqo\ ddtqmv\ zatahx\ mym\ hqowog\ tkmvdg
vhha\ wjrmuyx\ kqh\ vyyrj\ xzchbi\ ejsdq\ orlxg\ vyyrj\ dlrc
yetngqn\ zdtuqox\ hkarjei\ fqpsgh\ eaqwbg\ zsssog\ ghb\ gddqqzr\ hbg
obldb\ zsrhz\ zxp\ uxphnev\ mwnbc\ pfjft\ fms\ xwslk\ vjm\ fxy
nfij\ dbfykv\ ttq\ gyjgac\ igxuyqi\ gtiioqx\ ilhdex\ dbfykv\ uyp\ bdiwya\ gqf
pffzruz\ vogfosh\ dcs\ wje
pohhf\ fhpoh\ oon\ yyz
xxuam\ afwm\ qxl\ lnt\ syyr\ bwxhhf\ sozauq\ shlhfmz\ kwnn\ milav\ ochq
wefcqrt\ gejw\ cwerqtf\ fttf\ gjew
jfsvnmr\ osca\ epwtle\ pgfif\ sxom
exlfzmq\ nakp\ rgdnx\ rrcvth\ vhrrct\ aajjdrt\ ryyg\ dsozd\ jdqlqj\ pakn\ iruv
rmcvo\ txszcs\ xxhyxz\ hbsozk\ wshkocf\ rmcvo\ rcbnt
kitz\ yjgney\ yvkymef\ nauj\ hmllsgl\ kyhm\ kqr\ pzsu\ rcf\ pzsu\ qpte
cdinpx\ bfur\ mkj\ naz\ ihkheyr\ nohhoe
ylris\ xeqcgup\ wap\ bbfih\ tgfoj
ina\ gnlnm\ zyeqhij\ cudfuf\ ipufae\ bvkdzni\ aat\ teqsg\ cudfuf\ bjokrbl\ teqsg
aedx\ edax\ dnfwq\ qndwf
rdngdy\ jde\ wvgkhto\ bdvngf\ mdup\ eskuvg\ ezli\ opibo\ mppoc\ mdup\ zrasc
qcnc\ iaw\ grjfsxe\ gnf\ gnf
zbjm\ snznt\ zelswrk\ gkhlnx\ dqxqn\ qqxnd\ dmro
zisecvx\ ztezof\ uzbq\ otnrtj\ qsjzkwm\ ewvcp\ rlir\ bfghlq\ tgapdr\ qxmr
ipnqj\ opjf\ vabyoe\ wkwnd
wyf\ mfqxnrf\ apm\ snarf\ jqu\ aaghx\ pwecbv\ lvghayg
acncv\ jmmbwlg\ oiphlm\ ifuo\ cvt
pvmb\ egansnd\ zmh\ gcuzzci\ rrxpslv\ ubith
uoleptg\ xbouzn\ xbmg\ cfh\ cpn\ wpqi\ xbouzn\ xtxis\ sxzpns
rilybri\ kurbpq\ vfmjpck\ tjyogho\ hfyxad\ svfofx\ lfbbhxj\ khaerfs\ iqr
seaebgz\ wlmtkre\ qguv\ qguv\ wlmtkre
sgo\ edkxya\ zdqgwtt\ gxu\ nibuu\ rairqoq\ mzxli\ dci\ qsv
tsol\ mdhzqr\ rmaqnru\ ggvcq\ arbwkn\ hlkcnj\ ljkcuof
mmliphp\ ocup\ puoc\ eijjv
gmajqpb\ ijki\ ijki\ kvz
pmqss\ unhlpcj\ dlkll\ nuhlcjp\ expe\ tlurzmv\ nsy\ vlumtzr\ tgseozl
gkvaoni\ hsba\ hsba\ viuedv\ phyoclp\ fdq\ phyoclp\ febld\ nqfs
rxvdtw\ abn\ pntv\ qrqfzz\ slsvv\ abn\ lrxix\ mnu\ npot
ghlfjp\ woy\ xwkbmv\ bkahpkj\ jve\ cncvk\ jvdype\ fwgvoju\ yrkwjp\ gwfvln\ mvkv
kmluh\ mie\ bby\ fwer\ chsinb\ ojglqr\ nqk\ mie
yzmiu\ igkgca\ ybnsqja\ jpfejtp\ yjddy\ xsosxfi\ ingx\ qwuhb\ emrkwpx\ idqjmmm
btrllw\ mphm\ dkvo\ ewdl\ dchcul\ yah\ btrllw\ kmqi\ mtvgk\ wtb
hxsgard\ yuikc\ lykt\ tdee\ adprp\ gpougod\ klnzk\ mzsmlb
hdn\ znblw\ ifoblur\ bwzln\ dbv
smofpbs\ vjuyiro\ llk\ lfzesga\ tybu\ tybu
gffnpug\ xaup\ iqiyz\ fjkpnkz\ drrk\ fwyxw\ lwzfskz\ gslwpmv\ vjxylva\ tbkyo\ nib
evydmb\ nhwuiiu\ fkerq\ nkgbuyy\ uclrs\ ydjgglh\ xhotwbm\ riirgzt
bsub\ eavbt\ uvd\ dpzwyt\ rhn\ khrbptt\ xszckc\ djnfxju\ axofhat\ powmso\ nvdffrv
xtuykl\ fjz\ mbikc\ xpnx\ hmey\ fjz\ fjz
rkls\ nwdcsyx\ rkls\ rkls
tygml\ untequ\ ybdfumz\ nqffbq\ uipc\ sove\ hfnqj
ytecew\ vven\ koqn\ royynd\ qsn\ ksl\ qsn\ sdw
hknlw\ qwho\ whoq\ oqwh
lzmmtqu\ qvhyeo\ cnofuj\ utpwkjz\ gnirz\ yhhu\ aodbnd
zsr\ axw\ kwtzcv\ tydzo\ kwtzcv\ lkxsm
rbjtqe\ nihifd\ gvdxd\ bpxzy\ rxteky\ vgcgllv\ vbbua\ anygiup\ rqo
dpd\ wblfwp\ wblfwp\ wblfwp\ ygahc\ tqjbaq
gsw\ gsw\ pacgj\ xmrcz\ zmxhmch\ xmrcz
pdq\ rhe\ xqmq\ lgpkhg\ fyffrot\ ovnqh\ wle
tbjavke\ ypzzrj\ jizx\ gdxoh\ icjsat\ otfh\ fmygumv
snch\ nxlgjgp\ jeyn\ sxoqfj\ jtage\ jtage\ iuice
rtb\ coefuj\ grwg\ grwg\ rtb\ krhqnma\ vfhgbr
vhegtl\ btorwxg\ szcev\ kbvkx\ itsk\ nlzpbed
hiukrf\ ilzkm\ yllhh\ xsgwkdp\ zyy\ kjbv
rfcg\ tdorci\ zcj\ wzftlv\ rfcg\ rfcg
lgbc\ lzizat\ vsno\ pau\ nvv\ vsno\ bbr\ lzizat\ qhtb\ gwp
sfwnio\ tcugjk\ bsfsz\ ykyfwg\ ibkap\ fsrvy\ mygk\ kzunawx\ zyhyh
mpavlh\ qps\ bylh\ lttjkz\ rqabgk\ vewb\ bwev\ tlzkjt\ gzrbxga\ ktmso\ prpkj
gpf\ ims\ ynh\ ffrs\ vpa\ iemp\ gofh\ cgbauje
secys\ qks\ mcnfhwh\ drog\ kqs\ pajy\ zoltkw\ lfihnb\ myb\ ioxptu
ytq\ nrta\ ouk\ ajqblf\ yuwwcd\ zdy\ blyoxbw\ dakk\ nvgi\ bzrhzaa
nkoych\ sufiia\ xkdvw\ crtldee\ zycl\ qblab\ egqhr\ qblab
nllno\ muxaf\ vds\ qjnitmw\ zkpj\ wskyhft\ kmqct\ xamuzpw\ qcai\ cdjtbt\ kaxv
qzdytpe\ osr\ fuw\ osr\ qzdytpe\ whperd\ rydwdcl\ knoa
zkdznhd\ peh\ duoygr\ zamrgl\ irnvj\ otpe\ pltpq\ jdkecg
byzgw\ rece\ iigdug\ ehif\ tpgje
ccnn\ foqdran\ gbctca\ tefdjxh\ ntcr\ rjciii\ xip\ xlss\ crl\ wvvhzqm\ twyohf
dqyii\ milqqc\ qjgkojp\ qjgkojp\ ryde
tdkyj\ tbrcud\ tsba\ vqtmb\ cjwxnf
hqhmq\ wemvrce\ nagig\ pwnw\ nagig\ epg\ nagig\ vlsi
tqgvw\ luoplw\ hccti\ npjm\ rytdruq\ cylrsun\ rytdruq\ vjsbjl\ rytdruq\ ppti
itgt\ tuwc\ itgt\ rvp\ itgt\ tigns\ eipl\ ksmru
pdw\ wdhtkn\ nbdbpn\ wff\ zhuuipg\ rvemv\ qxr
qgkwdq\ cjilayh\ ymeks\ mrpuzai\ dwgs\ stfstgz\ ucvqhb\ yout\ oiq
vpxik\ ypfr\ qytimvu\ qms\ oxbmw\ ppyfx
fwwidn\ gdhd\ pyuexk\ snsz\ iwndfw
lfcb\ sllxjna\ lfcb\ hpzahfg\ mmvgaa\ svny\ jhuzd
unyg\ gicmzd\ fwc\ spkciy\ toyq\ wjupckd\ vzzx\ iuqgka\ ytqycb\ pxsufj
goj\ tnrcml\ eyizngj\ txa\ xrkiw\ zvu\ igduz
wek\ xrrlkna\ clyof\ rrlnxak
cjm\ rmyuku\ vjom\ gtf
buk\ cfae\ awstd\ dywgqp\ hxo\ wcxvf\ laihqw\ xdqfes\ wdbh\ qceh\ uzlwj
sudguo\ dxwplto\ rlebdh\ bkamu\ dxwplto
crwkyxm\ yuz\ kjtdhom\ crwkyxm
trhc\ sduorxr\ aizfryh\ rsudxor\ gbyc
pczkyl\ bptp\ qnn\ nxmpwsx\ udrg\ hhlb\ rubtrmx\ twzodlp\ xygnht
jmqct\ cden\ yfajtkz\ fevcw\ sxonbxz\ sxonbxz\ qkzkm\ hhngr\ fbv
sdsnm\ mwvicr\ wypfi\ cty\ ndbowr\ woiz\ mrauwzd\ qlno\ mwvicr
vteyo\ fng\ lvr\ lxytn\ txpj\ milg
wjx\ ahtmgo\ cgwcaj\ kaxae\ fhlvlqf
ezj\ eetqhzu\ upwda\ iiefwlk\ vyvby
imalvy\ yeghqe\ jwcu\ mvrod\ cwju
bxnmsa\ yhfu\ npsdar\ tsbri\ hfuy\ sirbt\ oofxmy
fkndt\ elbjtn\ vepqtxt\ elvpf\ fpelv\ bzkgag\ qttexpv\ prblwb
rmq\ iqs\ yvprnyy\ iezqrzm\ wlqsrr
yviovq\ lekxghj\ oey\ qwhzj\ lxknxw\ qiyovv\ ksnt\ jptz
tyrg\ cifxt\ hugqf\ tyrg\ ffuiv\ jmax\ qyw\ fozfosq\ ffuiv
nmg\ rsl\ jpzazd\ qbtlf\ yxqtsj\ czwmdfd\ bamge\ lbjdof\ uqy\ jssc
cbx\ boozjip\ pwgvzlq\ rjz\ kxy\ kxy\ hszacok\ fvsq\ jhnir\ cnsba\ gafz
sbcuxb\ wfur\ nnnfqjj\ fdwg\ huhe\ sbcuxb
icwk\ qelbxs\ uevp\ qped\ zsnhh\ wpuok\ wddxsln\ ftnzupr\ ruxol\ cgxjb\ jbhh
izcp\ htykj\ xxmndoq\ amnspe\ htykj
vverol\ oixwlny\ vqd\ tvfzu\ henc\ gnyrwr
ytxio\ etytsx\ choynep\ zqapo\ hfjit
lkvgr\ oyzfa\ taiqr\ jok\ djatvy\ ckif\ tmdw\ oyzfa\ zroy
jlgpyp\ kkqysg\ oqjki\ hjohoug\ hbhta\ muilz\ zft
sumfyu\ wftcu\ bwwdcy\ lezimwa\ qwvxv\ zwh\ mqyv\ bmfot\ aii\ torcol\ rnt
tpdj\ xrw\ ccsbnh\ fhptv\ fwkxjfm\ dmqaokd\ bjci
zxi\ vmf\ vmf\ dpyg
sfzxysw\ lcms\ bkojtv\ bkojtv
opywo\ qll\ ipkitr\ mtwp\ tudrr\ svhyp\ huz\ bxsdpn\ xomfy
gkod\ luo\ qrosbp\ orbd\ rpsjzyd\ rlh\ gdok\ tze
nusiuq\ nusiuq\ zeys\ ahufexc
veno\ jntg\ avtmtdn\ qojxru\ zegdcql\ odfcetz\ pgehau
uqun\ vigjm\ ykac\ ozlelj\ danmji\ bibugox
rpuozh\ ajwru\ rbvuevv\ uhzsq
iawoe\ tyb\ aewio\ ymf\ byt\ inijv\ ctu\ fcys\ micsgzl\ pbby\ alt
gktyxp\ ris\ mqpfm\ bkqsfl\ nrg\ idbbcxg\ jhcf
qibt\ invvv\ qibt\ luitx\ rnm\ eby\ hrfbmwl\ wnap\ sgkzvb\ qlwc\ hrfbmwl
jwkv\ qecsjbw\ lycgldd\ wjvk\ tjcp\ dycldgl\ pzrvr\ zrlcf\ kji
nzsrmiq\ nmhse\ ilivrk\ kqv
besmyzi\ imkgpt\ iekbjax\ abxeijk\ uvzs\ wwv
jdocl\ uki\ ltswp\ tjkljc\ ymce\ iuepze\ qygqxzs\ tei\ lkry
hhyfy\ gvzd\ mqksxlq\ czn\ afe\ mesnag\ eep\ frwgekg\ mqksxlq\ phpy
ehg\ connnza\ ekt\ ddgokw
mpbsoms\ uzhzl\ xevww\ ztt\ uzhzl
lftybr\ firc\ awsud\ dsxdkk\ ltf\ ipjv\ dtx\ lcymth
vkcpb\ gxtxq\ yioeq\ fexj\ xxgqt
srvca\ fslnnvf\ nfmkpvt\ egw\ wemumq\ jie\ vznf\ dzsjw\ cukf\ kcvyir
yxjkl\ lyjkx\ jyxlk\ kgc\ xtz
tpoe\ xzov\ csp\ leleoqo\ noyre\ tdhf\ cyib\ sjgtdx\ raehdw\ nmcxp
qvt\ uhznqe\ bpvos\ vtq\ ddlebtd\ tqv
xlw\ utsxs\ gpia\ rvlvnts\ elkxr\ dddihy\ tnrslvv\ ibf\ wlx\ bxg
cwqnnrt\ rkkqyf\ dye\ yde\ fzl\ pthanj
boc\ rqjenpp\ xjqte\ jteqx\ pvoofc\ pidqe\ ruoucy\ gvnro\ ognrv
qhalb\ gnazwc\ fhl\ iuti
clnbjfo\ nnfs\ nnfs\ heymvr\ oarew\ oarew\ nxu
lwtrotg\ hiaxwj\ ymzbly\ nvhzjhj\ zlsaheg\ nvhzjhj\ ymzbly
rrvi\ tsjp\ tsjp\ tsjp\ killji
rpx\ hiclj\ cmwq\ ibhj\ nfd
pvwymn\ iebkd\ xmpw\ vuhhkap\ ksw\ zigzy\ mzzyyxy\ rmuh\ iwwhea\ cglfq
rlwelgy\ sffml\ jin\ qsdzro\ xlsty\ mgqzuu\ etxjuo\ emzd\ jgnoyq\ tkjuy\ vfvb
tkctdj\ hhkuc\ viskmy\ obw
zvjkuj\ akeky\ ikj\ jqd\ hfhzbwe\ bkc
btev\ nrdo\ hcyiuph\ stf\ qharfg\ vpmel\ mpfz\ nvs\ ytgbbc
ieepn\ ndueuw\ svmdr\ tcvumw\ mceyrn\ mrjwhyl\ tbdj\ mgrgvz
uxrs\ ckyi\ xpmqm\ czzrkl\ cjp
nlliwd\ wrqkrkz\ yjmng\ nlliwd\ zirde\ hcjjn\ wco\ ysf\ mgl
dxti\ lcahe\ ommare\ izlwf\ ramsfb\ nzgfvo\ ijvm\ fwymrdu\ bndq
isxy\ jpvuzu\ tdduyhw\ dixp\ cfa\ fkzbteg\ ytoi\ kepk\ ysf\ yqcpi
qmeprfj\ soqo\ ncgeor\ cqsuuj\ grzy\ wogxy\ vyblnbg\ slvtry\ vdols\ kka
ltykfp\ gtzl\ olrp\ gxend\ vapee\ deq
emywfbn\ dbfiut\ rkt\ wvwe\ dbfiut\ bwffhea\ yuzcxv\ gogpicp\ wvwe
vqvmrp\ ofbk\ dlfabd\ jwllzxk\ obx\ vqpwjj\ umvng\ tqwis\ fstxy\ fstxy
miha\ zgvyux\ rmraszo\ xwf
kjaagk\ btm\ kjaagk\ wkewjrg\ kjaagk
lbmli\ aizs\ omrdr\ gzktnx\ asiz\ ptanzpa\ xlo\ ljre\ ckyb\ wob
svz\ dlk\ rijagg\ avxmg\ fkzwhk\ uro\ gegm
dzplum\ temdw\ jqnm\ tvxcww\ bmg\ tftttpp\ deuw\ comxey\ xfimzjx\ caluczi\ nqn
uwvhxa\ ztkd\ nlsdyt\ vihl\ julkwwv\ uzch\ dwakhs
wkhuihh\ ycrc\ cxff\ vzcfhpp\ uegfd\ gaok\ kcnvz\ lhzogq\ lwa\ tyrypvu
idp\ zmrrzp\ zmrrzp\ nktp\ xsnx\ rjsxn
eybrnib\ ivgntl\ vaxsbpi\ eybrnib
nzvnq\ xvbfa\ pbhwwh\ ylju\ runvsj\ imlx\ vztesn
nfdohd\ nfdohd\ gtevnky\ pivjyct\ ihvd\ fzcsrq\ lko\ fmqk
kwpkks\ ecikxu\ bcxswlt\ qvrxm\ sbcqmh
kdjrmj\ piuh\ kdjrmj\ vnaf\ gyedkg\ vptxgm\ xezssxx\ zsg\ qjzpo\ zsg
oqo\ sley\ aqx\ qmpqb\ fgmylbj\ egd\ zivj\ kepxizv\ kuakyn\ lunbnd
hmcf\ hmcf\ xlhgc\ hmcf\ cdlm\ buofnx
onjcj\ yluonz\ kzmk\ phqo\ phqo\ phqo
ohaafy\ efl\ bnkkjww\ wwjnyoj\ dxeaig\ ywnjjwo\ slk\ hrbebw\ ohlyju\ elf
msohiqz\ aunk\ njki\ bfktdgi\ htmyrj\ mgx
numlzrl\ rmnlulz\ glb\ ltt\ fhbajz\ gqxpu
gko\ hco\ oai\ ryq\ xwy\ sdqosft\ spjkiu\ cxfhg\ ycwpglh\ noy\ rah
btzpjem\ brpk\ vqr\ atxu\ rhlh\ rqv\ jmg\ fvyus
phmxxgj\ ejx\ xje\ qtk\ hsb\ kqt\ npwj\ gqt
hujyjp\ nwmsd\ ant\ zipuya\ lrkahww\ uwqal\ vzlo\ qmbo\ twkjkse\ ufivi
zfbnyz\ fwvh\ xrnrw\ usn\ zin\ daq\ iwjzj
yykyg\ iwypfy\ hehqnl\ cjvk\ cevdrec
gui\ muuto\ wsta\ glqmx\ gfo\ rdmbv\ mxwz\ gffzt\ eejpw\ gion
lpng\ nduid\ iqbpu\ nduid\ knrqd
xwxn\ oefpckv\ gjaua\ ugaaj\ gjuaa
qxk\ aeql\ trqdmqc\ crzlinj\ crzlinj\ trqdmqc\ rijcne\ ewyf
rfv\ qmbe\ fvr\ bmeq
upqyfw\ lowzq\ wpen\ upqyfw\ gfskbil\ sljuzh\ wpen
bdcara\ qyhx\ rtaez\ qyq\ gbyr
evzls\ qxtxq\ clzd\ svbgqi\ zxlzgss\ vtrre\ fko\ eebo\ qjyl
zaapeo\ kpwhz\ tygknau\ nyd\ pch\ trp\ xqe
ypzcafg\ rnqmbh\ qtteg\ sncu\ ssojhhm\ zonfym\ thir\ xmgheb\ wqj\ gpjg\ ssojhhm
wvcwyn\ xrf\ muozyya\ lasdp\ xpjgu\ kpqv\ zkiihiv\ ifje\ cbdlavg\ xbied\ hfnaa
qqqb\ rettz\ rycukl\ ihpkhh
dnxzxqv\ znb\ znb\ fbxj\ azxtezb\ xvxa
peqkd\ xlzqkov\ esgnw\ ucku\ hrwpfxd\ xtd\ vnig\ vlmfp\ ajte\ qswr\ kqoj
dpwy\ oavzkk\ dwyp\ ehij\ upqxgii\ pydw
amfc\ hfv\ xmqa\ nqvn\ cal\ rqmcq\ oej\ amqx\ cla\ ntxj
hqhhe\ qkbhwli\ wmhlcq\ xaczs\ peywuo
vcr\ xfv\ xfv\ kymo\ qpszwzo\ xfv
nmrbur\ tswo\ xbo\ ljlrzo\ bmhpgc\ pev\ zovkznz\ lok\ wbbhtkk
tojj\ lxqgr\ rhjavrm\ ndsdup\ gdbjwaq\ cqpnl\ wfaxivl\ rfry\ ryfr\ udspnd
beffod\ sknlph\ amb\ feobdf
mldgn\ jxovw\ yuawcvz\ kzgzwht\ rxqhzev\ fsdnvu\ vluuo\ eycoh\ cugf\ qjugo
tlnd\ qcxj\ ker\ fdir\ cgkpo\ nrqhyq\ raef\ uqadf\ iahy\ rxx
mhvisju\ lhmdbs\ tcxied\ xeidtc\ ujry\ cditex\ gvqpqm
cgc\ jazrp\ crgnna\ uvuokl\ uvuokl\ uoiwl\ sknmc\ sknmc
rvbu\ czwpdit\ vmlihg\ spz\ lfaxxev\ zslfuto\ oog\ dvoksub
}
end

    context "part 1" do
      it "test data" do
        expect(Advent.passphrase(["aa bb cc dd ee"])).to eq(1)
        expect(Advent.passphrase(["aa bb cc dd aa"])).to eq(0)
        expect(Advent.passphrase(["aa bb cc dd aaa"])).to eq(1)
      end

      it "real data" do
        expect(Advent.passphrase(input)).to eq(337)
      end
    end

    context "part 2" do
      it "test data" do
        expect(Advent.passphrase_anagram(["abcde fghij"])).to eq(1)
        expect(Advent.passphrase_anagram(["abcde xyz ecdab"])).to eq(0)
        expect(Advent.passphrase_anagram(["a ab abc abd abf abj"])).to eq(1)
        expect(Advent.passphrase_anagram(["iiii oiii ooii oooi oooo"])).to eq(1)
        expect(Advent.passphrase_anagram(["oiii ioii iioi iiio"])).to eq(0)
      end

      it "real data" do
        expect(Advent.passphrase_anagram(input)).to eq(231)
      end
    end
  end

  context "day 5" do
    let(:input) do
%w{
1 0 0 1 0 -3 2 1 -7 -6 -9 1 0 -9 -12 -10 -6 -12 -2 -12 -6 -8 -11 -11 -6 -24 -22 -6 -16 -12 -11 -29 -20 -6 -27 -25 -16 -28 -36 -34 -27 -9 -31 -3 -41 -37 -21 -44 -5 -41 -6 -37 -46 -2 -16 -8 -2 -43 -3 -22 -37 -1 -55 -44 -21 -53 -26 -2 -31 -33 -14 -22 -30 -5 -17 -34 -75 -24 -12 -7 -57 -72 -10 -25 -66 -78 -22 -5 -66 -84 -75 -23 -61 -60 -81 -87 -82 -36 -96 -63 -92 -87 -82 -19 -68 -79 -48 -61 -29 -83 -18 -81 -45 -10 -46 -74 -42 -115 -16 -105 -43 -83 -20 -72 2 -98 -57 -62 -82 0 -127 -40 -37 -43 -74 -65 -47 -53 -19 -27 -39 -118 -69 -85 -111 -140 -15 -99 -57 -20 -46 -25 -140 -21 -48 -86 -68 -123 -119 -142 -45 -39 -110 -49 -86 -89 -87 -1 -127 -66 -44 -133 -12 -5 -88 -68 -27 -75 -127 -149 -152 -93 -108 -118 -23 -130 -68 -23 -8 -174 -168 -43 -67 -143 -167 -6 -152 -5 -57 -105 -22 -141 -2 -169 -88 -191 -123 -21 -18 -58 -182 -62 -114 -17 -16 -102 -37 -127 -114 -55 -87 -40 -216 -101 -1 -117 -148 -75 -158 -18 1 -197 -4 -30 -228 -87 -67 -161 -50 -2 -220 -212 -57 -135 -3 -236 -67 -171 -114 -91 -12 -157 -23 -19 -82 -130 -201 -145 -60 -149 -208 -200 -138 -187 -180 -94 -215 -128 -49 -116 -4 -165 -118 -213 -235 -139 -55 -199 -44 -227 -70 -201 -181 -146 0 -234 -117 -109 -239 -286 -187 -73 -108 -284 -101 -193 -211 -255 -39 -207 -24 -260 -177 0 -267 -278 -88 -258 -130 -140 -213 -118 -167 -312 -172 -43 -183 -208 -25 -90 -139 -146 -105 -153 -141 -258 -155 -178 -303 -171 -297 -236 -51 -176 -20 -120 -230 -218 -154 0 -72 -306 -43 -290 -203 -66 -51 -13 -334 -230 -212 -223 -31 -120 -335 -292 -98 -299 -57 -67 -215 -108 -313 -324 1 -180 -155 -276 -277 -120 -92 -153 -168 -73 -333 -101 -320 -263 -102 -17 -66 -194 -373 -85 -263 2 -319 -77 -8 -329 -247 -218 -307 -169 -284 -2 -309 -275 -282 -3 -191 -297 -302 -100 -105 -356 -60 -189 -191 -133 -368 -107 -51 -346 -403 -52 -129 -327 -289 -24 -341 -111 -237 -46 -13 -308 -110 -365 -351 -236 -341 -42 -97 -19 -131 -213 -116 -151 -431 -390 -77 -116 -305 -263 -282 -229 -238 -386 -107 -134 -25 -247 -431 -90 -299 -338 -94 -204 -61 -30 -46 -184 -95 -185 -289 -311 -63 -267 -294 -296 -141 -456 -400 -129 -422 -152 -131 -252 -422 -110 -215 -134 -425 -35 -356 -104 -446 -395 -351 -135 -353 -410 -114 -61 -234 -261 -121 -296 -450 -116 -197 -343 -145 -127 -157 -372 0 -115 -175 -411 -473 -236 -169 -365 -457 -419 -110 -291 -7 -408 -414 -426 -292 -419 -160 -306 -238 -61 -101 -359 -362 -13 -360 -462 -348 -502 -516 -15 -471 -408 -278 -318 -247 -6 -538 -353 -82 -324 -336 -149 -209 -3 -134 -101 -500 -469 -129 -154 -132 -43 -559 -192 -556 -560 -56 -23 -185 -109 -300 -417 -328 -401 -393 -459 -351 -377 -376 -126 -211 -421 -428 -375 -216 -21 -117 -118 -486 -58 -578 -480 -42 -497 -256 -160 -114 -4 -62 -496 -48 -560 -409 -76 -386 -587 -309 -565 -65 -154 -459 -213 -197 -157 -603 -381 -97 -71 -234 -386 -295 -497 -159 -364 -496 -40 -426 -320 -600 -188 -321 -295 -312 -222 -515 -355 -86 -554 -67 -604 -497 -517 -38 -423 -89 -76 -256 -347 -467 -155 -207 -628 -544 -250 -86 -168 -197 -243 -249 -374 -53 -410 -615 -561 -577 -587 -406 -68 -54 -290 -302 -453 -566 -129 -332 -45 -447 -475 -190 -528 -349 -220 -80 -265 -442 -289 -57 -329 -377 -343 -15 -628 -259 -419 -321 -97 -365 -681 -590 -30 -489 -213 -674 -174 -356 -110 -12 -441 -431 -254 -612 -571 -203 -706 -131 -128 -641 -596 -702 -272 -416 -345 -181 -318 -683 -565 -160 -445 -7 -179 -680 -520 -4 -471 -552 -14 -217 -23 -138 -734 -682 -235 -392 -53 -400 -330 -339 -211 -280 -649 -366 -235 -50 -214 -386 -324 -346 -572 -104 -23 -530 -353 -545 -85 -196 -460 -69 -395 -530 -526 -606 -131 -638 -396 -89 -266 -117 -752 -495 -328 -678 -331 -351 -296 -714 -352 -450 -291 -713 -62 -480 -186 -238 -731 -9 -710 -560 -652 -414 -708 -427 -152 -91 -716 -96 -669 -607 -704 -532 -414 -751 -228 -319 -103 -516 -153 -265 -137 -349 -247 -222 -202 -343 -273 -644 -522 -331 -114 -181 -391 -139 -311 -589 -622 -309 -192 -133 -234 -648 -831 -554 -759 -620 -240 -38 -598 -403 -339 -835 -338 -48 -65 -612 -344 -431 -24 -137 -778 -645 -411 -212 -316 -652 -257 -519 -266 -586 -790 -63 -506 -150 -493 -795 -117 -793 -369 -828 -156 -194 -461 -599 -363 -511 -67 -627 -172 -2 -544 -657 -680 0 -29 -531 -511 -688 -32 -753 -407 -190 -724 -620 -598 -123 -783 -492 -270 -839 -603 -685 -277 -6 -431 -14 -320 -223 -806 -550 -268 -105 -47 -194 -657 -631 -614 -524 -83 -300 -491 -754 -923 -902 -131 -623 -551 -114 -272 -892 -547 -597 -431 -276 -814 -363 -364 -579 -236 -783 -356 -198 -82 -266 -709 -176 -366 -667 -73 -894 -81 -208 -767 -431 -762 -613 -865 -355 -382 -962 -480 -797 -881 -916 -758 -729 -189 -755 -206 -357 -43 -857 -812 -812 -47 -160 -395 -595 -508 -817 -215 -249 -134 -648 -965 -797 -331 -97 -912 -899 -345 -732 -412 -823 -644 -16 -273 -970 -550 -345 -556 -207 -66 -336 -396 -224 -261 -951 -573 -587 -810 -507 -526 -9 -49 -169 -325 -913 -522 -50 -196 -956 -115 -185 -665 -450 -980 -503 -987 -341 -748 -860 -278 -935 -520 -32 -591 -81 -629 -409 -270 -102 -69 -304 -466 -124 -740 -217 -836 -339 -150 -261 -929 -694 -385 -384 -803 -488 -220 -151 -6 -798 -534 -846 -368 -403 -369 -604 -130 -459 -147 -357 -311 -193 -398 -749 -970 -274 -477 -1014 -659 -209 -803 -950 -528 -586 -303 -947 -1028 -698 -81 -682
}
    end

    context "part 1" do
      it "test data" do
        expect(Advent.maze(["0", "3", "0", "1", "-3"])).to eq(5)
      end

      it "real data" do
        expect(Advent.maze(input)).to eq(387096)
      end
    end

    context "part 2" do
      it "test data" do
        expect(Advent.maze_next_part(["0", "3", "0", "1", "-3"])).to eq(10)
      end

      it "real data" do
        expect(Advent.maze_next_part(input)).to eq(387096)
      end
    end
  end
end
