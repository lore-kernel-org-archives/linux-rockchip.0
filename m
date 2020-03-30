From: Ulf Hansson <ulf.hansson@linaro.org>
Subject: =?UTF-8?B?UmU6IFBST0JMRU06IG1tY19zZWxlY3RfaHM0MDBlcyBmYWlsZWQsIGVycm9yIC0xMTA=?=
        =?UTF-8?B?44CQ6K+35rOo5oSP77yM6YKu5Lu255SxbGludXgtbW1jLW93bmVyQHZnZXIua2VybmVsLm9yZ+S7ow==?=
        =?UTF-8?B?5Y+R44CR?=
Date: Mon, 30 Mar 2020 20:19:01 +0200
Message-ID: <CAPDyKFotyWVXu+Aj6y-DoAtrbimD7ycg=81bf8zjeSg9mrD-4A@mail.gmail.com>
References: <20200301220242.GA8276@arya.arvanta.net> <20200318214917.GA9112@arya.arvanta.net>
 <5922bbd7-e91b-d144-6d44-2632cbd11c78@rock-chips.com> <158bd6f5-2430-19bd-28ef-e18d67becaf3@arm.com>
 <20200321204652.GA21002@arya.arvanta.net> <20200327171417.GA4387@arya.arvanta.net>
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-mmc-owner@vger.kernel.org>
In-Reply-To: <20200327171417.GA4387@arya.arvanta.net>
Sender: linux-mmc-owner@vger.kernel.org
To: =?UTF-8?Q?Milan_P=2E_Stani=C4=87?= <mps@arvanta.net>
Cc: Robin Murphy <robin.murphy@arm.com>, Shawn Lin <shawn.lin@rock-chips.com>, "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>
List-Id: linux-rockchip.vger.kernel.org

On Fri, 27 Mar 2020 at 18:14, Milan P. Stani=C4=87 <mps@arvanta.net> wrote:
>
> Hi,
>
> Anyone looked at this problem?
>
> Or, is there better url or mailing list where I should send this bug
> report?

This is the mmc-list and since the rock-chips list was added by Shawn
- you have directed your question correctly.

The problem is, this isn't a list where everyone can get free support.
People may be working on other platforms, for example.

The best option for you, is probably to ping Shawn or to reach out to
some other Rock-chips people, as it seems like these guys needs to
have a closer look.

>
> Or, could someone tell me what I could try to fix it, which file and
> parameters to change?

Well, if you can narrow down the problem that is always helpful. So
for example, is there any upstream kernel that works - or is it only
working through the chrome-os tree (which likely contains vendor
specific changes that are not upstream).

Kind regards
Uff

>
> On Sat, 2020-03-21 at 21:46, Milan P. Stani=C4=87 wrote:
> > Hi,
> >
> > On Thu, 2020-03-19 at 12:28, Robin Murphy wrote:
> > > Hi Shawn,
> > >
> > > On 2020-03-19 3:11 am, Shawn Lin wrote:
> > > > Hi Milan
> > > >
> > > > [+linux-rockchip to see if someone has a Samsung chromebook one plu=
s
> > > > and could confirm if it works]
> > >
> > > FWIW I've also tried suspend on my NanoPC-T4 and seen that the eMMC (=
also
> > > HS400-ES) fails to come back properly on resume (thus resume never co=
mpletes
> > > due to the missing root filesystem). IIRC it might even have been
> > > reproducible with suspend-to-idle, but I'd have to double-check that.
> >
> > I forgot to tell that emmc worked without problem on this machine with
> > ChromeOS kernel 4.4.xx downloaded from
> > https://chromium.googlesource.com/chromiumos/third_party/kernel/+/chrom=
eos-4.4
> > and with patches from
> > https://github.com/archlinuxarm/PKGBUILDs/tree/master/core/linux-gru
> > for about two years (iirc).
> > Problem started when I switched to mainline kernels, somewhere around
> > 5.1.xx
> >
> > > Robin.
> > >
> > > > On 2020/3/19 5:49, Milan P. Stani=C4=87 wrote:
> > > > > Hello,
> > > > >
> > > > > Sorry to annoy again, but could you tell me if I sent this bug re=
port
> > > > > to right mail address or I should send it somewhere else.
> > > > >
> > > > > Also, did I sent bug report correctly or I did some mistakes whic=
h
> > > > > caused it to be ignored.
> > > > >
> > > > > -- TIA On Sun, 2020-03-01 at 23:02, Milan P. Stani=C4=87 wrote:
> > > > > > Hello,
> > > > > >
> > > > > > I'm not native English speaker and I'm self taught in English s=
o sorry
> > > > > > if do not write or express correctly. And sorry if I posted bug=
 report
