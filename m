Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BDF57C52D6F
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 Aug 2024 17:21:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vFwed7ajP4bwklv5W6rUJPMF9ZhujJlPL5L8WXr5vFM=; b=C08gM6JZpuTY5R
	FPBEdatG7EJIw/Bbb/i4G3d4nnjxk6JkdbQycx+TypGKeOgEZbLYRpqHE53UY11QuT50GKtFZcC3i
	Fv5JlBtOv3k+QPLGLfxAmdUWeBVSgdJcSTG8kANeCkd+7CkgdD3BXNYSabqlX4Y32Vi0YylKRCNoL
	dC9Xn77wxuqMFeG0mLeAk/sJcXPun3nn3R0q8HczJOezjUIuWuCjK4JK7PTnM11jpIqO+yIWFtqwx
	t+9h1tCQHl0yOxlDQ0ogw6PDBH8KEaBTGCFL9Ke3MSORuMRSw4Yea1FNvNZh5m/pGjJ1sPMajtVs/
	bSfmeerDF/4aXTz5ofaw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg64L-00000002O2x-16Bu;
	Mon, 19 Aug 2024 17:21:25 +0000
Received: from sender4-op-o12.zoho.com ([136.143.188.12])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sg5wR-00000002LgE-1HJP;
	Mon, 19 Aug 2024 17:13:17 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724087584; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=T6303kZ0TX6/V1MAkFPqOb3xQCCwN13GsMEhxg3XBLYpjVGHhZAkgmyjx06MSBd8Bhyy/K5ogzLudzoUHbm6ikyRDjOafcpmpRkrm65V3s2W8YZfJaEFWeqC3O4VxCWbdwuB2Mts6GIYrMXteJsdB9T+1iVCkxjPLGLCbm/B/iM=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724087584; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=M34aoc8Kda1/DJFgE1Z0cakbSM38xy/V0nkXYm4RUQU=; 
	b=lrmNM+yHcvoU16Fc8fOftOVaSPm55EI6/2pqIjjBc9vgbeM2NZMv422mrrlb2d+MUTSi+f3C5oJigg/yIwC6Q59hEBEKg9G5rFZtgDYGJfHmOTnAjRttm/BKtqyn0H8aLapeyiPM+bzLK+8KECs5Kjp0oxXGiOAYBiWboOhYaOY=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724087584;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Content-Type:Message-Id:Reply-To;
	bh=M34aoc8Kda1/DJFgE1Z0cakbSM38xy/V0nkXYm4RUQU=;
	b=OBaASwKUwFGbM2znuDtMpBCHGBNQszIUA79pZXtLkzM5vuVG9rikno1vH2s+833M
	E5nn5hx+qDDi6ki7Vf2VlWLo5fMg7om2GozKulXKY57SwGgVvquox+ShuBJ59m51Rcw
	YMF+zdULBNHsAf3LR4z3R4Rgbmh4zYxcxwjLqEBU=
Received: by mx.zohomail.com with SMTPS id 1724087583124955.9251244579328;
	Mon, 19 Aug 2024 10:13:03 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: Conor Dooley <conor@kernel.org>
Cc: linux-kernel@vger.kernel.org, Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 Heiko Stuebner <heiko@sntech.de>, Philipp Zabel <p.zabel@pengutronix.de>,
 Elaine Zhang <zhangqing@rock-chips.com>, linux-clk@vger.kernel.org,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, kernel@collabora.com,
 Sugar Zhang <sugar.zhang@rock-chips.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: clock, reset: Add support for rk3576
Date: Mon, 19 Aug 2024 13:14:38 -0400
Message-ID: <2071848.usQuhbGJ8B@trenzalore>
In-Reply-To: <20240819-pelvis-monetary-211e2294f2f4@spud>
References: <20240814222159.2598-1-detlev.casanova@collabora.com>
 <5018731.31r3eYUQgx@trenzalore> <20240819-pelvis-monetary-211e2294f2f4@spud>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240819_101315_431765_0E3EFEBE 
X-CRM114-Status: GOOD (  39.64  )
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

