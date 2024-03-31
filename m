Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 87E56CD128A
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Mar 2024 19:14:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D0CA/T7RgWIB8slarn3wQ4oaFOfC3vYmMza2evfKT6A=; b=NkUDQcc1nSs30HrUMWtVUIKxmC
	arvifgzfxs34C8897Cqs3zvyFrXJeLRkx+B4sQJRP8jGB2OELKnrgsfXkVe1Kt+Q3bwTl6HtEd/EJ
	S9U8rHPlmEnICzVSM+fC9YMn/eGPET7u+i5R9lWwjKPrBl/fAbaWk3nTQibC/hQXQ5GuqrqtNVMQF
	9gfyzLPBHVRWUG10qGrw3vMR6p0x9+kvf0pq6v0suHOF6+uwD31fANThn02vf14/oT0sh0OQj9e3G
	sUpjPOu8A843i9yjBXu3zb85/lAKOEnApqWQtMCgmj1FwtyacLUvaUZ5wXS8O5fq2myeJtvihZV1e
	Cmp4uM7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr0da-000000069D5-3wgA;
	Sun, 31 Mar 2024 19:14:38 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr0dW-000000069CR-2ZLs;
	Sun, 31 Mar 2024 19:14:36 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711912469;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=OlRjQH5mzHvnoGJJbl73nKh6pzQqm/NFoJCNeZ2UIfA=;
	b=sAQzvu77PsDyTWExc6QexiCdxZnVrro+QcyOOCuSWQNw4PoJVMAEycsFHfL7FO/yYCHhJL
	OcwActpQQa8w+OOsve30gyiLXhHt/9dtSrwRcoVW9gGpgqQsvZ5D2ViGEu0d7Dob9SOekS
	wM1C/h1ZRuuHYJ20S7TqVPdLGo54WykRQQp4QVhWFYhq8c9IMR+OFcN8RyBgOmds+kUvPL
	80FAwyC2y7ygRfyJEzoJ8BR4MVD23a6nluJJ8BmU+J3ExkHuX1TTCsnGkKkzu9MdBZZQL/
	LUwrmF+xwx/2UXV/87CYZpkDhR4fDb2kZ6Ucu0vewkZRAqvdGB3Zf0rPcSBy1g==
Date: Sun, 31 Mar 2024 21:14:26 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Folker Schwesinger <dev@folker-schwesinger.de>
Cc: Vinod Koul <vkoul@kernel.org>, Yogesh Hegde <yogi.kernel@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] arm64: dts: rockchip: Add enable-strobe-pulldown to
 emmc phy on ROCK Pi 4
In-Reply-To: <20240327192641.14220-2-dev@folker-schwesinger.de>
References: <20240327192641.14220-1-dev@folker-schwesinger.de>
 <20240327192641.14220-2-dev@folker-schwesinger.de>
Message-ID: <2a07639d8d84ec4443c8aeb84b6260f4@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240331_121435_300428_CE4EE9B3 
X-CRM114-Status: GOOD (  14.59  )
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

On 2024-03-27 20:26, Folker Schwesinger wrote:
> Commit 8b5c2b45b8f0 disabled the internal pull-down for the strobe line
> causing I/O errors in HS400 mode for various eMMC modules.
> 
> Enable the internal strobe pull-down for ROCK Pi 4 boards. Also 
> re-enable
> HS400 mode, that was replaced with HS200 mode as a workaround for the
> stability issues in:
> cee572756aa2 ("arm64: dts: rockchip: Disable HS400 for eMMC on ROCK Pi 
> 4").
> 
> This was tested on ROCK 4SE and ROCK Pi 4B+.
> 
> Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in 
> dts")
> Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>

Looking good to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 281a12180703..b9d6284bb804 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -194,6 +194,7 @@ &cpu_b1 {
>  };
> 
>  &emmc_phy {
> +	rockchip,enable-strobe-pulldown;
>  	status = "okay";
>  };
> 
> @@ -648,7 +649,8 @@ &saradc {
>  &sdhci {
>  	max-frequency = <150000000>;
>  	bus-width = <8>;
> -	mmc-hs200-1_8v;
> +	mmc-hs400-1_8v;
> +	mmc-hs400-enhanced-strobe;
>  	non-removable;
>  	status = "okay";
>  };

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
