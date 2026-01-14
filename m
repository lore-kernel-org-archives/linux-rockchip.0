Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C6DEED29FF8
	for <linux-rockchip@archiver.kernel.org>; Wed, 14 Jan 2026 11:49:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-ID:MIME-Version:To:Cc:
	Date:References:In-Reply-To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yLqvDLD8rKkibMzE+eD7lKXgES8n11NZT5W2rQ1UIOY=; b=FSr/Th3XN6RKvB
	voksHkcvQp15le244v3ynTAq6Ur1HBPZso3MV5ijMMX/xynkfYOn0cgNucqYWBtKv9qEWtSsZwDz4
	71lqBwL5oSzIiFChIUTKBCvmTKCjI5CY5W7VYtAdRYMOsVFZDrK2JLH/mrwly/Yg2dz730+BerK5s
	AItFNHLGpxbUcxETwk9E3oW+5W2zuggewJuR6IdYy3IpWNKLVIouGTdSnNwdwYId46K8UXRCxXlDN
	5qTAwZW17pbFzCXb4ipX3louxOszTysPk5pV+6gBKETaZ4VHmpdJUTPuSHDKS6gB1/ogZoEn4Eh5y
	8zrD0ACZJ6uyk/94ZhuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzNR-0000000921G-0UZe;
	Wed, 14 Jan 2026 11:49:29 +0000
Received: from mail1.manjaro.org ([142.132.176.110])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vfzNG-000000091rk-0XZK;
	Wed, 14 Jan 2026 11:49:26 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1]) by localhost (Mailerdaemon) with ESMTPA id 4409941A8A;
	Wed, 14 Jan 2026 12:49:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=dkim;
	t=1768391353; h=from:subject:date:message-id:to:cc:mime-version:content-type:
	 content-transfer-encoding:in-reply-to:references;
	bh=bBfMjrGo4Jxvu45aSn6YILJa6MyAoiKKy1rZ35UryF8=;
	b=v4U3pivYB5Ma0GveQD03fyuz4PEEBG/2vRZ/ToB5VLr5AMAuV7YFpG3Ms3jPjoxwEyQ4sI
	FVOIk7iomjkvi820S+w1kWqZPawHztknia/Fqu+02pZrLhVhA+A+Egiaxhu/N+pgl/HB38
	HKiMJuIPTXhBhgnn8wDye1FJ5YFZNLkANh8a2E6XY9ecvORG3cWpzeDSh4yZP/TcB2q9DU
	jW3/b06Ms6y8rC+u8Yo5DzVfKbWf6e9GFYS8N6sllkZl94wscWZ1CPCH2esisuICasAVDS
	30bpti0zOyTn13fh1UInsf497F7Ck5uM91hiLaNqmrZ2LlvOCfNkITGQ5lNXJg==
From: "Dragan Simic" <dsimic@manjaro.org>
In-Reply-To: <0b9488badb467ef83a0a464eeea921f59e32e6b0.1767111809.git.robin.murphy@arm.com>
References: <cover.1767111804.git.robin.murphy@arm.com> <0b9488badb467ef83a0a464eeea921f59e32e6b0.1767111809.git.robin.murphy@arm.com>
Date: Wed, 14 Jan 2026 12:49:09 +0100
Cc: heiko@sntech.de, neil.armstrong@linaro.org, dianders@chromium.org, thierry.reding@gmail.com, sam@ravnborg.org, jesszhan0024@gmail.com, dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org
To: "Robin Murphy" <robin.murphy@arm.com>
MIME-Version: 1.0
Message-ID: <81fcd769-d7a5-e909-7105-23cd3d09e473@manjaro.org>
Subject: =?utf-8?q?Re=3A?= [PATCH 3/4] =?utf-8?q?arm64=3A?==?utf-8?q?_dts=3A?=
 =?utf-8?q?_rockchip=3A?= Move RK3399 eDP pinctrl to boards
User-Agent: SOGoMail 5.12.3
X-Last-TLS-Session-Version: None
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260114_034918_432429_DAB69DD8 
X-CRM114-Status: GOOD (  14.71  )
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

Hello Robin,

On Tuesday, December 30, 2025 18:20 CET, Robin Murphy <robin.murphy@arm.com> wrote:
> The EDP_HOTPLUG pin is optional, and muxed with other functions (notably
> HDMI CEC), so move its selection from the SoC DTSI to the boards which
> apparently want it, namely those which enable eDP without "force-hpd".
> By the same token we drop it from Pinebook Pro, which already uses
> "force-hpd", and according to the schematics does not have the pin wired
> at all.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-base.dtsi              | 2 --
>  arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi    | 2 ++
>  arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts       | 2 --
>  arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts | 2 ++
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
> index 4dcceb9136b7..19a312baa9f1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-base.dtsi
> @@ -2145,8 +2145,6 @@ edp: dp@ff970000 {
>  		interrupts = <GIC_SPI 10 IRQ_TYPE_LEVEL_HIGH 0>;
>  		clocks = <&cru PCLK_EDP>, <&cru PCLK_EDP_CTRL>, <&cru PCLK_VIO_GRF>;
>  		clock-names = "dp", "pclk", "grf";
> -		pinctrl-names = "default";
> -		pinctrl-0 = <&edp_hpd>;
>  		power-domains = <&power RK3399_PD_EDP>;
>  		resets = <&cru SRST_P_EDP_CTRL>;
>  		reset-names = "dp";
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> index 9d07353df52c..3f3cb0eb5809 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
> @@ -241,6 +241,8 @@ &dmc {
>  };
>  
>  &edp {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&edp_hpd>;
>  	status = "okay";
>  
>  	/*
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> index eaaca08a7601..dcab04863d28 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
> @@ -401,8 +401,6 @@ &cpu_l3 {
>  
>  &edp {
>  	force-hpd;
> -	pinctrl-names = "default";
> -	pinctrl-0 = <&edp_hpd>;
>  	status = "okay";
>  };
>  
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> index a4ceafe6dd7a..80d6ea0eda84 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-sapphire-excavator.dts
> @@ -141,6 +141,8 @@ sdio_pwrseq: sdio-pwrseq {
>  };
>  
>  &edp {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&edp_hpd>;
>  	status = "okay";
>  };

Thanks for this patch!  These changes are looking good to me, and the
board dts files changed in this patch are the right ones, i.e. those that
enable the "edp" node without specifying the "force-hpd" property.

Additionally,"/omit-if-no-ref/" should be added to the "edp" pinctrl node
in rk3399-base.dtsi, to not include the "edp_hpd" pinctrl definition in
the board dtb files where that actuually isn't used.

With the note above addressed, please feel free to include

Reviewed-by: Dragan Simic <dsimic@manjaro.org>


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
