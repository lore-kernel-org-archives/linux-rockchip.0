Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A00EC433EF
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Mar 2022 01:51:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FK3czCdWhfaWf7b7FwK/ZT8fYb1WhcuWAmCCv8rgKjk=; b=Koodz3KljGdRuD
	gOSHGw123D0ZVUVDW1aK6VJcXNye4TyMyyIDncqQFtciRoZcYYV0KsaVBs+PfTvq4p3CAskZ6e6Bo
	ax7oA7yK3nW/dg8t65lDl4/RScKUgYEkd1O+F3l87YUyCDMw8vn6hEu2y1Mh24sU3uKGUCEKv6uhm
	6nccDezbTNMJ1QCcvr/JQP+n5HUbjZR0EcTQzg2whqYVNz/ShWt1YamBst7D7Hz8L7ojcrVsGE7uE
	0DCZ1fGmDTronR+0d7mRSa1MZSkpA+EPeubt75TF6BcIvSPM+tt/uQrlHCXzZQoQ2Y8Pd5ZwurwlX
	W3Bnc5Hl/1fO7BEwW99w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nWTfl-009djG-LP; Tue, 22 Mar 2022 01:50:57 +0000
Received: from mail-oi1-f172.google.com ([209.85.167.172])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nWTfi-009diG-I8; Tue, 22 Mar 2022 01:50:57 +0000
Received: by mail-oi1-f172.google.com with SMTP id b188so18148074oia.13;
 Mon, 21 Mar 2022 18:50:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=6wGO95480o++3hkVke2KCQeABv0JOzxQ2AVcywF5mS8=;
 b=W/EPgDDYJjkwB2nrViIiIWV3c7+EvTpskCltd/s9VPyG/PZxV3HIc7e+WjniEg+Pgk
 Hd7QkZNDO33Vro08znr3ZZUv3OonOH2Qm1RvSHMtMIQVYcE/Eq9bLJhVOCWdcBNkORsh
 mBOOhAQkrI4x3PJuKmQCdQAkd5pXwb7GNmvvnlJ2eRaoJm2FCTNBCHpliiiIvQb6cZBX
 TShIrKl1Nm0hw/A4qjhRvrD+CQkQcC0KcV7370DryLtEGb8A2UbzSV6IDuIYG8qWz4My
 XL8QcliM7RZ93lb+tXS6akMzZSZcwu2dwA7Fn7LCDoPlwujBYICshnWCQrg08NwJrlHX
 H4+Q==
X-Gm-Message-State: AOAM532Q0nHKpJnQcratizAz5kA/Z/zJsXYD6rbXY+knFKYH7SrzMqBc
 eatJsDqzysW6G8vvZhdlyw==
X-Google-Smtp-Source: ABdhPJwj36RCG58UmGKrtvgw5QXEfOwvQc1Y4lLzuT9Y/w9iAv4/yO6DZ834We37179XQTFVsEmSEg==
X-Received: by 2002:a54:4f89:0:b0:2ef:7561:d35d with SMTP id
 g9-20020a544f89000000b002ef7561d35dmr1055708oiy.261.1647913853228; 
 Mon, 21 Mar 2022 18:50:53 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net.
 [66.90.144.107]) by smtp.gmail.com with ESMTPSA id
 p8-20020a4aac08000000b00324907b406fsm1857479oon.21.2022.03.21.18.50.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Mar 2022 18:50:52 -0700 (PDT)
Received: (nullmailer pid 941033 invoked by uid 1000);
 Tue, 22 Mar 2022 01:50:51 -0000
From: Rob Herring <robh@kernel.org>
To: Corentin Labbe <clabbe@baylibre.com>
Cc: sboyd@kernel.org, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
 linux-crypto@vger.kernel.org, heiko@sntech.de, robh+dt@kernel.org,
 herbert@gondor.apana.org.au, linux-clk@vger.kernel.org
In-Reply-To: <20220321200739.3572792-22-clabbe@baylibre.com>
References: <20220321200739.3572792-1-clabbe@baylibre.com>
 <20220321200739.3572792-22-clabbe@baylibre.com>
Subject: Re: [PATCH v3 21/26] dt-bindings: crypto: convert rockchip-crypto to
 yaml
Date: Mon, 21 Mar 2022 20:50:51 -0500
Message-Id: <1647913851.207213.941032.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220321_185054_620072_D61D8FC7 
X-CRM114-Status: UNSURE (   9.60  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Mon, 21 Mar 2022 20:07:34 +0000, Corentin Labbe wrote:
> Convert rockchip-crypto to yaml
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
>  .../crypto/rockchip,rk3288-crypto.yaml        | 84 +++++++++++++++++++
>  .../bindings/crypto/rockchip-crypto.txt       | 28 -------
>  2 files changed, 84 insertions(+), 28 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/crypto/rockchip,rk3288-crypto.yaml
>  delete mode 100644 Documentation/devicetree/bindings/crypto/rockchip-crypto.txt
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/1607887


cypto-controller@ff8a0000: 'reset-names' does not match any of the regexes: 'pinctrl-[0-9]+'
	arch/arm/boot/dts/rk3288-evb-act8846.dt.yaml
	arch/arm/boot/dts/rk3288-evb-rk808.dt.yaml
	arch/arm/boot/dts/rk3288-firefly-beta.dt.yaml
	arch/arm/boot/dts/rk3288-firefly.dt.yaml
	arch/arm/boot/dts/rk3288-firefly-reload.dt.yaml
	arch/arm/boot/dts/rk3288-miqi.dt.yaml
	arch/arm/boot/dts/rk3288-phycore-rdk.dt.yaml
	arch/arm/boot/dts/rk3288-popmetal.dt.yaml
	arch/arm/boot/dts/rk3288-r89.dt.yaml
	arch/arm/boot/dts/rk3288-rock2-square.dt.yaml
	arch/arm/boot/dts/rk3288-rock-pi-n8.dt.yaml
	arch/arm/boot/dts/rk3288-tinker.dt.yaml
	arch/arm/boot/dts/rk3288-tinker-s.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-brain.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-fievel.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-jaq.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-jerry.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-mickey.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-mighty.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-minnie.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-pinky.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-speedy.dt.yaml
	arch/arm/boot/dts/rk3288-veyron-tiger.dt.yaml
	arch/arm/boot/dts/rk3288-vyasa.dt.yaml


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
