Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D652C531DF
	for <linux-rockchip@archiver.kernel.org>; Sun, 18 Aug 2024 22:30:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=RPrOOwkKBMPgnrL+ODC7iBawLY6IGnIlDSZy+y+/Urw=; b=P5WFc87OMoJLAG
	kNQ0EQzVdE5QlyANQlaFEA2GQHHwyC2l16ogggxZzVQbVTaQ5bDARGTHpB34D7ubw3aK5ydPbSS1W
	2vkMKOhRuS1s7mfjfB7Xzg8goxcg7gZmW3gHPudP+YDjE0jHg18BozDQg7NfblbmfQEhl44cB5Plh
	OTtBBF3fHatXEa9mZO519MNE5wYA5ATV97FHWAPAsUtEUfI2jlnmOdhlz/cq+CDnHw1+HHEose9zn
	y7DJ/wun6bWiII6lDqV8tUu44IQrpzNoX1yHr9Xs/+7AlavMf7dJUmcPJP8UnT/3gpEBa4aUN59lJ
	Tn9HokiarwbXnSKr5UCQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfoQC-0000000HRZW-3Ldb;
	Sun, 18 Aug 2024 22:30:48 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sfoQ9-0000000HRWe-1AFT;
	Sun, 18 Aug 2024 22:30:46 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724020211; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=bYDjut8AszWAf3PGfRNXc9y+n9NMIksv0eV3bfh2n6kOBAlCqBvciyQ+ZeOvfR/h1aQghi+2nVTcZTbnl3onXaFjXcERMxRCTTEKWNYUxCQTVg7OdH71wWMT6f0553hHxzb3DwWuYHV08zc/PJYUU8p+vvjDb/+8DAlU1E/j9XI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724020211; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:MIME-Version:Message-ID:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=7Qe4Lp5+MG+B5MYW/RMpN8NDla2pEJkPQR2L24He/M0=; 
	b=c2kJOmqmn+Uty8jbT3lJ8Po92iFqpDaF+mL8wjeLRK2HADlg0C/RO7HG6L+MMEEDaes1NKF79Q0qyt/J67TDexdUm5q3zh4KcwYWFNL9T8e6ionvsUYdqal0qGNDxsO0OxDTVhxvrkQP264XUbxzBntFuiZFHonVewxpI5M7srM=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=cristian.ciocaltea@collabora.com;
	dmarc=pass header.from=<cristian.ciocaltea@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724020211;
	s=zohomail; d=collabora.com; i=cristian.ciocaltea@collabora.com;
	h=From:From:Subject:Subject:Date:Date:Message-Id:Message-Id:MIME-Version:Content-Type:Content-Transfer-Encoding:To:To:Cc:Cc:Reply-To;
	bh=7Qe4Lp5+MG+B5MYW/RMpN8NDla2pEJkPQR2L24He/M0=;
	b=EHLykezuLClW6KqWTrzWxjy1GSbkEEHAHF81/0Ac9p4zpsfly+qcbPRBqbifc5Y7
	NYkl/yFacDIRMz6VR9ELzqsoK6wNQMqM3C+K3xy71L8peXUyYP0aMlA+GeY7d9MPmRF
	Ug+xmX3AQdfby4QEaKTq6gNVojUCS/CpaNomFok8=
Received: by mx.zohomail.com with SMTPS id 1724020209622255.15559121804245;
	Sun, 18 Aug 2024 15:30:09 -0700 (PDT)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v4 0/4] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
Date: Mon, 19 Aug 2024 01:29:27 +0300
Message-Id: <20240819-b4-rk3588-bridge-upstream-v4-0-6417c72a2749@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAMd1wmYC/43NSw6CMBCA4auQrq3pA1p05T2Mi2lppREoaZFoC
 He3sNEYQ1z+M5lvJhRNcCaiYzahYEYXne9S5LsM6Rq6q8GuSo0YYTkRhGKV43DjRVliFVyV9vc
 +DsFAi4FJBdZSVVqN0n0fjHWP1T5fUtcuDj4811cjXab/qCPFBFvBCJcFZ5ypk/ZNA8oH2Gvfo
 kUe2VsrtzWWtIMFUUjIDS1+avxTk1saT5oglVCgSKWl/tbmeX4BGyERnWIBAAA=
To: Andrzej Hajda <andrzej.hajda@intel.com>, 
 Neil Armstrong <neil.armstrong@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>, 
 Sascha Hauer <s.hauer@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>
X-Mailer: b4 0.14.1
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240818_153045_352278_5B294729 
X-CRM114-Status: GOOD (  20.53  )
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

The Rockchip RK3588 SoC family integrates the Synopsys DesignWare HDMI
2.1 Quad-Pixel (QP) TX controller, which is a new IP block, quite
different from those used in the previous generations of Rockchip SoCs.

The controller supports the following features, among others:

* Fixed Rate Link (FRL)
* Display Stream Compression (DSC)
* 4K@120Hz and 8K@60Hz video modes
* Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
* Fast Vactive (FVA)
* SCDC I2C DDC access
* Multi-stream audio
* Enhanced Audio Return Channel (EARC)

