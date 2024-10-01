Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C74BACF3185
	for <linux-rockchip@archiver.kernel.org>; Tue,  1 Oct 2024 21:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L6idkFaMPHA1a+sb3gfFdbV2zX/TAQp1ZVnSi2I0V/c=; b=zr71l118oxFg+9
	IrPnZlGc5Eh+URqlATUbNK7XUfHKIfbYykkZrGRNEr4TyXJ3nvJ/gW4GtEAFBkYOiiSjgZP8DisPU
	zM7PeMTMu0AT0IKVmvECHRQHlic22zrPlY9M+c47zwJgdMtBD8ChVsMaOEADDgh8P2zamVwwxwlU7
	gYbM3sEZVKmk8nWDZZywaBwOubpXl9FAWv9AwYldISlpZyCgb0q1qrugXfHMZoxmr3FajE7MPF18+
	INFqZuPMSCyEu/p+SZi0R8R+uS4mU3nnV49BIDSEhTfAJi+h5XVMMmBIbsOq2W4cEW5YfJESd1cQp
	S1LV6RDttjoS1R7n4JkQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1svkHd-000000046xb-0Cyo;
	Tue, 01 Oct 2024 21:19:49 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1svkGN-000000046qE-2Vlf;
	Tue, 01 Oct 2024 21:18:33 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 2AC1923D6B;
	Tue,  1 Oct 2024 23:18:30 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 5c_6UKsH-27M; Tue,  1 Oct 2024 23:18:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1727817509; bh=5BEqICgxywgmXFlHoLikSfxTzOLsRkFpUx8kZwsw5d8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=HfbBzqrSbDqfukvQgebq/5lhHCi3dAiHhUVfMtu5g4tXB0IJS/KBDvXiW+WOmgP+Z
	 Jn1g6Lzmxqq+q+u9ARpOlrjjVPUzHu9juLQIen7hxnmubBhn0jhTEWl3tQkRzpI/jd
	 3w6zCwMXAD/kK4OKi0MsHz6rzyKCNI2YnYy/Mnfo9ZvAi9D+aOJWk+NS/ezT0nCf+w
	 dGrzwZ/JhsKzl0YLqHSwdnq4+VVG1NYX33o3a9MHMpK+NM/30uRiC5SWMsSLlOHGFR
	 vM35D2qdxRPzZmBN6F5wF5kOwFQtfQSauF1Fb1pSFyYfNkG9us8dGpIPUDMKOBgXwM
	 lR8DjlheUPksQ==
Date: Tue, 1 Oct 2024 21:18:03 +0000
From: Yao Zi <ziyao@disroot.org>
To: Conor Dooley <conor@kernel.org>
Cc: Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Philipp Zabel <p.zabel@pengutronix.de>, linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org,
	Celeste Liu <CoelacanthusHex@gmail.com>
Subject: Re: [PATCH 3/8] dt-bindings: clock: Add rockchip,rk3528-cru
Message-ID: <Zvxm71YvGbF1s_2w@pineapple>
References: <20241001042401.31903-2-ziyao@disroot.org>
 <20241001042401.31903-5-ziyao@disroot.org>
 <20241001-name-stooge-7a939f71a08e@spud>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241001-name-stooge-7a939f71a08e@spud>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241001_141831_797202_5CE32493 
X-CRM114-Status: GOOD (  25.95  )
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

On Tue, Oct 01, 2024 at 05:29:15PM +0100, Conor Dooley wrote:
> On Tue, Oct 01, 2024 at 04:23:57AM +0000, Yao Zi wrote:
> > Document Rockchip RK3528 clock and reset unit.
> > 
> > Signed-off-by: Yao Zi <ziyao@disroot.org>
> > ---
> >  .../bindings/clock/rockchip,rk3528-cru.yaml   | 63 +++++++++++++++++++
> >  1 file changed, 63 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
> > new file mode 100644
> > index 000000000000..ae51dfde5bb9
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3528-cru.yaml
> > @@ -0,0 +1,63 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/rockchip,rk3528-cru.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Rockchip RK3528 Clock and Reset Controller
> > +
> > +maintainers:
> > +  - Yao Zi <ziyao@disroot.org>
> > +
> > +description: |
> > +  The RK3528 clock controller generates the clock and also implements a reset
> > +  controller for SoC peripherals. For example, it provides SCLK_UART0 and
> > +  PCLK_UART0 as well as SRST_P_UART0 and SRST_S_UART0 for the first UART
> > +  module.
> > +  Each clock is assigned an identifier, consumer nodes can use it to specify
> > +  the clock. All available clock and reset IDs are defined in dt-binding
> > +  headers.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk3528-cru
> 
> nit: This can probably be a const, rather than an enum.
> 
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  assigned-clocks: true
> > +
> > +  assigned-clock-rates: true
> > +
> > +  clocks:
> > +    minItems: 2
> > +    maxItems: 2
> > +
> > +  clock-names:
> > +    items:
> > +      - const: xin24m
> > +      - const: phy_50m_out
> 
> Why is this input clock named "out"? clocks should be named after how
> they're used in the IP in question, not the name of the source of that
> clock in the SoC.
> Without descriptions provided in the clocks property, it is hard to
> understand what this second clock is for.

Thanks for explaination, it should something like "clk_gmac0".

> > +
> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  "#reset-cells":
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> 
> Why would the input clocks be optional?

This follows other Rockchip SoCs, which often omit input clocks in
devicetree and depend on clock names registered in common clock
framework to work.

For completeness, they really shouldn't be optional.

> > +  - "#clock-cells"
> > +  - "#reset-cells"
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    cru: clock-controller@ff4a0000 {
> 
> nit: the cru label is not used and can be dropped.
> 
> Cheers,
> Conor.

All comments will be adapted in next revision. Thanks.

Best regards,
Yao Zi

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
