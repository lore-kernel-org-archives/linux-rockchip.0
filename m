Return-Path: <SRS0=89Gv=LM=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.4 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,NICE_REPLY_A,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED,USER_AGENT_SANE_1 autolearn=unavailable autolearn_force=no
	version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFBDFC48BDF
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 09:55:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 84F2E613D6
	for <linux-rockchip@archiver.kernel.org>; Fri, 18 Jun 2021 09:55:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 84F2E613D6
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:Cc:To:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cg0hXB0aYtLlUzjoXzE1U49x27PyP0fb09rdgdk5Ngs=; b=13r7rpW+5BPq6oCPBJwf9SqYhZ
	ismVqK41p8redf64digILBbKxKdWXg0cKIA9/59OHJS9mktfRlYKGsjlg6EebSnzpm0+TluxW8eyl
	VCZSdDvQCGZ70EZ189ixVpxcYG8v/gruDG6ZNLq3Myqlf7JZul6hT1pbbd0ctM5cwNgnyVqJQ8OBe
	bzfU97EF7ywQJDjHb8vH1fBVALBfHaNVrH9KffqMWCl5JaFrYCGUnb63G0KexfOuApf6bHsXYSLPY
	u9cUGSnAVZAIoI3lXAVgkdQIponYZPxZq/ZWOKFrR0FUqPJAaR+eMNiI/lZ2mufOkUcYm1rtnzp4H
	w2LBhsrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1luBDd-00DfVU-4M; Fri, 18 Jun 2021 09:55:21 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1luBDN-00DfSJ-DB; Fri, 18 Jun 2021 09:55:07 +0000
Received: by mail-ej1-x632.google.com with SMTP id ho18so14945878ejc.8;
 Fri, 18 Jun 2021 02:55:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=w6OHpzFqMhfGysmy1AjapbSWOUF8PkX0rUS/FwR+ecA=;
 b=qaGlPMxABKfJyXTb0/wTCoPW8b97JlTZ0vf0gVMPkt/LRRigN3XmsHfRkDH34vMx4F
 AGicn5KaCu4h2i/4Zqf99m9qL0/5lZMu9kbouE3ItC+sCCztNaH5FoI5Js4evjaD5ex7
 VcbTr9paOIua3fsblA5xFO9erK5kRnLXGHuFFW3x3ndVNN3NJZACi/9Mp+TRwZQoMywn
 0+q1JLhhMAUUS7aE8iosmainGCTJ2WXcj0khqBOs7lJ+4M/7tBuh/bmh01n7oxRnnxkA
 3d5ycOADzsI8J7VLxMbLVlKO1wEiP3VTf9eKkF0RgvTvEX+NCsKujQgeEHWc42vv/kJJ
 cZ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=w6OHpzFqMhfGysmy1AjapbSWOUF8PkX0rUS/FwR+ecA=;
 b=oeKZifmsvWPi1trPRBfMSLsWXQWLTlNSPBJ9cBfiis72rCGu8o4DcCSjoA2Jz+ORB7
 hx8/b3gFPRnVLLVvYc2Vnj7sEswXwtwx31a6ZnT9z1+dmlEIgSvTYZC2Os5kVpmR74N7
 a+JOpLy+MmYKnbGr2MK0IjG3YPkfSWUE5rnKMG/x+S3DumGLrKWSodSRpmcxCtSSeNMN
 0cXpLVyjcf0NNvDuW8xV2gVRAVz5Fi8nIKAuek7/puE/xFV8RaM1hLoOKVq+c2IaBKWl
 3uh9/AotTMEGcAzBfI0NXeD/BqRDXvqRKyK4OSjzydRRBE2+HdXn7KCFDHG/3B84yAic
 GB1g==
X-Gm-Message-State: AOAM530jJZIvyZ6WL6f49N9wW4X+vtk6vlNoloo5ZOIsWanMqh/dBKUU
 C/E3FKuWvIVHbOn1Vxe9xkClJiVYNLvGGw==
