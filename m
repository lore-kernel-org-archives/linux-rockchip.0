Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C655C3DA4A
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Jul 2024 21:42:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0aQEYM/1ro0vCS7hg4G811gjHEMK0kBzJkAC57AXT5g=; b=DKIOydKcKnb8YT
	hMrnTKhmPEXntflzlAzlvAuBDCRQ64da1dsGzqt0/Cz0Aexc/4V4jmGaqxm64Xs5X9qjOBFi/RJrQ
	eTCl6FXQLlXgb6zHiPAKt3d9oWQzsiU9C/YwOSHCY1kiYXhuN1lBCW6/EhSYcsP2JdlwPdeGZRVlu
	Q85TsUQaS0Ag5hotm4Ff+rA5tqXFnuT4dqID3p+W+drYUEDYaYfto0OI56i0dfptxeLWc6rliaZUc
	hKc2ejaTp4lBZt7Wyl3IFl+ci5D4OMrxccrUBz9C91AyrcAULkLlUe43cn+3rxZfXNnrYZs8lXh1y
	1rotGraiX2CsqU/ViEvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXShy-000000055O9-1pGN;
	Fri, 26 Jul 2024 21:42:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sXShv-000000055NK-3zCo
	for linux-rockchip@lists.infradead.org;
	Fri, 26 Jul 2024 21:42:37 +0000
Received: from i5e860cde.versanet.de ([94.134.12.222] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sXShq-00063F-Ml; Fri, 26 Jul 2024 23:42:30 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-pm@vger.kernel.org, devicetree@vger.kernel.org, jagan@edgeble.ai,
 andyshrk@163.com, jonas@kwiboo.se, sre@kernel.org, t.schramm@manjaro.org,
 conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: rockchip: Pull up sdio pins on RK3588
Date: Fri, 26 Jul 2024 23:42:28 +0200
Message-ID: <5127387.e8TTKsaY2g@diego>
In-Reply-To: <20240726194948.109326-4-macroalpha82@gmail.com>
References: <20240726194948.109326-1-macroalpha82@gmail.com>
 <20240726194948.109326-4-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240726_144236_026409_41BCE591 
X-CRM114-Status: GOOD (  18.83  )
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

Am Freitag, 26. Juli 2024, 21:49:46 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> When using an Ampak derived bcm43456 on an RK3588s based GameForce Ace
> the WiFi failed to work properly until I set the SDIO pins from
> pull-none to pull-up. This matches the vendor kernel located at [1].
> I tested this then on an RK3588s based Indiedroid Nova and did not
> observe any adverse effects.
> 
> [1] https://github.com/rockchip-linux/kernel/commit/b96485b7af46a99c14f3c4818eb18c7836eb809c

As you're essentially duplicating the change by Alex Zhao it might be
nice to keep their authorship?

So, "From" + first Signed-off from Alex, then you add a
[adapted to pinctrl filename change]
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

below that.

> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> index 30db12c4fc82..d1368418502a 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-base-pinctrl.dtsi
> @@ -2449,15 +2449,15 @@ sdiom1_pins: sdiom1-pins {
>  				/* sdio_clk_m1 */
>  				<3 RK_PA5 2 &pcfg_pull_none>,
>  				/* sdio_cmd_m1 */
> -				<3 RK_PA4 2 &pcfg_pull_none>,
> +				<3 RK_PA4 2 &pcfg_pull_up>,
>  				/* sdio_d0_m1 */
> -				<3 RK_PA0 2 &pcfg_pull_none>,
> +				<3 RK_PA0 2 &pcfg_pull_up>,
>  				/* sdio_d1_m1 */
> -				<3 RK_PA1 2 &pcfg_pull_none>,
> +				<3 RK_PA1 2 &pcfg_pull_up>,
>  				/* sdio_d2_m1 */
> -				<3 RK_PA2 2 &pcfg_pull_none>,
> +				<3 RK_PA2 2 &pcfg_pull_up>,
>  				/* sdio_d3_m1 */
> -				<3 RK_PA3 2 &pcfg_pull_none>;
> +				<3 RK_PA3 2 &pcfg_pull_up>;
>  		};
>  	};
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
