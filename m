Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3D835C433F5
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Feb 2022 08:34:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=eBD4lqmnKgLAneQs2Qi3cfaEtY1SGodreO/C5wXVOIU=; b=KnhartfotGFTxq
	EpLG4IiLda1J36kuJWJy+SCO1kC5z26XWJlZnAjqJ/jcC1P9ysNBVOZMbAanhcVlXN3oVQ7nZ/JTo
	CLfeolTEewV8mgou/zlO3qbvRSOntdvo6eWH0mgjA6gEnEmMzUW1Ghv7ew8kgdZRjyHS1ZzaTGfHM
	Wt5oY8GrZ9yUMpZahJdaKgNwVvbM8q31PeRX+l0O6cTiMOit2cbQ8GTddiOBvkfQmMndPnPcbMuzm
	I7+PqHf3wbNAxlWRKimIeuzeRoU3kChUUNC56F3xfVJu+KJiT6Lj7mRiy7LkO34IYQNpQ+4jQK/ig
	bMsdnhQV2/tN5O9X6Mig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nKcFE-009Saa-Vu; Thu, 17 Feb 2022 08:34:33 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nKcAw-009QDj-K0
 for linux-rockchip@lists.infradead.org; Thu, 17 Feb 2022 08:30:13 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nKcAs-0002Dy-CC; Thu, 17 Feb 2022 09:30:02 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nKcAp-00ClSY-Li; Thu, 17 Feb 2022 09:29:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 devicetree@vger.kernel.org, kernel@pengutronix.de,
 Andy Yan <andy.yan@rock-chips.com>,
 Benjamin Gaignard <benjamin.gaignard@collabora.com>,
 Michael Riesch <michael.riesch@wolfvision.net>,
 Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 Peter Geis <pgwipeout@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v6 00/23] drm/rockchip: RK356x VOP2 support
Date: Thu, 17 Feb 2022 09:29:31 +0100
Message-Id: <20220217082954.2967889-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220217_003006_684349_DE86BD34 
X-CRM114-Status: GOOD (  15.38  )
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

This is v6 of adding RK356x VOP2 support. Biggest change this time is
that I no longer modify struct drm_encoder, instead the rockchip drivers
now embed struct drm_encoder in a rockchip specific struct.

Sascha

Changes since v5:
- Add new patch to fix dw-hdmi of_graph binding
- Drop "drm/encoder: Add of_graph port to struct drm_encoder" and solve
  issue internally in the driver
- make checkpatch cleaner

Changes since v4:
- Reorder patches in a way that binding/dts/driver patches are closer together
- Drop clk patches already applied by Heiko

Changes since v3:
- added changelog to each patch
- Add 4k support to hdmi driver
- rebase on v5.17-rc1

Changes since v2:
- Add pin names to HDMI supply pin description
- Add hclk support to HDMI driver
- Dual license rockchip-vop2 binding, update binding
- Add HDMI connector to board dts files
- drop unnecessary gamma_lut registers from vop2
- Update dclk_vop[012] clock handling, no longer hacks needed
- Complete regmap conversion

Changes since v1:
- drop all unnecessary waiting for frames within atomic modeset and plane update
- Cluster subwin support removed
- gamma support removed
- unnecessary irq_lock removed
- interrupt handling simplified
- simplified zpos handling
- drop is_alpha_support(), use fb->format->has_alpha instead
- use devm_regulator_get() rather than devm_regulator_get_optional() for hdmi regulators
- Use fixed number of planes per video port
- Drop homegrown regmap code from vop2 driver (not complete yet)
- Add separate include file for vop2 driver to not pollute the vop include

Andy Yan (1):
  drm: rockchip: Add VOP2 driver

Benjamin Gaignard (1):
  dt-bindings: display: rockchip: dw-hdmi: Add compatible for rk3568
    HDMI

Douglas Anderson (2):
  drm/rockchip: dw_hdmi: Use auto-generated tables
  drm/rockchip: dw_hdmi: Set cur_ctr to 0 always

Michael Riesch (1):
  arm64: dts: rockchip: enable vop2 and hdmi tx on quartz64a

Nickey Yang (1):
  drm/rockchip: dw_hdmi: add default 594Mhz clk for 4K@60hz

Sascha Hauer (17):
  drm/rockchip: Embed drm_encoder into rockchip_decoder
  drm/rockchip: dw_hdmi: rename vpll clock to reference clock
  dt-bindings: display: rockchip: dw-hdmi: use "ref" as clock name
  arm64: dts: rockchip: rk3399: rename HDMI ref clock to 'ref'
  drm/rockchip: dw_hdmi: add rk3568 support
  drm/rockchip: dw_hdmi: add regulator support
  dt-bindings: display: rockchip: dw-hdmi: Add regulator support
  drm/rockchip: dw_hdmi: Add support for hclk
  dt-bindings: display: rockchip: dw-hdmi: Add additional clock
  drm/rockchip: dw_hdmi: drop mode_valid hook
  dt-bindings: display: rockchip: dw-hdmi: Make unwedge pinctrl optional
  arm64: dts: rockchip: rk356x: Add VOP2 nodes
  arm64: dts: rockchip: rk356x: Add HDMI nodes
  arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
  drm/rockchip: Make VOP driver optional
  dt-bindings: display: rockchip: Add binding for VOP2
  dt-bindings: display: rockchip: dw-hdmi: fix ports description

 .../display/rockchip/rockchip,dw-hdmi.yaml    |   53 +-
 .../display/rockchip/rockchip-vop2.yaml       |  140 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |    2 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |   47 +
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      |    4 +
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     |   47 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |    4 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   83 +
 drivers/gpu/drm/rockchip/Kconfig              |   14 +
 drivers/gpu/drm/rockchip/Makefile             |    4 +-
 .../gpu/drm/rockchip/analogix_dp-rockchip.c   |   32 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.c        |   18 +-
 drivers/gpu/drm/rockchip/cdn-dp-core.h        |    2 +-
 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   |   17 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  294 +-
 drivers/gpu/drm/rockchip/inno_hdmi.c          |   32 +-
 drivers/gpu/drm/rockchip/rk3066_hdmi.c        |   34 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    3 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |   17 +-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   15 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 2708 +++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  477 +++
 drivers/gpu/drm/rockchip/rockchip_lvds.c      |   26 +-
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  281 ++
 include/dt-bindings/soc/rockchip,vop2.h       |   14 +
 26 files changed, 4175 insertions(+), 195 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h
 create mode 100644 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
 create mode 100644 include/dt-bindings/soc/rockchip,vop2.h

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
