Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 20CC5C433EF
	for <linux-rockchip@archiver.kernel.org>; Sun, 12 Dec 2021 22:09:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=42fxUXbukPaFkqjmflHnlswPeKVmQVk6eeN4pConkao=; b=b+GYtYtpc+ETM6
	D2Ox8anL0HXwjnjYrSFHsUB1wuIHF/VqnFYN0nutch/p6Vx8b+HwuBQZaECAVIE/RqreEOVu6VC1H
	584YSZcaNp0qqw7eFr5w7V8p0/ZXQlH+5amOoRqEXZ8GcPu3L716Jv91EHX0PifVoNxQ7/JgHmbvU
	wWdWSVUdS/YeiGFFBDPbNJ3q8AEC7G50Gj79rAi/VmbNTPDB4GJlAJidlZE1UUT634CreNnAaa14Z
	g1b6bpK5zaf0foRbMeq0fYxuCivq2Op3wuFH50u1voOHYEWIb6SIwEgKXVChF1ynVchMIkWXqwuaZ
	gTqYhFCJBjUZJBK0jYTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mwX2L-007PNa-9m; Sun, 12 Dec 2021 22:09:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mwX29-007PMN-AT; Sun, 12 Dec 2021 22:09:30 +0000
Received: from p508fc708.dip0.t-ipconnect.de ([80.143.199.8]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.92) (envelope-from <heiko@sntech.de>)
 id 1mwX24-0006Qe-S7; Sun, 12 Dec 2021 23:09:24 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: dri-devel@lists.freedesktop.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>, Peter Geis <pgwipeout@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>
Subject: Re: [PATCH 07/18] dt-bindings: display: rockchip: dw-hdmi: Allow
 "ref" as clock name
Date: Sun, 12 Dec 2021 23:09:24 +0100
Message-ID: <3032544.f5MXlUzpl7@phil>
In-Reply-To: <20211208151230.3695378-8-s.hauer@pengutronix.de>
References: <20211208151230.3695378-1-s.hauer@pengutronix.de>
 <20211208151230.3695378-8-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211212_140929_420010_C1F3FDA7 
X-CRM114-Status: GOOD (  20.59  )
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

Am Mittwoch, 8. Dezember 2021, 16:12:19 CET schrieb Sascha Hauer:
> "vpll" is a misnomer. A clock input to a device should be named after
> the usage in the device, not after the clock that drives it. On the
> rk3568 the same clock is driven by the HPLL.
> To fix that, this patch renames the vpll clock to ref clock.  The clock
> name "vpll" is left for compatibility to old device trees.

Can't we just say that the binding only takes the "ref" name, but
the code still allows "vpll".

I think I remember Rob suggesting something similar in the past.

I don't think that we need to keep the binding(-validation)
compatible with old devicetrees, but the kernel itself should stay
compatible.


Heiko


> 
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  .../bindings/display/rockchip/rockchip,dw-hdmi.yaml         | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> index 6e09dd2ee05ac..2ab6578033da2 100644
> --- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
> @@ -48,10 +48,14 @@ properties:
>            - cec
>            - grf
>            - vpll
> +          - ref
>        - enum:
>            - grf
>            - vpll
> -      - const: vpll
> +          - ref
> +      - enum:
> +          - vpll
> +          - ref
>  
>    ddc-i2c-bus:
>      $ref: /schemas/types.yaml#/definitions/phandle
> 





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
