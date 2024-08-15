Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 66C59C52D7D
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Aug 2024 10:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RMDgC/Qp6EJ2QYoFDzKCR7qvEDjtAkgYCocoLIsTLIk=; b=EyUzxr6Qo/TOHu
	U/G6Met5HQndjri15OrDdYIw563iG6UrQLbuf/w4BRyWffU4MphG9biTLsIYLfNihUHFT5dxAo6iz
	lbibYnGpyc3CLjbwCubhVHAYdOQXHxyrzg/Xi51a9eAi8RtCDH5QqvnGFuY7lXKk0qUDEr9niHV0R
	LSzfZyj660KxH/aijF0eQZt1ezE5VUxWfMK5cJPPPgMuLGErBH7B01eqr02SQhupQ7d1lLTAgjltS
	R8jENvJPhB+FwGBEngJKkplg7LTZmdbce2HalS6Gmi7fyHGj7hHOFz6/UBfw/KlA4nOv2uXIEo6X2
	x62na3DWAtZZg++yBKGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXyD-00000009fxh-3z3G;
	Thu, 15 Aug 2024 10:44:41 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1seXur-00000009enq-0XL4;
	Thu, 15 Aug 2024 10:41:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=GgTI0NyTQzsStScrcGO6aMDCmPA8tFa+LOqjkXlw7B4=; b=T9wp4ksgpK8kyWUBawTO2KYM1Y
	Py9VnW/j4d3UV7Sc5w3+L/RKZMIk7NBvlQm4xkBvOPQ2VsHUszJRQwTgD6G2x/0+2kWrP7GFXYoEQ
	cie44dv3b3mE8nKJfvGfDH8ASdZqD6rFpcHuIsH+E45wNfJXq69vfxZBLZoc9PtY9Zg1r864hruXx
	65l5Wr11sIb3oQAqF0SBsfEqegb2fP2FNeH740fWj90A9pcsnDK5VbmJsVddW0Yjw+HQJkbB2BrNW
	lsQrY+gqNJuS7bsXvco5YCd4sqJ5AEI6++dB0J48I/JqaGxpA5JrW+UtUXCux1kKV9err0jUt17Mt
	iNCLug3Q==;
Received: from i53875a9f.versanet.de ([83.135.90.159] helo=phil.lan)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1seXuG-0000nZ-Lf; Thu, 15 Aug 2024 12:40:36 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonas Karlman <jonas@kwiboo.se>,
	Maxime Ripard <mripard@kernel.org>,
	Sandy Huang <hjc@rock-chips.com>,
	Mark Yao <markyao0591@gmail.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Robert Foss <rfoss@kernel.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	David Airlie <airlied@gmail.com>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Alexandre ARNOUD <aarnoud@me.com>,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	kernel@collabora.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	Algea Cao <algea.cao@rock-chips.com>,
	Luis de Arquer <ldearquer@gmail.com>,
	linux-rockchip@lists.infradead.org
Subject: Re: (subset) [PATCH v3 0/5] Add initial support for the Rockchip RK3588 HDMI TX Controller
Date: Thu, 15 Aug 2024 12:40:30 +0200
Message-Id: <172371788339.684432.3349154890008070129.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
References: <20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240815_034113_171339_E1B98989 
X-CRM114-Status: GOOD (  10.92  )
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

On Wed, 07 Aug 2024 14:07:22 +0300, Cristian Ciocaltea wrote:
> The Rockchip RK3588 SoC family integrates the Synopsys DesignWare HDMI
> 2.1 Quad-Pixel (QP) TX controller, which is a new IP block, quite
> different from those used in the previous generations of Rockchip SoCs.
> 
> The controller supports the following features, among others:
> 
> * Fixed Rate Link (FRL)
> * Display Stream Compression (DSC)
> * 4K@120Hz and 8K@60Hz video modes
> * Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
> * Fast Vactive (FVA)
> * SCDC I2C DDC access
> * Multi-stream audio
> * Enhanced Audio Return Channel (EARC)
> 
> [...]

Applied, thanks!

[4/5] drm/rockchip: Explicitly include bits header
      commit: ab03974df27e471ff03402265292f1bafafb5df6

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
