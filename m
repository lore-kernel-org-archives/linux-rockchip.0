Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2E190C3ABC3
	for <linux-rockchip@archiver.kernel.org>; Fri,  9 May 2025 07:39:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FSsf0A/d/LkiejBWeG/gEaNVqRrZs++qOZxRM17W2CY=; b=nxYQ1Fu57gWHIy
	jQdpRXQrYHtnW9LFxqxYrt92JzhDj+hjnCLbFKH4dNOlxHf3GMoK6FqQOzBc60ZEZuagcpEUmt7Pc
	0Ga94WSl+JZ1H2myU5ZlghlZdroGTeiuZ22yP36BvQHeledJQUPQGRle10TgMw9vCLNp21NGG9/VJ
	zt/otTYQlfEFZq9CPFp0CS/xbuLrfzsbR3SJbakON6fwiusmpjImC4nxNbQsMsWO2Wvvh2E6hxglU
	/Q4zX3HuDNZmYCoDobdDyMWaF/zQJ3xCaOgywfXa8qEofEO/AjS+QG3BZ52XUXaHKie+MQl/0jQpP
	yAodnvsbJZ2nkb82I4nw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDIKj-00000002mIR-0bHr;
	Fri, 09 May 2025 07:39:49 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uDIIg-00000002lyG-0FZa;
	Fri, 09 May 2025 07:37:43 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id ED3AB260E2;
	Fri,  9 May 2025 09:37:37 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NSzk7zSKnJSd; Fri,  9 May 2025 09:37:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1746776256; bh=vyaf3O81ftGk4hXMqvkE+LhSreJTUx7RqGyR3ijoJoY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=kQOx/pRAmqD1GFKciaR0iDR/hrxI9cX+Un8/Ux+TQfOaLdCnoQ4NTugMZ8wFLAL2l
	 ShN/qUsbnKUQvRQZXsvUHPrkIgt5dTh9rGKfGouNXoNe+CxvcJC/hy/8uzhpEkK95F
	 BpU51SO5Umd/7H7cjJ0tt9JMJno50tG1+TPWXJOKcegcbK1RrvDJHsvgpFEYrhbVEP
	 tMofglj2iBNwQBd+zDkZY97aBrOmue5x3DibPxd/2qJG2HSyVoRQkOp04VF28CjTOr
	 I8bqFUpPnVjulaG++Bm/wHZPRmyLZjqawThzkZhLYRsaeaj/AzFkhZom9MKRch7pxo
	 Wvam/vb1E8pLg==
Date: Fri, 9 May 2025 07:37:17 +0000
From: Yao Zi <ziyao@disroot.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH v2 2/5] dt-bindings: phy: rockchip: naneng-combphy: Add
 RK3528 variant
Message-ID: <aB2wjKa1D832FKBH@pie.lan>
References: <20250509004121.36058-2-ziyao@disroot.org>
 <20250509004121.36058-4-ziyao@disroot.org>
 <20250509-secret-smart-kangaroo-fd3b58@kuoka>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250509-secret-smart-kangaroo-fd3b58@kuoka>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250509_003742_519709_565A773F 
X-CRM114-Status: GOOD (  15.14  )
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
Cc: Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Frank Wang <frank.wang@rock-chips.com>, linux-rockchip@lists.infradead.org, Conor Dooley <conor.dooley@microchip.com>, Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, Shresth Prasad <shresthprasad7@gmail.com>, Vinod Koul <vkoul@kernel.org>, Chukun Pan <amadeus@jmu.edu.cn>, linux-arm-kernel@lists.infradead.org, Andy Yan <andy.yan@rock-chips.com>, Krzysztof Kozlowski <krzk+dt@kernel.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

On Fri, May 09, 2025 at 08:03:11AM +0200, Krzysztof Kozlowski wrote:
> On Fri, May 09, 2025 at 12:41:19AM GMT, Yao Zi wrote:
> > Rockchip RK3528 ships one naneng-combphy which operates in either PCIe
> > or USB 3 mode. Document its compatible string.
> > 
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > Acked-by: Conor Dooley <conor.dooley@microchip.com>
> > Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> > ---
> 
> Eh, no...
> 
> >  .../devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> > index 888e6b2aac5a..bd064754e537 100644
> > --- a/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-naneng-combphy.yaml
> > @@ -12,6 +12,7 @@ maintainers:
> >  properties:
> >    compatible:
> >      enum:
> > +      - rockchip,rk3528-naneng-combphy
> >        - rockchip,rk3562-naneng-combphy
> >        - rockchip,rk3568-naneng-combphy
> >        - rockchip,rk3576-naneng-combphy
> > @@ -102,7 +103,9 @@ allOf:
> >        properties:
> >          compatible:
> >            contains:
> > -            const: rockchip,rk3588-naneng-combphy
> > +            enum:
> > +             - rockchip,rk3528-naneng-combphy
> 
> Still not tested. Neither v1 nor v2 was ever tested.

Oops, somehow I missed warnings about the indentation...

Thanks for pointing out, I'll drop the tags, wait until the prerequsite
series get merged and send v3 with this problem fixed.

> Best regards,
> Krzysztof
> 

Thanks,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
