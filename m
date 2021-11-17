Return-Path: <SRS0=hOKP=QE=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92911C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 14:34:34 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 5BA1861353
	for <linux-rockchip@archiver.kernel.org>; Wed, 17 Nov 2021 14:34:34 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 5BA1861353
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=pengutronix.de
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4GhDyDjihCFlNH30r6nf047IWZNjTlCEUsEHcsrxqa0=; b=lCUzzBrUqqbiY+
	qL/JZt5qEhVftnjiHKo050jyp50mDNKsUSkLdYBafq3xLtJjlhvUYrcskyKEIb8eZJkQkqqbh78fZ
	97W6/40mhc2WdkfXsImBqrjDljfIILCn2JgTurWWaxBZkS4U5P0kZQgZnA8444z6ps+OPeE/SO46P
	YhBzzu232h4rJRw/zh5/vtVZ7EZweYDqle7QaZE0EF8wR5r7/SfHqcEtNP/hIa6tCrpYn/o9h6M7c
	dSClZ7c8i7uTYBuT/FmGF8cU7SGmtJslKxZwFuDPOoiYRSSYAKFEgYVB18vMNE1AlAkg2IS9sprST
	S/9mLrxzICEiI97/WlaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mnM17-0057Yo-Hc; Wed, 17 Nov 2021 14:34:29 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mnM0i-0057PN-AN
 for linux-rockchip@lists.infradead.org; Wed, 17 Nov 2021 14:34:05 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1mnM0e-0005tZ-F7; Wed, 17 Nov 2021 15:34:00 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1mnM0a-001P66-W3; Wed, 17 Nov 2021 15:33:56 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v1 00/12] drm/rockchip: RK356x VOP2 support
Date: Wed, 17 Nov 2021 15:33:35 +0100
Message-Id: <20211117143347.314294-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211117_063404_364218_48C9E88A 
X-CRM114-Status: GOOD (  17.08  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

This series adds initial graphics support for the Rockchip RK356[68]
SoCs.  Graphics support is based around the VOP2 controller which
replaces the VOP controller found on earlier Rockchip SoCs. The driver
has been tested with HDMI support included in this series and MIPI-DSI
which is not included because it needs some more work. The driver is
taken from the downstream Rockchip kernel and heavily polished, most non
standard features have been removed for now. I tested the driver with
the libdrm modetest utility and also with weston with both pixman and
panfrost driver support. Michael Riesch reported the driver to work on
the RK3566 as well, but device tree support for this SoC is not yet
included in this series.

The HDMI changes are based on patches from Benjamin Gaignard, but
modified a bit as I found out that the HDMI port on the RK3568 only
needs one additional clock, not two. Also I added regulator support
which is needed to get the HDMI up on the rk3568-EVB board.

All review and testing feedback welcome

Sascha

Benjamin Gaignard (2):
  dt-bindings: display: rockchip: Add compatible for rk3568 HDMI
  drm/rockchip: dw_hdmi: add rk3568 support

Sascha Hauer (10):
  drm/rockchip: dw_hdmi: Do not leave clock enabled in error case
  drm/rockchip: dw_hdmi: add regulator support
  of: graph: Allow disabled endpoints
  dt-bindings: of: graph: Allow disabled endpoints
  dt-bindings: display: rockchip: Add binding for VOP2
  arm64: dts: rockchip: rk356x: Add VOP2 nodes
  arm64: dts: rockchip: rk356x: Add HDMI nodes
  arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
  drm/rockchip: Make VOP driver optional
  drm: rockchip: Add VOP2 driver

 .../display/rockchip/rockchip,dw-hdmi.yaml    |   12 +-
 .../display/rockchip/rockchip-vop2.yaml       |  114 +
 .../bindings/media/video-interfaces.yaml      |    8 +
 arch/arm/configs/multi_v7_defconfig           |    1 +
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     |   24 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |  117 +
 arch/arm64/configs/defconfig                  |    1 +
 drivers/gpu/drm/drm_of.c                      |    6 +-
 drivers/gpu/drm/rockchip/Kconfig              |   13 +
 drivers/gpu/drm/rockchip/Makefile             |    4 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  137 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    3 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   22 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |  774 ++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 3611 +++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  916 +++++
 drivers/of/property.c                         |    3 +
 17 files changed, 5731 insertions(+), 35 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
