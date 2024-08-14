Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B5EBC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Aug 2024 12:25:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mWL0ikjxCVBtOp/qPSiU0uETiDoiJqYHcKJIrGw7EyA=; b=0wsXHVOe3GiYVP
	GBH1U3aBXOSfXN1Q38Gog7mrHyRre8dJAeQqugtr7X8QJENg1LKJFW3iGtmkb0JLe2gWoo1TabsEL
	hKQv93h8ZvUAjhvXKhNPd9uwIqL2GulAGgld2FH8trqelzwHOoSXP9PTrv6zWFLVgKE5RPfDCQDje
	ZYYkpEZqPdt8+za/07rYLL7/ejDu0uMNUFBI7gYo47obkEba2Z0yP1dHGDa5hbygJr620Vsei0moP
	VGU/ZzDfPuO9VEx/N3Tgygr98qUI4QE3mTE2ltmWSrGdvNSLpe1dhKoOEXYSnXP6ttOgZZI+ZXoxc
	4Y3HFDYEiqpTZjKJtD+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seD4A-00000006urF-3Dir;
	Wed, 14 Aug 2024 12:25:26 +0000
Received: from xn--80adja5bqm.su ([198.44.140.76])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seD3W-00000006um6-1VOK;
	Wed, 14 Aug 2024 12:24:47 +0000
Received: by xn--80adja5bqm.su (Postfix, from userid 1000)
	id 9A5974000222; Wed, 14 Aug 2024 12:24:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 xn--80adja5bqm.su 9A5974000222
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mediatomb.cc;
	s=default; t=1723638244;
	bh=EHmbgh7ChgPZtT5t/G6sc2EeuM+4y7bLcgcJae38lwU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DjbYHbrT1xxDc3/T/FRPTLbpYBOc1QXADxxd41UOBqYuRZX/x6GdVDpKgEiFF1X1m
	 z5FH690DE+LTtu3gZNml3cUsn1GDL6klRM9mg9LxTmuVh/j2QPXOdGyFYhIUlisVRQ
	 jwqjZ1wSX7HiEL1GcZl8tYDxVTXCLuemq0J23D+hyUPWZbg9qjjL6fydPmkJ0o7k68
	 acT6/3lyuoUhwHtUP0d1m2BHVCOehZuFuSjee3KnRub0lFU/5WBazu00FhSdShCVl2
	 e1d1dQmWzVLxpI+JP4U3Ficpjo8eHW9mqIu17IFKRPQUfMIOBI2JhENfEKvd0po8Y4
	 7GIvD6I6G5KMg==
Date: Wed, 14 Aug 2024 12:24:03 +0000
From: Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
To: Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc: Daniel Golle <daniel@makrotopia.org>, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 1/2 RESEND] arm64: dts: rockchip: Add DTS for
 FriendlyARM NanoPi R2S Plus
Message-ID: <20240814122403.GB21761@ветеран.su>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <2309282.ZQ0cqP7t2B@diego>
 <3733110.CjrmPviFsx@diego>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3733110.CjrmPviFsx@diego>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240814_052446_522610_1A0DE2DE 
