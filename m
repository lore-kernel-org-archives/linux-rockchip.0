Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED292C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri, 13 May 2022 22:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gNmU//QP/A69ncEx2dvzEY4fuLBqsv+PE6efCdcKb6w=; b=FK+OC2uOkFZNH0
	onGGOTeo52sRg2f0/8RGVk8Q0m7BY8fiZtdKX+xn1kWAi06zdLJOsNslN3b2Hp2RiUdLKAVc2wlA8
	AGaovq41SKdpKlYxDmdMztrgx7vgTBDqyTWtlWYBhfRBdQ8XyLrh54Q83w3+AeuU3sjHajCvyg4Wh
	J15msDxz7mUOPwXsxdyAiRgdubQM9tuZ1KjYuOKQAuUZZE6SJN8s2ry51YUlRTOTGkOwYZcjUNRwA
	wmnt+y9C46gBRbunbTu46Ja13B980zRObfY7eo+vvLdvv1ymYh10VSCbaNA+dYNv1cWVG2ijepda4
	hKfpFiS3v+100MGxRJ/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1npdkZ-000Cid-RP; Fri, 13 May 2022 22:27:07 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1npdkP-000Cdy-KA; Fri, 13 May 2022 22:26:58 +0000
Received: from p508fd4ce.dip0.t-ipconnect.de ([80.143.212.206]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1npdkM-0003mT-8O; Sat, 14 May 2022 00:26:54 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>,
 robh+dt@kernel.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, krzk+dt@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names
 mandatory for VOP2
Date: Sat, 14 May 2022 00:26:53 +0200
Message-ID: <6824319.LvFx2qVVIh@phil>
In-Reply-To: <20220511082109.1110043-2-s.hauer@pengutronix.de>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de>
 <20220511082109.1110043-2-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220513_152657_707251_ABBE5862 
X-CRM114-Status: GOOD (  16.54  )
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

Hi Rob, Krzysztof,

Am Mittwoch, 11. Mai 2022, 10:21:07 CEST schrieb Sascha Hauer:
> The VOP2 driver relies on reg-names properties, but these are not
> documented. Add the missing documentation, make reg-names mandatory
> and increase minItems to 2 as always both register spaces are needed.
> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

does this look ok now?

Thanks
Heiko

> ---
> 
> Notes:
>     Changes since v1:
>     - Drop minItems
>     - Add reg-names properties to example
> 
>  .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> index 655d9b327f7d3..fba45091d9092 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
> @@ -22,7 +22,6 @@ properties:
>        - rockchip,rk3568-vop
>  
>    reg:
> -    minItems: 1
>      items:
>        - description:
>            Must contain one entry corresponding to the base address and length
> @@ -31,6 +30,11 @@ properties:
>            Can optionally contain a second entry corresponding to
>            the CRTC gamma LUT address.
>  
> +  reg-names:
> +    items:
> +      - const: vop
> +      - const: gamma-lut
> +
>    interrupts:
>      maxItems: 1
>      description:
> @@ -86,6 +90,7 @@ properties:
>  required:
>    - compatible
>    - reg
> +  - reg-names
>    - interrupts
>    - clocks
>    - clock-names
> @@ -104,6 +109,7 @@ examples:
>              vop: vop@fe040000 {
>                  compatible = "rockchip,rk3568-vop";
>                  reg = <0x0 0xfe040000 0x0 0x3000>, <0x0 0xfe044000 0x0 0x1000>;
> +                reg-names = "vop", "gamma-lut";
>                  interrupts = <GIC_SPI 148 IRQ_TYPE_LEVEL_HIGH>;
>                  clocks = <&cru ACLK_VOP>,
>                           <&cru HCLK_VOP>,
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
