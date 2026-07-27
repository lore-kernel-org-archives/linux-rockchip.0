Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 68EE1C54EFC
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 06:45:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ib2J7qZCNfZa4loAY8TS34IiMzdUjfQOO7kso5cpIds=; b=uuctBMv+PRt0/Q
	tVEdRtDUAQZciVxS5ZxslYrz1uu/fB+//vL13/3/VY6pUJ/lbWzpbNM4umALibNhgoKYEdrXk9XGH
	fju5rGJ2BYZHmliy9qkZI77kfIAImblgt30pCMZYf5y4ohFaXIJv7S/G0C3myWFieocspOpY3U6xd
	qOGb+Jy2yWrpXRkyW3laUBYvttl6Kk2duychPMb746qNvW6W+ZsW5k0JDAHkYVNglNYxCE42e/4OV
	DNbITK8DkPAZYZhH6P8h8wmU7TALjjvvZ9GmSOA4QXe46jeCQKlD/NDd6pgo0a+QV4E35O5ypfVf3
	Cr6NC5emZYUcEbJQMkGA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woF5a-000000022yF-1YKz;
	Mon, 27 Jul 2026 06:45:26 +0000
Received: from smtpbgeu2.qq.com ([18.194.254.142])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woF5U-000000022tK-0jEi;
	Mon, 27 Jul 2026 06:45:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=airkyi.com;
	s=altu2504; t=1785134657;
	bh=tUuZrKapaqrR58DBEzt7pydUceq7VRn6Enn+YN7nDOc=;
	h=From:To:Subject:Date:Message-Id;
	b=vGKfoi1uJsKMKqMW0dZr/TdPbN0VxYPdIhAejRHMKkhQ0b09hM4SUWTOL17MuvPvy
	 EgWIqnPxjCNcLyZNAYw353qxbQWCHaPP1ejm9kvdy5sSEbGhxAVWy7bLelus9UbpNb
	 ETSOJXN0NNs9YCgIvncL32HBJtHDm8UO5+/74hN4=
X-QQ-mid: esmtpgz10t1785134655t8d07a1af
X-QQ-Originating-IP: +t6bBls4CjzrhjJMvTj2vHStvI/0FJ5ZxtB1XEmdG40=
Received: from DESKTOP-8BT1A2O.localdomain ( [61.154.14.86])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Mon, 27 Jul 2026 14:44:12 +0800 (CST)
X-QQ-SSF: 0000000000000000000000000000000
X-QQ-GoodBg: 0
X-BIZMAIL-ID: 4435885158294995531
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
Subject: [PATCH v4 0/5] This series is split from the v15 "Add Type-C DP support for RK3399 EVB
Date: Mon, 27 Jul 2026 14:44:03 +0800
Message-Id: <20260727064408.101-1-kernel@airkyi.com>
X-Mailer: git-send-email 2.17.1
X-QQ-SENDSIZE: 520
Feedback-ID: esmtpgz:airkyi.com:qybglogicsvrgz:qybglogicsvrgz6b-0
X-QQ-XMAILINFO: Nzm/ywkHpQhPr4Y0xt0KaJ0+Syayq5JweL0Q7lawsuzfCxdAzMCuQEha
	GchHzEaYR8erdBqnNxl2dhXMrOeRNo5NVMYgeDG4lfnRc/BncxlzIz0zU2qo9WjfpZskWkX
	8vvU6gdCvHB7982Qp6pxcHe9pElEbV93bAqa/d4a06LP6M3p50mB94y+4+xhJSwtoZ0fw2Y
	qpY9wC6xZXO4cMs75dcJh0IZ+zR4LKuL4np8r+dalcsjqa6silcyA2pqQXXmoJr7QBjSAGh
	dg3Bb/j/wFL3YjIxEGH07OhE5Z8aGwRsHDIIXMLJF9Wub9YadhGyClyv3cV/qlABxWOsW2A
	DRGC0EcxtQIsb3599ekvCVtLC1b8EcAN+uRLd1XMlRI0vnBe0E2FUThWofG1oixp+X6FLhw
	UUbQjRoz8BV1pcUvcfUacnkiG9HfqusfxhD4B9YD0mAn3PQ+y9o9onRssP982EfUMQ63Y+B
	jet+KZZm4GYwcWWPRxcaRdwaRpAh515lDV4DQ9NkAstB732Prwvik5kjxhAgTSnIJII/YDc
	HQrMhucJafPMbqUeF0NRBdM7BR19efHQtOFKViK0w03smAA15iLbsVajCr19ZieOR1L9kXB
	qWWW+i0ZWZWWLBzwSoxIX5+L3ATe0m8eznPrXBE3AArEGIOc18AIniE18uCVHCTP973yaWy
	dN5f//8qeOUF0/d1gJpP54EtRRu/RoXfahUmiW1auT0n9zz4aByQEayXgIKxR+UQqdfBzkX
	j2G+M37SMm1CbTiHbSznKu8iOKL3LPPXvTJAtzcHh6n64OZK+LsY8LkdCuFBWIvu1cHeQHf
	X744UnSW0iSh/nbfXeyjLUeXX6bqlUc07zF0PuHSQLhydUBPv7L+q5LB2wtp0OH4F0gL712
	YMhazt5nnTcuDEy2hv4asvNtpNyOEXwGc38rvf48ItkGH4nx5vJJIwoSufb/3sE2KC7QyCB
	xm4asoQ4y5jqaYekq0qNy7p8g4szG4cD6+oD+tnJdvKAEzGvnpUSBeBxMM+fdmWHK+vw=
X-QQ-XMRINFO: NS+P29fieYNwqS3WCnRCOn9D1NpZuCnCRA==
X-QQ-RECHKSPAM: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260726_234520_775314_03B3C4CC 
X-CRM114-Status: GOOD (  11.24  )
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
Patch 2 adds new API drm_aux_bridge_register_from_node() (Neil).
Patch 3 adds DRM AUX bridge support for RK3399 USBDP PHY (Neil).
Patch 4 drops CDN-DP's extcon dependency when Type-C is present (Dmitry).
Patch 5 adds multiple bridges to support PHY port selection (Dmitry, Luca).

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

Chaoyi Chen (5):
  drm/bridge: Implement generic USB Type-C DP HPD bridge
  drm/bridge: aux: Add drm_aux_bridge_register_from_node()
  phy: rockchip: phy-rockchip-typec: Add DRM AUX bridge
  drm/rockchip: cdn-dp: Support handle lane info without extcon
  drm/rockchip: cdn-dp: Add multiple bridges to support PHY port
    selection

 drivers/gpu/drm/bridge/Kconfig                |  10 +
 drivers/gpu/drm/bridge/Makefile               |   1 +
 drivers/gpu/drm/bridge/aux-bridge.c           |  26 +-
 .../gpu/drm/bridge/aux-hpd-typec-dp-bridge.c  |  64 ++++
 drivers/gpu/drm/rockchip/Kconfig              |   1 +
 drivers/gpu/drm/rockchip/cdn-dp-core.c        | 358 ++++++++++++++----
 drivers/gpu/drm/rockchip/cdn-dp-core.h        |  18 +-
 drivers/phy/rockchip/Kconfig                  |   2 +
 drivers/phy/rockchip/phy-rockchip-typec.c     |  13 +-
 include/drm/bridge/aux-bridge.h               |   6 +
 10 files changed, 428 insertions(+), 71 deletions(-)
 create mode 100644 drivers/gpu/drm/bridge/aux-hpd-typec-dp-bridge.c

-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
