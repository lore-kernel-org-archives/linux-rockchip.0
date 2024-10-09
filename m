Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9891CCED618
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Oct 2024 07:34:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:Cc:To:From
	:Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1hLP2vjcKUf+q2MhTf/aKsUTXvxqAegRad9XaX0kawQ=; b=ClP3JhiQki9hKLxHHzyVTL+DpH
	HQGD2MAPC0tCMstNsp6jpGyFLwtYkYP7EBC/RYdqcrMU85dxE0f+Btf+AkdbTlH97IyPHvFIqm5Rd
	bvjHJSFg4lPrTzqA63BT2/VF98xS4asbRtAT4YZ9Bsh62XPBx8KHvqTnZnoiZiLNa8oXHFsdBYw9K
	mujVqkvLU+4UGMisxMFZul3dAAArUUsSsNsYmqk/YCPUwLSazUQjJjhGj04BGIbnc5adfZjy4z0sP
	qm91/srDnfycaKZR/95VnH+0QGgiJwDN+/LlckGdlVPCD6Cu2FobHAzY2/JIYkDrX4tN7CfFIx0Mn
	ofwauegQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syRDJ-00000008Fj2-29B2;
	Wed, 09 Oct 2024 07:34:29 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syRBz-00000008FZ0-2c7r;
	Wed, 09 Oct 2024 07:33:09 +0000
MIME-Version: 1.0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728459185;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=TiyNJJVamoNtjg9XHrBDoVADhtv1GofuxOEol/jV3ug=;
	b=X0GN4FNDBK41sDdoEn2BiVCaC+ddWLBZ3HEHppNZeoPt3oivzn9kp3MXqg6ub2AWf7/+Kz
	TgPJAVDagpnFDj37LXhCRggCQwb/9olhakQVDORD1gldTsDd/sdyBxqKtK0neY6oFHInyS
	wh1arqvV+UQjHXKj3V5MLjkr7d91RvKFUPrmeG66uZ9+22wpiYCLzrIv7x3/m3muIOwNJf
	ybgSbR0ksLr0wP/TYKnFCAaTCyt8vdoT3pZkk1RTC4r+rJSL2aNp9+jloDOj2a6qplhsnu
	kUWWx/iM5vPa2W0os02WqKuqB0xmF6yLrDUZdepYyCDckUNwZN8PruxYyQ8kkQ==
Date: Wed, 09 Oct 2024 09:33:05 +0200
From: Dragan Simic <dsimic@manjaro.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 11/14] ARM: dts: rockchip: fix rk3036 acodec node
In-Reply-To: <20241008203940.2573684-12-heiko@sntech.de>
References: <20241008203940.2573684-1-heiko@sntech.de>
 <20241008203940.2573684-12-heiko@sntech.de>
Message-ID: <42b2e20207520d00625049a89a2ca36b@manjaro.org>
X-Sender: dsimic@manjaro.org
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241009_003307_851681_73E8A91E 
X-CRM114-Status: GOOD (  13.75  )
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
> The acodec node is not conformant to the binding.
> Set the correct nodename, use the correct compatible,
> add the needed #sound-dai-cells and sort the rockchip,grf
> below clocks properties as expected.

Maybe reflow the commit description a bit, to use the available
column width better. :)

> Fixes: faea098e1808 ("ARM: dts: rockchip: add core rk3036 dtsi")
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

Looking good to me, thanks for the patch.  The introduced changes
are obviously correct.

Reviewed-by: Dragan Simic <dsimic@manjaro.org>

> ---
>  arch/arm/boot/dts/rockchip/rk3036.dtsi | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> index 96279d1e02fe..37369538483f 100644
> --- a/arch/arm/boot/dts/rockchip/rk3036.dtsi
> +++ b/arch/arm/boot/dts/rockchip/rk3036.dtsi
> @@ -384,12 +384,13 @@ reboot-mode {
>  		};
>  	};
> 
> -	acodec: acodec-ana@20030000 {
> -		compatible = "rk3036-codec";
> +	acodec: audio-codec@20030000 {
> +		compatible = "rockchip,rk3036-codec";
>  		reg = <0x20030000 0x4000>;
> -		rockchip,grf = <&grf>;
>  		clock-names = "acodec_pclk";
>  		clocks = <&cru PCLK_ACODEC>;
> +		rockchip,grf = <&grf>;
> +		#sound-dai-cells = <0>;
>  		status = "disabled";
>  	};

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
