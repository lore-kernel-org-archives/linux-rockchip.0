Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E5309CD128A
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Mar 2024 19:15:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6yEQ9QDhWVD+J7nZ8T9M/L85PcpmIGeDP12746RcGCk=; b=a1s3BdzHD25E6JEAzrykyhOoK3
	BTAEEeKxcn1F0Za25rr8b9JdyW194CLI+K4GFdL8zjGz8rkcQvfyY8q7x3TYdnbLV8Zw0gQ33q7rs
	sCVSwHO4E4ozaoHKj/jl/HcW6Uw/KNlI3smpSVV9ZChwDNR6Yf1wLlRc3WM7668MRzI1EvUwOPz/f
	qMxL+uGMjPR10zAsB6+ddHqbg09hVRhlRqm7LHUN33MM2QfXjVTN5RIJqh8MLz12jx8sn4GBJhUvD
	2EvzUg0IvKGWg7r4Mp/D3/OlhHN0elFpklI/4ZQPsroSrTeoI3+eI4B+rVCNH+VvZqm9nHDrxo8Sk
	duBWVIzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr0dt-000000069GJ-2x9q;
	Sun, 31 Mar 2024 19:14:57 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rr0dq-000000069EY-0f82;
	Sun, 31 Mar 2024 19:14:55 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1711912492;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Qn2MVzEDKVFO1DX6f7CmDPOEzy2LVdncSew+2Dkz+C8=;
	b=VgWn/AtbPVFaqgm6OePTFe0S598DRZW/QlL8nvS2/8Pg+jB8eDy1X7+X/2O//9KjfmCefq
	UzE0VkBzQPcaqgz9U6/vSn1npKTAX4cgjIZiCJGF3TNedEryR6OJ4bp49elXc0EpXawoUa
	6ObzNNMEJhdEs3H4gWETP5QZdSBa6ya/ADBgjWALKAc7jz44eEfP15nXIAsF9n/2AhGoTO
	aDVM/5Q8m61jrGAzEAWXEEmyJcjJdncz1miyYt+Uyrii28Bo375isRd2P85Bp/ZHLKxwzY
	ccCcgIsysqK+BHhjDpeHkmQzTnyEnEAQr5P/j4y+yJ/bs8xTe3j472Up/R4Riw==
Date: Sun, 31 Mar 2024 21:14:52 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Folker Schwesinger <dev@folker-schwesinger.de>
Cc: Vinod Koul <vkoul@kernel.org>, Yogesh Hegde <yogi.kernel@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Chris Ruehl <chris.ruehl@gtsys.com.hk>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Christopher Obbard <chris.obbard@collabora.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add enable-strobe-pulldown to
 emmc phy on ROCK 4C+
In-Reply-To: <20240327192641.14220-3-dev@folker-schwesinger.de>
References: <20240327192641.14220-1-dev@folker-schwesinger.de>
 <20240327192641.14220-3-dev@folker-schwesinger.de>
Message-ID: <5da4c8a299f9987e7a0f91549d6e0206@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240331_121454_392000_E8728B9A 
X-CRM114-Status: GOOD (  13.51  )
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
> Enable the internal strobe pull-down for the ROCK 4C+ board. Also 
> re-enable
> HS400 mode, that was replaced with HS200 mode as a workaround for the
> stability issues in:
> 2bd1d2dd808c ("arm64: dts: rockchip: Disable HS400 for eMMC on ROCK 
> 4C+").
> 
> Fixes: 8b5c2b45b8f0 ("phy: rockchip: set pulldown for strobe line in 
> dts")
> Signed-off-by: Folker Schwesinger <dev@folker-schwesinger.de>

Looking good to me.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> index 7baf9d1b22fd..972aea843afd 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
> @@ -151,6 +151,7 @@ &cpu_b1 {
>  };
> 
>  &emmc_phy {
> +	rockchip,enable-strobe-pulldown;
>  	status = "okay";
>  };
> 
> @@ -549,7 +550,8 @@ &saradc {
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
