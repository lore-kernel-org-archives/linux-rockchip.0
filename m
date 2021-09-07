Return-Path: <SRS0=zMH+=N5=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-10.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6247C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 13:40:28 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 765FA61100
	for <linux-rockchip@archiver.kernel.org>; Tue,  7 Sep 2021 13:40:28 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 765FA61100
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBTR1vtzxZflhCYndx+et+wAZVK4GL6CdccHTt1pmc0=; b=3xxD726o6V3mr8
	AoXNraBvmE/MO91aaADXufm8YqcOW5OL6KyJu7BsqeYJDHoh4xq/zOesW82ifOrA2YX106WL6UvVR
	IicGhdfAfVQ+N3NQIV7u3pUkzUd7htuCS5q+lU/yPOEseWux0egXmRoF6un2FuZmlcvjb0wspEeYL
	y38UrB+8E7deMrZRLdEOf2odEn20L9JdZKsX2pExo3dalrmjwvHeSKavINL754btQkO23GVehBaR2
	s1BGOaRaCP8qXfU5387mgk62EOb1xjyrSJ68BV53gM9QXAASS582+zTi71tu92q9yuIUvlOyjxCpM
	kIgR6KOTXS0HmsBpO7Bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mNbKn-003mra-N7; Tue, 07 Sep 2021 13:40:21 +0000
Received: from mail-ot1-x32b.google.com ([2607:f8b0:4864:20::32b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mNbKb-003mqe-4R; Tue, 07 Sep 2021 13:40:10 +0000
Received: by mail-ot1-x32b.google.com with SMTP id
 q11-20020a9d4b0b000000b0051acbdb2869so12816413otf.2; 
 Tue, 07 Sep 2021 06:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=8rny3XFWF7pa2pDSX8KlfgiSTf4jqiy1msfwyRKNEMM=;
 b=joh0VySyNJjTMMEvpPuW2/4SKp85ZFLjn3UdYj1LXDN2u4E4/OSR2j0IsPngnGDcPB
 KQRx4pfeTZxXD/26Jm+pM3myPqWGfXSNxeinqnwYqBbW8qiwmV5XD5zzpI4cT96hTUPq
 /r29AB2NGz+0P82YP3Cj/ReooNbqcgs0+6yF1KlnYPa8ZgowQ9TCWcJ+1Z9vCMCJdPUJ
 NjnXoOacDkKPwHLZBGEeSYkv/vGasYDR/Hp5pf2LI23QuJAxSebBXB8cgjGuwWrc8wL3
 0UwEhLyG/z0gOYel6s/q14kdBFKheKHcGhcoQQH5dHWQLhZdtcosY9HlHHclQ01znwzT
 nCIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=8rny3XFWF7pa2pDSX8KlfgiSTf4jqiy1msfwyRKNEMM=;
 b=jfEDr4LGh1hweOSwXABtgWEzuXQK/wKN2GYw95/UjNRCx94O0lTV1d9Cm5jLgqGsjc
 01qVGhKp8iIuP6Dw1xJJK7KWr06yJlH0HFvwyC5MQqqPfrDZc92++MQBDKuU+cySWYDj
 cHHkqXAfUOMXqB9CQ/M9ZE4BXOu+ecQGYMT/8aHpe89bYP9Dg4WesVn7MPaieHJqkpXY
 6f7OCdUfoYgeD+53j0McuUcQXMujWjN1JiM62ZOAwU/o6MB0G0eEY6aTsBHwrPzT6/2I
 Xi+2/dtzaWUwOC06QGLYnQ/xb4tiRA36B5J+D5ywQJ1EC7BLD7X4R0fFe1KP24sOoEmr
 Dddw==
X-Gm-Message-State: AOAM532zY7+X4bv92bLou2cHPIhffiUY0QzG2CYCv/6J+kPs/8Gl2RwJ
 qQqd4F8k8+JDZBfMLS0gah4=
X-Google-Smtp-Source: ABdhPJwXKdBRiNy5D6vxkacdqM/AZTpB7wFh5IkbkrOKUTkniJTNBs2hnoaCEAhPHhWua+2EVA9mFw==
X-Received: by 2002:a9d:6c04:: with SMTP id f4mr14788360otq.185.1631022007366; 
 Tue, 07 Sep 2021 06:40:07 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id y14sm564180oti.69.2021.09.07.06.40.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Sep 2021 06:40:06 -0700 (PDT)
Date: Tue, 7 Sep 2021 08:40:06 -0500
From: Chris Morgan <macroalpha82@gmail.com>
To: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 4/4] arm64: dts: rockchip: add analog audio on Quartz64
Message-ID: <20210907134006.GA11287@wintermute.localdomain>
References: <20210903231536.225540-1-frattaroli.nicolas@gmail.com>
 <20210903231536.225540-5-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210903231536.225540-5-frattaroli.nicolas@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210907_064009_229401_1663CE65 
X-CRM114-Status: GOOD (  20.81  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

On Sat, Sep 04, 2021 at 01:15:36AM +0200, Nicolas Frattaroli wrote:
> On the Quartz64 Model A, the I2S1 TDM controller is connected
> to the rk817 codec in I2S mode. Enabling it and adding the
> necessary simple-sound-card and codec nodes allows for analog
> audio output on the PINE64 Quartz64 Model A SBC.
> 
> Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3566-quartz64-a.dts   | 35 ++++++++++++++++++-
>  1 file changed, 34 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index a244f7b87e38..3a87c0240b30 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -58,6 +58,20 @@ led-diy {
>  		};
>  	};
>  
> +	rk817-sound {
> +		compatible = "simple-audio-card";
> +		simple-audio-card,format = "i2s";
> +		simple-audio-card,name = "Analog RK817";
> +		simple-audio-card,mclk-fs = <256>;
> +
> +		simple-audio-card,cpu {
> +			sound-dai = <&i2s1_8ch>;
> +		};
> +		simple-audio-card,codec {
> +			sound-dai = <&rk817>;
> +		};
> +	};
> +
>  	vcc12v_dcin: vcc12v_dcin {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc12v_dcin";
> @@ -199,8 +213,13 @@ rk817: pmic@20 {
>  		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
>  		clock-output-names = "rk808-clkout1", "rk808-clkout2";
>  
> +		#sound-dai-cells = <0>;
> +		clock-names = "mclk";
> +		clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
> +		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
>  		pinctrl-names = "default";
> -		pinctrl-0 = <&pmic_int_l>;
> +		pinctrl-0 = <&pmic_int_l>, <&i2s1m0_mclk>;
>  		rockchip,system-power-controller;
>  		wakeup-source;
>  		#clock-cells = <1>;
> @@ -389,9 +408,23 @@ regulator-state-mem {
>  				};
>  			};
>  		};
> +
> +		rk817_codec: codec {

This node should be optional and can probably be removed. It's only
used when there are extra parameters to pass to the codec (such as 
rockchip,mic-in-differential). Leaving it in shouldn't hurt anything
though.

> +		};
> +
>  	};
>  };
>  
> +&i2s1_8ch {
> +	status = "okay";
> +	rockchip,trcm-sync-tx-only;
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&i2s1m0_sclktx
> +		     &i2s1m0_lrcktx
> +		     &i2s1m0_sdi0
> +		     &i2s1m0_sdo0>;
> +};
> +
>  &mdio1 {
>  	rgmii_phy1: ethernet-phy@0 {
>  		compatible = "ethernet-phy-ieee802.3-c22";
> -- 
> 2.33.0
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
