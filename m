Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BA974C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 09:15:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iTdE5/akHw1ABHK0V8QXmtWOo6l7P3i7kvzRRG92zVA=; b=1K7iGZ8P41wIjH
	qCfR0H6BdVssiUNu/Xw8KMmBTWFdwhpOxZ2ub2NOaR1VVmBxMW+m6JyKGQ0PY052B8FUCEiRGo2A5
	Mm2B0h6RiSqS4E5Y6/m5wDxVeIekU/0O/FDGz8rdXM9S0NnO94YxpncD2EM2KX+87U0jYsRvYKC6U
	qZQ6lcS0MN7T/IG/VBL0wT2rfHrqkhTf5MU6z8H1h8PEvY9/cBUvqiwNabQtEzjzAG8MR3RL7IrUg
	DGnoBUg81pCOqupE/wSgtWh4SbnBDU1my2br4LvYv1kXdtPL1tL49Epg9mJVje3GUGLJ28VPmCebr
	SIuGtu1Vu5pUblTEUqPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHj43-00Gqm0-1P; Wed, 09 Feb 2022 09:15:03 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHj3z-00Gqjm-3u; Wed, 09 Feb 2022 09:15:00 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1nHj3m-0007nJ-En; Wed, 09 Feb 2022 10:14:46 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Rob Herring <robh@kernel.org>,
 =?utf-8?B?6LW15Luq5bOw?= <yifeng.zhao@rock-chips.com>,
 "zyf@rock-chips.com" <zyf@rock-chips.com>
Cc: Vinod Koul <vkoul@kernel.org>,
 linux-rockchip <linux-rockchip@lists.infradead.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 devicetree <devicetree@vger.kernel.org>, robh+dt <robh+dt@kernel.org>,
 Lee Jones <lee.jones@linaro.org>, =?utf-8?B?6ZmI5Lqu?= <cl@rock-chips.com>,
 kishon <kishon@ti.com>, "Kever. Yang" <kever.yang@rock-chips.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "david.wu@rock-chips.com" <david.wu@rock-chips.com>,
 "michael. riesch" <michael.riesch@wolfvision.net>,
 linux-phy <linux-phy@lists.infradead.org>,
 =?utf-8?B?5ZC06Imv5bOw?= <wulf@rock-chips.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Johan Jonker <jbx6244@gmail.com>
Subject: Re: [PATCH v8 2/4] dt-bindings: phy: rockchip: Add Naneng combo PHY
 bindings
Date: Wed, 09 Feb 2022 10:14:45 +0100
Message-ID: <6069846.8JqooZBoOc@diego>
In-Reply-To: <2022020911371529703712@rock-chips.com>
References: <20220208091326.12495-1-yifeng.zhao@rock-chips.com>
 <1644352412.075016.2969144.nullmailer@robh.at.kernel.org>
 <2022020911371529703712@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_011459_228994_BE85E31D 
X-CRM114-Status: GOOD (  25.55  )
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

Hi,

Am Mittwoch, 9. Februar 2022, 04:38:15 CET schrieb zyf@rock-chips.com:
> Hi Rob,
> 
> We move "rockchip,rk3568-pipe-grf" from syscon.yaml to grf.yaml.
> How to fix this compilation failed?

as you can see in the example, there is already a
	#include <dt-bindings/clock/rk3568-cru.h>
so you probably just need to add another include for the grf.yaml


Heiko

> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> index fdd96e378df0..e9bb96ab9446 100644
> --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> @@ -52,6 +52,8 @@ properties:
>                - rockchip,rk3288-qos
>                - rockchip,rk3368-qos
>                - rockchip,rk3399-qos
> +              - rockchip,rk3568-pipe-grf
> +              - rockchip,rk3568-pipe-phy-grf
> 
> 
> >On Tue, 08 Feb 2022 17:13:24 +0800, Yifeng Zhao wrote:
> >> Add the compatible strings for the Naneng combo PHY found on rockchip SoC.
> >>
> >> Reviewed-by: Rob Herring <robh@kernel.org>
> >> Signed-off-by: Yifeng Zhao <yifeng.zhao@rock-chips.com>
> >> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> >> ---
> >>
> >> Changes in v8: None
> >> Changes in v7:
> >> - remove u3otg0_port_en, u3otg1_port_en and pipe_sgmii_mac_sel
> >>
> >> Changes in v5:
> >> - modify description for ssc and ext-refclk
> >> - remove apb reset
> >>
> >> Changes in v4:
> >> - restyle
> >> - remove some minItems
> >> - add more properties
> >> - remove reset-names
> >> - move #phy-cells
> >> - add rockchip,rk3568-pipe-grf
> >> - add rockchip,rk3568-pipe-phy-grf
> >>
> >> Changes in v3: None
> >> Changes in v2:
> >> - Fix dtschema/dtc warnings/errors
> >>
> >>  .../phy/phy-rockchip-naneng-combphy.yaml      | 109 ++++++++++++++++++
> >>  1 file changed, 109 insertions(+)
> >>  create mode 100644 Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> >>
> > 
> >My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> >on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > 
> >yamllint warnings/errors:
> > 
> >dtschema/dtc warnings/errors:
> >Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:0:0: /example-0/syscon@fdc50000: failed to match any schema with compatible: ['rockchip,rk3568-pipe-grf', 'syscon']
> >Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.example.dt.yaml:0:0: /example-0/syscon@fdc70000: failed to match any schema with compatible: ['rockchip,rk3568-pipe-phy-grf', 'syscon']
> > 
> >doc reference errors (make refcheckdocs):
> > 
> >See https://patchwork.ozlabs.org/patch/1589719
> > 
> >This check can fail if there are any dependencies. The base for a patch
> >series is generally the most recent rc1.
> > 
> >If you already ran 'make dt_binding_check' and didn't see the above
> >error(s), then make sure 'yamllint' is installed and dt-schema is up to
> >date:
> > 
> >pip3 install dtschema --upgrade
> > 
> >Please check and re-submit.
>  
>  
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
