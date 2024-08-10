Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 35A9DC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Aug 2024 19:12:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:Date
	:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	List-Owner; bh=7YX7gzAS6CEX61eBWLtnZd4jo7FjARptCSi1PcHEsWo=; b=WwJUwzZOJahIQi
	vr0yuekUEpKS5eM+S/057ikHxTCK8ikiLAG0H5opQmViTkSa+M/JpH64xkH+CA86sJ+ulN4iLIuXH
	fIztZl+ZV0vSF28bUa4A1+NY0q3nTcpBc0F5wyt295qlDBD6Md2zPVSYvuaMvc5YkQ0UpdtdSVcM2
	aahLSwJ1CkCy+cDU7H4GgnVvgbzL1yhbx57doQDw+arHM1UbkOpyYO6T4ksAzsqSLhzkpiTkYiEj3
	jK7keMOVgTqRVveA6QBsVhWcNS9+pAtk87VSO0iPUn2M07HnMBbTUnbdZmyz2hgE8FMhSPOaRBAAj
	NlZ9s1fT1FVe9DiypZAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scrWG-0000000EUnk-4298;
	Sat, 10 Aug 2024 19:12:52 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1scrVf-0000000EUkJ-2YAX;
	Sat, 10 Aug 2024 19:12:17 +0000
Received: from i53875b02.versanet.de ([83.135.91.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1scrVN-0006Uy-UB; Sat, 10 Aug 2024 21:11:57 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Daniel Golle <daniel@makrotopia.org>,
 Sergey 'Jin' Bostandzhyan <jin@mediatomb.cc>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 1/2 RESEND] arm64: dts: rockchip: Add DTS for FriendlyARM
 NanoPi R2S Plus
Date: Sat, 10 Aug 2024 21:11:56 +0200
Message-ID: <2309282.ZQ0cqP7t2B@diego>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <Zq7LBqKVvVVVLg7a@makrotopia.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240810_121215_691142_12046036 
X-CRM114-Status: GOOD (  40.73  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi,

Am Montag, 5. August 2024, 10:59:35 CEST schrieb Sergey 'Jin' Bostandzhyan:
> On Sun, Aug 04, 2024 at 01:27:50AM +0100, Daniel Golle wrote:
> > On Thu, Aug 01, 2024 at 05:57:35PM +0000, Sergey Bostandzhyan wrote:
> > > The R2S Plus is basically an R2S with additional eMMC.
> > > 
> > > The eMMC configuration for the DTS has been extracted and copied from
> > > rk3328-nanopi-r2.dts, v2017.09 branch from the friendlyarm/uboot-rockchip
> > > repository.
> > > 
> > > Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
> > > ---
> > >  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
> > >  .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 31 +++++++++++++++++++
> > >  2 files changed, 32 insertions(+)
> > >  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> > > 
> > > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > > index fda1b980eb4b..36258dc8dafd 100644
> > > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > > @@ -20,6 +20,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c-plus.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
> > > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s-plus.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
> > >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
> > > diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> > > new file mode 100644
> > > index 000000000000..7b83090a2145
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> > > @@ -0,0 +1,31 @@
> > > +// SPDX-License-Identifier: GPL-2.0+
> > > +/*
> > > + * (C) Copyright 2018 FriendlyElec Computer Tech. Co., Ltd.
> > > + * (http://www.friendlyarm.com)
> > > + *
> > > + * (C) Copyright 2016 Rockchip Electronics Co., Ltd
> > > + */
> > > +
> > > +/dts-v1/;
> > > +#include "rk3328-nanopi-r2s.dts"
> > > +
> > > +/ {
> > > +	model = "FriendlyElec NanoPi R2S Plus";
> > > +	compatible = "friendlyarm,nanopi-r2s-plus", "rockchip,rk3328";
> > > +
> > > +	aliases {
> > > +		mmc1 = &emmc;
> > > +	};
> > > +};
> > > +
> > > +&emmc {
> > > +	bus-width = <8>;
> > > +	cap-mmc-highspeed;
> > > +	supports-emmc;
> > > +	disable-wp;
> > > +	non-removable;
> > > +	num-slots = <1>;
> > > +	pinctrl-names = "default";
> > > +	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
> > 
> > I think it's worth adding
> > 
> > 	mmc-hs200-1_8v;
> > 
> > 
> > I've tried getting the best speed possible and while HS400 with and
> > without enhanced strobe did NOT work, hs200 works just fine.
> > [    0.459863] mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
> > [    0.460884] mmc_host mmc1: Bus speed (slot 0) = 150000000Hz (slot req 150000000Hz, actual 150000000HZ div = 0)
> > ...
> > [    0.728220] dwmmc_rockchip ff520000.mmc: Successfully tuned phase to 194
> > [    0.728940] mmc1: new HS200 MMC card at address 0001
> > [    0.730774] mmcblk1: mmc1:0001 A3A551 28.9 GiB
> > [    0.733262]  mmcblk1: p1 p2
> > [    0.734562] mmcblk1boot0: mmc1:0001 A3A551 4.00 MiB
> > [    0.736818] mmcblk1boot1: mmc1:0001 A3A551 4.00 MiB
> > [    0.738503] mmcblk1rpmb: mmc1:0001 A3A551 16.0 MiB, chardev (245:0)
> > 
> > root@OpenWrt:/# hdparm -t /dev/mmcblk1
> > 
> > /dev/mmcblk1:
> >  Timing buffered disk reads: 342 MB in  3.00 seconds = 113.81 MB/sec
> > 
> > 
> > Without 'mmc-hs200-1_8v' property in DT the eMMC is detected as
> > [    0.440465] mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
> > [    0.442032] mmc1: new high speed MMC card at address 0001
> > [    0.444261] mmcblk1: mmc1:0001 A3A551 28.9 GiB
> > [    0.447388]  mmcblk1: p1 p2
> > [    0.448744] mmcblk1boot0: mmc1:0001 A3A551 4.00 MiB
> > [    0.451065] mmcblk1boot1: mmc1:0001 A3A551 4.00 MiB
> > [    0.452871] mmcblk1rpmb: mmc1:0001 A3A551 16.0 MiB, chardev (245:0)
> > 
> > 
> > root@OpenWrt:/# hdparm -t /dev/mmcblk1
> > 
> > /dev/mmcblk1:
> >  Timing buffered disk reads: 134 MB in  3.03 seconds =  44.18 MB/sec
> > 
> > 
> > > +	status = "okay";
> > > +};
> > 
> > I'm right now trying to get SDIO RTL8822CS working, so far I'm out of luck,
> > but it can be added later once we got it working.
> 
> would you be interested in taking over my attempted patches? Thing is,
> that I am a userspace guy who only copy-pasted some entries from
> FriendlyElec and things happened to work, but I really have no clue what I am
> doing when it comes to hardware and DTS. I see that some changes were suggested, 
> not only by you above, but also by others earlier and I have little
> understanding of where I should be inserting what and how.
> 
> At this point I think it would make more sense if someone who actually
> understands what they are doing would continue to tune the DTS :)
> 
> So it'd be great if either you or anyone else would be willing to take
> over?

Though, a board devicetree is a nice way to get "your feet wet" in the
kernel :-) and for a lot of people scratching ones own itches gets them
started.

The devicetree is easy enough, also looks correct and you even got the
binding change correct - and you're the person with the actual board :-) .

Could you possibly test if the   mmc-hs200-1_8v; property works for you?


Thanks a lot
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
