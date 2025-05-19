Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78A93C2D0CD
	for <linux-rockchip@archiver.kernel.org>; Mon, 19 May 2025 08:28:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZoCWMnPh27RarKt8XUwTov8qsaHtaE3HS6kSmRBfrF0=; b=om4rlopq+3u/IN
	oDhCws0xr+w9AWaj38uxyKQYeGtys6KvzL29S/bnffbtlSXKKtTHNQ5G1tXYgdD4nLLS8gtD5EqR3
	swmTrl4DnbMvPzzCAX6YsIdmJuOdJ4eLEYb9yg6rcWe2nZessq8cntwa9n80LZ2ltUxsjb0Up5x9W
	nXYs3okibrqG8uqpPsERI93I2spfgrD5VEWOy4j+VqtqAkDqeCay85WGQoyxBx/L21wbp1VmFjdVB
	e2AjNy0/JzLBfsRA4BclS03F7I70fkFcdLkI9fjZj/hU0AUGppXWEOZ9GwIUE5K97s8B8ReHAbU12
	2Ub+q3Wp7ZnAxHEJ4quQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvrg-00000008Lys-1Zs3;
	Mon, 19 May 2025 08:28:52 +0000
Received: from sea.source.kernel.org ([172.234.252.31])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uGvmv-00000008LHi-3v7a;
	Mon, 19 May 2025 08:23:59 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sea.source.kernel.org (Postfix) with ESMTP id 7CAE04A911;
	Mon, 19 May 2025 08:23:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C5F15C4CEE4;
	Mon, 19 May 2025 08:23:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747643037;
	bh=jPOmJuNtUtPeHXYDoq8UpiU1fLg1uJ77a4E3sjVJxEo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=U5qQz9lNLqp+uykE3Gz6g6L7CJRrAXbzYGYaN2AituvPUZtSU3ZLuMsv+052yLqbP
	 wi6+DQX8s2nnJ8Dq4bFlxQNO2Y1G/L8J8txqx8fibr7BmN5pwMWmbLDbrnI4rU9rHj
	 dhehp1GkPvrZrFdbeemWlPN+2tbR4EPvx1N8SpAatTWH1y8NZET04N45u4Q4Hbu5Sm
	 l6suFuy8dbBQajdGwrCvBmHmcCitoA8oczhABPantwJH0JIZjHwPY7kEmc+nA2D0A9
	 rySdHlUDG9vdaO6MQu3yGdNLuZ5LgNBAVf8EHBi0eVNSG1txUF5VbDZhlRmyRW0REB
	 BbFt9Ks5Whxdw==
Date: Mon, 19 May 2025 10:23:54 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>
Cc: Chaoyi Chen <kernel@airkyi.com>, Sandy Huang <hjc@rock-chips.com>, 
	Heiko Stuebner <heiko@sntech.de>, Andy Yan <andy.yan@rock-chips.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, 
	Simona Vetter <simona@ffwll.ch>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dragan Simic <dsimic@manjaro.org>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] dt-bindings: display: rockchip: Convert
 cdn-dp-rockchip.txt to yaml
Message-ID: <20250519-tall-glistening-quokka-9ffa6f@kuoka>
References: <20250519012632.94-1-kernel@airkyi.com>
 <20250519012632.94-3-kernel@airkyi.com>
 <20a565da-296c-4920-b962-e9de9af464d9@kernel.org>
 <632f9f4d-ec0f-4512-a153-d2abfd9f6841@rock-chips.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <632f9f4d-ec0f-4512-a153-d2abfd9f6841@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250519_012358_012272_A9CF2ED8 
X-CRM114-Status: GOOD (  20.86  )
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

On Mon, May 19, 2025 at 02:56:03PM GMT, Chaoyi Chen wrote:
> Hi Krzysztof,
> 
> On 2025/5/19 14:16, Krzysztof Kozlowski wrote:
> > On 19/05/2025 03:26, Chaoyi Chen wrote:
> > > +maintainers:
> > > +  - Andy Yan <andy.yan@rock-chip.com>
> > > +  - Heiko Stuebner <heiko@sntech.de>
> > > +  - Sandy Huang <hjc@rock-chips.com>
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/sound/dai-common.yaml#
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - const: rockchip,rk3399-cdn-dp
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +
> > > +  clocks:
> > > +    items:
> > > +      - description: DP core work clock
> > > +      - description: APB clock
> > > +      - description: SPDIF interface clock
> > > +      - description: GRF clock
> > > +
> > > +  clock-names:
> > > +    items:
> > > +      - const: core-clk
> > > +      - const: pclk
> > > +      - const: spdif
> > > +      - const: grf
> > > +
> > > +  extcon:
> > > +    $ref: /schemas/types.yaml#/definitions/phandle-array
> > > +    items:
> > > +      maxItems: 1
> > > +    maxItems: 2
> > Instead of this, list the items. Old binding said only "specifier", so
> > this is technically a change, which should be explained in commit msg.
> 
> Will fix in v5.
> 
> 
> > 
> > > +    description:
> > > +      List of phandle to the extcon device providing the cable state for the DP PHY.
> > > +
> > > +  interrupts:
> > > +    maxItems: 1
> > > +
> > > +  phys:
> > > +    items:
> > > +      maxItems: 1
> > > +    maxItems: 2
> > > +    description: |
> > > +      List of phandle to the PHY device for DP output.
> > > +      RK3399 have two DP-TPYEC PHY, specifying one PHY which want to use,
> > > +      or specify two PHYs here to let the driver determine which PHY to use.
> > 
> > You do not allow one phy, so your description is not accurate. OTOH,
> > original binding did not allow two phandles, so that's another change in
> > the binding. You need to document all changes done to the binding in the
> > commit msg.
> 
> Oh, the original binding example use two phandles. I think only one PHY can

Example is not the binding, just an example.

> also pass the dtb check here, or maybe I'm missing something else?

You think or you tested it? What is the minItems value? 2, so even if
this works it's rather a bug in dtschema.

Also, inner maxItems:1 is not really correct. Why can't this work with
different phy providers?

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
