Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 657E7ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 Sep 2022 13:56:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XsP+bgKbavnxQWWUCwzxPDQ6JEZ9+cRfKNJlceJBljA=; b=tJEhVjrGbfcVpz
	75ngHb8JWbHHFlNBLn3W9DO7MT9FuJfYzFrQ29mRmaMcZF7BF6lEikk8VGzNtTJ+Vye+XJqBcvaJH
	0pHXjjjyutKtKmPxgRPjkHeXY2JCaGjlivmMCgJnq3HLajZFbJay9LN/ZIi5B3jj6ZvFWyiZ+35ab
	YEfBsaaT2zuI6qnN+MYi6ljdWhGVPlr8X6pgQ9xhX8KAq8r7NVBzAkJAb+s494LJUq0nOmOzUhZCr
	8i2fRaZGK/ntEYelZU1ifIUXt+16RN7HwavY58C8w+prEvza9ERUTAGlaH9maWroGaIhL/mXBHopD
	t+RciasaoQ0DRLfeI/0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWeUf-00GVyw-GK; Fri, 09 Sep 2022 13:56:29 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWeUb-00GVuh-1J; Fri, 09 Sep 2022 13:56:26 +0000
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1oWeUW-0005i0-Q7; Fri, 09 Sep 2022 15:56:20 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org, Chris Morgan <macroalpha82@gmail.com>
Cc: linux-phy@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, cl@rock-chips.com, s.hauer@pengutronix.de, pgwipeout@gmail.com, vkoul@kernel.org, kishon@ti.com, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie, hjc@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v2 2/5] dt-bindings: phy-rockchip-inno-dsidphy: add compatible for rk3568
Date: Fri, 09 Sep 2022 15:56:19 +0200
Message-ID: <19907775.sIn9rWBj0N@diego>
In-Reply-To: <20220906174823.28561-3-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com> <20220906174823.28561-3-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220909_065625_104329_3850D523 
X-CRM114-Status: GOOD (  13.80  )
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

Am Dienstag, 6. September 2022, 19:48:20 CEST schrieb Chris Morgan:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add a compatible string for the rk3568 dsi-dphy.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

Reviewed-by: Heiko Stuebner <heiko@sntech.de>

> ---
>  .../devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> index 8a3032a3bd73..5c35e5ceec0b 100644
> --- a/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> +++ b/Documentation/devicetree/bindings/phy/rockchip,px30-dsi-dphy.yaml
> @@ -18,6 +18,7 @@ properties:
>        - rockchip,px30-dsi-dphy
>        - rockchip,rk3128-dsi-dphy
>        - rockchip,rk3368-dsi-dphy
> +      - rockchip,rk3568-dsi-dphy
>  
>    reg:
>      maxItems: 1
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
