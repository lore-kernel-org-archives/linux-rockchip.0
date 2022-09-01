Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BC8D4ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Thu,  1 Sep 2022 19:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dyAybwaeY5d55PqcDYNfs8BEmQk0XmhpcBBjt+1lLnY=; b=CcIMdNs4EwMcov
	SAfi3kAGTK5heaNjDunj0XvUOpNAQ7QQwAq/JIKcGJV4F7WSiCld019dDV5dB+vEd9TU+xDIWAN0U
	pxkFFDKjT6LV4Qw6ONsUU5zKtsquuNEtOVJ8h1Qlssucn1vtB7/ET8Gy88+g2+7sr64fQEnpQu3x+
	fx1tmGqITyfZoTjI8CodZLgZhuDfs6LxKfH0apyHCy929xX2Gap+PcZ7d20vQW8DC4Lu4+VKLOElr
	Jj/n/amcbw+EnM6gsfJlzqR47rLOTm3vyQwr1dOi9PP8V+pSy8Ll7y1TxO4hnvJfPziq/jdsRJolL
	IbCUSMIv5y7ODX5trryA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTpel-00EAlS-5P; Thu, 01 Sep 2022 19:15:15 +0000
Received: from mail-oa1-f47.google.com ([209.85.160.47])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oTpeb-00EAdu-I3
	for linux-rockchip@lists.infradead.org; Thu, 01 Sep 2022 19:15:07 +0000
Received: by mail-oa1-f47.google.com with SMTP id 586e51a60fabf-11eab59db71so30083866fac.11
        for <linux-rockchip@lists.infradead.org>; Thu, 01 Sep 2022 12:14:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=message-id:date:subject:references:in-reply-to:cc:to:from
         :x-gm-message-state:from:to:cc:subject:date;
        bh=VtMkuQSRm5s1MtIjNa1EI8yp4U/CIxvqBb2k57VJBOU=;
        b=PHPh2MZ9SV7B2WgtTPNtXr1cbLiy0aIqVPjVFXWRweQdJvXAvVzesphuF5YjjBCH/c
         JudTlSOhl6Pp2hC8UQCBSqoL4ido876aeZCA9yybLDdI7NlsckARUP3XHQ2BziZOuLE/
         TXFCl91oLJ/o3Sgq/JFbzPskuMfG30xIty9ZqSPltTbXrbEryAeyoomo/GyXQPO96Eat
         /OGU/Tj8BUJob3LLOhZ6BAZjwlbpyEG7SP1ey0xZ3N7I82kkx4snw78XHH50my9S5LMX
         Mwr6L5am4HxojtunuKOTL9m1Dp9aY1aKbyV+R6M07o1iGoeI6Xl3x0bD3PZYJKik26Z2
         AnFQ==
X-Gm-Message-State: ACgBeo2CpjnBfRNAj3t83zAEfbT+AAm7yOsWpiyfX6ixeuedlr9s4O6/
	fQAFS7wppb8z45livzMldg==
X-Google-Smtp-Source: AA6agR68L2pMI+zsGWYQfVqT4QIh1hXgYYBwcPPZuBXZjrexaF099gi6TRxkvCJOAByhjpke28ugXw==
X-Received: by 2002:a05:6871:7a4:b0:11e:b321:c396 with SMTP id o36-20020a05687107a400b0011eb321c396mr327886oap.241.1662059697438;
        Thu, 01 Sep 2022 12:14:57 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id x13-20020a9d588d000000b00636fd78dd57sm32059otg.41.2022.09.01.12.14.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Sep 2022 12:14:57 -0700 (PDT)
Received: (nullmailer pid 2226884 invoked by uid 1000);
	Thu, 01 Sep 2022 19:14:55 -0000
From: Rob Herring <robh@kernel.org>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: Heiko Stuebner <heiko@sntech.de>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, =?utf-8?q?Uwe_Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, kernel@collabora.com, linux-pwm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>
In-Reply-To: <20220901135523.52151-1-sebastian.reichel@collabora.com>
References: <20220901135523.52151-1-sebastian.reichel@collabora.com>
Subject: Re: [PATCH 1/1] dt-bindings: pwm: rockchip: Add description for rk3588
Date: Thu, 01 Sep 2022 14:14:55 -0500
Message-Id: <1662059695.095333.2226883.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220901_121505_612760_48C004EF 
X-CRM114-Status: GOOD (  11.86  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Thu, 01 Sep 2022 15:55:23 +0200, Sebastian Reichel wrote:
> Add "rockchip,rk3588-pwm" compatible string for PWM nodes found
> on a rk3588 platform.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
> No driver changes required.
> ---
>  Documentation/devicetree/bindings/pwm/pwm-rockchip.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


pwm@10280000: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rv1108-elgin-r1.dtb
	arch/arm/boot/dts/rv1108-evb.dtb

pwm@10280010: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rv1108-elgin-r1.dtb
	arch/arm/boot/dts/rv1108-evb.dtb

pwm@10280020: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rv1108-elgin-r1.dtb
	arch/arm/boot/dts/rv1108-evb.dtb

pwm@10280030: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rv1108-elgin-r1.dtb
	arch/arm/boot/dts/rv1108-evb.dtb

pwm@20040000: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rv1108-elgin-r1.dtb
	arch/arm/boot/dts/rv1108-evb.dtb

pwm@20040010: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rv1108-elgin-r1.dtb
	arch/arm/boot/dts/rv1108-evb.dtb

pwm@20040020: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rv1108-elgin-r1.dtb
	arch/arm/boot/dts/rv1108-evb.dtb

pwm@20040030: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rv1108-elgin-r1.dtb
	arch/arm/boot/dts/rv1108-evb.dtb

pwm@ff1b0030: 'interrupts' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm64/boot/dts/rockchip/rk3318-a95x-z2.dtb
	arch/arm64/boot/dts/rockchip/rk3328-a1.dtb
	arch/arm64/boot/dts/rockchip/rk3328-evb.dtb
	arch/arm64/boot/dts/rockchip/rk3328-nanopi-r2s.dtb
	arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dtb
	arch/arm64/boot/dts/rockchip/rk3328-rock64.dtb
	arch/arm64/boot/dts/rockchip/rk3328-rock-pi-e.dtb
	arch/arm64/boot/dts/rockchip/rk3328-roc-pc.dtb


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
