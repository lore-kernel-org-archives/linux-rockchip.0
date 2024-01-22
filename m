Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BE77FC4725D
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jan 2024 13:10:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tk4k8CoWxKnN+7bhmRT97MBUDmbzoJniYJyhKdxvJl0=; b=RJcLEHYWIw9F+0
	TLxNnRg1QQQ3T8NMyjeZ1R7Q0NFCXS5e9dIt8Zgzsgc1UOiodimUUCaRDVw5u9I9heECfRWL7GxnR
	kgw2rKRV8CpHsS+Vf2Yl38WBY+/cRgaEqrDZ+xNUWQbj+QcAiDFrGUWnj4ea6Ot0U9fWkURSA0w8N
	fku/ghsTMxls6ACumziwjARaiK3cECnq4+yJXoR/wAjxEbXomBXkB8xj67aCkhlU/vx7m52OiWWot
	Eo3q4AaQ9eVxM5dYqGMQXmy3+pN0RpzOtGfTHrXgRRP3T9WGlafSKUDWwAUm5E599iUXI8rcO/0tl
	Rmv6qfoiWZfj4DVj5DNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rRu3j-00CEVm-0X;
	Mon, 22 Jan 2024 13:09:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rRu3e-00CETd-2W;
	Mon, 22 Jan 2024 13:09:49 +0000
Received: from i53875b8c.versanet.de ([83.135.91.140] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1rRu3Z-00053L-9z; Mon, 22 Jan 2024 14:09:41 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "krzysztof.kozlowski+dt@linaro.org" <krzysztof.kozlowski+dt@linaro.org>,
 "conor+dt@kernel.org" <conor+dt@kernel.org>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Iskander Amara <iskander.amara@theobroma-systems.com>
Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>
Subject: Re: [PATCH v2] arm64: dts: rockchip: add missing definition of pmu io domains
 1 and 2 on ringneck
Date: Mon, 22 Jan 2024 14:09:40 +0100
Message-ID: <3388688.6M6d0yLqnL@diego>
In-Reply-To: <VI1PR04MB6013A6A65AF95BB80067E601D6752@VI1PR04MB6013.eurprd04.prod.outlook.com>
References: <20240103164734.1151290-1-iskander.amara@theobroma-systems.com>
 <VI1PR04MB6013A6A65AF95BB80067E601D6752@VI1PR04MB6013.eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240122_050946_817448_086766FF 
X-CRM114-Status: GOOD (  22.53  )
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

Hi Iskander,

Am Montag, 22. Januar 2024, 13:17:50 CET schrieb Iskander Amara:
> Dear Ladies and Gentlemen,
> Is there any feedback about the patch below that you would like to share?

no feedback, change looks good.

I was mainly waiting for the merge-window to close, so that
I can get a nice 6.8-rc1 as base :-)

Heiko

> ________________________________
> From: Iskander Amara <iskander.amara@theobroma-systems.com>
> Sent: Wednesday, January 3, 2024 5:47 PM
> To: robh+dt@kernel.org <robh+dt@kernel.org>; krzysztof.kozlowski+dt@linaro.org <krzysztof.kozlowski+dt@linaro.org>; conor+dt@kernel.org <conor+dt@kernel.org>; heiko@sntech.de <heiko@sntech.de>; devicetree@vger.kernel.org <devicetree@vger.kernel.org>; linux-arm-kernel@lists.infradead.org <linux-arm-kernel@lists.infradead.org>; linux-rockchip@lists.infradead.org <linux-rockchip@lists.infradead.org>; linux-kernel@vger.kernel.org <linux-kernel@vger.kernel.org>
> Cc: Quentin Schulz <quentin.schulz@theobroma-systems.com>; Iskander Amara <iskander.amara@theobroma-systems.com>
> Subject: [PATCH v2] arm64: dts: rockchip: add missing definition of pmu io domains 1 and 2 on ringneck
> 
> Two pmuio domains on ringneck are not defined:
>         1- PMUIO1: supplied by vcc_3v3 regulator(PMIC RK809)
>         2- PMUIO2: supplied by vcc_3v3 regulator(PMIC RK809)
> 
> The reason why no functional effect was observed is because of that
> the above mentionned PMUIO domains were supplied by a regulator
> which is always on.
> 
> So let's add their definition in the dtsi.
> 
> Signed-off-by: Iskander Amara <iskander.amara@theobroma-systems.com>
> ---
> v2:
>         - Fix indentation
>  arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> index 12397755830b..bb1aea82e666 100644
> --- a/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/px30-ringneck.dtsi
> @@ -347,6 +347,12 @@ pmic_int: pmic-int {
>          };
>  };
> 
> +&pmu_io_domains {
> +       pmuio1-supply = <&vcc_3v3>;
> +       pmuio2-supply = <&vcc_3v3>;
> +       status = "okay";
> +};
> +
>  &saradc {
>          vref-supply = <&vcc_1v8>;
>          status = "okay";
> --
> 2.34.1
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
