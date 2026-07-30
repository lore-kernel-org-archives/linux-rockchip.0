Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EAE3BC54FCD
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 01:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9mpnscQvf1vof2XJTtY8dRszo0uTN86J8nT5hDbzeUE=; b=aY2Ken4oAmhKw6
	dVH1QwEmTjqnrSQsbpin/nv1g03suk0lZEzNtFA53a688iNH2NMKClT56i3lqZp0V2/EByOqJq+KV
	EGm7go9SPPpXSJbYJvU+y5dTdNE3HMSMbEzm7fQkcGBo3c5kDv+TR8PM26q8uFLUzRtjGxIM14Nmw
	CZVJb/pKBv7eMVaS4LEPQX3xyCrvopcYtdmIHVaAMbrfu80J8RBQvQLa4I3Zr1SWvqUP3nkZ9YRnN
	eA+gHxdVrMiuewZBA+lEAP+4tvbv4/Pga/GiYI2AQit/OpSOHHOXL8vqf43mq9JAyCoIIZUV/5Oga
	WAE4ZKzBvIP/0/7EUf/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFfr-00000009GNA-0fiX;
	Thu, 30 Jul 2026 01:35:03 +0000
Received: from smtpbg150.qq.com ([18.132.163.193])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpFfn-00000009GJS-2i1c;
	Thu, 30 Jul 2026 01:35:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1785375243;
	bh=HGwgkD8UDDC/KvvjZYPql/0Ajl4ttvz4Z13BCLoOB8Y=;
	h=From:To:Subject:Date:Message-Id;
	b=AJX3MZY+tJ734Afe7rme/XY9iIJIPYhAByc1QkTS0fWqU+p+iIChIIqapjsBf5qez
	 ABKVlrjCNEmaKG4WKAdgRwN6dXiZUBbUbggOJUfIvhwUPgSQXoLC4wmoJkiU2ENeu1
	 kR7tnf4hCUZ3V/4gFLiKItz0pvnS0fu7LvJg0mS4=
X-QQ-mid: esmtpgz16t1785375240taa39783a
X-QQ-Originating-IP: YGs2uIrkoN4Lncdxa0Oh1sKiphWaNYiOWO2tkWSHOGA=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 30 Jul 2026 09:33:56 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 16287405302588008076
From: Chaoyi Chen <kernel@airkyi.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Vinod Koul <vkoul@kernel.org>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-phy@lists.infradead.org
Subject: [PATCH v5 0/6] drm/bridge: Implement generic USB Type-C DP HPD bridge
Date: Thu, 30 Jul 2026 09:33:43 +0800
Message-Id: <20260730013349.51-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: MACXe2l6e7j9fOLui6QNBT7mkm/GJTwT6ImJafccB1It2StDppDCC7R2
	KvPtPEqbzJ64Md2GOwZaFGk7Qb3oskgHw4fwEusZZGPh+0+6/n15WANQql4Y/IqBLe3aPXU
	YnDEvZnJyTEFGPSgm11ttp4/vXtxtMH0t5ZUibzsAtyTRa+M4WBN+0JOyUWBVSMDfB/tGSr
	VxEbNLNdl+sjfxZ0UmEtG+y12HQ5rubBME3YYIFRPicg5Njt6QGdMx0eqPl8CZM5Fv/7VhN
	ueZ6HZIGmB2KhNesTcC0OPjN3ar8MuDd3+UAJ61RI3TURRGWXkhQr1HBneHi+Jus9aGxK8O
	2zKquDqtvNAQC7ICv88zORA6DBxpmHxBl7y/AL3LDLqAG9TKV3xGE5cMLjxWQXJswvCew4K
	NN28Os4DmMtOUCMa8S2Lir9357s7OBRZ/Zafew0UPR8r405peRDvuhGc8QCixVw44IlSTla
	rekmnrRWf9J/4nZanZD8S6ZJ+KR0e8B06kAXA1pmkUWlKMhVItHwV7krXhTTwzs660DrW9u
	wmPPmLiOIfiQ4IHJ0cAxi9o+yvBJWBAAC56fuuolwpY5+jraiG1STr6lYNzswJ2zw1yNPAG
	KWfzTTn2YPBg1bH3uumVTQ/48bR+NOrA5YQoLdSW7R8iqOhtVCaPLG/hbsDU/XFKgJS8exa
	MeOQ4dGOWzNf9SlcBp8IxsS4djsFrX6VJivXLvMWrg/kA0Ow2tsTjUYM+ZQCcKkN5JO2Ug4
	cTSPSVPiuImESVfF5rZH/drk/hfwHpPAVnd+htb3vvlBch44h+7pcO4EQU540r22bm/xTL5
	wrrGZjrKSjyoUn3qv0Y/CxHX/R0ibmMrk8KrievvUbKpu9qKJvhCOlB7pGzBsiLY9oQjVAS
	A1RB7TO9vczAgbPoKVq75+h8Dw9JxpYa3jHTQtRXsvGQVic/KjYugvk76uF1zaCUmim5vvD
	H4zEKW6xygAV185B/qD6hykx9hGD8qqf031wuwX40qR6XYzOr0v7YftLJv7kq66o2o9yjNY
	7Tx6e6nQ==
