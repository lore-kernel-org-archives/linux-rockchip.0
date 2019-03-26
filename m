From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [PATCH] arm64: dts: rockchip: decrease rising edge time of UART2
Date: Tue, 26 Mar 2019 14:51:32 +0100
Message-ID: <3054532.smugdETXvr@diego>
References: <20190303122705.27094-1-katsuhiro@katsuster.net>
 <b35a6d3d-d3af-de0b-1dc8-6849d86c7b71@katsuster.net>
 <01af012d-0ef0-b3af-4d14-188ff5c9a7c9@katsuster.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <01af012d-0ef0-b3af-4d14-188ff5c9a7c9-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>, Klaus Goger <klaus.goger-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, linux-arm-kernel-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, Oskari Lemmela <oskari-fV/XPr6JiiHR7s880joybQ@public.gmane.org>
Cc: Viresh Kumar <viresh.kumar-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Linus Walleij <linus.walleij-QSEj5FYQhm4dnm+yROfE0A@public.gmane.org>, Akash Gajjar <Akash_Gajjar-nmGgyN9QBj3QT0dZR+AlfA@public.gmane.org>, Vicente Bergas <vicencb-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Tony McKahan <tonymckahan-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org>, Enric Balletbo i Serra <enric.balletbo-ZGY8ohtN/8qB+jHODAdFcQ@public.gmane.org>, Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org>, Shawn Lin <shawn.lin-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Dienstag, 26. M=E4rz 2019, 14:39:42 CET schrieb Katsuhiro Suzuki:
> Hello Tony, Robin,
> =

> I continue to investigate UART TX rising time problem. Recently, I found
> one of cause of this problem.
> =

> In my environment, this problem occurred on linux-next only. U-Boot does
> not face it. So I compared settings between U-Boot and linux-next. After
> I found GRF_IO_VSEL (address 0xff77e640) register is differ.
> =

> =

> Would you tell me what value is stored into this register?
> =

> =

> My RockPro64, initially 0x00000000 is set but 0x00000003 is set during
> linux boot. UART TX rising time becomes fine if set both bit 1 and bit 3
> or clear both bits.

GRF_IO_VSEL is the voltage-domain selection for different domains,
see the &io_domains{} node in your rockpro64 dts.
The soc needs to know with what voltage some of its inputs are
supplied.

Bits are:
0 - bt656
1 - audio
2 - sdmmc
3 - gpio1833

These bits must correspond of the voltages of their regulators,
0 for 3.3V and 1 for 1.8V.

But the vcc1v8_dvp regulator connected to the bt656 input has
not changed since the initial submission of the devicetree.



> On 2019/03/04 22:59, Katsuhiro Suzuki wrote:
> > Hello Tony, Robin,
> > =

> > On 2019/03/04 5:41, Tony McKahan wrote:
> >> On Sun, Mar 3, 2019 at 2:51 PM Robin Murphy <robin.murphy-5wv7dgnIgG8@public.gmane.org> wro=
te:
> >>>
> >>> On 2019-03-03 6:45 pm, Tony McKahan wrote:
> >>>> Hello Katsushiro,
> >>>>
> >>>> On Sun, Mar 3, 2019 at 12:31 PM Katsuhiro Suzuki
> >>>> <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org> wrote:
> >>>>>
> >>>>> Hello Tony,
> >>>>>
> >>>>> On 2019/03/04 0:13, Tony McKahan wrote:
> >>>>>> On Sun, Mar 3, 2019 at 9:04 AM Katsuhiro Suzuki =

> >>>>>> <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org> wrote:
> >>>>>>>
> >>>>>>> Hello Heiko,
> >>>>>>>
> >>>>>>> Thank you for comments.
> >>>>>>>
> >>>>>>> On 2019/03/03 22:19, Heiko Stuebner wrote:
> >>>>>>>> Hi,
> >>>>>>>>
> >>>>>>>> Am Sonntag, 3. M=E4rz 2019, 13:27:05 CET schrieb Katsuhiro Suzuk=
i:
> >>>>>>>>> This patch increases drive strength of UART2 from 3mA to 12mA f=
or
> >>>>>>>>> getting more faster rising edge.
> >>>>>>>>>
> >>>>>>>>> RockPro64 is using a very high speed rate (1.5Mbps) for UART2. =
In
> >>>>>>>>> this setting, a bit width of UART is about 667ns.
> >>>>>>>>>
> >>>>>>>>> In my environment (RockPro64 UART2 with FTDI FT232RL UART-USB
> >>>>>>>>> converter), falling time of RockPro64 UART2 is 40ns, but riging =

