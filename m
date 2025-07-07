Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DCD90C71130
	for <linux-rockchip@archiver.kernel.org>; Mon,  7 Jul 2025 17:28:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=K8EoOIetZ6EvWiee6t0EK3HxdIge+oZ7J0bb/5QWwlQ=; b=RdE9RgUA37EepP
	XBwCaISlv/UWG4kfYYJSnfNSaPYT0jcGbWQ9PzdlToxCw1a3GluowcjlFBUMHWCXdxNqxxK5AKE9j
	w0XXXPgoI7ejmZM7j6bfV+x7mrxAvQxZLosZji6sxn54VK4iDXswUWQihfqbOfab13iPX0DFmliXn
	Sy19jme2P9dOL0w6XT6oTQNS5OSCCg+/4nD5fcE+x5hDwy0GAtZnVwEeJYASSSZJ4hEdHBSr/Jd8J
	mWbivmzP8h75wwJaD+te08amq0oS/NByfGlcs8NPfHLmQDjbC5EvxWFUlGLkiZXboFfpP08Slexq/
	519NFZwZ73qObzYmqxog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYpdw-00000003Aez-0CkX;
	Mon, 07 Jul 2025 17:28:40 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uYp2I-000000033tK-1e3Z;
	Mon, 07 Jul 2025 16:49:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=95qtSTC/qWsTSLa9j9zg9DGEk7v1YtKph8l3ru7WuWw=; b=txXEzBC79RXkkWjmf9rB61w86m
	ebHNPB/2+iYG3yJd4uB84pjPf2+cuyBKBPdQj1+dgULhRtnOxwSvHr5Z/HwNurXhqi45rTBq7QOim
	C9ftmPi2bPIZrH77L9Bke67wO8cUh5VqCRLb9mxdoDbtVW4GfP3agGdSCXtUnfkEAmZmhgMi4ZZOH
	4eGG0Pv7Tj5nG8d5fvOE+q2+QGEXzGS87fFcJiPg3pmU2B6Nlsrj3YFy0Qrhj5yBKyBscQ/rbE2Q8
	/Al6Mz4lHbM5bQ0ebDvAq5tL7sizhnKjU8YO56T+momMV3C8cy8Vd0IU3Tih3nnhIPb0oahDE/pgn
	ivYB38OA==;
Received: from i53875bf5.versanet.de ([83.135.91.245] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uYp1o-0004yl-T3; Mon, 07 Jul 2025 18:49:16 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Subject: [PATCH 00/13] Support DSI output on rk3576 and roc-rk3576-pc board
Date: Mon,  7 Jul 2025 18:48:53 +0200
Message-ID: <20250707164906.1445288-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250707_094946_429246_28B8FBA7 
X-CRM114-Status: GOOD (  14.25  )
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
Cc: robh@kernel.org, conor+dt@kernel.org, neil.armstrong@linaro.org, linux-kernel@vger.kernel.org, maarten.lankhorst@linux.intel.com, hjc@rock-chips.com, mripard@kernel.org, andyshrk@163.com, linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org, tzimmermann@suse.de, andy.yan@rock-chips.com, quic_jesszhan@quicinc.com, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

This enables all the necesary bits and bindings to get display output
on the dm-m10r800-v3s addon module for the Firefly roc-rk3576-pc board.

A bit of cleanup of the ili9881c, because the driver was still trying
to send dcs commands when the underlying DSI driver might have already
switched to video-mode, which caused me quite a bit of headache until
I realized this being the culprit for my garbled display output :-) .

Only the last patch has a dependency on Nicolas' pwm series [0]
everything else, is directly usable.


[0] https://lore.kernel.org/lkml/20250602-rk3576-pwm-v2-0-a6434b0ce60c@collabora.com/

Guochun Huang (1):
  drm/rockchip: dsi2: add support rk3576

Heiko Stuebner (12):
  drm/panel: ilitek-ili9881c: turn off power-supply when init fails
  drm/panel: ilitek-ili9881c: move display_on/_off dcs calls to
    (un-)prepare
  drm/panel: ilitek-ili9881c: convert (un-)prepare to
    mipi_dsi_multi_context
  dt-bindings: vendor-prefixes: Add prefix for Shenzhen Bestar
    Electronic
  dt-bindings: display: ili9881c: Add Bestar BSD1218-A101KL68 LCD panel
  drm/panel: ilitek-ili9881c: Add Bestar BSD1218-A101KL68 support
  dt-bindings: soc: rockchip: add rk3576 mipi dcphy syscon
  dt-bindings: display: rockchip: Add rk3576 to RK3588 DW DSI2
    controller schema
  arm64: dts: rockchip: add mipi-dcphy to rk3576
  arm64: dts: rockchip: add the dsi controller to rk3576
  arm64: dts: rockchip: add vcc3v3-lcd-s0 regulator to roc-rk3576-pc
  arm64: dts: rockchip: add dm-m10r800-v3s overlay for roc-rk3576-pc

 .../display/panel/ilitek,ili9881c.yaml        |   1 +
 .../rockchip/rockchip,rk3588-mipi-dsi2.yaml   |   1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |   1 +
 .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
 arch/arm64/boot/dts/rockchip/Makefile         |   5 +
 .../rk3576-roc-pc-dm-m10r800-v3s.dtso         | 134 ++++++++
 .../arm64/boot/dts/rockchip/rk3576-roc-pc.dts |  16 +
 arch/arm64/boot/dts/rockchip/rk3576.dtsi      |  50 +++
 drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 301 ++++++++++++++----
 .../gpu/drm/rockchip/dw-mipi-dsi2-rockchip.c  |  21 ++
 10 files changed, 475 insertions(+), 57 deletions(-)
 create mode 100644 arch/arm64/boot/dts/rockchip/rk3576-roc-pc-dm-m10r800-v3s.dtso

-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
