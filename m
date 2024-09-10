Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EFCC0EB64DE
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Sep 2024 11:27:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iyPGsGVNxzFk3FSPluPAjB4+P8NDe8HSTD1cP7G0gBk=; b=DauI1grMizSZ77
	/xcFAMdJ25gRf3/lmg8nWVzlfZM5I9HujqfaU+eqtkNV2cVYuZoMmPZ2Y0A4kZt19nNfCCaU2v2pU
	MgYs2ilqSczVmcMVqrvd2i1Pb/w2z50k0eUI0BbMw8SzGX6Gx0bo79c6qiPr8t0yLF8f4kwDhVuDD
	1UrFdb/74ORf1dhXvq82kF1NTBP6dKFRZOR/fRPSYtp7P9ot4ik8aBMzwfDQ0rb1atQG2MQskSqxY
	5mnPcdWwuwL7jNySfZWDyMPs02czbrhTxa6OOrjSRTKRD9J0Ymvx3U7Vw/plRmq8ZbfnjxzfkN/zv
	vvAzRmzEngMm2ZQi1K5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snz1U-00000005NQ9-3wRB;
	Tue, 10 Sep 2024 11:27:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1snz0R-00000005NIJ-1pSw;
	Tue, 10 Sep 2024 11:26:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Type:Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=5MZ5qUsrQbYBTuxNJH396q5UDPw8fUqYp6k8thzROZU=; b=m/cWkn4QRKnpq56MnnOY90KttL
	Ue+C5SdcJp7eKa2lBJhuTyNorlc9n8sNRbr7sp5OJnHEfktxlqVO+ehAfQugjFrVz40AsujOwRjAG
	r2mWiLy1PYkaFDAl88e5hPu/ZI0aa0Tf7hTCSP6ELqoxbC9Pt+pu4M2LgK9GiOrh90RiCkChZasPA
	089JWzbIPHN4ouf+GfJs/iUkK/d7hM2STFwHrNzEeRVTeoKytZnGiMIE4YlgU4t2vugI9WHp/Voya
	bJSEgOgrvKFTo2VChdWbfuX2Yfyl2D34IqmAksSsOiEg7rCmTg5E0UTwpC+q54uy5lgT4o3QxYhkW
	AVCd7vOQ==;
Received: from i53875a02.versanet.de ([83.135.90.2] helo=diego.localnet)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1snyzw-0003qW-Hw; Tue, 10 Sep 2024 13:25:28 +0200
From: Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
 Sandy Huang <hjc@rock-chips.com>, Andy Yan <andy.yan@rock-chips.com>,
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@collabora.com,
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>,
 Algea Cao <algea.cao@rock-chips.com>
Subject: Re: [PATCH v6 3/3] drm/rockchip: Add basic RK3588 HDMI output support
Date: Tue, 10 Sep 2024 13:27:52 +0200
Message-ID: <2241188.nHSHbJBgIm@diego>
In-Reply-To: <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
References: <20240906-b4-rk3588-bridge-upstream-v6-0-a3128fb103eb@collabora.com>
 <20240906-b4-rk3588-bridge-upstream-v6-3-a3128fb103eb@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240910_042559_529566_63099E6D 
X-CRM114-Status: GOOD (  17.54  )
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

Am Freitag, 6. September 2024, 03:17:42 CEST schrieb Cristian Ciocaltea:
> The RK3588 SoC family integrates the newer Synopsys DesignWare HDMI 2.1
> Quad-Pixel (QP) TX controller IP and a HDMI/eDP TX Combo PHY based on a
> Samsung IP block.
> 
> Add just the basic support for now, i.e. RGB output up to 4K@60Hz,
> without audio, CEC or any of the HDMI 2.1 specific features.
> 
> Co-developed-by: Algea Cao <algea.cao@rock-chips.com>
> Signed-off-by: Algea Cao <algea.cao@rock-chips.com>
> Tested-by: Heiko Stuebner <heiko@sntech.de>
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
>  drivers/gpu/drm/rockchip/Kconfig               |   8 +
>  drivers/gpu/drm/rockchip/Makefile              |   1 +
>  drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c | 437 +++++++++++++++++++++++++
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.c    |   2 +
>  drivers/gpu/drm/rockchip/rockchip_drm_drv.h    |   1 +
>  5 files changed, 449 insertions(+)
> 
> diff --git a/drivers/gpu/drm/rockchip/Kconfig b/drivers/gpu/drm/rockchip/Kconfig
> index 7df875e38517..4da7cef24f57 100644
> --- a/drivers/gpu/drm/rockchip/Kconfig
> +++ b/drivers/gpu/drm/rockchip/Kconfig
> @@ -8,6 +8,7 @@ config DRM_ROCKCHIP
>  	select VIDEOMODE_HELPERS
>  	select DRM_ANALOGIX_DP if ROCKCHIP_ANALOGIX_DP
>  	select DRM_DW_HDMI if ROCKCHIP_DW_HDMI
> +	select DRM_DW_HDMI_QP if ROCKCHIP_DW_HDMI_QP
>  	select DRM_DW_MIPI_DSI if ROCKCHIP_DW_MIPI_DSI
>  	select GENERIC_PHY if ROCKCHIP_DW_MIPI_DSI
>  	select GENERIC_PHY_MIPI_DPHY if ROCKCHIP_DW_MIPI_DSI
> @@ -63,6 +64,13 @@ config ROCKCHIP_DW_HDMI
>  	  enable HDMI on RK3288 or RK3399 based SoC, you should select
>  	  this option.
>  
> +config ROCKCHIP_DW_HDMI_QP
> +	bool "Rockchip specific extensions for Synopsys DW HDMI QP"

this needs a
+       select DRM_BRIDGE_CONNECTOR

now, otherwise it can't link the drm_bridge_connector_init function





_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