X-Google-Smtp-Source: ABdhPJykYF/zptHx7zpqrTLT8w4dZMVzpPcKGfLn8gJgk3Tcqhei8wEXFKxedWCrPXnMb0HoLCs3Dg==
X-Received: by 2002:a17:907:1b20:: with SMTP id
 mp32mr10188290ejc.495.1624010101951; 
 Fri, 18 Jun 2021 02:55:01 -0700 (PDT)
Received: from [192.168.2.2] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 n18sm818960ejx.41.2021.06.18.02.55.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 18 Jun 2021 02:55:01 -0700 (PDT)
Subject: Re: [PATCH 1/3] arm64: dts: rockchip: add ES8316 codec for Rock Pi4
To: Alex Bee <knaerzche@gmail.com>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org, 
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20210617044955.598994-1-knaerzche@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
Message-ID: <d562b025-23cc-f26d-b118-e269501f459b@gmail.com>
Date: Fri, 18 Jun 2021 11:54:59 +0200
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210617044955.598994-1-knaerzche@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210618_025505_530293_061CFF0E 
X-CRM114-Status: GOOD (  19.15  )
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

Hi Alex,

On 6/17/21 6:49 AM, Alex Bee wrote:
> Rock Pi4 boards have the codec connected to i2s0 and it is accessible
> via i2c1 address 0x11.
> Add an audio-graph-card it.
> 
> Signed-off-by: Alex Bee <knaerzche@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 28 +++++++++++++++++++
>  1 file changed, 28 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> index 7d0a7c697703..e5c1083174ff 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> +++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
> @@ -36,6 +36,12 @@ sdio_pwrseq: sdio-pwrseq {
>  		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
>  	};
>  
> +	sound {
> +		compatible = "audio-graph-card";

> +		label = "rockchip,rk3399";

See previous discussion:

https://lore.kernel.org/linux-rockchip/e5ab2c62-ad00-4cdf-8b0a-24fda59c980b@gmail.com/

It seems that aplay/linux? adds "-1" to it and removes the comma and
"-", so we get:

hdmisound
rockchiprk3399
rockchiprk339_1

Shouldn't we label it with something that reflect the function/output.
Shouldn't we standardize to SPDIF, HDMI and Analog similar to rk3318/rk3328?
Make a shorter label without spaces or special chars, so that chars
don't get removed?

Proposal:

Analog
HDMI
ES8316 <---
SPDIF


Possible example solutions:

[PATCH] arm64: dts: rockchip: more user friendly name of sound nodes
https://lore.kernel.org/lkml/20210110151913.3615326-1-katsuhiro@katsuster.net/

===

Johan

> +		dais = <&i2s0_p0>;
> +	};
> +
>  	vcc12v_dcin: dc-12v {
>  		compatible = "regulator-fixed";
>  		regulator-name = "vcc12v_dcin";
> @@ -422,6 +428,20 @@ &i2c1 {
>  	i2c-scl-rising-time-ns = <300>;
>  	i2c-scl-falling-time-ns = <15>;
>  	status = "okay";
> +
> +	es8316: codec@11 {
> +		compatible = "everest,es8316";
> +		reg = <0x11>;
> +		clocks = <&cru SCLK_I2S_8CH_OUT>;
> +		clock-names = "mclk";
> +		#sound-dai-cells = <0>;
> +
> +		port {
> +			es8316_p0_0: endpoint {
> +				remote-endpoint = <&i2s0_p0_0>;
> +			};
> +		};
> +	};
>  };
>  
>  &i2c3 {
> @@ -441,6 +461,14 @@ &i2s0 {
>  	rockchip,capture-channels = <2>;
>  	rockchip,playback-channels = <2>;
>  	status = "okay";
> +
> +	i2s0_p0: port {
> +		i2s0_p0_0: endpoint {
> +			dai-format = "i2s";
> +			mclk-fs = <256>;
> +			remote-endpoint = <&es8316_p0_0>;
> +		};
> +	};
>  };
>  
>  &i2s1 {
> 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
