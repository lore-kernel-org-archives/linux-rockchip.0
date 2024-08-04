Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07FA1C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Sun,  4 Aug 2024 00:28:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GETge3tMBNMuhCSjKH3kSvU3SqGD0UYfyQ6zMwTNU48=; b=GdG1tAaLzmio/3
	GvwIiMOo+SXJKbG9TmQk3O4+DvF1Gin9zFHwPzS3NLyuUu0QXAfiJi2nrP8B+dGzksEcTUSAF1Cno
	WoAcRwn+fARIvA16PZPbruERYMGEKBujXDnjgkhvhfRSUno/PBhM8SNliZHrOWGPvyvzeX+cPtowX
	pv06czGK90FIQApGdBgENc4tRnGSjrtPX89+1xRi/V9+L2a3k9ceelfUa4Jmx9yTtxF6z/r8v5wlP
	0FQrfX5ERwOIPu/zuyQCAWZoDIuFqut4sL+wY74FrG6Gb9dGypAlIXcgALS5qSNZAZzaQmD9pprSs
	rwP7klKHK4bM2MKMk5Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saP6y-0000000CLmQ-3sPx;
	Sun, 04 Aug 2024 00:28:36 +0000
Received: from pidgin.makrotopia.org ([2a07:2ec0:3002::65])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1saP6S-0000000CLhW-2Nov;
	Sun, 04 Aug 2024 00:28:06 +0000
Received: from local
	by pidgin.makrotopia.org with esmtpsa (TLS1.3:TLS_AES_256_GCM_SHA384:256)
	 (Exim 4.98)
	(envelope-from <daniel@makrotopia.org>)
	id 1saP6L-000000008CO-2Cfm;
	Sun, 04 Aug 2024 00:27:57 +0000
Date: Sun, 4 Aug 2024 01:27:50 +0100
From: Daniel Golle <daniel@makrotopia.org>
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH V2 1/2 RESEND] arm64: dts: rockchip: Add DTS for
 FriendlyARM NanoPi R2S Plus
Message-ID: <Zq7LBqKVvVVVLg7a@makrotopia.org>
References: <22bbec28-41c1-4f36-b776-6e091bf118d9@kernel.org>
 <20240801175736.16591-1-jin@mediatomb.cc>
 <20240801175736.16591-2-jin@mediatomb.cc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240801175736.16591-2-jin@mediatomb.cc>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240803_172804_636218_99890B14 
X-CRM114-Status: GOOD (  19.22  )
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

On Thu, Aug 01, 2024 at 05:57:35PM +0000, Sergey Bostandzhyan wrote:
> The R2S Plus is basically an R2S with additional eMMC.
> 
> The eMMC configuration for the DTS has been extracted and copied from
> rk3328-nanopi-r2.dts, v2017.09 branch from the friendlyarm/uboot-rockchip
> repository.
> 
> Signed-off-by: Sergey Bostandzhyan <jin@mediatomb.cc>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |  1 +
>  .../dts/rockchip/rk3328-nanopi-r2s-plus.dts   | 31 +++++++++++++++++++
>  2 files changed, 32 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index fda1b980eb4b..36258dc8dafd 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -20,6 +20,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-evb.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2c-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-nanopi-r2s-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-orangepi-r1-plus-lts.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3328-rock64.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> new file mode 100644
> index 000000000000..7b83090a2145
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> @@ -0,0 +1,31 @@
> +// SPDX-License-Identifier: GPL-2.0+
> +/*
> + * (C) Copyright 2018 FriendlyElec Computer Tech. Co., Ltd.
> + * (http://www.friendlyarm.com)
> + *
> + * (C) Copyright 2016 Rockchip Electronics Co., Ltd
> + */
> +
> +/dts-v1/;
> +#include "rk3328-nanopi-r2s.dts"
> +
> +/ {
> +	model = "FriendlyElec NanoPi R2S Plus";
> +	compatible = "friendlyarm,nanopi-r2s-plus", "rockchip,rk3328";
> +
> +	aliases {
> +		mmc1 = &emmc;
> +	};
> +};
> +
> +&emmc {
> +	bus-width = <8>;
> +	cap-mmc-highspeed;
> +	supports-emmc;
> +	disable-wp;
> +	non-removable;
> +	num-slots = <1>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;

I think it's worth adding

	mmc-hs200-1_8v;


I've tried getting the best speed possible and while HS400 with and
without enhanced strobe did NOT work, hs200 works just fine.
[    0.459863] mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
[    0.460884] mmc_host mmc1: Bus speed (slot 0) = 150000000Hz (slot req 150000000Hz, actual 150000000HZ div = 0)
...
[    0.728220] dwmmc_rockchip ff520000.mmc: Successfully tuned phase to 194
[    0.728940] mmc1: new HS200 MMC card at address 0001
[    0.730774] mmcblk1: mmc1:0001 A3A551 28.9 GiB
[    0.733262]  mmcblk1: p1 p2
[    0.734562] mmcblk1boot0: mmc1:0001 A3A551 4.00 MiB
[    0.736818] mmcblk1boot1: mmc1:0001 A3A551 4.00 MiB
[    0.738503] mmcblk1rpmb: mmc1:0001 A3A551 16.0 MiB, chardev (245:0)

root@OpenWrt:/# hdparm -t /dev/mmcblk1

/dev/mmcblk1:
 Timing buffered disk reads: 342 MB in  3.00 seconds = 113.81 MB/sec


Without 'mmc-hs200-1_8v' property in DT the eMMC is detected as
[    0.440465] mmc_host mmc1: Bus speed (slot 0) = 50000000Hz (slot req 52000000Hz, actual 50000000HZ div = 0)
[    0.442032] mmc1: new high speed MMC card at address 0001
[    0.444261] mmcblk1: mmc1:0001 A3A551 28.9 GiB
[    0.447388]  mmcblk1: p1 p2
[    0.448744] mmcblk1boot0: mmc1:0001 A3A551 4.00 MiB
[    0.451065] mmcblk1boot1: mmc1:0001 A3A551 4.00 MiB
[    0.452871] mmcblk1rpmb: mmc1:0001 A3A551 16.0 MiB, chardev (245:0)


root@OpenWrt:/# hdparm -t /dev/mmcblk1

/dev/mmcblk1:
 Timing buffered disk reads: 134 MB in  3.03 seconds =  44.18 MB/sec


> +	status = "okay";
> +};

I'm right now trying to get SDIO RTL8822CS working, so far I'm out of luck,
but it can be added later once we got it working.

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
