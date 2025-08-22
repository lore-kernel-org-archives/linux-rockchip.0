Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6424ACA0FE8
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Aug 2025 06:32:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Rp7dj2uTI0neWVk7nmJUwnVaFgGiRF+TGjmSzo5tNpw=; b=SKOaZwFkuNt2ll
	jlwfeReyYHkDJ56m/B5k+I+NgQ8QPhkX2SzmI8eKEAL+kiwbOmZ70wxVMkY3ToD9zMnhP3xn2TSLf
	1POmxj8jFGm/jnoNBM+K0310GdN5ofcrU1Z1/SAv5Aqfh0eUm9d0YeNul5E/KB959qnC1kjLcUXI8
	44iI4LuuSCFZnWZCVGaFvnvy83I8x4I4oG3qITInEEctxgKJAYrYpdVGbrPTBU6Ms6HwZx8b31+0r
	cHMh/uUzkcDtzGLwGOrlWNwFmiEXKlRYxy+qxTtSJRpSJUMF7OYKqyiFI9+PIbfx9GWEK/QH4+f1M
	bJnIwN2wwpEv2AmRQY2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uphnq-000000041vG-3CT9;
	Sat, 23 Aug 2025 06:32:38 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1upT4N-00000002t8k-2wWX;
	Fri, 22 Aug 2025 14:48:43 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 125E760206;
	Fri, 22 Aug 2025 14:48:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 98C6FC4CEED;
	Fri, 22 Aug 2025 14:48:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755874122;
	bh=ooHxYeuqSlm0Lf7mTP8oPP3GNMH5wQGxRznp5cQihXI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=V4YRcrn7MAkBEsW92XCJqFP0QJf2758UgsZPB/3N2tnPDuIJ02iRgH0kP6qkiN6X7
	 vzPknftZUjtwtZURBWtOkdnvupxFjYIgPcFz1ZTmxdPwhHGHB3uKU0ijlG19Y4X1Io
	 lBhQZhI6440fN316kLn06tsLLkSksK+bSP5AjzlLnU6A/ZM1S7yGPhN9Pe/zoegCfK
	 t1r+OF5KZWh37SexS82xmytQxZZ0cwnNuBGc+n7ZsxoU7MF53+4XUVqiY+KgkthLQ/
	 SVvkhzz2StS7ISJqLqRXQgvIFLJcUIUr69TNMlEZYRFDmj9asKpIreCP20oU4ncsHO
	 pTeNBPGHQg7Fw==
Date: Fri, 22 Aug 2025 09:48:41 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Thomas Zimmermann <tzimmermann@suse.de>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	linux-kernel@vger.kernel.org, Arnaud Vrac <avrac@freebox.fr>,
	linux-arm-kernel@lists.infradead.org,
	Maxime Ripard <mripard@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>, Simona Vetter <simona@ffwll.ch>,
	Jonas Karlman <jonas@kwiboo.se>, Sandy Huang <hjc@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	dri-devel@lists.freedesktop.org, Andy Yan <andy.yan@rock-chips.com>,
	Pierre-Hugues Husson <phhusson@freebox.fr>,
	linux-rockchip@lists.infradead.org,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Robert Foss <rfoss@kernel.org>, David Airlie <airlied@gmail.com>,
	"H. Nikolaus Schaller" <hns@goldelico.com>,
	devicetree@vger.kernel.org
Subject: Re: [PATCH v2 3/3] dt-bindings: display: rockchip,dw-mipi-dsi:
 Narrow clocks for rockchip,rk3288-mipi-dsi
Message-ID: <175587411947.3790873.4860739653450800146.robh@kernel.org>
References: <20250820-dt-bindings-display-v2-0-91e2ccba3d4e@linaro.org>
 <20250820-dt-bindings-display-v2-3-91e2ccba3d4e@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250820-dt-bindings-display-v2-3-91e2ccba3d4e@linaro.org>
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


On Wed, 20 Aug 2025 16:17:38 +0200, Krzysztof Kozlowski wrote:
> The binding allows in top-level from one to four clocks and each variant
> narrows the choice, but rockchip,rk3288-mipi-dsi missed the minItems.
> 
> Reviewed-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. Fix subject typo
> 2. Rb tag
> ---
>  .../devicetree/bindings/display/rockchip/rockchip,dw-mipi-dsi.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks!


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
