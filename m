Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CF0E2E7717F
	for <linux-rockchip@archiver.kernel.org>; Mon, 16 Dec 2024 12:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=sn6PJNFImqy2NsVUp8qNfqCv78VcXG9GHj8ERgpmwGU=; b=0n5KdqCIz2PAyKlwkQpTyTFs6o
	/pYwm+eP1ScgZmkv60NhHw+p+7xZKYl5+1VM/NmD0dh5+zPdGBxbxDNGIXSBXgwibFF/YyqZjRVV9
	UDE0ppAioixXv1NlwRnDAqGkYj4lLO/mAu/+ur4cOX8l+HIGlK5G9LBD0NX/TpNuNgXymm/Nx5oVQ
	13Ra39AIiU97bWDJQdpAjocI2Q4dzXzn4+Md8Ml6/AZaTwiCcqcrc1uuqqOUDyVF4TZjT0ZydyiuV
	sPgepQB7m8s3+IrZQ3iR9GzDoy+B9qiv2A3pT5Iv1vhvOd0lvajBKGqAubS5r58hDBKDKxiZGVZ2i
	EFsYadvQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tNASA-00000009zwm-0vNm;
	Mon, 16 Dec 2024 12:44:02 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tNAS7-00000009zwB-3KIe
	for linux-rockchip@lists.infradead.org;
	Mon, 16 Dec 2024 12:44:01 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1734353037;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=tgCIti+ssc1Xg36yK4ivJkFfNVpSpn+E3Ta5XD/CT6M=;
	b=dXEzbnqSTbfhtyM33PrBBU884XkDCa6DXY+aj7MWnk5usglhL3BAuEv30dKMNFqbBZStwO
	PS4OaUZdwDpjXBFFPZ54GBiHa8OvN35aLiJwvu/5gtrQpQ6S2v1HOFweDbP99dOFzENgXY
	d7ij5KfMNh19mShGJtFIy8gMSQ6POO9mShnxo0rtBiJCzm22sb9o5qpHZ38/4xsDPkLw9p
	Zsne+K3V4jGckbz9kJZGTw1scAobs2mKyZ7OUiDYVftSAMeP2UhkfvD2EaVFtaUlo9CiHg
	t6QZxl0Ye8chmJF5H8afbpcUHMN22PWCdoEQ/lBC2s13DUjk5pnfUJbSVCxfZg==
Date: Mon, 16 Dec 2024 13:43:57 +0100
From: Dragan Simic <dsimic@manjaro.org>
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: heiko@sntech.de, robh@kernel.org, krzk+dt@kernel.org,
 conor+dt@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Subject: Re: [PATCH v5 03/12] arm64: dts: rockchip: Use a longer PWM period
 for the fan on Radxa ROCK 5C
In-Reply-To: <20241216113052.15696-4-naoki@radxa.com>
References: <20241216113052.15696-1-naoki@radxa.com>
 <20241216113052.15696-4-naoki@radxa.com>
Message-ID: <616cd7b81d5469de7bd5a84d2d23387f@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241216_044359_987118_4E198DC5 
X-CRM114-Status: GOOD (  12.63  )
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

On 2024-12-16 12:30, FUKAUMI Naoki wrote:
> The fan on Radxa ROCK 5C is driven via an AO3416 MOSFET, which has a
> total switch-on time of 0,6us and a total switch-off time of 6us [1],
> meaning that the current PWM period of just 10us is too short for
> fine-grained fan speed control. Increase the PWM period to 60us, so
> that the switch-on and switch-off time of the MOSFET fall within a
> more reasonable ~10% of the full period, thus making lower PWM duty
> cycles meaningful.
> 
> [1] https://www.aosmd.com/pdfs/datasheet/AO3416.pdf
> 
> Fixes: 3ddf5cdb77e6 ("arm64: dts: rockchip: add Radxa ROCK 5C")
> Signed-off-by: FUKAUMI Naoki <naoki@radxa.com>

Looking good to me.  Please, feel free to include:

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
> Changes in v5:
> - Reword commit message (Alexey Charkov)
> Changes in v4:
> - none
> Changes in v3:
> - none
> Changes in v2:
> - reword commit message
> ---
>  arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> index 630f026d856c..85589d1a6d3b 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dts
> @@ -73,7 +73,7 @@ pwm-fan {
>  		#cooling-cells = <2>;
>  		cooling-levels = <0 64 128 192 255>;
>  		fan-supply = <&vcc_5v0>;
> -		pwms = <&pwm3 0 10000 0>;
> +		pwms = <&pwm3 0 60000 0>;
>  	};
> 
>  	pcie2x1l2_3v3: regulator-pcie2x1l2-3v3 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
