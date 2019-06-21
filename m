From: Heiko Stuebner <heiko-4mtYJXux2i+zQB+pC5nmwQ@public.gmane.org>
Subject: Re: [U-Boot] [PATCH v2] arm64: dts: rockchip: Add support for Khadas
 Edge/Edge-V/Captain boards
Date: Fri, 21 Jun 2019 13:34:16 +0200
Message-ID: <5485782.mvTjYBxPra@phil>
References: <1558696796-10745-1-git-send-email-xieqinick@gmail.com>
 <df4fe202b5d59e37ef28af1e1106d0a92d6c5038.camel@bootlin.com>
 <88b913b4-5bb7-58fb-650b-b3e4e74ff66a@rock-chips.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
In-Reply-To: <88b913b4-5bb7-58fb-650b-b3e4e74ff66a-TNX95d0MmH7DzftRWevZcw@public.gmane.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
List-Help: <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org?subject=subscribe>
Sender: "Linux-rockchip" <linux-rockchip-bounces-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org>
Errors-To: linux-rockchip-bounces+glpar-linux-rockchip=m.gmane.org-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org
To: u-boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
Cc: Maxime Ripard <maxime.ripard-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, Kever Yang <kever.yang-TNX95d0MmH7DzftRWevZcw@public.gmane.org>, Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>, linux-rockchip-IAPFreCvJWM7uuMidbF8XUB+6BGkLq7r@public.gmane.org, nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org, philipp.tomsich-SN7IsUiht6C/RdPyistoZJqQE7yCjDx5@public.gmane.org, linux-amarula-dyjBcgdgk7Pe9wHmmfpqLFaTQe2KTcn/@public.gmane.org, xieqinick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org, Mark Kettenis <mark.kettenis-qWit8jRvyhVmR6Xm/wNWPw@public.gmane.org>
List-Id: linux-rockchip.vger.kernel.org

Hi,

Am Donnerstag, 20. Juni 2019, 05:24:32 CEST schrieb Kever Yang:
> On 06/20/2019 12:54 AM, Paul Kocialkowski wrote:
> > Le mercredi 19 juin 2019 =E0 09:42 +0800, Kever Yang a =E9crit :
> >> On 06/19/2019 12:12 AM, Mark Kettenis wrote:
> >>>> From: Paul Kocialkowski <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org>
> >>>> Date: Tue, 18 Jun 2019 14:47:33 +0200
> >>>> On Tue, 2019-06-18 at 18:08 +0800, Kever Yang wrote:
> >>>>> On 06/18/2019 05:03 PM, Paul Kocialkowski wrote:
> >>>>>> On Tue, 2019-06-18 at 14:27 +0530, Jagan Teki wrote:
> >>>>>>> On Tue, Jun 18, 2019 at 1:55 PM Paul Kocialkowski
> >>>>>>> <paul.kocialkowski-LDxbnhwyfcJBDgjK7y7TUQ@public.gmane.org> wrote:
> >>>>>>>> On Mon, 2019-06-17 at 15:24 +0800, xieqinick-Re5JQEeQqe8AvxtiuMwx3w@public.gmane.org wrote:
> >>>>>>>>> From: Nick Xie <nick-XW3xCAIBE2TQT0dZR+AlfA@public.gmane.org>
> >>>>>>>> Was this tested with SPL support? I don't see DRAM configuration=
 here
> >>>>>>>> so it seems that it relies on the non-free rockchip loader.
> >>>>>>>>
> >>>>>>>> If that is the case, could you please indicate that in the commit
> >>>>>>>> message?
> >>>>>>>>
> >>>>>>>> To maintainers: please do not merge this series before DRAM init=
 and
