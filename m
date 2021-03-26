Return-Path: <SRS0=Z0ts=IY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67ADBC433C1
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:25:03 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id DA5EE61A18
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Mar 2021 14:25:02 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org DA5EE61A18
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Uz9lqG2nEzKWVBxY16H6V5YdVrmtU3+KrBtDDpGcd90=; b=H5uAXiDbR6/dRzrjN4ITUhN4O
	cPGSs2TQMgS0hPb5NVdcYT6Vgbn7CYIwVGXlPy6S/ngE2yI5XpIHI6IallPgUiD8E5l65E/lqBTn+
	k6EIKPIr2JFSeaS4D6trZGLWEaRjDQ46iZ6Q0DoUrFbz0SHQXzKvk0Yqv4LycKgaUhyv/3v36N8PW
	nepah+Wzz1dV+I9TRV8sqdC2A3kIQ5hnlonc3tYm/0Ncr2ad7SHcBA14dMV/85JCQQhBuw32p3sDW
	ZTV5aqHEafqiN7rhDa1DPj7D5FjJ7jRvKpItpczv1sX9C0XDDfkC77VpOLMd1+PlvNaQh1LYW6mwm
	jFcmtjg8Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lPnOR-003lsa-EA; Fri, 26 Mar 2021 14:24:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lPnON-003lre-Te
 for linux-rockchip@lists.infradead.org; Fri, 26 Mar 2021 14:24:53 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnOE-0007g5-8r; Fri, 26 Mar 2021 15:24:42 +0100
Received: from pza by ptx.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <pza@pengutronix.de>)
 id 1lPnOC-0006zY-EG; Fri, 26 Mar 2021 15:24:40 +0100
Date: Fri, 26 Mar 2021 15:24:40 +0100
From: Philipp Zabel <pza@pengutronix.de>
To: Benjamin Gaignard <benjamin.gaignard@collabora.com>
Cc: ezequiel@collabora.com, mchehab@kernel.org, robh+dt@kernel.org,
 shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com,
 lee.jones@linaro.org, gregkh@linuxfoundation.org,
 mripard@kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 jernej.skrabec@siol.net, hverkuil-cisco@xs4all.nl,
 emil.l.velikov@gmail.com, kernel@pengutronix.de, linux-imx@nxp.com,
 linux-media@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
 kernel@collabora.com
Subject: Re: [PATCH v6 13/13] arm64: dts: imx8mq: Add node to G2 hardware
Message-ID: <20210326142440.GD8441@pengutronix.de>
References: <20210318082046.51546-1-benjamin.gaignard@collabora.com>
 <20210318082046.51546-14-benjamin.gaignard@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210318082046.51546-14-benjamin.gaignard@collabora.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-IRC: #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 15:21:32 up 36 days, 17:45, 97 users,  load average: 0.13, 0.09, 0.09
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: pza@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210326_142452_212347_82C2A134 
X-CRM114-Status: GOOD (  21.24  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Thu, Mar 18, 2021 at 09:20:46AM +0100, Benjamin Gaignard wrote:
> Split VPU node in two: one for G1 and one for G2 since they are
> different hardware blocks.
> Add syscon for hardware control block.
> Remove reg-names property that is useless.
> Each VPU node only need one interrupt.
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@collabora.com>
> ---
> version 5:
>  - use syscon instead of VPU reset
> 
>  arch/arm64/boot/dts/freescale/imx8mq.dtsi | 43 ++++++++++++++++++-----
>  1 file changed, 34 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mq.dtsi b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> index 17c449e12c2e..b537d153ebbd 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mq.dtsi
> @@ -1329,15 +1329,16 @@ usb3_phy1: usb-phy@382f0040 {
>  			status = "disabled";
>  		};
>  
> -		vpu: video-codec@38300000 {
> +		vpu_ctrl: syscon@38320000 {
> +			compatible = "nxp,imx8mq-vpu-ctrl", "syscon";
> +			reg = <0x38320000 0x10000>;
> +		};
> +
> +		vpu_g1: video-codec@38300000 {
>  			compatible = "nxp,imx8mq-vpu";
> -			reg = <0x38300000 0x10000>,
> -			      <0x38310000 0x10000>,
> -			      <0x38320000 0x10000>;
> -			reg-names = "g1", "g2", "ctrl";
> -			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>,
> -				     <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> -			interrupt-names = "g1", "g2";
> +			reg = <0x38300000 0x10000>;
> +			interrupts = <GIC_SPI 7 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "g1";
>  			clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
>  				 <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
>  				 <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> @@ -1350,9 +1351,33 @@ vpu: video-codec@38300000 {
>  						 <&clk IMX8MQ_VPU_PLL_OUT>,
>  						 <&clk IMX8MQ_SYS1_PLL_800M>,
>  						 <&clk IMX8MQ_VPU_PLL>;
> -			assigned-clock-rates = <600000000>, <600000000>,
> +			assigned-clock-rates = <600000000>, <300000000>,

I'd like to see this mentioned in the commit message.

> +					       <800000000>, <0>;
> +			power-domains = <&pgc_vpu>;
> +			nxp,imx8mq-vpu-ctrl = <&vpu_ctrl>;
> +		};
> +
> +		vpu_g2: video-codec@38310000 {
> +			compatible = "nxp,imx8mq-vpu-g2";
> +			reg = <0x38310000 0x10000>;
> +			interrupts = <GIC_SPI 8 IRQ_TYPE_LEVEL_HIGH>;
> +			interrupt-names = "g2";
> +			clocks = <&clk IMX8MQ_CLK_VPU_G1_ROOT>,
> +				 <&clk IMX8MQ_CLK_VPU_G2_ROOT>,
> +				 <&clk IMX8MQ_CLK_VPU_DEC_ROOT>;
> +			clock-names = "g1", "g2",  "bus";
> +			assigned-clocks = <&clk IMX8MQ_CLK_VPU_G1>,

Can the G1 clock configuration be dropped from the G2 device node and
the G2 clock configuration from the G1 device node? It looks weird that
these devices configure each other's clocks.

regards
Philipp

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
