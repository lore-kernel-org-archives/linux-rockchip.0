Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id F32DCC32772
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 11:56:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9EQ3NxGiahsr7jlK4x0AD5gfBuYU+zwr8j8PYxRUYwk=; b=ZDWJTE8x+5/Sm1
	IjQZosi6OqDZ/CUgohQWKEH2TR8qrgANF2eku0dSbIvDQK9xGppt0K0GBiuHX2k2lCkFvH1PybZUz
	26WsHZG+amr/Jp73H8axv1Po4kYDRE6oZbhbAe0gsB3QxoYaeBt+16RUAwcp2QkpwXwkNn4tgzN5o
	lKKk27+q3vmc/d581kMRvDK/AZHCBBRll/7UDaSeOdrAbJl9TXIMIOYVIBHPLZ3+1nm0nU4aNQebm
	vwN73ZnlVzU1Yy1gj7Z+rXSNqEUj66YdG2zgncSHf4ymmkdMi9ZDU/Q6pIDpnTvHfsbLculd0wPP6
	vRErmnWGIkCm54ve0JXQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQSVf-005b5Q-5Y; Tue, 23 Aug 2022 11:55:55 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQSTk-005ZpY-Vd; Tue, 23 Aug 2022 11:54:01 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oQSTe-0004TT-EA; Tue, 23 Aug 2022 13:53:50 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Vinod Koul <vkoul@kernel.org>, Chris Ruehl <chris.ruehl@gtsys.com.hk>, Jensen Huang <jensenhuang@friendlyarm.com>, Brian Norris <briannorris@chromium.org>, Doug Anderson <dianders@chromium.org>
Cc: Jensen Huang <jensenhuang@friendlyarm.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: add enable-strobe-pulldown to emmc phy on rk3399
Date: Tue, 23 Aug 2022 13:53:49 +0200
Message-ID: <23552842.6Emhk5qWAg@diego>
In-Reply-To: <20220822074139.3810-1-jensenhuang@friendlyarm.com>
References: <20220822074139.3810-1-jensenhuang@friendlyarm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_045358_961175_31BB52FD 
X-CRM114-Status: GOOD (  15.98  )
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

Am Montag, 22. August 2022, 09:41:39 CEST schrieb Jensen Huang:
> Internal pull-down for strobe line (GRF_EMMCPHY_CON2[9]) was disabled
> by commit 8b5c2b45b8f0, which causes I/O error in HS400 mode.
> 
> Tested on NanoPC-T4.
> 
> Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in dts")
> Signed-off-by: Jensen Huang <jensenhuang@friendlyarm.com>

ok, so this looks like it restores previous functionality.

I'm just wondering as the "offending" patch is from 2020, why this
only turns up now. Any ideas?

> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 9d5b0e8c9cca..9491cafbbaa3 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -1561,6 +1561,7 @@ emmc_phy: phy@f780 {
>  			clock-names = "emmcclk";
>  			drive-impedance-ohm = <50>;
>  			#phy-cells = <0>;
> +			rockchip,enable-strobe-pulldown;
>  			status = "disabled";
>  		};
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