X-QQ-XMRINFO: MSVp+SPm3vtSI1QTLgDHQqIV1w2oNKDqfg==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260729_183500_211334_8688FCB4 
X-CRM114-Status: GOOD (  11.35  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Chaoyi Chen <chaoyi.chen@rock-chips.com>

This series is split from the v15 "Add Type-C DP support for RK3399 EVB
IND board" series [1]. It focuses on the DRM bridge and Rockchip
platform CDN-DP controller changes.

[1] https://lore.kernel.org/all/20260304094152.92-1-kernel@airkyi.com/

====
1. Generic Type-C DP HPD bridge

Currently, several USB-C controller drivers register their own DP HPD
bridge via aux-hpd-bridge.c, each duplicating the same logic. For
devicetree based platforms, the USB-C controller may vary across boards,
and not every USB-C controller driver implements this feature. Patch 1
implements a generic DP HPD bridge that monitors Type-C bus events and
automatically creates an HPD bridge when a Type-C port device with DP
SVID is registered.

2. Multiple bridge model for CDN-DP

The RK3399 has two USB/DP combo PHY and one CDN-DP controller. Patch 5
introduces a multi-bridge model where each PHY port gets a separate
encoder and bridge, allowing flexible selection of the output PHY port.
This is based on the DRM AUX HPD bridge rather than extcon.

====
Patch 1 adds generic USB Type-C DP HPD bridge (Dmitry, Heikki).
Patch 2 add module soft depend for USB Type-C DP HPD bridge(Sebastian).
Patch 3 adds new API drm_aux_bridge_register_from_node() (Neil).
Patch 4 adds DRM AUX bridge support for RK3399 USBDP PHY (Neil).
Patch 5 drops CDN-DP's extcon dependency when Type-C is present (Dmitry).
Patch 6 adds multiple bridges to support PHY port selection (Dmitry, Luca).

Changes in v5:
- Link to v4: https://lore.kernel.org/all/20260727064408.101-1-kernel@airkyi.com/
- Add module soft depend for USB Type-C DP HPD bridge.

Changes in v4:
- Link to v3: https://lore.kernel.org/all/20260717072323.96-1-kernel@airkyi.com/
- Scan the entire typec_bus and attempt to register the hpd bridge,
  so as not to miss devices that were already added during initialization.

Changes in v3:
- Link to v2: https://lore.kernel.org/all/20260608070805.88-1-kernel@airkyi.com/
  (Sorry, I forgot to add the "v2" title, so it looks like v1.)
- Remove now-redundant call to drm_connector_attach_encoder()
- Rebase to v7.2-rc2

Changes in v2:
- Link to v1: https://lore.kernel.org/all/20260521032854.103-1-kernel@airkyi.com/
- Add copyright text.
- Remove useless goto.
- Fix incorrect function names in the documentation comments.
- Fix the check logic for dp->active_port (0 is valid).
- Fix the uninitialized prev_port.
- Remove duplicate logic from cdn_dp_switch_port().
- Fix the prototype of cdn_dp_bridge_hpd_notify().
- Properly release connector->fwnode.
- Properly release next_bridge.

Chaoyi Chen (6):
  drm/bridge: Implement generic USB Type-C DP HPD bridge
  drm/display: Add soft depend for aux-hpd-typec-dp-bridge module
  drm/bridge: aux: Add drm_aux_bridge_register_from_node()
  phy: rockchip: phy-rockchip-typec: Add DRM AUX bridge
  drm/rockchip: cdn-dp: Support handle lane info without extcon
  drm/rockchip: cdn-dp: Add multiple bridges to support PHY port
    selection

 drivers/gpu/drm/bridge/Kconfig                |  10 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/aux-bridge.c           |  26 +-
 .../gpu/drm/bridge/aux-hpd-typec-dp-bridge.c  |  64 ++++
 .../gpu/drm/display/drm_display_helper_mod.c  |   1 +
 drivers/gpu/drm/rockchip/Kconfig              |   1 +
 drivers/gpu/drm/rockchip/cdn-dp-core.c        | 358 ++++++++++++++----
 drivers/gpu/drm/rockchip/cdn-dp-core.h        |  18 +-
 drivers/phy/rockchip/Kconfig                  |   2 +
 drivers/phy/rockchip/phy-rockchip-typec.c     |  13 +-
 include/drm/bridge/aux-bridge.h               |   6 +
 11 files changed, 429 insertions(+), 71 deletions(-)
 create mode 100644 drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
