Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1595BC27C52
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Jun 2024 13:13:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:MIME-Version:Message-Id:Date:
	Subject:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rNnfiuITQ59az4Dh2wAsVrOe7/r30vxHqETGT7DcgLk=; b=ZwySWJ+lQM0kMY
	26Wc56f6Xw0U0Q6iC2PUl2gqtSCCJxQnYtVpvD89uNyQxXoWuO8/5fMHg+hMacnFOHSMSnqHf0sIB
	MfPoZaCjwj3UUWB6RRKqEKcTQvXbOHFXPexRp7YKLulmYZZZaXXHLnCIKrF89rfKiqHcz/ttPJ8RI
	faUxJX/QoVprRsJCoj4NmKwQtPIjG4JReJmApaH+DKpazGInneqBQkFoCS3CqrkQbYjizfIqng5BM
	EPbzHsyH/tbmP8KsR1JasOImbADOtmAUpUvCVRp2UmOWIP0u5nTZp+jsR1sMgNmTjgSjW7Uvaa2Pt
	9Ew5UKBHX7MjYuHgoPYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXp-0000000CeE8-2s8f;
	Sat, 01 Jun 2024 13:13:13 +0000
Received: from madrid.collaboradmins.com ([46.235.227.194])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sDOXg-0000000Ce7j-22ZM;
	Sat, 01 Jun 2024 13:13:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1717247578;
	bh=h58JsD+SebyiyL2HCvGvq4VST8PeU6RDgSW12Kr6f70=;
	h=From:Subject:Date:To:Cc:From;
	b=i+8QZ1ckn9fn0MNYXlvoDa1BwwVl3iWJXXphGhoixfP0siuIUWV+i0drhAffhWN5q
	 Qq+dnv5IhTJALQk0gHMaUIeD1foqJWZN3iIjcR6l2xvHFk38KfSSTT9Y3tG9nSQVJN
	 hgqpVjmUb0tIm7cymZRCxcP4NCahLJiSRngakt++NzI9ffbRfUygfciuXoq9Jt8Rt/
	 NU2BaG+OgFRlHP2JuSVuwjMqEmxcvX0q+SEQ0lrWqcU2WtFFDDpijLqiDL06mT9JIV
	 sqDbwWxfsqJ9PtVr0qi+CM1t165hSgP+flA9P7jt9nOXgmsg2ng0N8H5zOvlnC37Cz
	 IDwY+6jDFWiyw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 5A752378203E;
	Sat,  1 Jun 2024 13:12:58 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH 00/14] Add initial support for the Rockchip RK3588 HDMI TX
 Controller
Date: Sat, 01 Jun 2024 16:12:22 +0300
Message-Id: <20240601-b4-rk3588-bridge-upstream-v1-0-f6203753232b@collabora.com>
MIME-Version: 1.0
X-B4-Tracking: v=1; b=H4sIADYeW2YC/x2MQQrDIBAAvyJ7zoLaNJF+JfSgcU2WUitrWgqSv
 1d6HIaZBpWEqcJNNRD6cOVX7mAGBevu80bIsTNYbUc9aYNhRHlcrs5hEI7dv0s9hPwTvZ2DT8k
 El1bofRFK/P2/l/t5/gDw2BPpawAAAA==
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
 Conor Dooley <conor+dt@kernel.org>, Mark Yao <markyao0591@gmail.com>
Cc: dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 devicetree@vger.kernel.org, kernel@collabora.com, 
 Alexandre ARNOUD <aarnoud@me.com>, Luis de Arquer <ldearquer@gmail.com>, 
 Algea Cao <algea.cao@rock-chips.com>
X-Mailer: b4 0.14-dev-f7c49
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240601_061304_865263_13B61E31 
X-CRM114-Status: GOOD (  14.63  )
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

The RK3588 SoC family integrates a Quad-Pixel (QP) variant of the
Synopsys DesignWare HDMI TX controller used in the previous SoCs.

It is HDMI 2.1 compliant and supports the following features, among
others:

* Fixed Rate Link (FRL)
* 4K@120Hz and 8K@60Hz video modes
* Variable Refresh Rate (VRR) including Quick Media Switching (QMS)
* Fast Vactive (FVA)
* SCDC I2C DDC access
* TMDS Scrambler enabling 2160p@60Hz with RGB/YCbCr4:4:4
* YCbCr4:2:0 enabling 2160p@60Hz at lower HDMI link speeds
* Multi-stream audio
* Enhanced Audio Return Channel (EARC)

This is the last required component that needs to be supported in order
to enable the HDMI output functionality on the RK3588 based SBCs, such
as the RADXA Rock 5B. The other components are the Video Output
Processor (VOP2) and the Samsung IP based HDMI/eDP TX Combo PHY, for
which basic support has been already made available via [1] and [2],
respectively.

The patches are grouped as follows:
* PATCH 1..7: DW HDMI TX driver refactor to minimize code duplication in
  the new QP driver (no functional changes intended)

* PATCH 8..11: Rockchip DW HDMI glue driver cleanup/improvements (no
  functional changes intended)

* PATCH 12..13: The new DW HDMI QP TX driver reusing the previously
  exported functions and structs from existing DW HDMI TX driver

* PATCH 14: Rockchip DW HDMI glue driver update to support RK3588 and
  make use of DW HDMI QP TX

They provide just the basic HDMI support for now, i.e. RGB output up to
4K@60Hz, without audio, CEC or any of the HDMI 2.1 specific features.
Also note the vop2 driver is currently not able to properly handle all
display modes supported by the connected screens, e.g. it doesn't cope
with non-integer refresh rates.

A possible workaround consists of enabling the display controller to
make use of the clock provided by the HDMI PHY PLL. This is still work
in progress and will be submitted later, as well as the required DTS
updates.

To facilitate testing and experimentation, all HDMI output related
patches, including those part of this series, are available at [3].
So far I could only verify this on the RADXA Rock 3A and 5B boards.

Thanks,
Cristian

[1]: 5a028e8f062f ("drm/rockchip: vop2: Add support for rk3588")
[2]: 553be2830c5f ("phy: rockchip: Add Samsung HDMI/eDP Combo PHY driver")
[3]: https://gitlab.collabora.com/hardware-enablement/rockchip-3588/linux/-/commits/rk3588-hdmi-bridge-v6.10-rc1

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
Cristian Ciocaltea (14):
      drm/bridge: dw-hdmi: Simplify clock handling
      drm/bridge: dw-hdmi: Add dw-hdmi-common.h header
      drm/bridge: dw-hdmi: Commonize dw_hdmi_i2c_adapter()
      drm/bridge: dw-hdmi: Factor out AVI infoframe setup
      drm/bridge: dw-hdmi: Factor out vmode setup
      drm/bridge: dw-hdmi: Factor out hdmi_data_info setup
      drm/bridge: dw-hdmi: Commonize dw_hdmi_connector_create()
      drm/rockchip: dw_hdmi: Use modern drm_device based logging
      drm/rockchip: dw_hdmi: Simplify clock handling
      drm/rockchip: dw_hdmi: Use devm_regulator_get_enable()
      drm/rockchip: dw_hdmi: Drop superfluous assignments of mpll_cfg, cur_ctr and phy_config
      dt-bindings: display: rockchip,dw-hdmi: Add compatible for RK3588
      drm/bridge: synopsys: Add DW HDMI QP TX controller driver
      drm/rockchip: dw_hdmi: Add basic RK3588 support

 .../display/rockchip/rockchip,dw-hdmi.yaml         | 127 +++-
 drivers/gpu/drm/bridge/synopsys/Makefile           |   2 +-
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-common.h   | 179 +++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.c       | 787 +++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi-qp.h       | 831 +++++++++++++++++++++
 drivers/gpu/drm/bridge/synopsys/dw-hdmi.c          | 353 +++------
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c        | 351 +++++++--
 include/drm/bridge/dw_hdmi.h                       |   8 +
 8 files changed, 2290 insertions(+), 348 deletions(-)
---
base-commit: 1613e604df0cd359cf2a7fbd9be7a0bcfacfabd0
change-id: 20240601-b4-rk3588-bridge-upstream-a27baff1b8fc


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