> >>>>>>>> SPL support is available for these boards.
> >>>>>>>>
> >>>>>>>> It seems that other RK3399 boards were merged without SPL suppor=
t and
> >>>>>>>> sofar, I have the feeling that nobody cared to explain how we go=
t into
> >>>>>>>> this broken situation. Please don't merge any more such board.
> >>>>>>> fyi: no rk3399 boards were merged w/o SPL. lpddr4 boards were mer=
ged
> >>>>>>> with TPL-enabled (which was discussed on the threads, if you reme=
mber)
> >>>>>>> with below boot chain.
> >>>>>>>
> >>>>>>> rkbin (TPL) -> SPL -> U-Boot proper
> >>>>>>>
> >>>>>>> Same case for this board as well.
> >>>>>> Here is a quote from Philipp Tomsich on the thread we discussed th=
is:
> >>>>>>
> >>>>>> " On some boards, there will be no TPL and only a SPL stage that w=
ill
> >>>>>> initialise DRAM (as the move to having TPL on the RK3399 is option=
al).
> >>>>>>
> >>>>>> I agree with Paul that the DRAM init should be part of U-Boot when=
ever
> >>>>>> we add new boards and make an open DRAM init a prerequisite. "
> >>>>>>
> >>>>>> So even if I frequently confuse SPL and TPL, it doesn't change the=
 fact
> >>>>>> that no board should be merged without proper DRAM init.
> >>>>>>
> >>>>>> Please stop pushing for merging these boards. I'm not sure what we
> >>>>>> should do about the boards that were merged already without DRAM i=
nit,
> >>>>>> but maybe they should be reverted.

> >>>>> I don't think we have to have full DRAM init source code for each
> >>>>> board before we can merge it, I believe most of the board on U-Boot
> >>>>> mainline need to removed due to this rule. There are so many boards
> >>>>> from different vendor need a binary loader before U-Boot, and I can
> >>>>> see only very few drivers for dram at driver/ram/, and I believe ro=
ckchip
> >>>>> is already the most open vendor on this area.

> >>>> Well, I am not talking about full DRAM init source code as in dynamic
> >>>> link training. I am talking about having at least static DRAM regist=
er
> >>>> configuration values, =


> >> I can tell you that this is no work for all the boards, you can see how
> >> rockchip lpddr4(WIP, send by Jagan) driver works.

> > I thought that LPDDR4 works the same as other types of DRAM where we
> > have a dtsi array with timings configuration. Of course, some more
> > registers need to be set up, but we already have support for that or
> > it's quite close (for LPDDR4).
>
> >>>> which is present for a good number of rockchip
> >>>> boards.
> >> No, there is no rockchip board only have static DRAM register
> >> configuration values, that maybe happens in other vendor.
>
> > I was implying that, as far as I know, it is the case for DRAM timings
> > on Rockchip as well as most of the platforms that I know of. In the
> > end, any code handling DRAM will end up writing timings to the
> > controller's registers. If the DRAM is part of the PCB and doesn't
> > change/move, then the timings don't change in particular.
> >
> > Is there something specific about Rockchip that makes it require
> > different DRAM timings at each boot?
>
> >>>> Of course, it would be best if Rockchip would consider releasing this
> >>>> source code, =

> >> Rockchip already release all the DRAM init source code, including DDR3=
 ,
