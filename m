Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3B999CA1012
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Sep 2025 07:52:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fssFDkwdSVQGrQYGx1J23GmH0XQcGepQGFXhM3ewEP0=; b=jLOHUTc29oJdKE
	lVdihIc5mDci65B1awS4e35GABoqRwanfAfXnF7chHjA/qN4Bedb/hnKsUbI2VJZV2gzZJxkgodEe
	fXAUjLzStTsBkejEDu2Vv3lZ6ZojFffUbfnzICWzCBrmTR1kNKPcfg4NLCkpUg1YP0CKUjeJBketZ
	q+x9vsIs327/s0bkdewEBnswsVeyEvieDyvgvMQax0z6ijIm75lWb9UyZkWCBCE1WjINLux3oMsGX
	Ws2Sbt9O+iEIU3qx8wiQnrs2jQ4FGtE/fHzZILJj0omQvnxxBI8aFcipUfgXnLLGY0wEopP3Mb0YT
	NtNCbn8HilrNOpgqSzTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu4l8-0000000A0UE-3gYG;
	Thu, 04 Sep 2025 07:51:54 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uu4Pq-00000009s45-35za;
	Thu, 04 Sep 2025 07:29:54 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id EC0276026D;
	Thu,  4 Sep 2025 07:29:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E5A1C4CEF0;
	Thu,  4 Sep 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756970993;
	bh=eH8cDvd3H9MNJ1WHvOF2gG+uBWrtr7bwcPe6463npC4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=mBzro54aaf5Bkj6Fbxh6cMvQqaTCuRaTOGYkgsZjs88yn5wB0CP/pUhDUewAQquvd
	 uvzDDDTu5+jqiPTGMR/wCNUPGiE6s6Ej6SLK7DHuh1JRphufwJde9wvPtscdqRlesz
	 XmwfWzkokpHts8S1ILk/97skW1ut5htRsl5FfL1O30ArsSzKgRsfS5HZjGkUfCDPy+
	 XelhXSCb6vQXwcyLZR0PuscvNABDMUOJ5hyQDZXh50KU0vku4FSiOQo3FfBgjVNhoi
	 TBtjXLVuN+ZZ4YUO/eW4DNYygkHgBlh2zwb+FwVnNgMRL5LGmdCG0SAycA8Dqldc8a
	 ouwRBhY9WmHOg==
Date: Thu, 4 Sep 2025 09:29:51 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Michael Riesch <michael.riesch@collabora.com>
Cc: Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Kever Yang <kever.yang@rock-chips.com>, Jagan Teki <jagan@amarulasolutions.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Diederik de Haas <didi.debian@cknow.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Collabora Kernel Team <kernel@collabora.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org
Subject: Re: [PATCH v4 3/7] dt-bindings: phy: rockchip-inno-csi-dphy: add
 rk3588 variant
Message-ID: <20250904-space-swift-of-acumen-2fa4dc@kuoka>
References: <20250616-rk3588-csi-dphy-v4-0-a4f340a7f0cf@collabora.com>
 <20250616-rk3588-csi-dphy-v4-3-a4f340a7f0cf@collabora.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20250616-rk3588-csi-dphy-v4-3-a4f340a7f0cf@collabora.com>
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

On Wed, Sep 03, 2025 at 07:04:51PM +0200, Michael Riesch wrote:
> The Rockchip RK3588 variant of the CSI-2 DPHY features two reset lines.
> Add the variant and allow for the additional reset.
> 
> While at it, fix the description of the first reset in order to avoid
> confusion.
> 
> Signed-off-by: Michael Riesch <michael.riesch@collabora.com>
> ---
>  .../bindings/phy/rockchip-inno-csi-dphy.yaml       | 50 +++++++++++++++++++++-
>  1 file changed, 49 insertions(+), 1 deletion(-)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
