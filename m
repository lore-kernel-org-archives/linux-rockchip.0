Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 45BBFCED614
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:23:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hTtyl9SuXG89FPPCtqxcYQXa4Ws8m0PUUCxqqY9qsNY=; b=BN2XC9s3/y7OCPM0ellJHCBdre
	GJ7P7LyDw03DQacB+AHWj2SSFGzddKY8sj+KRz1CkCoC9mUDS8NG8qKvdPm4OJRtPngoTXFMyk/7f
	VIgRcuStfrTpZJqufsFZhqWorzOY4LKlJF07U4cVp1go1IlwuqQm6KmDICpVlrYlBFu4mzoyfizw3
	sATpHx5b8h7wVj8j9pvnLHohKvE35fXPFNHEZsmQUTz45e6Bj+k5t2KqUReBSaXT751Vq9dpio126
	L2G5nd0Hb90a6xd//E0GEnNM//eHsA+ArmuNPPdpIaKTVewkjhrWiGMrz7+EDlBDMrg9636mBVeu4
	TTuaLujg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syR2z-00000008DQT-1lyd;
	Wed, 09 Oct 2024 07:23:49 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syR0Y-00000008D7a-0Efr;
	Wed, 09 Oct 2024 07:21:19 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728458476;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=teJTPtRRgJhpXeRenDVLI/Et/c/d1xs+s7uhazdPDm0=;
	b=TyETTNC1zl05T201XgrXqx0D0KiRvUAaraRZz1XxXCWydv7LPMdASYegWv6IGRDtVaoLGs
	tiuV/8IpCRSNfO2LLkjevdVyE1tvGuiTgTiDkM2JqQTO2WeAqqzzz7N9sZcZDX2Xx2V746
	UfLBTIQBGcmQe+KT3lbp3slxuEmupGZy2vwCa/1MiFd+kqXwzhjeTYGpkJ1dsRLQb/TZBf
	+llqIwgDWXO6qalY27My0UvrChQ+6722Sujlby0ilmmwernpZJyM3UEem/fBq6fqxUxuYS
	hHybBRsxtHmaa6vr6vkl+nbo/bceM8kBTr2ci3c8Nb6TUJpTOGialrGaGuly4A==
Date: Wed, 09 Oct 2024 09:21:16 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, Sergey
 Bostandzhyan <jin@mediatomb.cc>
Subject: Re: [PATCH v2 08/14] arm64: dts: rockchip: remove num-slots property
 from rk3328-nanopi-r2s-plus
In-Reply-To: <20241008203940.2573684-9-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-9-heiko@sntech.de>
Message-ID: <6d5e661117f23aa85c3a874290ea336f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_002118_303881_C2457BAA 
X-CRM114-Status: GOOD (  13.92  )
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

Hello Heiko,

On 2024-10-08 22:39, Heiko Stuebner wrote:
> num-slots was not part of the dw-mmc binding and the last slipage of
> one of them seeping in from the vendor kernel was removed way back in
> 2017. Somehow the nanopi-r2s-plus managed to smuggle another on in the
> kernel, so remove that as well.
> 
> Fixes: b8c028782922 ("arm64: dts: rockchip: Add DTS for FriendlyARM
> NanoPi R2S Plus")
> Cc: Sergey Bostandzhyan <jin@mediatomb.cc>
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced change
is obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> index 3093f607f282..4b9ced67742d 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s-plus.dts
> @@ -24,7 +24,6 @@ &emmc {
>  	disable-wp;
>  	mmc-hs200-1_8v;
>  	non-removable;
> -	num-slots = <1>;
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus8>;
>  	status = "okay";

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
