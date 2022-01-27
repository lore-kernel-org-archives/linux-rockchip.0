Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 18043C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Jan 2022 05:57:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:
	Subject:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TmJhar7o4HlP53Uoep3/XiBetRUWdWOMjEEdAP5b7Ak=; b=qhk6Dp2xLJFcLW
	xw/XMPj1s59RxdRN6GJW2KYhfO0ucXa8/it0Y0MfUq3Lz0e5ue+DVELXk4Jpq0bYXNCpf/qgHTK5M
	T7s/xXDIgMMU+bi+DkcTA2Ab08IxgFrVfncB/bItWNjXLPLfKXbOOCAKG5svrg7BhxdZgMVpEPlYn
	pKcE4ifsE/tmKlgLs7eKTVE0+M6P/QOfFmtkk2DJwoxiECSos08Og8BLtXxUrUbrLWUp0u9d5eJSd
	bwTogduM6dbfhBrFucK4K/VGn9teTGnPE3SX7gv3heKE9Dyo9mJf0DhJjz6ZsRbQU8HV23l8GZ/jk
	GR1d2srAlFZBt4SCxW3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nCxmW-00ERYj-Te; Thu, 27 Jan 2022 05:57:16 +0000
Received: from mail-ed1-x52c.google.com ([2a00:1450:4864:20::52c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nCxmK-00ERVb-AQ; Thu, 27 Jan 2022 05:57:05 +0000
Received: by mail-ed1-x52c.google.com with SMTP id w14so2090198edd.10;
 Wed, 26 Jan 2022 21:57:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=rtoTYqjQ8PbChSKR1PmaXjaY2py2OwAJLT1zQ2IW+3M=;
 b=HHhMl6Gjxz0Qn0fJ49nRZAqDu+g/ehm7+7f2P62+EftZ3LIkhgkuyNxI+pXVcXRrBZ
 mJlc34CNAjWW8HYZCP1vG1m1RpKZb1lhlMbH/fCJ/LR4C9CekW0SttplCbbnENZJ5RLo
 vnVoIYiqdNWAi/OguKSvD/vgyoXRvrjbCgYYHdJbq80J0UxEcQXa8qT/FE2IBbM7In8V
 ckXYtwn/Z0QYeGRtfVQli5CHrvuZRkm8JpZeD5J/V7hUM/GSf2DkW5ETTyOy62DMF2jI
 1K29DTvc/VzryA95w51Ma1MaaumXxF7W2+8hkmkhcL2HhS04DQSWBEOGqDmZkdDdjCbB
 UCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=rtoTYqjQ8PbChSKR1PmaXjaY2py2OwAJLT1zQ2IW+3M=;
 b=CXOvhi3fuYUnQVdh8isUY2JdvLkWSLWxikxeXE3CLdi4zveAWEfnt8cxoHRs4uyJJz
 f96WsJaHmOp7gPGoIE+3EKx1146ykg/8YXwVk7hLKnMnuycPO7hOS/jyYgPYsWPlRpei
 Vg9ZcsT9otGeemM6i8+MDalk0uc4hyiYnXhAjYaw0HDt6G1yZOibuDbrioidrmw6H6TG
 qYpS5IhOkE9OpculxjQYcYK3Sci3+Gm05uHSFJ47STfzPp8JgjHvZXy3bY/+mmM1i5Kt
 yymrhbx0BcSBtQfFqm81Z3GBD7P0v+Z4MR5kjQbL+sjffDYZKVG7qj4T1+ByTVLq5X1T
 nJcQ==
X-Gm-Message-State: AOAM532YklL0WRpBFl1qRDrgBLXhpxHWlE7hPGUM4RPUOGXlRIyISxsQ
 IRO5MKMUqWCijSxcKP381sE=
X-Google-Smtp-Source: ABdhPJz5Ch0dyPmyMf9mI+Ne9qs7BcjCptofSyeC6Yd4Bewk40Z0j2uXNyCboGiILHVradbKAh8+vQ==
X-Received: by 2002:a05:6402:387:: with SMTP id
 o7mr2119776edv.253.1643263021855; 
 Wed, 26 Jan 2022 21:57:01 -0800 (PST)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id
 g27sm8211426ejf.108.2022.01.26.21.57.01
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 26 Jan 2022 21:57:01 -0800 (PST)
Message-ID: <e2479729-154a-122f-f2e0-89b62ffe2c8d@gmail.com>
Date: Thu, 27 Jan 2022 06:57:00 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 2/3] arm64: dts: rockchip: add Quartz64-A pmu_io_domains
Content-Language: en-US
To: Peter Geis <pgwipeout@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220127010023.3169415-1-pgwipeout@gmail.com>
 <20220127010023.3169415-3-pgwipeout@gmail.com>
From: Johan Jonker <jbx6244@gmail.com>
In-Reply-To: <20220127010023.3169415-3-pgwipeout@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220126_215704_414509_CD456588 
X-CRM114-Status: GOOD (  15.75  )
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

Hi Peter,

On 1/27/22 02:00, Peter Geis wrote:
> Several io power domains on the Quartz64-A operate at 1.8v.
> Add the pmu_io_domains definition to enable support for this.
> This permits the enablement of the following features:
> sdio - wifi support
> sdhci - mmc-hs200-1_8v
> 
> Signed-off-by: Peter Geis <pgwipeout@gmail.com>
> ---
>  arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> index d9eb92d59099..33c2c18caaa9 100644
> --- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> +++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
> @@ -482,6 +482,19 @@ vcc_sd_h: vcc-sd-h {
>  	};
>  };
>  

https://files.pine64.org/doc/quartz64/Quartz64_model-A_schematic_v2.0_20210427.pdf

Could you check with the IO Power Domain Map?

> +&pmu_io_domains {
> +	pmuio1-supply = <&vcc3v3_pmu>;
VCC3V3_PMU

> +	pmuio2-supply = <&vcc3v3_pmu>;
VCC3V3_PMU

> +	vccio1-supply = <&vccio_acodec>;
VCCIO_ACODEC

> +	vccio2-supply = <&vcc_1v8>;
VCC_1V8

> +	vccio3-supply = <&vccio_sd>;
VCCIO_SD

> +	vccio4-supply = <&vcc_1v8>;
==> VCC1V8_PMU

> +	vccio5-supply = <&vcc_3v3>;
==> VCC_1V8

> +	vccio6-supply = <&vcc1v8_dvp>;
VCC1V8_DVP

> +	vccio7-supply = <&vcc_3v3>;
VCC_3V3

> +	status = "okay";
> +};
> +
>  &sdhci {
>  	bus-width = <8>;
>  	mmc-hs200-1_8v;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
