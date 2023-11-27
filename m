Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2FA34C4167B
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Nov 2023 09:42:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GHIw4xrFTN2LSBeKUm0q/Wp3u0x5PLIp2AzEBGke63I=; b=0pwJLeV4UkBeRX
	rOa1qo7kgDMFNXh9vsqp7MndXgKWwu3q3Twb/e5hCmkl4P07SNsCTPvewZZYGqrVC0QSiEr5jwA5G
	qdZa06i74y6DDfpbk6Y5LvQ7xfXLHK+Zs1B1rkltYFug6w5s7G9MKf0B2Y86Wh45r+h/V3lohWNhp
	4YFZfOf4WDoGNhzcQFFmGnN3JKtddxRq4hSypf81Lmw+98J+wKzH7izQ0paSfVuviPT2eokviTyp9
	tCVKdNC4WTHjDOKrzVAAexj6RwfdbxGFlUETXGo3jnDvASruICYOyjxCtP/P5MU1Pr2RiFCxZtFQD
	TWuiiMCHsfIJY1wUOH2g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Y82-001znk-17;
	Mon, 27 Nov 2023 09:42:10 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7Y7z-001zn0-0V;
	Mon, 27 Nov 2023 09:42:08 +0000
Received: from i53875bf8.versanet.de ([83.135.91.248] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1r7Y7u-0008ND-Sp; Mon, 27 Nov 2023 10:42:02 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Lukasz Luba <lukasz.luba@arm.com>
Cc: lukasz.luba@arm.com, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
 daniel.lezcano@linaro.org
Subject: Re: [PATCH] arm64: dts: rockchip: Add dynamic-power-coefficient to rk3399 GPU
Date: Mon, 27 Nov 2023 10:42:02 +0100
Message-ID: <14787054.VsHLxoZxqI@diego>
In-Reply-To: <20231127081511.1911706-1-lukasz.luba@arm.com>
References: <20231127081511.1911706-1-lukasz.luba@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231127_014207_298081_33F20C38 
X-CRM114-Status: GOOD (  19.28  )
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

Hi Lukasz,

Am Montag, 27. November 2023, 09:15:11 CET schrieb Lukasz Luba:
> Add dynamic-power-coefficient to the GPU node. That will create Energy
> Model for the GPU based on the coefficient and OPP table information.
> It will enable mechanism such as DTMP or IPA to work with the GPU DVFS.
> In similar way the Energy Model for CPUs in rk3399 is created, so both
> are aligned in power scale. The maximum power used from this coefficient
> is 1.5W at 600MHz.

2640 is a pretty arbitary value, so it would be really helpful to describe
in the commit message, how you arrived with that specific value.


Thanks
Heiko


> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> index 9da0b6d77c8d..87cfdf570b19 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
> @@ -2113,6 +2113,7 @@ gpu: gpu@ff9a0000 {
>  		interrupt-names = "job", "mmu", "gpu";
>  		clocks = <&cru ACLK_GPU>;
>  		#cooling-cells = <2>;
> +		dynamic-power-coefficient = <2640>;
>  		power-domains = <&power RK3399_PD_GPU>;
>  		status = "disabled";
>  	};
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