> >> LPDDR3,
> >> and LPDDR4(wip). You can see the driver at driver/ram/rockchip/ for
> >> everything,
> >> which is not only static register configuration.
> >> As I have said, rockchip is already the most open vendor in this area
> >> till now, I don't know
> >> if you have working on rockchip SoC based boards.
> > You are quite right about that, but I was thinking about the code to
> > calculate DRAM timings (with link-training and such) which is often not
> > available as free software, and I am not aware of Rockchip having
> > released that code (but feel free to correct me if I'm wrong).
> >
> >>>> which would be the easiest and friendliest solution
> >>>> towards the community here. Are there internal discussions ongoing
> >>>> about this? If not, it would be greatly appreciated to start such
> >>>> discussions and clearly identify what the blocking points are.
> >>>>
> >>>>> I won't use this rule to stop developers contribute there source co=
de,
> >>>> This is really sad and I think that Philipp was, like me, inclined to
> >>>> go towards the other direction.
> >>>>
> >>>>> for a board support, we only need the board to have the full docume=
ntation
> >>>>> about how to setup and boot with upstream U-Boot. and I think the
> >>>>> most of people cares more about features in U-Boot proper. Everythi=
ng
> >>>>> before U-Boot proper, you can use TPL/SPL or alternative to use bin=
ary
> >>>>> from vendor, as you can see all over the U-Boot mainline now, altho=
ugh
> >>>>> we encourage people to use full open source TPL/SPL.
> >>>>> Specifically for U-Boot Rockchip platform, I would like people to
> >>>>> support not only U-Boot
> >>>>> proper, but also for full SPL(ATF, OP-TEE support, itb image and ot=
her
> >>>>> features)
> >>>>> support. And for DRAM init,
> >>>>> - if this belongs to SPL for this board, you must implement it or e=
lse
> >>>>> SPL won't work;
> >>>>> - if this does not belong to SPL for this board, you need implement=
 full
> >>>>> function SPL;
> >>>>>     and you can either to have full function TPL with DRAM init(whi=
ch is
> >>>>> prefered)
> >>>>>     or alternatively use binary loader from vendor.
> >>>> This is not really a technical argument here, more of a policy argum=
ent
> >>>> that ensures we have full free software support for the boards we
> >>>> support, and not only half-cooked support (that will most likely nev=
er
> >>>> be completed as soon as something that works gets merged). So it is a
> >>>> strategical decision, not a strictly pragmatic one.

> >>> While having full open source software support for boards is a noble
> >>> goal, I think there should be some room for pragmatism here.  A
> >>> significant number of u_boot targets rely on closed source components.
> >>> In the particular case of RK3399 the situation is better than for
> >>> other boards since you can combine the binary loader from the vendor
> >>> with mainline U-Boot and mainline ATF to create a firmware where (as
> >>> far as we can tell) no closed soure component remains active after
> >>> U-Boot and ATF take over control.
> >>>
> >>>> I think reverting patches adding support for boards with no DRAM
> >>>> configuration at all would send a message in the right direction her=
e.
> >> As a developer, I agree on this, but as a maintainer, I know too many
> >> developers not able to do it and what most of developers need is other
> >> features in U-Boot or SPL, and I would like the U-Boot mainline is more
> >> active with more and more developers. So I'm afraid I agree with Mark
> >> at this time for the policy.
> > Maybe we need to provide tools ot make that process easier for everyone
> > if it is really that hard. I don't really see what is so special about
> > DRAM timings that would imply that a regular developer doing a U-Boot
> > bringup couldn't figure things out, aside from the ability to dump said
> > timings.
> >
> >> If all the other SoC platforms can have the same rule for DRAM init dr=
iver
> >> is a mandatory instead of option, eg. brcom, qcom, mtk, omap, tegra, s=
tm,
> >> imx, aml, and all others, then I would very happy to follow the rule.
> >> Rockchip is open for open source the DRAM driver, you have to know this
> >> is the decision by the vendor, but not any of developers.
> >> On rockchip platform, developers no need to concern about the DRAM
> >> driver(which is pretty hard for most developers) because rockchip
> >> already contribute it.
> > Rockchip is indeed in a better position than other vendors where DRAM
> > init may not be available (or when it's impossible to run U-Boot right
> > after the bootrom and do the DRAM init itself because of e.g. abusive
> > signature verification or lack of documentation).
> >
> > Since there is good DRAM support for Rockchip in place, we have an
> > opportunity to push developers to do the right thing and contribute
> > full support for the board. To me it is simply a matter of
> > acknowledging that bootloader support for a board without DRAM init is
> > not useful bootloader support. Since we have the code in place to
> > support that, we can take the extra step and require that each board
> > contribution be useful in that aspect.
> >
> >> For the time now, I know there will be full DRAM driver for rockchip S=
oC,
> >> so the SoC/board support could be step by step:
> >> U-Boot proper -> U-Boot + SPL(no DRAM init) ->U-Boot + SPL + TPL.

Keeping allowing a step-by-step approach could be beneficial I think,
in the kernel we also don't require full support for all peripherals on
initial submission ;-) .

And also for people starting out on a specific board having at least partial
support is way easier than trying to figure out for example the vendor
u-boot. =


Maybe we could give this some sort of time limitation like
"binary ddr-init allowed till 2019-10-31" in Kconfig or somewhere
to give people the chance to do things piece by piece but still force them
to actually work on improving the situation.

