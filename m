Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 80494CFC5E7
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 16:34:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7pMIzSetkKoNZWI5WPiiCnQ3XLP9Bhund+DdwKyFCek=; b=tTgPRtP7gkPGooenWOKelafiUP
	iG1eJaMJSCCIYhxSQefFAHnaixXdZK6oS5z/nzDq/ffaOOy/mYPsgmvVzECZ1fvU0HdfukFd08rDd
	EhjRRA94t547i+R83N0n77vsNkLmYrONkhxPXuTRJ27hCWoJaCAopeSQvhtQUZ6qJKz5rvE2U62LA
	n4fGKahYSSTe7DErXcis/S/f5VFEXia0NrnNVPP18CefkEaI3UGB6aelUzPnyKL5rDHYM/c+npAJu
	ZGholia+ethhyXEVH0wI8qBZYGfkiar9nB8q7+CqG8BNinbQZDH4c0AurQngDWuIDde+ekjRWmh5I
	rXWQQSiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syw7m-0000000DXfk-4AO4;
	Thu, 10 Oct 2024 16:34:51 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syveH-0000000DSvR-1m81;
	Thu, 10 Oct 2024 16:04:23 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728576258;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=kHsk3WKYOtf6YIW4r4cEK0zr25z4Yvu6MikBAKtqoh8=;
	b=ue3fvJwTCGlWlGqqLTCcmuyk7Ws8xNMck/cqE9KU4gs8F/3XbYxuu2dTa6NQ2tsutU1BLf
	IfSuN/9e2j2iT4q3Z1i4reTHcple2eJkka1T9dofIcMMiKozE3DCFDxIAtLvuDBppzmo7Z
	q8oeWPCCuIYFdHzdoxtYLlzNaNl5uI0G7Nj6s91pZrnQUm8m3/ammF4Q1d2OfI//C5r+TG
	KYmUUZC4V6vS5iWaIxV0/x40jAiL9/heGVZwqochIQKQZddHWrjOQR2ZQaWWEs7MVYnBZB
	+5phUGGvstM2tg6olDRq61ovtXGbbAvsJ91j3yczsBr+BHe5IwqHZ48XiN/UZw==
Date: Thu, 10 Oct 2024 18:04:18 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh@kernel.org,
 krzk+dt@kernel.org, conor+dt@kernel.org, stable@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: rockchip: Prevent thermal runaways in RK3308
 SoC dtsi
In-Reply-To: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
References: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
Message-ID: <df92710498f66bcb4580cb2cd1573fb2@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_090421_938289_B106AF4A 
X-CRM114-Status: GOOD (  16.52  )
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

On 2024-10-10 12:19, Dragan Simic wrote:
> Until the TSADC, thermal zones, thermal trips and cooling maps are 
> defined
> in the RK3308 SoC dtsi, none of the CPU OPPs except the slowest one may 
> be
> enabled under any circumstances.  Allowing the DVFS to scale the CPU 
> cores
> up without even just the critical CPU thermal trip in place can rather 
> easily
> result in thermal runaways and damaged SoCs, which is bad.
> 
> Thus, leave only the lowest available CPU OPP enabled for now.
> 
> Fixes: 6913c45239fd ("arm64: dts: rockchip: Add core dts for RK3308 
> SOC")
> Cc: stable@vger.kernel.org
> Signed-off-by: Dragan Simic <dsimic@manjaro.org>

As a note, I'll hopefully get back with the proper implementation of the
thermal configuration for the RK3308, but not before the 6.14 merge 
window.
In the meantime, let's stick to having only the lowest CPU OPP in place,
as changed in this patch.

> ---
>  arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> index 31c25de2d689..a7698e1f6b9e 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
> @@ -120,16 +120,19 @@ opp-600000000 {
>  			opp-hz = /bits/ 64 <600000000>;
>  			opp-microvolt = <950000 950000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  		opp-816000000 {
>  			opp-hz = /bits/ 64 <816000000>;
>  			opp-microvolt = <1025000 1025000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  		opp-1008000000 {
>  			opp-hz = /bits/ 64 <1008000000>;
>  			opp-microvolt = <1125000 1125000 1340000>;
>  			clock-latency-ns = <40000>;
> +			status = "disabled";
>  		};
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