On Monday, 19 August 2024 12:34:15 EDT Conor Dooley wrote:
> On Mon, Aug 19, 2024 at 10:08:31AM -0400, Detlev Casanova wrote:
> > Hi Conor,
> > 
> > On Thursday, 15 August 2024 11:07:46 EDT Conor Dooley wrote:
> > > On Wed, Aug 14, 2024 at 06:19:22PM -0400, Detlev Casanova wrote:
> > > > Add clock and reset ID defines for rk3576.
> > > > 
> > > > Compared to the downstream bindings written by Elaine, this uses
> > > > continous gapless IDs starting at 0. Thus all numbers are
> > > > different between downstream and upstream, but names are kept
> > > > exactly the same.
> > > > 
> > > > Also add documentation for the rk3576 CRU core.
> > > > 
> > > > Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> > > > Signed-off-by: Sugar Zhang <sugar.zhang@rock-chips.com>
> > > > Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
> > > > ---
> > > > 
> > > >  .../bindings/clock/rockchip,rk3576-cru.yaml   |  64 ++
> > > >  .../dt-bindings/clock/rockchip,rk3576-cru.h   | 592
> > > >  ++++++++++++++++++
> > > >  .../dt-bindings/reset/rockchip,rk3576-cru.h   | 564 +++++++++++++++++
> > > >  3 files changed, 1220 insertions(+)
> > > >  create mode 100644
> > > >  Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
> > > >  create
> > > >  mode 100644 include/dt-bindings/clock/rockchip,rk3576-cru.h create
> > > >  mode
> > > >  100644 include/dt-bindings/reset/rockchip,rk3576-cru.h>
> > > > 
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
> > > > b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml new
> > > > file mode 100644
> > > > index 0000000000000..d69985e6fa0ce
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/clock/rockchip,rk3576-cru.yaml
> > > > @@ -0,0 +1,64 @@
> > > > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/clock/rockchip,rk3576-cru.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Rockchip rk3576 Family Clock and Reset Control Module
> > > > +
> > > > +maintainers:
> > > > +  - Elaine Zhang <zhangqing@rock-chips.com>
> > > > +  - Heiko Stuebner <heiko@sntech.de>
> > > > +  - Detlev Casanova <detlev.casanova@collabora.com>
> > > > +
> > > > +description:
> > > > +  The RK3576 clock controller generates the clock and also implements
> > > > a
> > > > reset +  controller for SoC peripherals. For example it provides
> > > > SCLK_UART2 and +  PCLK_UART2, as well as SRST_P_UART2 and SRST_S_UART2
> > > > for the second UART +  module.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    const: rockchip,rk3576-cru
> > > > +
> > > > +  reg:
> > > > +    maxItems: 1
> > > > +
> > > > +  "#clock-cells":
> > > > +    const: 1
> > > > +
> > > > +  "#reset-cells":
> > > > +    const: 1
> > > > +
> > > > +  clocks:
> > > > +    maxItems: 2
> > > > +
> > > > +  clock-names:
> > > > +    items:
> > > > +      - const: xin24m
> > > > +      - const: xin32k
> > > > +
> > > > +  rockchip,grf:
> > > > +    $ref: /schemas/types.yaml#/definitions/phandle
> > > > +    description: >
> > > > +      phandle to the syscon managing the "general register files". It
> > > > is
> > > > used +      for GRF muxes, if missing any muxes present in the GRF
> > > > will
> > > > not be +      available.
> > > 
> > > Two questions on this property:
> > > - you only support one soc, why is this optional?
> > 
> > It is optional because only used for some specific clocks. The SoC can
> > still be used without this, but some devices might not work (Not tested
> > but USB PHYs might not be working without the GRF)
> > This is also set as optional in similar rockchip CRU bindings (rk3588).
> > 
> > > - why can't you look it up by compatible?
> > 
> > These bindings are specific to one compatible only. It is very similar to
> > rk3588 but it looks like all rockchip CRU driver has its own yaml file, so
> > I followed that trend instead of merging with the rk3588 CRU bindings.
> I don't think you've answered the question I am asking. Why can you not
> look up the syscon by the /syscon/'s compatible in the clock driver, and
> thus remove the property from here?

I don't think that this is possible. That means modifying rockchip/clk.c to 
lookup the syscon instead of using the `rockchip,grf` phandle. As it is used 
by other rockchip clock drivers, that means that we'd need to change the 
syscon's node name for some other SoCs to match what is being looked up.

But the GRF nodes have different compatibles:
- rk3588 uses php_grf (rockchip,rk3588-php-grf)
- rk3576 uses pmu0_grf (rockchip,rk3576-pmu0-grf)

So an optional rockchip,grf phandle sounds a good solution for this 

Regards,
Detlev.




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