> >>>>>>>>> time
> >>>>>>>>> is over 650ns. So UART receiver will get wrong data, because =

> >>>>>>>>> receiver
> >>>>>>>>> read intermediate data of rising edge.
> >>>>>>>>>
> >>>>>>>>> Rising time becomes 300ns from 650ns if apply this patch. This =

> >>>>>>>>> is not
> >>>>>>>>> perfect solution but better than now.
> >>>>>>>>>
> >>>>>>>>> Signed-off-by: Katsuhiro Suzuki <katsuhiro-WKCMddiH/C4xsqv6Oivclw@public.gmane.org>
> >>>>>>>>> ---
> >>>>>>>>>      arch/arm64/boot/dts/rockchip/rk3399.dtsi | 9 +++++++--
> >>>>>>>>>      1 file changed, 7 insertions(+), 2 deletions(-)
> >>>>>>>>
> >>>>>>>> your changing a core rk3399 property here, so I'd really like to =

> >>>>>>>> get
> >>>>>>>> input from other board stakeholders on this before applying a co=
re
> >>>>>>>> change.
> >>>>>>>>
> >>>>>>>> Could you either include the submitters of other rk3399-boards =

> >>>>>>>> in the
> >>>>>>>> recipient list so that they're aware or limit the change to =

> >>>>>>>> rockpro64 for
> >>>>>>>> the time being (aka overriding the property in the board-dts) =

> >>>>>>>> please?
> >>>>>>>>
> >>>>>>>
> >>>>>>> OK, I'm adding other boards members.
> >>>>>>> by ./scripts/get_maintainer.pl =

> >>>>>>> arch/arm64/boot/dts/rockchip/rk3399-*.dts
> >>>>>>>
> >>>>>>>
> >>>>>>> RockPro64 directly connect UART2 pins of RK3399 to external =

> >>>>>>> connector.
> >>>>>>> I think maybe other RK3399 boards are facing same problem, but I =

> >>>>>>> cannot
> >>>>>>> check it because I have RockPro64 only...
> >>>>>>>
> >>>>>>> I'm happy if someone tell me other boards situation.
> >>>>>>
> >>>>>> I'm pulling out other rockchip boards momentarily to see what kind=
 of
> >>>>>> population we have.
> >>>>>>
> >>>>>> Note these are not all running 5.x kernels, however none of them h=
ave
> >>>>>> the UART2 drive levels modified to my knowledge, and regardless, n=
one
> >>>>>> show over 100 ns.
> >>>>>>
> >>>>>> board:    rise/fall
> >>>>>>
> >>>>>> rk3399-roc-pc: 90ns/90ns
> >>>>>> rk3399-rockpro64 V2.0:  90ns/45ns
> >>>>>> rk3399-rockpro64 V2.1:  40ns/41ns
> >>>
> >>> I'm having to eyeball off a 20MHz analog scope (thank goodness for "y=
es"
> >>> being able to generate a nice periodic signal), but for my NanoPC-T4
> >>> with a cheap eBay FT232R adapter both rise and fall times are certain=
ly
> >>> <100ns. FWIW I've not noticed any issues with letting the Bluetooth
> >>> interface on UART0 run flat-out at 4Mbaud either.
> >>>
> > =

> > Robin, Thanks a lot. Your results show that cold solder (or some
> > electric parts on board) of my RockPro64 is broken or something wrong.
> > =

> > =

> >>>>>>
> >>>>>> Please make sure there's not a large amount of flux or something
> >>>>>> around the terminals on your board, that seems excessively high.
> >>>>>>
> >>>>>
> >>>>> Thank you for valuable information. For more deeply discussion,
> >>>>> I tried other conditions and watch the rise/fall times.
> >>>>>
> >>>>> 1) Not connect
> >>>>> The rise/fall times are 40ns/5ns when nothing connect (impedance is
> >>>>> very high) to external pin of RockPro64.
> >>>>>
> >>>>> What UART device are you using with RockPro64? If you use some devi=
ce
> >>>>> with RockPro64 and board shows rise/fall times =3D 90ns/45ns, my de=
vice
> >>>>> is not suitable for RockPro64 by some reason. So it's better to drop
> >>>>> my patch.
> >>>>
> >>>> The adapter is an FTDI FT232RL breakout board, attached with some
> >>>> generic Dupont connector jumpers.
> >>>> Interesting your RockPro is showing this symptom, perhaps there is a
> >>>> cold solder joint somewhere introducing resistance?
> >>>>
> >>>>>
> >>>>> 2) Other SoC
> >>>>> I have other SoC board rk3328-rock64, Rock64 shows rise/fall times =
=3D
> >>>>> 90ns/80ns when same UART-USB device is connected to UART pin.
> >>>>
> >>>> I measured similar on my Rock64 as well.
> >>>>
> > =

