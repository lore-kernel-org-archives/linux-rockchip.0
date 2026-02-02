Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8BAFDE7DF19
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Feb 2026 18:31:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eY5A5rzGnRa6KF7Z2ZPAB8Jqs3gdfrONBLZHQVMaBSM=; b=f2GlCbXIexYK4Q
	ey6/LDIRigS3CDkJhIqcVvykQTp5j5mPNT7KHwvnFhj62sQYnW205sVOI73mYRtUjruB4RSAvLNl7
	gU6f7GzGLSybuYXpwiX8lHSt+/H2FbEeLYJp8fxCwjSXAcFyzyY1uYCVdDlNi6vtM/+KAIXZEgweD
	gB6Idl/hJaRmdKDiK3tb3k7YMnmxplTkxiamAMu9naq6XH7+lXkC1I/f2NQHoTh86INkOf2pgpkZK
	EFNbp8I8hiFSzU1RnGIYY/jh9aKeSnlikv/oLjcMDwSwO+iJgmu2FKixdfJbGyLXYOjwWYwkDMM/s
	KTc2Un719j07bkGTqx4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmyhu-00000005QPW-3OEe;
	Mon, 02 Feb 2026 18:31:30 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vmyhn-00000005QO7-31xD;
	Mon, 02 Feb 2026 18:31:28 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 3AE3B41AF6;
	Mon,  2 Feb 2026 19:31:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1770057077; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=ld37UjSrFShX6fuqs3RJQ/EeY8ITkyXzpESPhn9usrs=;
	b=MBteqqARZXGcsH0GYP3VpJANeTMpcTpQ09y3zR6dwQ8S/ifFxcGckcXplFX0LoFjinIXbX
	KjG2YbMUqlNtZydk0wmgAMh6EkCoJd1CWcO8/1Rz7MpwvNZfx0dH9EM65p07tnd5ZxJLjy
	U+4eVKN7bbD48XcNBGqfm0C+dG2tllO3BRHC2nr7rXbvHP3ZL1K6oWEN3PqxKlRzeP3nCd
	nZbkGGJCgx8m6f9WeJUTwOZ0vVPXYRr/05acpBVQjOZ4ppDw9H1/8nukPL1W7rFdR6TOri
	vD3jrPBtpboigFMZB96TG99S5coXJ8dg/Pa5gXM8S6KZE0z6ddnSBvempWNNNg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <20260202150437.270567-4-jerrysteve1101@gmail.com>
References: <20260202150437.270567-1-jerrysteve1101@gmail.com> <20260202150437.270567-4-jerrysteve1101@gmail.com>
Date: Mon, 02 Feb 2026 19:31:13 +0100
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, heiko@sntech.de, alchark@gmail.com, andyshrk@163.com
To: "Jun Yan" <jerrysteve1101@gmail.com>
MIME-Version: 1.0
Message-ID: <705908c9-4552-d808-783e-3ce0cf45bbff@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH v3 3/3] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Add OneThing Edge Cube series
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260202_103124_146962_9348036B 
X-CRM114-Status: GOOD (  19.60  )
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

Hello Jun,

On Monday, February 02, 2026 16:04 CET, Jun Yan <jerrysteve1101@gmail.com> wrote:
> The OneThing Edge Cube (OEC) series features the RK3566 SoC, 8GB
> eMMC storage, and supports one SATA interface, one Gigabit Ethernet
> port, and one USB 3.0 port.
> 
> Other than the difference in RAM capacity, the OEC and OEC-turbo are
> identical in all other specifications.
> 
>   Specification:
>     - Rockchip RK3566
>     - LPDDR4X 2GB (OEC) / 4GB (OEC-turbo)
>     - eMMC 8GB
>     - Gigabit Ethernet port x 1
>     - USB 3.0 port x 1
>     - USB-C 2.0 port x 1
>     - 12V DC Power supply
>     - SATA 3.0 connector x 1
> 
> These devices do not have a PMIC, and their hardware circuit design
> is highly similar to that of the rk3566-box-demo[1]. Hardware schematics
> are not available at this time, with the vendor firmware dts available
> for reference[2].
> 
> Ethernet, USB 3.0 and SATA 3.0 ports tested, all working well.
> 
> [1] https://elixir.bootlin.com/linux/v6.18.6/source/arch/arm64/boot/dts/rockchip/rk3566-box-demo.dts
> [2] https://archive.org/download/wxy-oec-RK3566-4G-dump/wxy-oec-RK3566-4G-dump.dts
> 
> Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../rockchip/rk3566-onething-oec-series.dts   | 312 ++++++++++++++++++
>  2 files changed, 313 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 4d384f153c13..234fa53abe17 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -104,6 +104,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353v.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg353vs.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-anbernic-rg503.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-odroid-m1s.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-onething-oec-series.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v1.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-orangepi-3b-v2.1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-pinenote-v1.1.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> new file mode 100644
> index 000000000000..2007b93e190e
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-onething-oec-series.dts
> @@ -0,0 +1,312 @@
> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
> +
> +/dts-v1/;
> +
> +#include <dt-bindings/gpio/gpio.h>
> +#include <dt-bindings/leds/common.h>
> +#include <dt-bindings/pinctrl/rockchip.h>
> +#include "rk3566.dtsi"
> +
> +/ {
> +	model = "OneThing OEC/OEC-turbo";
> +	compatible = "onething,oec-turbo", "onething,oec", "rockchip,rk3566";

Thanks for the v3!  After thinking a bit more about it, it would be better
to name the board dtb "rk3566-onething-edge-cube.dtb" and omit the "series"
part, because the only difference between the board variants is the amount
of DRAM.  Also, "onething,oec-turbo" should be removed from the compatibles,
and the single compatible renamed to "onething,edge-cube", because I see no
need to have an additional compatible, which may be added later if really
needed for some unforeseen differentiating purpose.

Also, it might be better to use "OneThing Edge Cube/Edge Cube Turbo" as the
combined name, because "Edge Cube" is more self-descriptive than just "OEC",
which may also help with various search engines down the road.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
