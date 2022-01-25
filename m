Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96594C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 25 Jan 2022 18:19:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:Cc:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ltc+lbiBtzTyFoJ1+E9taDP/tMBKo6nPo1sZv7Vr7TM=; b=t6TwLvIV2UG/+4
	Ikb3Jb0Gm6fSzFxkaq1LicF7rTJ+bA3X6xJgEj04S8DQ6Li3wNnM7q0n/6mF4F5126O3+hosydXDY
	AZWQ+/TMBgsxDaVKuimBuakiAQ1kDg4tHt0uX8w96Vm9MewZIMCuEr6OXYm2iNxxl4wDdyj49bQnw
	A18QL7dPoWH85DDTNWskTnfDeBd0tiwQgw51uLTkfL7dZUyThWriq+lPqxvfRhW3HMWBTrgKygYYm
	ztyhFUgDIuqSbfk1ZsnPggIPfWv7oTPfT/62onW/L0G9PfoqX6KMaOh5e3Yfbv96hzS3K1J37N54y
	oSA4vvk1bfwD6YSOk6lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCQPt-009C7n-V2; Tue, 25 Jan 2022 18:19:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCQPr-009C6G-Fc
 for linux-rockchip@lists.infradead.org; Tue, 25 Jan 2022 18:19:40 +0000
Received: from gallifrey.ext.pengutronix.de
 ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>)
 id 1nCQPZ-000612-AU; Tue, 25 Jan 2022 19:19:21 +0100
Message-ID: <3b1c784ac4e21c2e6d5a645fdf673aa47348c6f4.camel@pengutronix.de>
Subject: Re: [PATCH V4 08/11] arm64: dts: imx8mm: Fix VPU Hanging
From: Lucas Stach <l.stach@pengutronix.de>
To: Adam Ford <aford173@gmail.com>, linux-media@vger.kernel.org
Cc: aford@beaconembedded.com, cphealy@gmail.com, Ezequiel Garcia
 <ezequiel@vanguardiasur.com.ar>, Philipp Zabel <p.zabel@pengutronix.de>, 
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring
 <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>, Sascha Hauer
 <s.hauer@pengutronix.de>, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-staging@lists.linux.dev
Date: Tue, 25 Jan 2022 19:19:16 +0100
In-Reply-To: <20220125171129.472775-9-aford173@gmail.com>
References: <20220125171129.472775-1-aford173@gmail.com>
 <20220125171129.472775-9-aford173@gmail.com>
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220125_101939_532167_88066B4F 
X-CRM114-Status: GOOD (  12.57  )
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

Am Dienstag, dem 25.01.2022 um 11:11 -0600 schrieb Adam Ford:
> The vpumix power domain has a reset assigned to it, however
> when used, it causes a system hang.  Testing has shown that
> it does not appear to be needed anywhere.
> 
> Fixes: d39d4bb15310 ("arm64: dts: imx8mm: add GPC node")
> Signed-off-by: Adam Ford <aford173@gmail.com>

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm.dtsi b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> index f77f90ed416f..0c7a72c51a31 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm.dtsi
> @@ -707,7 +707,6 @@ pgc_vpumix: power-domain@6 {
>  						clocks = <&clk IMX8MM_CLK_VPU_DEC_ROOT>;
>  						assigned-clocks = <&clk IMX8MM_CLK_VPU_BUS>;
>  						assigned-clock-parents = <&clk IMX8MM_SYS_PLL1_800M>;
> -						resets = <&src IMX8MQ_RESET_VPU_RESET>;
>  					};
>  
>  					pgc_vpu_g1: power-domain@7 {



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