As driver-side changes will generally benefit more socs/boards potential
removal after the time limit would only affect the board+dts itself.

So somewhat similar to what the kernel does with "staging", if you
keep working on improving it, it is allowed to stay.

This could be also applied to already included boards, like
"give it a working ddr-init till 2019-12-31 or it gets removed", similarly
to how Tom handles devicemanager conversions currently


> >> As you can see the rockchip LPDDR4 driver send by Jagan, has 99 patches
> >> in V2, you can't use static register configuration to do this, and may=
be you
> >> can't have a workable version if rockchip don't release it, but I don't
> >> think it's
> >> correct to make all those boards with lpddr4 float outside the mainline
> >> support
> >> because many developers are using the boards, they can only use vendor
> >> branch
> >> if the board not support by mainline.
> > If mainline U-Boot can't support basic bootloader features such as DRAM
> > initialization for these boards, I don't see the point in accepting
> > support for them.

Hmm, actually I see ddr-init as one of the more difficult parts to achieve
at least if you're not the soc-vendor, due to unavailable documentation
or sources.

> > It would be like submitting support for a board in Linux with a new CPU
> > that is not supported and asking to boot Linux via a non-free shim
> > before Linux to put the CPU in a legacy state that Linux can support.
> > This would definitely not be okay and I don't see why the same
> > shouldn't apply to U-Boot.

A less drastic example would be, submitting a basic devicetree to the
linux kernel without clocks and pinctrl and relying on the things the
bootloader set up for things like uart.


Heiko

> Linux build target is Image/zImage, if this Image not work with the board,
> eg. hang somewhere during boot, then we say the board support is broken
> and result in non-functional boot. And there always some kernel features
> depends on bootloader setting, including security setting, some clock ini=
t,
> some power supply and etc.
> =

> >
> >> So I think merge those patches already make board work on mainline U-B=
oot
> >> is pretty important for open source community.
> > I don't think the patches make the boards work on mainline U-Boot since
> > building and installing the resulting U-Boot binaries will result in a
> > non-functional boot chain and brick the device. I don't think this is a
> > good or safe idea.
> =

> In U-Boot, there are 2 or 3 standalone subsystem: U-Boot proper,
> SPL, and TPL, and build target is u-boot.bin, u-boot-spl.bin, and
> u-boot-tpl.bin.
> If the standalone u-boot.bin or u-boot-spl.bin works good with a board and
> able to boot into next stage correctly, I don't think these patches can
> be consider
> as "non-functional boot chain and brick the device". And for example for
> armv8,
> U-Boot is always as part of the boot chain.
> =

> Thanks,
> - Kever
> >
> > Cheers,
> >
> > Paul
> >
> >> Thanks,
> >> - Kever
> >>> Frankly, I don't think that would help.  It would just drive more
> >>> people to the vendor U-Boot that has more bugs and includes a vendor
> >>> supplied ATF binary.
> >>>
> >>>>> I'm not sure if you have write a new dram driver for a board, but I=
 know
> >>>>> even the board vendor may not have the capability to write the DRAM
> >>>>> driver, so this should not stop developers contribute to all other =
99%
> >>>>> features on U-Boot.
> >>>> What they can do is run the non-free blob, dump the registers
> >>>> afterwards and then use that in the DRAM configuration dtsi. Perhaps
> >>>> one could write up a tool to ease the process if they think the proc=
ess
> >>>> is too much for a regular bringup.
> >>>>
> >>>> Most of the time, the DRAM chips are soldered so the calibrated valu=
es
> >>>> have about no reason to change over time and can just be kept as-is.
> >>>>
> >>>> What do you think?
> >>> Hopefully the pending diff to add support for other DRAM types beyond
> >>> those that are already supported would make bring us a long way in
> >>> that direction.  Maybe one of the existing timings will already work
> >>> for the boards that are being discussed here.
> >>>
> >>
> >
> =

> =

> =

> _______________________________________________
> U-Boot mailing list
> U-Boot-0aAXYlwwYIKGBzrmiIFOJg@public.gmane.org
> https://lists.denx.de/listinfo/u-boot
> =