X-CRM114-Status: GOOD (  65.14  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Wed, Aug 14, 2024 at 01:36:43PM +0200, Heiko St=FCbner wrote:
> Am Mittwoch, 14. August 2024, 13:21:38 CEST schrieb Sergey 'Jin' Bostandz=
hyan:
> > Hi,
> > =

> > On Sat, Aug 10, 2024 at 09:11:56PM +0200, Heiko St=FCbner wrote:
> > > Am Montag, 5. August 2024, 10:59:35 CEST schrieb Sergey 'Jin' Bostand=
zhyan:
> > > > On Sun, Aug 04, 2024 at 01:27:50AM +0100, Daniel Golle wrote:
> > > > > On Thu, Aug 01, 2024 at 05:57:35PM +0000, Sergey Bostandzhyan wro=
te:
> > > > > > The R2S Plus is basically an R2S with additional eMMC.
> > > > > > =

> > > > > > The eMMC configuration for the DTS has been extracted and copie=
d from
> > > > > > rk3328-nanopi-r2.dts, v2017.09 branch from the friendlyarm/uboo=
t-rockchip
> > > > > > repository.
> > > > > > =

> > > > > > Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
> > > > > > ---
> > > > > >  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
> > > > > >  .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 31 +++++++++++=
++++++++
> > > > > >  2 files changed, 32 insertions(+)
> > > > > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-=
r2s-plus.dts
> > > > > > =

> > > > > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64=
/boot/dts/rockchip/Makefile
> > > > > > index fda1b980eb4b..36258dc8dafd 100644
> > > > > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > > > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > > > > @@ -20,6 +20,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-evb.d=
tb
> > > > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-nanopi-r2c.dtb
> > > > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-nanopi-r2c-plus.dtb
> > > > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-nanopi-r2s.dtb
> > > > > > +dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-nanopi-r2s-plus.dtb
> > > > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-orangepi-r1-plus.dtb
> > > > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-orangepi-r1-plus-lts.d=
tb
> > > > > >  dtb-$(CONFIG_ARCH_ROCKCHIP) +=3D rk3328-rock64.dtb
> > > > > > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plu=
s.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> > > > > > new file mode 100644
> > > > > > index 000000000000..7b83090a2145
> > > > > > --- /dev/null
> > > > > > +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> > > > > > @@ -0,0 +1,31 @@
> > > > > > +// SPDX-License-Identifier: GPL-2.0+
> > > > > > +/*
> > > > > > + * (C) Copyright 2018 FriendlyElec Computer Tech. Co., Ltd.
> > > > > > + * (http://www.friendlyarm.com)
> > > > > > + *
> > > > > > + * (C) Copyright 2016 Rockchip Electronics Co., Ltd
> > > > > > + */
> > > > > > +
> > > > > > +/dts-v1/;
> > > > > > +#include "rk3328-nanopi-r2s.dts"
> > > > > > +
> > > > > > +/ {
> > > > > > +	model =3D "FriendlyElec NanoPi R2S Plus";
> > > > > > +	compatible =3D "friendlyarm,nanopi-r2s-plus", "rockchip,rk332=
8";
> > > > > > +
> > > > > > +	aliases {
> > > > > > +		mmc1 =3D &emmc;
> > > > > > +	};
> > > > > > +};
> > > > > > +
> > > > > > +&emmc {
> > > > > > +	bus-width =3D <8>;
> > > > > > +	cap-mmc-highspeed;
> > > > > > +	supports-emmc;
> > > > > > +	disable-wp;
> > > > > > +	non-removable;
> > > > > > +	num-slots =3D <1>;
> > > > > > +	pinctrl-names =3D "default";
> > > > > > +	pinctrl-0 =3D <&emmc_clk &emmc_cmd &emmc_bus8>;
> > > > > =

> > > > > I think it's worth adding
> > > > > =

> > > > > 	mmc-hs200-1_8v;
> > > > > =

> > > > > =

> > > > > I've tried getting the best speed possible and while HS400 with a=
nd
> > > > > without enhanced strobe did NOT work, hs200 works just fine.
> > > > > [    0.459863] mmc_host mmc1: Bus speed (slot 0) =3D 50000000Hz (=
slot req 52000000Hz, actual 50000000HZ div =3D 0)
> > > > > [    0.460884] mmc_host mmc1: Bus speed (slot 0) =3D 150000000Hz =
(slot req 150000000Hz, actual 150000000HZ div =3D 0)
> > > > > ...
> > > > > [    0.728220] dwmmc_rockchip ff520000.mmc: Successfully tuned ph=
ase to 194
> > > > > [    0.728940] mmc1: new HS200 MMC card at address 0001
> > > > > [    0.730774] mmcblk1: mmc1:0001 A3A551 28.9 GiB
> > > > > [    0.733262]  mmcblk1: p1 p2
> > > > > [    0.734562] mmcblk1boot0: mmc1:0001 A3A551 4.00 MiB
> > > > > [    0.736818] mmcblk1boot1: mmc1:0001 A3A551 4.00 MiB
> > > > > [    0.738503] mmcblk1rpmb: mmc1:0001 A3A551 16.0 MiB, chardev (2=
45:0)
> > > > > =

> > > > > root@OpenWrt:/# hdparm -t /dev/mmcblk1
> > > > > =

> > > > > /dev/mmcblk1:
> > > > >  Timing buffered disk reads: 342 MB in  3.00 seconds =3D 113.81 M=
B/sec
> > > > > =

> > > > > =

> > > > > Without 'mmc-hs200-1_8v' property in DT the eMMC is detected as
> > > > > [    0.440465] mmc_host mmc1: Bus speed (slot 0) =3D 50000000Hz (=
slot req 52000000Hz, actual 50000000HZ div =3D 0)
> > > > > [    0.442032] mmc1: new high speed MMC card at address 0001
> > > > > [    0.444261] mmcblk1: mmc1:0001 A3A551 28.9 GiB
> > > > > [    0.447388]  mmcblk1: p1 p2
> > > > > [    0.448744] mmcblk1boot0: mmc1:0001 A3A551 4.00 MiB
> > > > > [    0.451065] mmcblk1boot1: mmc1:0001 A3A551 4.00 MiB
> > > > > [    0.452871] mmcblk1rpmb: mmc1:0001 A3A551 16.0 MiB, chardev (2=
45:0)
> > > > > =

> > > > > =

> > > > > root@OpenWrt:/# hdparm -t /dev/mmcblk1
> > > > > =

> > > > > /dev/mmcblk1:
> > > > >  Timing buffered disk reads: 134 MB in  3.03 seconds =3D  44.18 M=
B/sec
> > > > > =

> > > > > =

> > > > > > +	status =3D "okay";
> > > > > > +};
> > > > > =

> > > > > I'm right now trying to get SDIO RTL8822CS working, so far I'm ou=
t of luck,
> > > > > but it can be added later once we got it working.
> > > > =

> > > > would you be interested in taking over my attempted patches? Thing =
is,
> > > > that I am a userspace guy who only copy-pasted some entries from
> > > > FriendlyElec and things happened to work, but I really have no clue=
 what I am
> > > > doing when it comes to hardware and DTS. I see that some changes we=
re suggested, =

> > > > not only by you above, but also by others earlier and I have little
> > > > understanding of where I should be inserting what and how.
> > > > =

> > > > At this point I think it would make more sense if someone who actua=
lly
> > > > understands what they are doing would continue to tune the DTS :)
> > > > =

