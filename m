Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8E34C61D97
	for <linux-rockchip@archiver.kernel.org>; Fri, 24 Nov 2023 23:26:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpR/YyaOLnlr3Xp6PepFPG9sZEXObi8a/wJf+dqBK70=; b=HcjZrK/NToFLgw
	cp1W3DZZ/HnuLftTo0VW74qquAao/ljbdb6ENbbcKCCQl8H6EfDCo9/0M5GN4Gdzyj72xoxmQ/GM0
	WgjC1nXhFbG3q6v9clXSmwkN7/GNdyBRhI2NUgWaLz7RbqS5ZKZWZi8A4u912ZNkWWYkMhFWQtV5Y
	75vcacsJ+F1gbC+sgP6nfVZJGrhPrrbGMTuDvdQ9vdqIcoXBE6603kXFkGaN9N1rRJSzRvPQ7ci1W
	fVkLRPEvPBA0xw8t1f5Xuk2XU757t+/+EAAiom+ztzROqs1BdkIOdwzp5deuQcGvMQl+UH6ksNfU2
	1e/dLQhoStcrmilQSekA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r6fYr-008BbU-02;
	Fri, 24 Nov 2023 23:26:13 +0000
Received: from vps0.lunn.ch ([156.67.10.101])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r6fYo-008Baq-19;
	Fri, 24 Nov 2023 23:26:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
	s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
	Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
	bh=ZEmM+x5c4j9E2iYripoWJxHgYv7R98NUEa31meAyb3E=; b=uGtbsMYszf8pdWOAfR2MhpRlqV
	24g92f2VFULf7WTq8BWo5l/3XruHQvZr13mP5OFmGelaM3YxeSSS2yBBygiKA74EJKa+qbEbmA040
	u+t3KbeEDYIYMnJpUxJM0BZ6o/TFnIExVIRCdKpQOVZq3vDeASDU6zGVIgO/6OMynBis=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
	(envelope-from <andrew@lunn.ch>)
	id 1r6fYP-0018wU-SA; Sat, 25 Nov 2023 00:25:45 +0100
Date: Sat, 25 Nov 2023 00:25:45 +0100
From: Andrew Lunn <andrew@lunn.ch>
To: Conor Dooley <conor@kernel.org>
Cc: Javier Carrasco <javier.carrasco@wolfvision.net>,
	"David S. Miller" <davem@davemloft.net>,
	Eric Dumazet <edumazet@google.com>,
	Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	David Wu <david.wu@rock-chips.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Jose Abreu <joabreu@synopsys.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>, netdev@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com
Subject: Re: [PATCH RFC WIP 1/2] dt-bindings: net: rockchip-dwmac: add
 rockchip,phy-wol property
Message-ID: <42c5c174-e7f2-4323-8db0-0db1ede39ec5@lunn.ch>
References: <20231123-dwmac-rk_phy_wol-v1-0-bf4e718081b9@wolfvision.net>
 <20231123-dwmac-rk_phy_wol-v1-1-bf4e718081b9@wolfvision.net>
 <20231123-operable-frustrate-6c71ab0dafbf@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20231123-operable-frustrate-6c71ab0dafbf@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231124_152610_417335_0171BF82 
X-CRM114-Status: GOOD (  21.21  )
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

On Thu, Nov 23, 2023 at 05:20:48PM +0000, Conor Dooley wrote:
> On Thu, Nov 23, 2023 at 01:14:13PM +0100, Javier Carrasco wrote:
> > This property defines if PHY WOL is preferred. If it is not defined, MAC
> > WOL will be preferred instead.
> > 
> > Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>
> > ---
> >  Documentation/devicetree/bindings/net/rockchip-dwmac.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> > index 70bbc4220e2a..fc4b02a5a375 100644
> > --- a/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> > +++ b/Documentation/devicetree/bindings/net/rockchip-dwmac.yaml
> > @@ -91,6 +91,12 @@ properties:
> >        The phandle of the syscon node for the peripheral general register file.
> >      $ref: /schemas/types.yaml#/definitions/phandle
> >  
> > +  rockchip,phy-wol:
> > +    type: boolean
> > +    description:
> > +      If present, indicates that PHY WOL is preferred. MAC WOL is preferred
> > +      otherwise.
> 
> Although I suspect this isn't, it sounds like software policy. What
> attribute of the hardware determines which is preferred?

I tend to agree, its a software policy. Doing WoL in the PHY should be
the preferred solution, because it allows the MAC to be powered off,
saving more power. If the PHY does not implement it, then the MAC
should be used.

It should be possible for the MAC driver to pass the WoL settings to
the PHY, and if it returns EOPNOTSUPP, or maybe EINVAL, implement the
WoL in the MAC.

This might be a behaviour change, depending on the MAC driver. So i
could imaging a less risk tolerant developers wanting a knob to enable
this. However, if done correctly, using the PHY instead of the MAC
should not be visible from the users perspective.

    Andrew

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
