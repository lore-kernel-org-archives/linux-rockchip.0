Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED2E9CDB483
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 Oct 2023 11:35:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RggLvKhDBdEwoCayiFhMXI9lrwtzhD/YULKGwjJt3qo=; b=pgkc0eycvxH1JG
	xewBmZSoAz33fpxGaoUppt8q0ODA/R1TRO8ygfAkWQXZLHcM2Nzt6HlVpUGvtHYmzWG4jLp/pgyu6
	tR5l5YCSjmSgpgZvC+BUVQUpEeW+e3RoFukf+ASDeekm31TGNG7M1yt2QUuzqRReqZgzQa729wxx8
	GhKuytXszQp8jJB0obOLo4oKoCfhZG1eRscbpVgAU0WA5iV0JCuX4rWZgUWy9yWsqEMXUOr1bfiv+
	sSUX9+rznZJpV+KrRRMc8lbXLHc9iDgHw4JwqoQWZmMqnwWA50I7/ekE3PSS8KenEm9pHuCYq4bOA
	Nc9rk1U/xI3OWJv6Dsrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRJS-00HBBg-2P;
	Thu, 19 Oct 2023 11:35:38 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtRJQ-00HBAx-2P
	for linux-rockchip@lists.infradead.org;
	Thu, 19 Oct 2023 11:35:37 +0000
Received: from i5e861907.versanet.de ([94.134.25.7] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1qtRJM-0003Gm-Q2; Thu, 19 Oct 2023 13:35:32 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Chris Morgan <macroalpha82@gmail.com>, linux-rockchip@lists.infradead.org,
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: linux-clk@vger.kernel.org, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, sebastian.reichel@collabora.com,
 sboyd@kernel.org, mturquette@baylibre.com, daniel@ffwll.ch,
 airlied@gmail.com, sam@ravnborg.org, neil.armstrong@linaro.org,
 conor+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH 4/5] dt-bindings: arm: rockchip: Add Powkiddy RK2023
Date: Thu, 19 Oct 2023 13:35:31 +0200
Message-ID: <2239084.Dhsi8hcfAM@diego>
In-Reply-To: <df3c067f-8732-46bf-aa93-852f41e9e4e9@linaro.org>
References: <20231018161848.346947-1-macroalpha82@gmail.com>
 <20231018161848.346947-5-macroalpha82@gmail.com>
 <df3c067f-8732-46bf-aa93-852f41e9e4e9@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231019_043536_784159_5F5BB5C6 
X-CRM114-Status: GOOD (  19.38  )
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

Am Donnerstag, 19. Oktober 2023, 11:21:47 CEST schrieb Krzysztof Kozlowski:
> On 18/10/2023 18:18, Chris Morgan wrote:
> > From: Chris Morgan <macromorgan@hotmail.com>
> > 
> > The Powkiddy RK2023 is a handheld gaming device made by Powkiddy and
> > powered by the Rockchip RK3566 SoC.
> > 
> > Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> > ---
> >  Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
> >  1 file changed, 5 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > index a349bf4da6bc..a6612185a7ff 100644
> > --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> > +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> > @@ -674,6 +674,11 @@ properties:
> >            - const: powkiddy,rgb30
> >            - const: rockchip,rk3566
> >  
> > +      - description: Powkiddy RK2023
> > +        items:
> > +          - const: powkiddy,rk2023
> 
> This cuold be just enum in previous entry :/ but I remember we talked
> about this once with Heiko.

Keeping similar devices together is perfectly fine. Like we do for example
with the Rock PI 4A/4A+/B/B+/C family directly below.

The powkiddy,rk2023 really looks like very similar to the rgb30, so
could do something similar.


The variant I don't like is having one big enum for _all_  boards using
the same soc.


Heiko

> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> > +          - const: rockchip,rk3566
> 
> 
> 
> Best regards,
> Krzysztof
> 
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