> > > > > > to wrong address.
> > > > > >
> > > > > > I'm running linux 5.6.0-rc3 without any patches on Samsung chro=
mebook
> > > > > > one plus, Arm64 rockchip rk3399 based model name:
> > > > > > Machine model: Google Kevin
> > > > > >
> > > > > > I build kernels from upstream git.kernel.org for this machine f=
or some
> > > > > > time (iirc, from 5.2.1 and up) but I'm getting error messages i=
n kernel
> > > > > > after machine resumes from suspend-to-ram.
> > > >
> > > > It sounds to me suspend-to-ram never works for this machine, at lea=
st
> > > > since 5.2.1. Am I right?
> > > >
> > > > > >
> > > > > > excerpt from dmesg output:
> > > > > > ---------------------------------------------------------------=
--------
> > > > > > Restarting tasks ... done.
> > > > > > PM: suspend exit
> > > > > > mmc_host mmc0: Bus speed (slot 0) =3D 400000Hz (slot req 400000=
Hz,
> > > > > > actual 400000HZ div =3D 0)
> > > > > > mmc1: mmc_select_hs400es failed, error -110
> > > > > > mmc1: error -110 doing runtime resume
> > > > > > mmc1: Got data interrupt 0x00000002 even though no data
> > > > > > operation was in progress.
> > > > > > mmc1: sdhci: =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D SDHCI REGISTE=
R DUMP =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> > > > > > mmc1: sdhci: Sys addr:  0x00000008 | Version:  0x00001002
> > > > > > mmc1: sdhci: Blk size:  0x00007200 | Blk cnt:  0x00000008
> > > > > > mmc1: sdhci: Argument:  0x00000000 | Trn mode: 0x00000023
> > > > > > mmc1: sdhci: Present:   0x1fff0001 | Host ctl: 0x00000035
> > > > > > mmc1: sdhci: Power:     0x0000000b | Blk gap:  0x00000080
> > > > > > mmc1: sdhci: Wake-up:   0x00000000 | Clock:    0x0000bc07
> > > > > > mmc1: sdhci: Timeout:   0x0000000d | Int stat: 0x00000000
> > > > > > mmc1: sdhci: Int enab:  0x03ff000b | Sig enab: 0x03ff000b
> > > > > > mmc1: sdhci: ACmd stat: 0x00000000 | Slot int: 0x00000000
> > > > > > mmc1: sdhci: Caps:      0x44edc880 | Caps_1:   0x801020f7
> > > > > > mmc1: sdhci: Cmd:       0x00000c1a | Max curr: 0x00000000
> > > > > > mmc1: sdhci: Resp[0]:   0x00000000 | Resp[1]:  0x373300bd
> > > > > > mmc1: sdhci: Resp[2]:   0x35303030 | Resp[3]:  0x00000000
> > > > > > mmc1: sdhci: Host ctl2: 0x00000000
> > > > > > mmc1: sdhci: ADMA Err:  0x00000000 | ADMA Ptr: 0xed41e200
> > > > > > ---------------------------------------------------------------=
--------
> > > > > >
> > > > > > I invoke suspend-to-ram by `echo mem > /sys/power/state` from A=
CPI power
> > > > > > and LID button handlers.
> > > > > >
> > > > > > This only happens when I boot and use internal emmc card and ne=
ver when
> > > > > > boot and use external mmc card.
> > > > > >
> > > > > > If suspend-to-ram is not invoked (machine is always in normal s=
tate)
> > > > > > this problem never happen (or I missed it somehow).
> > > > > >
> > > > > > I'm attaching kernel .config (file config-5.6.0-rc3-1-gru.conf)=
 which
> > > > > > use to build kernel, output of the `awk -f scripts/ver_linux` a=
s file
> > > > > > ver_linux.txt and  output of dmesg as file mmc-err.txt (from wh=
ich I
> > > > > > deleted wifi connection logs).
> > > > > >
> > > > > > Sorry if I did something bad or wrong with this bug report, I d=
on't have
> > > > > > much experience with bug reporting, especially for kernel.
> > > > > >
> > > > > > I'm ready to send you more data, and investigate this more, app=
ly
> > > > > > patches and rebuild kernel or whatever you ask me (of course if=
 my
> > > > > > understanding and knowledge is enough for this job).
> > > > > >
> > > > > > Thank in advance
> > > > > >
> > > > > > --
> > > > > > Kind regards
> > > > > >
> > > > > [...]
> > > > >
> > > > >
> > > >
> > > >
> > > >
> > > > _______________________________________________
> > > > Linux-rockchip mailing list
> > > > Linux-rockchip@lists.infradead.org
> > > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
