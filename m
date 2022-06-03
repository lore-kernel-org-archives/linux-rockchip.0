Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11435C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  3 Jun 2022 18:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dIvgtOyV41RH91M80JBDhzLpZNWFKFdIpECX781kSf4=; b=k5DgbPJmWfQSFM
	WK5LMaCxx/5nX8oA6pov/buK2GWe2VY8ebOA8u+wUJp8s6SXBeh1agGJ7zYv3/dcXufI9xsG2Gs+T
	yKv4Ew0Cgn3m1GN1H3LsxE1A5wSZpq3DkZWCk2dxlpChDwoWAxNJoC90UdLDAMSRrEIIsMRBx4YK3
	QuSepGUsLqHm0kzBurOI78T8MS+OSQBF7+jEg+uGI5SDa0RG/L25rpxPGpP1ghKO4iTs39/Rh/vgB
	+v19XrV/gIoi424y2lufsKqGg+hZcQXEDxjfe7yrGh3BUuRtfR9cpqD09RnBgNO2om/U9MlYbdPZP
	sWri8UOWNykMTPbWJeWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxC3u-008PpL-5r; Fri, 03 Jun 2022 18:30:18 +0000
Received: from mail-oa1-f50.google.com ([209.85.160.50])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nxC3j-008Po8-Pi; Fri, 03 Jun 2022 18:30:09 +0000
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-f2cbceefb8so11612637fac.11;
        Fri, 03 Jun 2022 11:30:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
         :message-id;
        bh=I7SGBEQXCUibuD73vM0CHY2eGNwkmF13THVdJfw1SR0=;
        b=IK37ZIIyX3PnCUq2nmNjhVHrXXRhwrOjaiG+En86ud27IGzV0IimCjUZ98yU/XK+qt
         X70ZCTQ872J9Y7K7DzJJokUHnwixsQ4jEcAAg2nqX0IoXN60Xy9Y8Bm0FT35GoXoPw5d
         0cDHpF7CF3HJYsIuNqz6aVkNhN2bSmDxG1EaCfqkfbxoc6d0xp2vIQQcfqVs8NxfnEtS
         VnVofHNIxxBe7TCxt3JSuOmyG6WbU0BU+B1hL1iT0r/RfbgBWdzuRqDEwYyH8NYuFc0B
         xwPdifpySVRTb6LIymTe+pS22iGLu/MBEHqw3Pdy/A5FEErCnFr4roK0wf2PWEkQlUad
         m43g==
X-Gm-Message-State: AOAM533YgrwmT1zGSlyxlVz1mfWQJiRUkVE9cOLZbAiylQy5QYTf9Yxz
	kkBmul/bua78Zl0wAzmNPQ==
X-Google-Smtp-Source: ABdhPJzurdHrLRcPetBePDn+vKDT2DZNlz06HHGkbGle2OmyEXWhxj77Y4tWwxQDz7yoqzlBmWHgFg==
X-Received: by 2002:a05:6870:311:b0:f2:d46a:b370 with SMTP id m17-20020a056870031100b000f2d46ab370mr24040400oaf.169.1654281006668;
        Fri, 03 Jun 2022 11:30:06 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id m11-20020a9d644b000000b0060b350fd549sm3860552otl.65.2022.06.03.11.30.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 11:30:06 -0700 (PDT)
Received: (nullmailer pid 680143 invoked by uid 1000);
	Fri, 03 Jun 2022 18:30:04 -0000
From: Rob Herring <robh@kernel.org>
To: Johan Jonker <jbx6244@gmail.com>
Cc: netdev@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org, linux-rockchip@lists.infradead.org, heiko@sntech.de, edumazet@google.com, linux-kernel@vger.kernel.org, davem@davemloft.net, pabeni@redhat.com, kuba@kernel.org, linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, robh+dt@kernel.org
In-Reply-To: <20220603163539.537-1-jbx6244@gmail.com>
References: <20220603163539.537-1-jbx6244@gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: net: convert emac_rockchip.txt to YAML
Date: Fri, 03 Jun 2022 13:30:04 -0500
Message-Id: <1654281004.034832.680142.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_113007_869502_C4E7C3CC 
X-CRM114-Status: GOOD (  10.36  )
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

On Fri, 03 Jun 2022 18:35:37 +0200, Johan Jonker wrote:
> Convert emac_rockchip.txt to YAML.
> 
> Changes against original bindings:
>   Add mdio sub node.
>   Add extra clock for rk3036
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changed V2:
>   use phy
>   rename to rockchip,emac.yaml
>   add more requirements
> ---
>  .../devicetree/bindings/net/emac_rockchip.txt |  52 --------
>  .../bindings/net/rockchip,emac.yaml           | 115 ++++++++++++++++++
>  2 files changed, 115 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/net/emac_rockchip.txt
>  create mode 100644 Documentation/devicetree/bindings/net/rockchip,emac.yaml
> 

Running 'make dtbs_check' with the schema in this patch gives the
following warnings. Consider if they are expected or the schema is
incorrect. These may not be new warnings.

Note that it is not yet a requirement to have 0 warnings for dtbs_check.
This will change in the future.

Full log is available here: https://patchwork.ozlabs.org/patch/


ethernet@10200000: compatible: ['rockchip,rk3036-emac', 'snps,arc-emac'] is too long
	arch/arm/boot/dts/rk3036-evb.dtb
	arch/arm/boot/dts/rk3036-kylin.dtb

ethernet@10200000: 'mdio' is a required property
	arch/arm/boot/dts/rk3036-evb.dtb
	arch/arm/boot/dts/rk3036-kylin.dtb

ethernet@10204000: 'mdio' is a required property
	arch/arm/boot/dts/rk3066a-marsboard.dtb
	arch/arm/boot/dts/rk3066a-rayeager.dtb
	arch/arm/boot/dts/rk3188-radxarock.dtb


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