This is the last component that needs to be supported in order to enable
the HDMI output functionality on the RK3588 based SBCs, such as the
RADXA Rock 5B.  The other components are the Video Output Processor
(VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for which basic
support has been already made available via [1] and [2], respectively.

Please note this is a reworked version of the original series, which
relied on a commonized dw-hdmi approach.  Since the general consensus
was to handle it as an entirely new IP, I dropped all patches related to
the old dw-hdmi and Rockchip glue code - a few of them might still make
sense as general improvements and will be submitted separately.

It's worth mentioning the HDMI output support is currently limited to
RGB output up to 4K@60Hz, without audio, CEC or any of the HDMI 2.1
specific features.  Moreover, the VOP2 driver is not able to properly
handle all display modes supported by the connected screens, e.g. it
doesn't cope with non-integer refresh rates.

A possible workaround consists of enabling the display controller to
make use of the clock provided by the HDMI PHY PLL.  This is still work
in progress and will be submitted later, as well as the required DTS
updates.

To facilitate testing and experimentation, all HDMI output related
patches, including those part of this series, are available at [3].

So far I could only verify this on the RADXA Rock 5B board.

Thanks,
Cristian

[1]: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
[2]: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
[3]: https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-hdmi-bridge-v6.11-rc1
[4]: https://lore.kernel.org/lkml/20240801-dw-hdmi-qp-tx-v1-0-148f542de5fd@collabora.com/

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Changes in v4:
- Added Tested-by tag from Heiko
- Updated "[PATCH v3 3/5] dt-bindings: display: rockchip: Add schema for
  RK3588 HDMI TX Controller" according to Rob's review
  * Referenced full path for synopsys,dw-hdmi-qp.yaml
  * Moved ports to common schema and updated descriptions
  * Renamed rockchip,vo1_grf to rockchip,vo1-grf and updated "[PATCH v3
    5/5] drm/rockchip: Add basic RK3588 HDMI output support" accordingly
- Dropped "[PATCH v3 4/5] drm/rockchip: Explicitly include bits header"
  already applied by Heiko
- Link to v3: https://lore.kernel.org/r/20240807-b4-rk3588-bridge-upstream-v3-0-60d6bab0dc7c@collabora.com

Changes in v3:
- Reintegrated bridge patchset [4] to allow automated testing and
  simplify reviewing (Krzysztof); the after-split changes were:
  * Made use of the new bridge HDMI helpers indicated by Dmitry
  * Dropped connector creation to ensure driver does only support
    DRM_BRIDGE_ATTACH_NO_CONNECTOR
  * Updated I2C segment handling to properly handle connected DVI
    displays (reported and fixed by Heiko)
- Updated schema for DW HDMI QP TX IP providing some hardware details
- Updated patch for DW HDMI QP TX Controller module referring to a
  support library instead of a platform driver (Krzysztof)
- Drop empty dw_hdmi_qp_unbind() export from the library and related
  usage from RK platform driver
- Drop Fixes tag from "drm/rockchip: Explicitly include bits header"
  patch (Krzysztof)
- Link to v2: https://lore.kernel.org/r/20240801-b4-rk3588-bridge-upstream-v2-0-9fa657a4e15b@collabora.com

Changes in v2:
- Reworked the glue code for RK3588 into a new Rockchip platform driver
- Moved bridge driver patches to a separate series [4]
- Dropped all the patches touching to the old dw-hdmi and RK platform
  drivers
- Added connector creation to ensure the HDMI QP bridge driver does only
  support DRM_BRIDGE_ATTACH_NO_CONNECTOR
- Link to v1: https://lore.kernel.org/r/20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com

---
Cristian Ciocaltea (4):
      dt-bindings: display: bridge: Add schema for Synopsys DW HDMI QP TX IP
      drm/bridge: synopsys: Add DW HDMI QP TX Controller support library
      dt-bindings: display: rockchip: Add schema for RK3588 HDMI TX Controller
      drm/rockchip: Add basic RK3588 HDMI output support

 .../display/bridge/synopsys,dw-hdmi-qp.yaml        |  88 +++
 .../display/rockchip/rockchip,dw-hdmi-qp.yaml      | 170 +++++
 drivers/gpu/drm/bridge/synopsys/Kconfig            |   8 +
 drivers/gpu/drm/bridge/synopsys/Makefile           |   2 +
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       | 742 ++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h       | 834 +++++++++++++++++++++
 drivers/gpu/drm/rockchip/Kconfig                   |   8 +
 drivers/gpu/drm/rockchip/Makefile                  |   1 +
 drivers/gpu/drm/rockchip/dw_hdmi_qp-rockchip.c     | 429 +++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c        |   2 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h        |   1 +
 include/drm/bridge/dw_hdmi_qp.h                    |  36 +
 12 files changed, 2321 insertions(+)
---
base-commit: 8400291e289ee6b2bf9779ff1c83a291501f017b
change-id: 20240601-b4-rk3588-bridge-upstream-a27baff1b8fc


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