> > Tony, thanks for your info about environment.
> > =

> > It seems my RockPro64 problem. I don't have enough electronic knowledge,
> > but try to check my RockPro64 as much as I can.
> > =

> > =

> >>>>>
> >>>>> I think it shows rk3399's (or RockPro64's?) drive strength is a lit=
tle
> >>>>> weak. So it's better to increase the drive strength of UART of rk33=
99.
> >>>>
> >>>> I do not think this is a bad idea generally, it simply allows for mo=
re
> >>>> available current from the interface.  I'll let others be the judge =
of
> >>>> that, however.
> >>>
> >>> There may be RK3399 users who would care about the possible EMI impac=
t,
> >>> so it's probably still best to limit such a change to boards which
> >>> definitely need it.
> >>>
> >>
> >> Ah, good point.
> >>
> >> As to speeds achievable, I've only run into drive level issues with
> >> SD/SDIO, but that's all the way up at 25-50 MHz.
> > =

> > My patch has bad effects for EMI issues of all RK3399 boards.
> > =

> > So conclusion is, my patch should be dropped. Sorry for confusing.
> > =

> > Best Regards,
> > Katsuhiro Suzuki
> > =

> > =

> >>
> >> Tony
> >>
> >>> Robin.
> >>>
> >>>>
> >>>>>
> >>>>> Best Regards,
> >>>>> Katsuhiro Suzuki
> >>>>>
> >>>>>>>
> >>>>>>> Best Regards,
> >>>>>>> Katsuhiro Suzuki
> >>>>>>>
> >>>>>>>
> >>>>>>>> Thanks
> >>>>>>>> Heiko
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi =

> >>>>>>>>> b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>>>>>>>> index beaa92744a64..e3c8f91ead50 100644
> >>>>>>>>> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>>>>>>>> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> >>>>>>>>> @@ -2000,6 +2000,11 @@
> >>>>>>>>>                         drive-strength =3D <8>;
> >>>>>>>>>                 };
> >>>>>>>>>
> >>>>>>>>> +            pcfg_pull_up_12ma: pcfg-pull-up-12ma {
> >>>>>>>>> +                    bias-pull-up;
> >>>>>>>>> +                    drive-strength =3D <12>;
> >>>>>>>>> +            };
> >>>>>>>>> +
> >>>>>>>>>                 pcfg_pull_up_18ma: pcfg-pull-up-18ma {
> >>>>>>>>>                         bias-pull-up;
> >>>>>>>>>                         drive-strength =3D <18>;
> >>>>>>>>> @@ -2521,8 +2526,8 @@
> >>>>>>>>>                 uart2c {
> >>>>>>>>>                         uart2c_xfer: uart2c-xfer {
> >>>>>>>>>                                 rockchip,pins =3D
> >>>>>>>>> -                                    <4 RK_PC3 RK_FUNC_1 =

> >>>>>>>>> &pcfg_pull_up>,
> >>>>>>>>> -                                    <4 RK_PC4 RK_FUNC_1 =

> >>>>>>>>> &pcfg_pull_none>;
> >>>>>>>>> +                                    <4 RK_PC3 RK_FUNC_1 =

> >>>>>>>>> &pcfg_pull_up_12ma>,
> >>>>>>>>> +                                    <4 RK_PC4 RK_FUNC_1 =

> >>>>>>>>> &pcfg_pull_none_12ma>;
> >>>>>>>>>                         };
> >>>>>>>>>                 };
> >>>>>>>>>
> >>>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>>
> >>>>>>>
> >>>>>>>
> >>>>>>> _______________________________________________
> >>>>>>> Linux-rockchip mailing list
> >>>>>>> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> >>>>>>> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >>>>>>
> >>>>>>
> >>>>>
> >>
> >> _______________________________________________
> >> Linux-rockchip mailing list
> >> Linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
> >> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> >>
> >>
> > =

> > =

> =

> =
