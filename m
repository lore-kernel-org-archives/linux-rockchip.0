Return-Path: <SRS0=H/Xe=M2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71D7CC432BE
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 20:48:24 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id E732E60EC0
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Aug 2021 20:48:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org E732E60EC0
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=sntech.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7TNsl1Pot3HLd6Q1YEVB3pXIoRbsU3WhKVfLp7FdxAU=; b=kZtILDrvYQJSC1
	89AXWh+RNS5dODFKWH+2L7dY2P0CGMOUVT+wFEFLAVoA6hEN1g3Olv8OHpCvxiKCZgEA1lRihbrYz
	GyU866Nt0F7m6Tm9I8Ldb9yKIoA659SxoHy9+8CScwi9KGZaz7oS5QBRTJ6bZ9fyrJACFtEHu4aT4
	yP8FKS2af6YyBhYZ7cOE5mgTACQJ87cyiFublZH4ABo/VwWiOmZfy+AE34oZbmRRFupzBgZQH3aUc
	FVN5a0w0h4vb2jTSgdVMSONHveqOaH3/o6HoFgQf0LSlYdO/oWNaaUipV05qVN0NaWMc2UlkmdAqh
	pxSlSIvDLC1NpFHVdE6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mB1Km-004CKr-QO; Tue, 03 Aug 2021 20:48:20 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mB1KY-004CGY-TB; Tue, 03 Aug 2021 20:48:08 +0000
Received: from ip5f5aa64a.dynamic.kabel-deutschland.de ([95.90.166.74]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mB1KX-0003f1-Ks; Tue, 03 Aug 2021 22:48:05 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
 Michael Riesch <michael.riesch@wolfvision.net>
Cc: Rob Herring <robh+dt@kernel.org>, Liang Chen <cl@rock-chips.com>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 Michael Riesch <michael.riesch@wolfvision.net>, Simon Xue <xxm@rock-chips.com>
Subject: Re: [PATCH 5/5] arm64: dts: rockchip: rk3568-evb1-v10: add node for
 sd card
Date: Tue, 03 Aug 2021 22:48:04 +0200
Message-ID: <2936848.7s5MMGUR32@diego>
In-Reply-To: <20210803185309.10013-6-michael.riesch@wolfvision.net>
References: <20210803185309.10013-1-michael.riesch@wolfvision.net>
 <20210803185309.10013-6-michael.riesch@wolfvision.net>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210803_134807_079483_BCFC5BC3 
X-CRM114-Status: GOOD (  16.31  )
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

Am Dienstag, 3. August 2021, 20:53:09 CEST schrieb Michael Riesch:
> Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
> ---
>  arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts | 15 +++++++++++++++
>  1 file changed, 15 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> index 3ac70a8183c4..b0f5aa8c979c 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3568-evb1-v10.dts
> @@ -17,6 +17,7 @@
>  		ethernet0 = &gmac0;
>  		ethernet1 = &gmac1;
>  		emmc = &sdhci;
> +		sd = &sdmmc0;

same thing as in the previous patch.

I guess you may want something like

	mmc0 = &sdhci;
	mmc1 = &sdmmc0;

maybe?


Heiko

>  	};
>  
>  	chosen: chosen {
> @@ -353,6 +354,20 @@
>  	status = "okay";
>  };
>  
> +&sdmmc0 {
> +	bus-width = <4>;
> +	cap-sd-highspeed;
> +	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
> +	disable-wp;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
> +	sd-uhs-sdr104;
> +	supports-sd;
> +	vmmc-supply = <&vcc3v3_sd>;
> +	vqmmc-supply = <&vccio_sd>;
> +	status = "okay";
> +};
> +
>  &uart2 {
>  	status = "okay";
>  };
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
