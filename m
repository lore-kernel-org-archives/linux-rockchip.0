Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 84A90C77B73
	for <linux-rockchip@archiver.kernel.org>; Tue,  2 May 2023 09:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DaNPNAsypZrpUAZ1A+sqhJmRQHhSix84HSqUGUNTCCc=; b=iuupLbSOeJtEq2
	6/E05oc8kbaE925s1oPR1fY47Dp41MV1XAtCaUlZxHk3LiC70AQszo6ieE13UkvGrBs4AsdZP6Cg3
	04TdXmpOR7UC+MJlD1SHeBm9zXrpKI+N/aHlXNdkDzaygzdkziUbNhn65PqdnQ0wGx96jgy7ASzl7
	IFqwWxMnMat10F1l6g/KP5oCntpqk0Xbk6Egfbxs2VXEBU0McV1NeikhHSHdITPWYPCSPSRZlrXqE
	xwdqVm16Po+995EHnOkIsO5tRgcB6EHaV988MyK7PnJf1kS4WYJzCNIe/FTQiA1vt5dX1XprFsWIk
	jSZuEN2igSTbrlVzMWqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmJP-000m14-2r;
	Tue, 02 May 2023 09:28:43 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptmJM-000m0B-0W;
	Tue, 02 May 2023 09:28:41 +0000
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1ptmJ5-0006fd-IQ; Tue, 02 May 2023 11:28:23 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Jagan Teki <jagan@amarulasolutions.com>, Tianling Shen <cnsztl@gmail.com>,
 Peter Geis <pgwipeout@gmail.com>, Andy Yan <andyshrk@163.com>,
 Chris Morgan <macromorgan@hotmail.com>,
 Brian Norris <briannorris@chromium.org>, Andrew Lunn <andrew@lunn.ch>,
 Shawn Guo <shawnguo@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Sebastian Reichel <sebastian.reichel@collabora.com>,
 Maya Matuszczyk <maccraft123mc@gmail.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Tianling Shen <cnsztl@gmail.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: Add Lunzn Fastrhino R66S
Date: Tue, 02 May 2023 11:28:22 +0200
Message-ID: <5782501.VdNmn5OnKV@diego>
In-Reply-To: <20230428013738.30735-2-cnsztl@gmail.com>
References:  <20230428013738.30735-1-cnsztl@gmail.com>
 <20230428013738.30735-2-cnsztl@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_022840_221760_A0255401 
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

Hi,

Am Freitag, 28. April 2023, 03:37:37 CEST schrieb Tianling Shen:
> Lunzn Fastrhino R66S is a high-performance mini router.
> 
> Specification:
> - Rockchip RK3568
> - 1/2GB LPDDR4 RAM
> - SD card slot
> - M.2 Connector
> - 2x USB 3.0 Port
> - 2x 2500 Base-T (PCIe, r8125b)
> - 12v DC Jack
> 
> Signed-off-by: Tianling Shen <cnsztl@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../dts/rockchip/rk3568-fastrhino-r66s.dts    |  27 +
>  .../dts/rockchip/rk3568-fastrhino-r66s.dtsi   | 507 ++++++++++++++++++
>  3 files changed, 535 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dtsi
> 
> diff --git a/arch/arm64/boot/dts/rockchip/Makefile b/arch/arm64/boot/dts/rockchip/Makefile
> index 2d585bbb8f3a..15089a78555a 100644
> --- a/arch/arm64/boot/dts/rockchip/Makefile
> +++ b/arch/arm64/boot/dts/rockchip/Makefile
> @@ -85,6 +85,7 @@ dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-box-demo.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3566-lubancat-1.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-bpi-r2-pro.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-evb1-v10.dtb
> +dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-fastrhino-r66s.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-lubancat-2.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5c.dtb
>  dtb-$(CONFIG_ARCH_ROCKCHIP) += rk3568-nanopi-r5s.dtb
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
> new file mode 100644
> index 000000000000..fc9e1bdab128
> --- /dev/null
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-fastrhino-r66s.dts
> @@ -0,0 +1,27 @@
> +// SPDX-License-Identifier: GPL-2.0-or-later OR MIT
> +
> +#include "rk3568-fastrhino-r66s.dtsi"
> +
> +/ {
> +	model = "Lunzn FastRhino R66S";
> +	compatible = "lunzn,fastrhino-r66s", "rockchip,rk3568";
> +
> +	aliases {
> +		mmc0 = &sdmmc0;
> +	};
> +};
> +
> +&sdmmc0 {

that whole element seems to be duplicated from rk3568-fastrhino-r66s.dtsi?
I don't think we need to declare that twice. If something really changes,
please only declare the new properties when going from dtsi to dts.

> +	max-frequency = <150000000>;
> +	no-sdio;
> +	no-mmc;
> +	bus-width = <4>;
> +	cap-mmc-highspeed;
> +	cap-sd-highspeed;
> +	disable-wp;
> +	vmmc-supply = <&vcc3v3_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +	status = "okay";
> +};

Thanks
Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
