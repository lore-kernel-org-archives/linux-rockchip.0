Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3E5AECAAD8
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Sep 2022 13:12:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=234/Xk639ge1pnNUlbrjgfosw9F/k/6Vw0ddoEDZAgI=; b=w6XrVmItced/8F
	WKsHx1i5pNqkZ1TSdzXdA9IdqmNt5/RB+INLClqffJb+ceHN8bz7mVKTcs8KxRxlztzn6/co4L1q/
	CbJJcswb1Z+Np1H7C92P6skGVPbIDosyjbF39hnjU+8AtdSgtjqgf9F8LkFT3Fn+zqmKVGk6JrqrL
	L0apIEFnq0mOTMXYT5zMsEwm/JGCiQT6YPTDjpn1zccL0/DH1qKwkPDQ9JVqQivfn2nEGDg/oQX3l
	hs8EbyBNDnJjKpjypoKz55OOWP2lSfciJWH1RxWjeCBqeq1rXiykeol6DaAojmPri6S2aMBkI4vY2
	L80hobnkthPr59HqlF+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZB8w-00DWik-Pj; Fri, 16 Sep 2022 13:12:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZB8i-00DWcT-HB; Fri, 16 Sep 2022 13:12:20 +0000
Received: from [89.101.193.70] (helo=phil.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oZB8d-00035v-NI; Fri, 16 Sep 2022 15:12:11 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, Alessandro Carminati <alessandro.carminati@gmail.com>
Subject: Re: [PATCH 2/2] Add sata version of the quartz64-a board
Date: Fri, 16 Sep 2022 15:12:10 +0200
Message-ID: <2385186.jE0xQCEvom@phil>
In-Reply-To: <YyRxx4zovhMMeQYV@lab.hqhome163.com>
References: <YyRxx4zovhMMeQYV@lab.hqhome163.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220916_061216_598036_35006CC1 
X-CRM114-Status: GOOD (  23.77  )
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

Hi Alessandro,

Am Freitag, 16. September 2022, 14:53:27 CEST schrieb Alessandro Carminati:
> The Quartz64 board is built upon Rockchip RK3566.
> Rockchip RK3566 has two combo phys.
> The first connects USB3 and SATA ctrl1, and the second PCIe lane and SATA
> ctrl2.
> The second combo phy is hardwired to the PCIe slot, where for the first,
> the hardware on the board provides both the USB3 connector and the SATA
> connector.
> This DT allows the users to switch the combo phy to the SATA connector.
> 
> Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>

I'm not really sure what the best way to do this is.

For one, this is mainly a configuration thing, so I was more thinking
about a devicetree-overlay as the right thing to use.

On the other hand this is touches essential a device you may want to
boot from. Though an initramfs may be able to solve this.

So I'm really not sure - maybe the dt-maintainers can provide some
direction :-)


Some more general stuff below (and here):

Please always use prefixes in your patch subject matching
the subsystem - can be found by just using "git log" on the directory.

Here it would be "arm64: dts: rockchip: foo"

> ---
>  arch/arm64/boot/dts/rockchip/Makefile                   | 1 +
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts | 9 +++++++++
>  2 files changed, 10 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 97ec6c156346..5c82881a92d3 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -60,6 +60,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3399pro-rock-pi-n10.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.usb3.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-a.sata.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-quartz64-b.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-roc-pc.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-soquartz-cm4.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts
> new file mode 100644
> index 000000000000..8620df7ec01e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.sata.dts
> @@ -0,0 +1,9 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include "rk3566-quartz64-a.dtsi"
> +
> +&sata1 {
> +	status = "okay";
> +};

I guess you may want to disable the now unused usb controller?


Heiko







_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
