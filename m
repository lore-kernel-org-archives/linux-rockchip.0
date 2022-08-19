Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 722DCC28D13
	for <linux-rockchip@archiver.kernel.org>; Fri, 19 Aug 2022 23:51:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uXaHUhpIq1xQS+p+bSQRY3N1IiIO6FIXG0rpnkdKv0Y=; b=teFx7tQn6kAPF1
	oBUFlgWDGfS1yS4Npim7W6vHkgSyKbW2Xn9USzPAaewqlV9T5xUYyo1hGerCycZlOC6pTy15m14y8
	fcOe0ZBB922iC0d4nBb8kETWFnLRw7fpePDrJg6rA9wsrB+JhyDvixeNzE7XtMiy/zCMLeT7955FF
	PR3+ZShKEpB4cL5IkHM5mi9bqURN/Hu3qycZjojv9/9b3FQybiZfsvldRyuN4XpK/2LZq69c9CFGW
	sy5Bj6jbRFjRXbayh4J3oSq4cO50jHGc5DFtx7Yx4IziKWOMEvQQr1KZIMDsKF6O4kdoyNJxt7FUG
	EZGsevRyGg+QfZoG7/Qw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPBlx-00Dbhb-BB; Fri, 19 Aug 2022 23:51:29 +0000
Received: from mail-wm1-x331.google.com ([2a00:1450:4864:20::331])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oPBlk-00DbW9-Sq; Fri, 19 Aug 2022 23:51:18 +0000
Received: by mail-wm1-x331.google.com with SMTP id k6-20020a05600c1c8600b003a54ecc62f6so3172511wms.5;
        Fri, 19 Aug 2022 16:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=6K+Gbut6C3SMWqkBrTWvK/kA2LBhPOCWJd8A9mugSZw=;
        b=X+1fqQVkRUblp4KR6kQj5KcuWemgxb/9Z2iRuoaU0t8ckKnPN7NEnVNwKZdP/jvHXh
         wg4E6fzr9hCqdobcCjVq7fmn+G6Mb9CAfDYkMkQbe/IjVYyMMJqXcA+jStFvaVfDCjAe
         /kd1O8Kf9KIbm2/b501QcWJumkW/XVZzC8dJcLWqSmqnBo/DPTT0JuxYx3NpVwHyi6A1
         jjIewqaaLaA+lC3ix7py13wa7/o22OO6nWDf7bDg3FJd891fvKfd86Qz4NuahwrW+L6v
         zJUvW3aEXaA/nThO3eN2jhDxbTJvp7WswHFbZx3SspIK78zOY3H44/fC00uurj1/xtSE
         wvng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=6K+Gbut6C3SMWqkBrTWvK/kA2LBhPOCWJd8A9mugSZw=;
        b=Oggt6h5CqacaMrcP/fjQkTx2ph1BpIiBlB5v+C3FApWLYOfLrjoQpUdP3yHq3RfWEz
         XvMZkXqXUly+gT5m+LsOsE4GTdk5HQ0PqKLAn7ffhZol34O9a1KGFrx38H8PsACL+B1F
         VYeeFAvAkMSPbEG/oNvlCT7fB7ESOA4aofJsclOupB85sUYPbvUqotxZzORX+VeuVdOv
         r2Y0TnfX9pNGNgNS/DX1lfWYhm3uLKKxHDXk13Vtridem1DS2M0X2ERV7EejGRB2WRJj
         Dlu9o08eQYnaJI2ih1PeyidEM/sh++clb3jU2CUqFXfncCpsHK82YdE+lwh2eqPHZmyl
         OksA==
X-Gm-Message-State: ACgBeo1Q+LNgxWJGzH2z2WDTwhKZ41ezK5xwS0R3JJodubvJs237plag
	oI9jSnxZyccZO155Xci+I4K6spFiRx8=
X-Google-Smtp-Source: AA6agR47Np9Ok78NyHzV8nhmUyE67a78+p7tAZ5Cjr/2TXypthFIBb8X6ZXHpuPJw8fcw1o8HqY8tw==
X-Received: by 2002:a05:600c:1550:b0:3a6:1d8c:247e with SMTP id f16-20020a05600c155000b003a61d8c247emr6019877wmg.63.1660953074286;
        Fri, 19 Aug 2022 16:51:14 -0700 (PDT)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id r38-20020a05600c322600b003a2e92edeccsm9026113wmp.46.2022.08.19.16.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Aug 2022 16:51:13 -0700 (PDT)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: rockchip: Add analog audio output on quartz64-b
Date: Sat, 20 Aug 2022 01:51:12 +0200
Message-ID: <10732790.V6xDz3LDya@archbook>
In-Reply-To: <20220721083301.3711-1-frattaroli.nicolas@gmail.com>
References: <20220721083301.3711-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220819_165116_963135_EC4457AF 
X-CRM114-Status: GOOD (  21.09  )
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

On Donnerstag, 21. Juli 2022 10:33:00 CEST Nicolas Frattaroli wrote:
> This adds the necessary device tree changes to enable analog
> audio output on the PINE64 Quartz64 Model B with its RK809
> codec.
> 
> The headphone detection pin is left out for now because I couldn't
> get it to work and am not sure if it even matters, but for future
> reference: It's pin GPIO4 RK_PC4, named HP_DET_L_GPIO4_C4 in the
> schematic.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
> Changes since v1:
>  - use generic node name for the simple-audio-card node
> 
> ---
>  .../boot/dts/rockchip/rk3566-quartz64-b.dts   | 32 ++++++++++++++++++-
>  1 file changed, 31 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> index 02d5f5a8ca03..3897980d69d1 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-b.dts
> @@ -42,6 +42,21 @@ led-user {
>  		};
>  	};
>  
> +	sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,name = "Analog RK809";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +
> +		simple-audio-card,codec {
> +			sound-dai = <&rk809>;
> +		};
> +	};
> +
>  	sdio_pwrseq: sdio-pwrseq {
>  		status = "okay";
>  		compatible = "mmc-pwrseq-simple";
> @@ -177,11 +192,16 @@ rk809: pmic@20 {
>  		reg = <0x20>;
>  		interrupt-parent = <&gpio0>;
>  		interrupts = <RK_PA7 IRQ_TYPE_LEVEL_LOW>;
> +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
> +		clock-names = "mclk";
> +		clocks = <&cru I2S1_MCLKOUT_TX>;
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
>  
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_int>;
> +		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
>  		rockchip,system-power-controller;
> +		#sound-dai-cells = <0>;
>  		wakeup-source;
>  		#clock-cells = <1>;
>  
> @@ -420,6 +440,16 @@ &i2c5 {
>  	status = "disabled";
>  };
>  
> +&i2s1_8ch {
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s1m0_sclktx
> +		     &i2s1m0_lrcktx
> +		     &i2s1m0_sdi0
> +		     &i2s1m0_sdo0>;
> +	rockchip,trcm-sync-tx-only;
> +	status = "okay";
> +};
> +
>  &mdio1 {
>  	rgmii_phy1: ethernet-phy@1 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
> 

Gentle ping, it has been a month with no response so I assume
there's nothing egregiously wrong here.



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
