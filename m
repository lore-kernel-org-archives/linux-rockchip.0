Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 626EBC433F5
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Feb 2022 20:33:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:
	References:In-Reply-To:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J/ZBkmkoIvhyLm6BUz++qh4V8S82i6ss/RPnzwS2wSk=; b=BkBlodZ1sK/D5t
	V9NoCEtYg07Wzpd54rhYpfmPNcyz+kef6ZgcGPzzu6S2VaZzvQXk87gbTUt0mTwOsSvj5Vsl3iGI5
	2xkHHfxpgjZ+SakufT0vKfVxvONrUtQ/DALeP/72ZcTyPYOwLv/CxPpm+sERa656hd+Q6BS2onyOm
	ZKrGWidLevFPq1ufoSIkya4QMp+lss+U4b69b5VYA6TvGkS5mJBDdQymif4BWWysLi8Wckr5Kooia
	jJwFDVXtnAO4jkFy9AjB5mDBz7/m0UbD6Th/zmxyDy2i82+l3R7wAstrLGQeh5Ql5r3MeMpg3H20I
	T2WpdjydWVaIxT9JzVFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHXBH-00FVRl-5w; Tue, 08 Feb 2022 20:33:43 +0000
Received: from mail-oo1-f49.google.com ([209.85.161.49])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHXBE-00FVRF-FO; Tue, 08 Feb 2022 20:33:41 +0000
Received: by mail-oo1-f49.google.com with SMTP id
 p190-20020a4a2fc7000000b0031820de484aso16395oop.9; 
 Tue, 08 Feb 2022 12:33:34 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:in-reply-to:references:subject:date
 :message-id;
 bh=JRPrSLHlMGFs/3ziWzW4DwHIjPmQfKs7GHoGvsPVseE=;
 b=LeJSzG7H+MQJIsKg8hKC1bSLBaePR4iD1SK88MCKIH+ZJmwlSvOVU35zxFM0v5boUw
 ij9cRp2VLGJ+YQACf57z43yqDBSEMw01JKNkDdYGLCCqjfJyKW7u+RuqvU30QuhIVisl
 msMoEXvNxu1Mq3ySoP2zOld2uwUJTnvaDAruNS6TVFyUHwY5QGAp4wyoPpJFETUcI2Ci
 tqyd0wRB866zbMn/MNc5rBDVGTi/IkJMFdP6ega+knn/2HsQRvNV26sI5M0MId5lmCww
 TdLoqwTc8h9YM91tH0r/+t3zUFibOwLFcatHp/GPRMXWS8D3o8PE9Z1RwZcDFvOFQkNS
 E9jA==
X-Gm-Message-State: AOAM5316x7nQNoHqh1mJv/vTZ5XjQpnwaLFvuEtO0Lysy/xMc7ce2dv1
 YCirhazPbVT6AUXyGnee8w==
X-Google-Smtp-Source: ABdhPJy992PXewYBALzEYZBXPGbQ5OcH8lbZ6CwXGZxPSunoTW7Rr/84sO8nvJNszKtykvGlJvCgtg==
X-Received: by 2002:a05:6870:1215:: with SMTP id
 21mr1027834oan.166.1644352414225; 
 Tue, 08 Feb 2022 12:33:34 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net.
 [66.90.148.213])
 by smtp.gmail.com with ESMTPSA id u5sm5887627ooo.46.2022.02.08.12.33.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Feb 2022 12:33:33 -0800 (PST)
Received: (nullmailer pid 2969145 invoked by uid 1000);
 Tue, 08 Feb 2022 20:33:32 -0000
From: Rob Herring <robh@kernel.org>
To: Yifeng Zhao <yifeng.zhao@rock-chips.com>
Cc: heiko@sntech.de, vkoul@kernel.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, devicetree@vger.kernel.org, robh+dt@kernel.org,
 lee.jones@linaro.org, cl@rock-chips.com, kishon@ti.com,
 kever.yang@rock-chips.com, linux-arm-kernel@lists.infradead.org,
 david.wu@rock-chips.com, michael.riesch@wolfvision.net,
 linux-phy@lists.infradead.org, wulf@rock-chips.com, p.zabel@pengutronix.de,
 jbx6244@gmail.com
In-Reply-To: <20220208091326.12495-3-yifeng.zhao@rock-chips.com>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
 <20220208091326.12495-3-yifeng.zhao@rock-chips.com>
Subject: Re: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Date: Tue, 08 Feb 2022 14:33:32 -0600
Message-Id: <1644352412.075016.2969144.nullmailer@robh.at.kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220208_123340_534254_851E5465 
X-CRM114-Status: GOOD (  13.65  )
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

On Tue, 08 Feb 2022 17:13:24 +0800, Yifeng Zhao wrote:
> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> 
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
> 
> Changes in v8: None
> Changes in v7:
> - remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel
> 
> Changes in v5:
> - modify description for ssc and ext-refclk
> - remove apb reset
> 
> Changes in v4:
> - restyle
> - remove some minItems
> - add more properties
> - remove reset-names
> - move #phy-cells
> - add rockchip,rk3568-pipe-grf
> - add rockchip,rk3568-pipe-phy-grf
> 
> Changes in v3: None
> Changes in v2:
> - Fix dtschema/dtc warnings/errors
> 
>  .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++++++++++++++++
>  1 file changed, 109 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> 

My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
on your patch (DT_CHECKER_FLAGS is new in v5.13):

yamllint warnings/errors:

dtschema/dtc warnings/errors:
Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:0:0: /example-0/syscon@fdc50000: failed to match any schema with compatible: ['rockchip,rk3568-pipe-grf', 'syscon']
Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:0:0: /example-0/syscon@fdc70000: failed to match any schema with compatible: ['rockchip,rk3568-pipe-phy-grf', 'syscon']

doc reference errors (make refcheckdocs):

See https://patchwork.ozlabs.org/patch/1589719

This check can fail if there are any dependencies. The base for a patch
series is generally the most recent rc1.

If you already ran 'make dt_binding_check' and didn't see the above
error(s), then make sure 'yamllint' is installed and dt-schema is up to
date:

pip3 install dtschema --upgrade

Please check and re-submit.


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
