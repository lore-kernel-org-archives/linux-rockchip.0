Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 346F0C27C79
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jun 2024 19:56:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BafXJbYTlRddDqHSBf/I53abBTvO5uPVaiyX/5GXwC0=; b=vbtJx1Pc6Y3qcM
	2Byovk/Cl/P0H5bGdYz+2Yr6dwRFISWbm96F8EsVKHez58YJRsFy6dNFqluHSoqDY7XpDktLAzyB/
	wTGKaVCVF9kFLZv7w6lKHNFJgk5hT5dU/iJyd+YkgBHn1V0eMeNWLEXD7saZgdCCGKojhXhg7pSjO
	vQRC/RZRy/pMnl3pYhVe8ofbgU6WKcWQgGeRQSSfPZNYqosFGGXVGDtTT+rj1HJr1V5YJ7moPLBe+
	uou5LPguvvhpTJvuF/SftRpvP/ES4Umt7equFcjnLenMRJCea/7/6JopKH8FPup6YV/spBzXNZgtW
	qDDEnJipwcW4jO/ThX4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHqYl-00000000LMn-3T0j;
	Thu, 13 Jun 2024 19:56:35 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sHqYh-00000000LLF-3V2r;
	Thu, 13 Jun 2024 19:56:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id E14DE61B1C;
	Thu, 13 Jun 2024 19:56:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4B51AC2BBFC;
	Thu, 13 Jun 2024 19:56:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718308590;
	bh=2CIXLJ7qsPS8dd8m3DCzcakUf78MBjuyDU5bR//RUC8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CxPKWcuzwRPjJYc2rwTtmY2L71hz8x9jYNOMTX0r/OhGv2iRbMohECPUsF3o/U7Yz
	 BTF0PlBqx9mWImPoss+TwiIvob2I0pryGGxO4faeAu6bqGMlpuFVTPJd/+gMVjgDY5
	 eQFzm/PZ8WjoREBuhg4XfjWkByJDBxa2wzAH/KYz8yQ883jm8d1gz4Zv6pvlzPKxL7
	 Zmq3Cmas/uaWJYIXl0jr6Dd4aHoBpJOPtgytUU9/4dTCiHn866Rcj1UtPoPwZrL7RN
	 JebrM8S8tw/dn8wBfSsaskVwFj4iZveY/GVYLzSvn6DtPhnThQkamaPgdbgUw1M8NK
	 IRz32tDc//pGQ==
Date: Thu, 13 Jun 2024 13:56:29 -0600
From: Rob Herring <robh@kernel.org>
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Johan Jonker <jbx6244@yandex.com>,
	Shresth Prasad <shresthprasad7@gmail.com>, vkoul@kernel.org,
	kishon@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	heiko@sntech.de, sebastian.reichel@collabora.com,
	s.hauer@pengutronix.de, cristian.ciocaltea@collabora.com,
	andy.yan@rock-chips.com, linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	skhan@linuxfoundation.org, javier.carrasco.cruz@gmail.com
Subject: Re: [PATCH v3] dt-bindings: phy: rockchip-emmc-phy: Convert to
 dtschema
Message-ID: <20240613195629.GA2359753-robh@kernel.org>
References: <20240613085812.4020-2-shresthprasad7@gmail.com>
 <cc66cca1-33db-4f30-afcf-d256a959896b@yandex.com>
 <9ce15b81-a8bd-4833-b15e-3e6f240dcf03@kernel.org>
 <495e50aa-6819-457d-8503-00440abc97e3@yandex.com>
 <58e85008-a268-4555-bafb-f948ade16a63@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <58e85008-a268-4555-bafb-f948ade16a63@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240613_125631_977143_2EB9B7EA 
X-CRM114-Status: GOOD (  26.45  )
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

On Thu, Jun 13, 2024 at 02:52:46PM +0200, Krzysztof Kozlowski wrote:
> On 13/06/2024 12:33, Johan Jonker wrote:
> > 
> > 
> > On 6/13/24 12:12, Krzysztof Kozlowski wrote:
> >> On 13/06/2024 11:44, Johan Jonker wrote:
> >>>> ---
> >>>
> >>> Add ack request from phy maintainer here.
> >>
> > 
> >> Why? What do you mean for that? Why phy maintainer needs to ack patches
> >> he is going to take?
> > 
> > See my text below:
> > From my past converting phy documents experience asking was needed to smooths things up ...
> > Let me know if things have improved.
> > 
> > grf.yaml can be busy at times. Let Heiko take care of the merge order.
> > Ask for an ack from the phy maintainers in your commit message below a "---"
> > 
> >>
> >>>
> >>>> Changes in v3:
> >>>>     - fix `reg` in example being too long
> >>>>
> >>>> Tested against `rockchip/rk3399-firefly.dtb`, `rockchip/rk3399-orangepi.dtb`
> >>>> and `rockchip/rk3399-pinebook-pro.dtb`.
> >>>>
> >>>>  .../bindings/phy/rockchip,emmc-phy.yaml       | 79 +++++++++++++++++++
> >>>>  .../bindings/phy/rockchip-emmc-phy.txt        | 43 ----------
> >>>>  .../devicetree/bindings/soc/rockchip/grf.yaml |  2 +-
> >>>>  3 files changed, 80 insertions(+), 44 deletions(-)
> >>>>  create mode 100644 Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
> >>>>  delete mode 100644 Documentation/devicetree/bindings/phy/rockchip-emmc-phy.txt
> >>>>
> >>>> diff --git a/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
> >>>> new file mode 100644
> >>>> index 000000000000..85d74b343991
> >>>> --- /dev/null
> >>>> +++ b/Documentation/devicetree/bindings/phy/rockchip,emmc-phy.yaml
> >>>> @@ -0,0 +1,79 @@
> >>>
> >>>> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> >>>
> >>> You are converting an existing document, so GPL 2 only.
> >>
> > 
> >> Which copyrightable part was copied? This comment is not correct in
> >> general, because conversions are dual-licensed (there are exceptions,
> >> but that's the generic rule).
> > 
> > Was told to do so in the past by the maintainers(Rob??) for text 
> > documents conversions.(Can't find exactly were in lore, must be in one my first conversion patches)
> > If someone was submitting as GPL2 long time ago then the derived/converted work still hold the same license.
> > Let me know if the consensus has changed.
> 
> Consensus did not change but I am no sure if you got it right. It was
> about copied copyrightable text. Which part was copied here?

It is derived from the text binding, so strictly speaking that's derived 
work. Are descriptions (because that's really all we take) enough to be 
copyrightable? That's another question...

I don't know so I err on the side of keep GPL-2.0-only *only*.

Will anyone ever care? Not likely.

Rob

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
