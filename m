Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8F3B0D78321
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 14:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0bYhI2yEM5xRcVEtSp0ebAOUT5EqKQtr6GniaN6K0d8=; b=0PHFdnpQ55WqTbrGD1YgGO3hBz
	K5zWMag8uQ9RtItTSHdcnY0gQXPpgBnU/XN4JB+Nw8/mFlUveq5LuD5/novFa/6DQ0tMRtRe8a/xG
	dxzazfpYA62n96tCjiPdwtuEJpPHHYH/O9GkmRfZgidVmWdxc4P//JQFQGljSqSRaREe18PFtgLaL
	Ka3FLiUM4AFZJJaNys2IKkqtehztqt9LYSO2YJCGA6ffjFyCha9uiGepyNiRz3UoNRB1xmccTwAMX
	UBw6lDtQTFo3gHC8kklEovfjc+1WcKGSxPkQLyIXIz1H6DI8Pq8Vv+dz+kAF+rHSr2wjDIftc/j6X
	j98Zbn0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7r8-00000006Xod-0En8;
	Mon, 02 Dec 2024 14:56:58 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7py-00000006XZi-2IE7;
	Mon, 02 Dec 2024 14:55:47 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733151344;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9CIAZBFucCTn7nA63nHKJ4UCE5j3QR50Z+lHS5TV934=;
	b=wzZJ5ig4Q//Dign/WpW4UDKBQfoP5dbbGWp1Ll88JFutMca5oJnpx0xFRVYN1k7YNwXu0f
	V6wl2ZbJ6pWWCMX9ndXNr+WqDuAb/HQvC4Bvl/P9lpN4y2b5UntJ6o2bFOyGPOLpW6Ity0
	vSbjLjup8huZtj25VcjgZjenhpGcB48u4a/oiU/HKGw/s1W4dGcTH6EAbYn53NeNOYWlxN
	7Y5PnOYAzPF+VgOW2C/TvmhNyAIqp+YGJXfO7C41IG48RoR3EXgkRzhoD/qC/l67qo9y1/
	2GmbdmPllkkJ42PvqqlE0d/a/CoOOT6CNAUL0qXiruPshX3gWPeV3ULCy58lYw==
Date: Mon, 02 Dec 2024 15:55:44 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, didi.debian@cknow.org,
 marcin.juszkiewicz@linaro.org, pbrobinson@gmail.com
Subject: Re: [PATCH] arm64: dts: rockchip: Describe why is HWRNG disabled in
 RK356x base dtsi
In-Reply-To: <6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org>
References: <6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org>
Message-ID: <2415bfe796ae9190a23d05d4c0d23d4d@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_065546_739533_72240E23 
X-CRM114-Status: GOOD (  16.80  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On 2024-12-02 15:44, Dragan Simic wrote:
> Despite the presence of the hardware random number generator (HWRNG) in 
> the
> different Rockchip RK356x SoC variants, it remains disabled for the 
> RK3566
> SoC because testing showed [1] that it produces unacceptably low 
> quality of
> random data, for some yet unknown reason.  The HWRNG is enabled for the 
> RK3568
> SoC, on which the testing showed good quality of the generated random 
> data.
> 
> To avoid possible confusion in the future, [2] let's have this 
> described
> briefly in the RK356x base SoC dtsi.
> 
> [1] 
> https://lore.kernel.org/linux-rockchip/cover.1720969799.git.daniel@makrotopia.org/T/#u
> [2] 
> https://lore.kernel.org/linux-rockchip/20241201234613.52322-1-pbrobinson@gmail.com/T/#u
> 
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

Oh, I forgot to Cc Peter as well while sending this patch, so I did
that now.  Sorry for the noise.

> ---
>  arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> index 62be06f3b863..ab8f42c0a843 100644
> --- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
> @@ -1032,6 +1032,11 @@ sdhci: mmc@fe310000 {
>  		status = "disabled";
>  	};
> 
> +	/*
> +	 * Testing showed that the HWRNG found in RK3566 produces 
> unacceptably
> +	 * low quality of random data, so the HWRNG isn't enabled for all 
> RK356x
> +	 * SoC variants despite its presence.
> +	 */
>  	rng: rng@fe388000 {
>  		compatible = "rockchip,rk3568-rng";
>  		reg = <0x0 0xfe388000 0x0 0x4000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
