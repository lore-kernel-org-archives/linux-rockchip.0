Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66B83CA100B
	for <linux-rockchip@archiver.kernel.org>; Sat, 31 Aug 2024 06:17:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y1sPwhR4IenglxOtaYvw2gg3PkjAzm2FTltImLx+N8U=; b=EqiZ+lVmdIYksb
	pz3P/OkID2nPDlXWEGfGdlosNswffoiO06fhup+7AkCvi2szOYhW3qn8Y4mfbGcFAIcNaij75kQfU
	EQCgXPaoSKELt1F3XasorR/yJPRpIWxiBmykPMShPsD6yBFc8H2sHN2jT3usEYZw14ZLvGcvDYhFM
	M61Y8Js9wzMKGhwTxhWvS2bMzGtn7JpGh1FO04IUq8yibDDBUO4hkdRt4Z9Ns+F3mBFiwUBE/A8/X
	jbmt+cruKL57iV1iYXWpFK97FUXa9AUKdjADgAhVeut25eCEqqHIY5YPHnPhx56L60d4K1vUXppZ+
	aEfQlWAMhAln6ZhCVUgQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHQO-00000008hBX-1r5v;
	Sat, 31 Aug 2024 06:17:28 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1skHPU-00000008h4s-0zcH;
	Sat, 31 Aug 2024 06:16:33 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 9C4D35C4426;
	Sat, 31 Aug 2024 06:16:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 69E5DC4CEC0;
	Sat, 31 Aug 2024 06:16:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725084990;
	bh=Itrc34IYAY3xn9/wCabZCczGxzpgNo8B22FkQ32dCTM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=rfvl9omSqu1jEcX+TQ5OzZmzSgYejtsE5EMIJfBBcgCcsNGvYEIz2Ljwd/f+bf4ak
	 XS3MgHGGQ+W6ed050cNvRCggcLUDoqIdJqn+pOIbaI2XBbJooz1l2v0gD+fJie5kh5
	 ATqIZG10O2ewOmXNEi0tQqW4lXg6XBoalcb3MJpTms2hKefa+6OYecfZjj1y4+vW2Y
	 zar0ZQ6y+5oClQCl2nBXdpEo3KdUfXVJ44bSikR/QDJMFM67tQ9mCT7aZeSihcpg1J
	 Iz6Xqtubv8sfhMnwyxLzJN3vgFM6HWf9vrs3e6pJ/gW7mDQu3IZcWP44L+jEzdzDoq
	 Iw5OY4LHLRxiQ==
Date: Sat, 31 Aug 2024 08:16:26 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: Andrzej Hajda <andrzej.hajda@intel.com>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, Jonas Karlman <jonas@kwiboo.se>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Sandy Huang <hjc@rock-chips.com>, Heiko =?utf-8?Q?St=C3=BCbner?= <heiko@sntech.de>, 
	Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Mark Yao <markyao0591@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>, 
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	kernel@collabora.com, Alexandre ARNOUD <aarnoud@me.com>, 
	Luis de Arquer <ldearquer@gmail.com>
Subject: Re: [PATCH v5 1/4] dt-bindings: display: bridge: Add schema for
 Synopsys DW HDMI QP TX IP
Message-ID: <57wj2vwjv7eehlix2bmvbm3z4agv5fsyp6vmwwqzotkdsadx7n@azqg2kkaeuxz>
References: <20240831-b4-rk3588-bridge-upstream-v5-0-9503bece0136@collabora.com>
 <20240831-b4-rk3588-bridge-upstream-v5-1-9503bece0136@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240831-b4-rk3588-bridge-upstream-v5-1-9503bece0136@collabora.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240830_231632_436656_88D85E2C 
X-CRM114-Status: GOOD (  19.12  )
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

On Sat, Aug 31, 2024 at 12:55:29AM +0300, Cristian Ciocaltea wrote:
> Add dt-binding schema containing the common properties for the Synopsys
> DesignWare HDMI QP TX controller.
> 
> Note this is not a full dt-binding specification, but is meant to be
> referenced by platform-specific bindings for this IP core.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  .../display/bridge/synopsys,dw-hdmi-qp.yaml        | 88 ++++++++++++++++++++++
>  1 file changed, 88 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml
> new file mode 100644
> index 000000000000..771f7fba6c50
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/synopsys,dw-hdmi-qp.yaml
> @@ -0,0 +1,88 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/synopsys,dw-hdmi-qp.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Common Properties for Synopsys DesignWare HDMI QP TX Controller IP
> +
> +maintainers:
> +  - Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> +
> +description: |
> +  The Synopsys DesignWare HDMI 2.1 Quad-Pixel (QP) TX Controller IP core
> +  supports the following features, among others:
> +
> +  * Fixed Rate Link (FRL)
> +  * Display Stream Compression (DSC)
> +  * 4K@120Hz and 8K@60Hz video modes
> +  * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> +  * Fast Vactive (FVA)
> +  * SCDC I2C DDC access
> +  * Multi-stream audio
> +  * Enhanced Audio Return Channel (EARC)
> +
> +  Note this is not a full dt-binding specification, but is meant to be
> +  referenced by platform-specific bindings for this IP core.
> +
> +properties:
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    minItems: 4
> +    maxItems: 6
> +    items:
> +      - description: Peripheral/APB bus clock
> +      - description: EARC RX biphase clock
> +      - description: Reference clock
> +      - description: Audio interface clock
> +    additionalItems: true

What is the usefulness of all this? How can you even be sure that each
implementation of this core will have exactly these clocks?


> +
> +  clock-names:
> +    minItems: 4
> +    maxItems: 6
> +    items:
> +      - const: pclk
> +      - const: earc
> +      - const: ref
> +      - const: aud
> +    additionalItems: true
> +
> +  interrupts:
> +    minItems: 4
> +    maxItems: 5
> +    items:
> +      - description: AVP Unit interrupt
> +      - description: CEC interrupt
> +      - description: eARC RX interrupt
> +      - description: Main Unit interrupt

If these are real pins, then this seems more possible, but
additionalItems does not make me happy.

I don't see much value in this schema and I am afraid even enforcing
clock and interrupt names won't work for the second or third user.

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
