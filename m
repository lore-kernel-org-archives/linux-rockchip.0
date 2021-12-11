Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CCE01C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat, 11 Dec 2021 10:56:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tkM3s17b9OTHlRVdqVGBY8GT625jHlILPhQmcY11dD0=; b=zgsgCxcKVOubXm
	IU0fQaRlE7PQ7D2/aeBm2xytBgUqBQdg8PIVYvl2YKZIxe2C8SZ50WAWuqDNtvB61gFFd0RO9zcTa
	gQkRQBP5kthtNKocbTNpOjM8n3uJUuF+gQ+ahElM92BDkC06XCbgnj9D4e0zM3TzdRdMy3fLx+jfa
	sxyBev4zExMnx4eAzKWTCshhBF4qY/xPMNUiOCo1m3XtPo0TtaieZ2j3xYodPy1IU3aPRUr8Uh8w9
	NVp478FCVle/cKT1faJpJ0Mu8PTqc1M42sTxCDvoVrOGBka5GFeH4mmYeOHP8ifpb0/iHiiQg8ktI
	+Tl51PA5dasbhUo8lNLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mw03H-004tzn-8F; Sat, 11 Dec 2021 10:56:27 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mw034-004txP-Vm; Sat, 11 Dec 2021 10:56:16 +0000
Received: from ip4d17a2ab.dynamic.kabel-deutschland.de ([77.23.162.171]
 helo=diego.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mw02p-0007zm-NW; Sat, 11 Dec 2021 11:55:59 +0100
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Sandy Huang <hjc@rock-chips.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Rob Herring <robh+dt@kernel.org>,
 - <opensource@rock-chips.com>, David Heidelberg <david@ixit.cz>
Cc: ~okias/devicetree@lists.sr.ht, David Heidelberg <david@ixit.cz>,
 dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: convert power domain node for rockchip DW
 MIPI DSI
Date: Sat, 11 Dec 2021 11:55:58 +0100
Message-ID: <26502781.jAYDHVeSjN@diego>
In-Reply-To: <20211206212651.126405-1-david@ixit.cz>
References: <20211206212651.126405-1-david@ixit.cz>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211211_025615_055350_F46D6840 
X-CRM114-Status: GOOD (  14.47  )
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

Hi David,

Am Montag, 6. Dezember 2021, 22:26:50 CET schrieb David Heidelberg:
> Convert into YAML format into format, which can be validated.
> 
> Changes:
>  - drop panel from example

the patch subject is strange, talking about a "power domain node".
That needs a fix.

Some more things below.


> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - rockchip,px30-mipi-dsi
> +              - rockchip,rk3288-mipi-dsi
> +              - rockchip,rk3399-mipi-dsi
> +          - const: snps,dw-mipi-dsi

> +      - items:
> +          - const: rockchip,px30-mipi-dsi
> +      - items:
> +          - const: rockchip,rk3288-mipi-dsi
> +      - items:
> +          - const: rockchip,rk3399-mipi-dsi

what are these for?

I see that px30 uses the dsi without the snps part, but you
can also just add a patch adding that second compatible to px30.dtsi

I don't think we need to support both ways.

> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks: true
> +
> +  clock-names: true
> +
> +  phys:
> +    maxItems: 1
> +    description: The external PHY

make that "Optional external PHY perhaps"?

Heiko



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