> > > > So it'd be great if either you or anyone else would be willing to t=
ake
> > > > over?
> > > =

> > > Though, a board devicetree is a nice way to get "your feet wet" in the
> > > kernel :-) and for a lot of people scratching ones own itches gets th=
em
> > > started.
> > =

> > While this may very well be true, my main issue is not the DT syntax,
> > but the lack of understanding of the underlying hardware and also a lac=
k of
> > enthusiasm to dive into the hardware topics - I prefer to stay in
> > userspace where the kernel provides a very nice abstraction to all thos=
e =

> > details ;)
> =

> No worries :-) .
> =

> Though in this case you're "on the hook" for the board devicetree :-D .
> =

> =

> > > The devicetree is easy enough, also looks correct and you even got the
> > > binding change correct - and you're the person with the actual board =
:-) .
> > > =

> > > Could you possibly test if the   mmc-hs200-1_8v; property works for y=
ou?
> > =

> > It does, I get pretty much the same results as Daniel:
> > =

> > root@nanopi-r2s-plus:~# hdparm -t /dev/mmcblk1
> > /dev/mmcblk1:
> >  Timing buffered disk reads: 134 MB in  3.04 seconds =3D  44.13 MB/sec
> > =

> > With mmc-hs200-1_8v:
> > =

> > root@nanopi-r2s-plus:~# hdparm -t /dev/mmcblk1
> >  /dev/mmcblk1:
> >   Timing buffered disk reads: 340 MB in  3.01 seconds =3D 113.08 MB/sec
> > =

> > Should I add a commit on top with this change and submit a v3 patchset?
> > =

> > On Thu, Aug 01, 2024 at 11:22:27PM +0200, Heiko St=FCbner wrote:
> > > general remark, please don't send new versions as threaded replies to
> > > old
> > > versions. The normal case for git-send-email is to create a new thread
> > > and this continuing inside the old thread confues tooling.
> > =

> > In case you tell me to go ahead with a v3 set, should it be in this
> > thread or not? I understood RESEND's should be new, but updates should
> > stay in the thread, right?
> > =

> > Sorry, I actually did read the guides, but seems misunderstood what I s=
hould
> > be doing as I inserted the in-reply-to header in my last RESEND.
> =

> Please do a v3 ... in a new thread.

There was one other note though to which I did not receive a clear
repsonse. Bjoern A. Zeeb noticed, that the newer version from the
rockhip repo has // SPDX-License-Identifier: (GPL-2.0+ OR MIT) while the
one which I copied the code from did not have the "OR MIT" part, hence I
also did not have it in my patch.

Am I supposed to leave it as is, since I copied the block from the
sources which indeed were GP-2.0 only or should I add the "OR MIT" part
as it is apparently the case in newer versions of the dts file from
rockhcip?

> Also for the process, please add the Ack you received for patch 2
> in that v3.

You mean, ammend the appropriate commit and add the Acked-By to the
commit message? OK, will do.

On Wed, Aug 14, 2024 at 01:34:13PM +0200, Diederik de Haas wrote:
> On Wed Aug 14, 2024 at 1:30 PM CEST, Diederik de Haas wrote:
> > On Wed Aug 14, 2024 at 1:21 PM CEST, Sergey 'Jin' Bostandzhyan
> > wrote:
> > > In case you tell me to go ahead with a v3 set, should it be in
> > > this
> > > thread or not? I understood RESEND's should be new, but updates
> > > should
> > > stay in the thread, right?
> >
> > No, a new series should be its own thread too.
> =

> More correctly and hopefully more clearly:

Understood, thank you!

Kind regards,
Sergey


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
