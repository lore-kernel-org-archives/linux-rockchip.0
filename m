Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E19C2C52D7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Aug 2024 08:59:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OSHYsb9QqLl6bM/7zQz84Nr7fL/OoKzo2wgIujV7e58=; b=EbQDeDwA+Cc2GE
	1B738sz2BYdR9gcpkdNzbzkeuFtbUOQe307ki0TZCivaGsqY6tHtUXFDq/N3GBoqRnMGGe7/DTR+n
	nBQL0BosXmuRvtgBm+Bwx+lYTjF/tiHkOKgTaLmdvcEGeyWSGnmoX7Srn7agTu2vUoVSa/4wqFhRf
	fB6rcM5aYaUwnJ0SIa0lvQKd7+CvHNH9FopmrpDRTNt72QgU4Z0afV4qysKB7TvsPebVsFDcDLKmy
	q7AHzlz6Sd1GU1//0YyyAbDuQAiuRmVNBKvFDrRybEVGEe3oaVGOAMifAM6NYdasbbaQTMlnwytZK
	ft8W13OOJhAA4p84N7cw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghBM-00000008B5f-25Qi;
	Wed, 21 Aug 2024 08:59:08 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sghBI-00000008B4D-2ugM
	for linux-rockchip@lists.infradead.org;
	Wed, 21 Aug 2024 08:59:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=YkrgPFc2SFtqZxBUpFfcs//m+uCsov6ZwPpFacYLeKM=; b=TDitITDDWALMILzEuD/FBCKZpi
	+flVxKu+uL3vBS2OQStBNcGRreEjx/5n0jTE1kv9q8D3Yg4lCF6bK5aDm050kIodDU6eLD1fa6tAH
	XkQSCVezbNhaVhsxCdc7uTSSLz8rH6cf45hz/owzR2I9S00hjnZKfYLHul8/WkAUTqdvAh18yR3LS
	0juf/F1qgleY33XyWI9Xtg57ZC+NlZnHegzoKUGFnhyY3oCI92BFq2OLtO6aJHs9C5c2Dp6LUuDJF
	Fa1RVGkAjJxQyYy54ikT2/Y9sR1f6Q+tXRiIUl8uJFf1GBAa9BZYYBXHFMsOu4ix1+d56kNX5bVpJ
	rrz/dWrg==;
Received: from i53875aca.versanet.de ([83.135.90.202] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1sghBH-00053D-CE; Wed, 21 Aug 2024 10:59:03 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Subject: Re: [PATCH v2 3/6] arm64: dts: rockchip: enable SPI flash on NanoPC-T6 LTS
Date: Wed, 21 Aug 2024 10:59:30 +0200
Message-ID: <2890737.yaVYbkx8dN@diego>
In-Reply-To: <20240821-friendlyelec-nanopc-t6-lts-v2-3-e0138bb10042@linaro.org>
References: <20240821-friendlyelec-nanopc-t6-lts-v2-0-e0138bb10042@linaro.org>
 <20240821-friendlyelec-nanopc-t6-lts-v2-3-e0138bb10042@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240821_015904_769866_28A28A09 
X-CRM114-Status: GOOD (  15.27  )
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

Am Mittwoch, 21. August 2024, 10:25:32 CEST schrieb Marcin Juszkiewicz:
> FriendlyELEC NanoPC-T6 LTS has 32MB of SPI flash on-board. On non-LTS
> boards this is optional chip.
> 
> Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
> ---
>  arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> index bf2c4427ad74..0f9df64dc1b1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3588-nanopc-t6.dts
> @@ -594,6 +594,20 @@ &sdmmc {
>  	status = "okay";
>  };
>  
> +&sfc {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&fspim1_pins>;
> +	status = "okay";
> +
> +	flash@0 {
> +		compatible = "jedec,spi-nor";
> +		reg = <0>;
> +		spi-max-frequency = <104000000>;
> +		spi-rx-bus-width = <4>;
> +		spi-tx-bus-width = <1>;
> +	};
> +};
> +

same question as patch1. You enable this also on the non-LTS boards now
that don't have this flash chip?



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
