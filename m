Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1B076C4345F
	for <linux-rockchip@archiver.kernel.org>; Sun,  5 May 2024 12:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9LbAvVUFrjdVBYDPqt/iiqqnj10xdT1pi4HdwNoh5JM=; b=M82bCFYvyfyvKf
	3VnPLCXmam2ED3tp2/haSzbLjMdjSKOzjOBjpT9iu/IaMJDcYPGxiY6UYWtC/uadGkV9VEGzCOyJb
	Y7yQjVhUyxV6fZhLubrMvV+gPS4Kf3pzhgUNUWJFhm7c3JqNV8IWB2m7v8yJ73vycT0JZzRTPlfd3
	HcAHE/JKAyZVJvypQI8brOXvQxSRa2ZUHjto72JzbRIT+xX+fdoH9S3c68gYzyTsVBTrL2R1ZSv6o
	VKHgWGYpSJfjMq4/XtXJ4RmwgvQ1ugge9ecsK3P01YE+wRUSLZdc6Tc0EHf3X+ERuGVDDue5sLpxG
	HDQU5po8V4HYbnS6cHvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3alt-00000004Duw-1lxY;
	Sun, 05 May 2024 12:15:13 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s3alq-00000004Dtt-0ZxX
	for linux-rockchip@lists.infradead.org;
	Sun, 05 May 2024 12:15:11 +0000
Received: from i53875b5d.versanet.de ([83.135.91.93] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1s3alS-0004dC-DW; Sun, 05 May 2024 14:14:46 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Niklas Cassel <cassel@kernel.org>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Jingoo Han <jingoohan1@gmail.com>, Bjorn Helgaas <bhelgaas@google.com>,
 Lorenzo Pieralisi <lpieralisi@kernel.org>,
 Krzysztof =?utf-8?B?V2lsY3p5xYRza2k=?= <kw@linux.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
 Damien Le Moal <dlemoal@kernel.org>, Jon Lin <jon.lin@rock-chips.com>,
 Shawn Lin <shawn.lin@rock-chips.com>, Simon Xue <xxm@rock-chips.com>,
 linux-pci@vger.kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v2 14/14] arm64: dts: rockchip: Add rock5b overlays for PCIe
 endpoint mode
Date: Sun, 05 May 2024 14:14:45 +0200
Message-ID: <2986540.X9hSmTKtgW@diego>
In-Reply-To: <20240504173730.GK4315@thinkpad>
References: <20240430-rockchip-pcie-ep-v1-v2-0-a0f5ee2a77b6@kernel.org>
 <20240430-rockchip-pcie-ep-v1-v2-14-a0f5ee2a77b6@kernel.org>
 <20240504173730.GK4315@thinkpad>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240505_051510_220236_07FCCAAF 
X-CRM114-Status: GOOD (  30.84  )
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

Am Samstag, 4. Mai 2024, 19:37:30 CEST schrieb Manivannan Sadhasivam:
> On Tue, Apr 30, 2024 at 02:01:11PM +0200, Niklas Cassel wrote:
> > Add rock5b overlays for PCIe endpoint mode support.
> > 
> 
> I'm not aware of mainline using overlays. Is this a new one?

I guess you could still call it new'ish ;-)

But the mainline kernel does carry a number of overlays already [0] .
This does of course not handle the actual application of overlays,
which I guess bootloaders do only at this point.

But I think it's definitely reasonable to carry them in a "central" location
especially as for example u-boot uses the kernel as canonical source
for most of its devicetrees.


Heikoi


[0] some random examples ;-)
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/amlogic/meson-g12a-fbx8am-realtek.dtso
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/mediatek/mt7986a-bananapi-bpi-r3-emmc.dtso
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6a-wifi.dtso

> > If using the rock5b as an endpoint against a normal PC, only the
> > rk3588-rock-5b-pcie-ep.dtbo needs to be applied.
> > 
> > If using two rock5b:s, with one board as EP and the other board as RC,
> > rk3588-rock-5b-pcie-ep.dtbo and rk3588-rock-5b-pcie-srns.dtbo has to
> > be applied to the respective boards.
> > 
> > Signed-off-by: Niklas Cassel <cassel@kernel.org>
> > ---
> >  arch/arm64/boot/dts/rockchip/Makefile              |  5 +++++
> >  .../boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso  | 25 ++++++++++++++++++++++
> >  .../dts/rockchip/rk3588-rock-5b-pcie-srns.dtso     | 16 ++++++++++++++
> >  3 files changed, 46 insertions(+)
> > 
> > diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> > index f906a868b71a..d827432d5111 100644
> > --- a/arch/arm64/boot/dts/rockchip/Makefile
> > +++ b/arch/arm64/boot/dts/rockchip/Makefile
> > @@ -117,6 +117,8 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-nanopc-t6.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-orangepi-5-plus.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-quartzpro64.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b.dtb
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-ep.dtbo
> > +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-rock-5b-pcie-srns.dtbo
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-tiger-haikou.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-toybrick-x0.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588-turing-rk1.dtb
> > @@ -127,3 +129,6 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6s.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-nanopi-r6c.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-rock-5a.dtb
> >  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3588s-orangepi-5.dtb
> > +
> > +# Enable support for device-tree overlays
> > +DTC_FLAGS_rk3588-rock-5b += -@
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> > new file mode 100644
> > index 000000000000..672d748fcc67
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-ep.dtso
> > @@ -0,0 +1,25 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * DT-overlay to run the PCIe3_4L Dual Mode controller in Endpoint mode
> > + * in the SRNS (Separate Reference Clock No Spread) configuration.
> > + *
> > + * NOTE: If using a setup with two ROCK 5B:s, with one board running in
> > + * RC mode and the other board running in EP mode, see also the device
> > + * tree overlay: rk3588-rock-5b-pcie-srns.dtso.
> > + */
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +&pcie30phy {
> > +	rockchip,rx-common-refclk-mode = <0 0 0 0>;
> > +};
> > +
> > +&pcie3x4 {
> > +	status = "disabled";
> > +};
> > +
> > +&pcie3x4_ep {
> > +	vpcie3v3-supply = <&vcc3v3_pcie30>;
> > +	status = "okay";
> > +};
> > diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
> > new file mode 100644
> > index 000000000000..1a0f1af65c43
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-pcie-srns.dtso
> > @@ -0,0 +1,16 @@
> > +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> > +/*
> > + * DT-overlay to run the PCIe3_4L Dual Mode controller in Root Complex
> > + * mode in the SRNS (Separate Reference Clock No Spread) configuration.
> > + *
> > + * This device tree overlay is only needed (on the RC side) when running
> > + * a setup with two ROCK 5B:s, with one board running in RC mode and the
> > + * other board running in EP mode.
> > + */
> > +
> > +/dts-v1/;
> > +/plugin/;
> > +
> > +&pcie30phy {
> > +	rockchip,rx-common-refclk-mode = <0 0 0 0>;
> > +};
> > 
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
