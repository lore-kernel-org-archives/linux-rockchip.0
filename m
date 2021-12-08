Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DAF2C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Dec 2021 15:25:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uG2ZOfneW4jxsV4nU8o3X1MZr6r+te4uHCYYjZUs+0w=; b=2QfOsIqJaw0XvS
	r9xXM4+uEk+yHWmgy5v3evtBRAy/eOuJIGFCkHZxp09mDckQh6GZrbKqwhARliMnJbKcuu5JjvsiD
	RcXtq8Bl407o+kBOWVTIpWogV+J7gdw//9HC1hoQ568kifa9S806qHHJxjbu1CvZUSRxzte4eD6Hg
	5n9h5sA9v3xBtkjcWq5FdK/nUWuQDd6zURWWYIU75fFkWXO7KqYB1iwwfDyhD/vJFWpKL3akMCoHp
	BT3dLBuM2b/PnFN4N0HgkoCcBnn+PYIBFco+GGkAgjlg91HGzUBlfMSx1QnkAp9MHY++N6M4IcO0m
	Z/+zTkr5xojV1yIA4LBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1muyow-00DDsN-P2; Wed, 08 Dec 2021 15:25:26 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muydE-00D7dx-H2
 for linux-rockchip@bombadil.infradead.org; Wed, 08 Dec 2021 15:13:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
 Content-Description:In-Reply-To:References;
 bh=Z2PluY7ot//c1X78/d7/mJpLcD8gwrDesxxouSjZBfk=; b=llBSOnMAvhN2tXiMFa32/aT0yH
 +Dx5+0Nx3R3zjYCZUsy9X7u6c8BNIfFKEqZ6a5SdWiFtmmF1hRibYTddU7gdC0Fc11iNy7tk5PYa0
 /Lp3YVIQmNOmSXABxAbGqKQ0a6XgKRop4aws3R11DWIe9kI/8hDwUFvBf+YhgdjwAUWyV84UGqd3k
 Mg7YZSC8ilT1R5ecy/aYb7bqgK1+hSauCrMO6lvapTaWefDClD7ZVHAY1CVc/vDmq1H9IPSUd6Lrs
 HGs61cvkNrk9yaCppJzVg58bWb58kWqcUBb7I5rnYfG5vdHMCmJZMUH82KwYg2Bl8TM3I2+ZqCqfZ
 INdpM59w==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1muyd7-008WTj-Kp
 for linux-rockchip@lists.infradead.org; Wed, 08 Dec 2021 15:13:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1muyck-0004UL-79; Wed, 08 Dec 2021 16:12:50 +0100
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1muycc-00FVZ4-SF; Wed, 08 Dec 2021 16:12:42 +0100
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
Subject: [PATCH v2 00/18] drm/rockchip: RK356x VOP2 support
Date: Wed,  8 Dec 2021 16:12:12 +0100
Message-Id: <20211208151230.3695378-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::28
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211208_151314_446832_EC3A9AD4 
X-CRM114-Status: GOOD (  20.46  )
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

This is the second round of the vop2 series. There are still some issues open,
but I thought it's about time to let people see and test it. I integrated the
review feedback I got from v1. Other changes include:

All framesync waiting is gone from the driver which makes it more straight
forward. To accomplish this the port_mux setup is now static in the driver.
This means each video port has a fixed maximum number of planes which is less
flexible but much easier to handle.

I also removed much of the register mapping and shadow register handling around
struct vop_reg. This basically resembles regmap and can eventually replaced by
regmap. Some places are still left in the driver, I plan to remove those in
later versions.

I think I have found the issue why only 1080p resolutions work, this seems to
be an issue in the way the clock tree is arranged. See the last patch in this
series which points to the problem, so far I don't have a good solution for it.

As usual, all comments and feedback welcome.

Sascha

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

Michael Riesch (1):
  arm64: dts: rockchip: enable vop2 and hdmi tx on quartz64a

Sascha Hauer (15):
  drm/rockchip: dw_hdmi: Do not leave clock enabled in error case
  drm/rockchip: dw_hdmi: rename vpll clock to reference clock
  drm/rockchip: dw_hdmi: add rk3568 support
  drm/rockchip: dw_hdmi: add regulator support
  dt-bindings: display: rockchip: dw-hdmi: Make unwedge pinctrl optional
  dt-bindings: display: rockchip: dw-hdmi: Allow "ref" as clock name
  dt-bindings: display: rockchip: dw-hdmi: Add regulator support
  arm64: dts: rockchip: rk3399: reorder hmdi clocks
  dt-bindings: display: rockchip: Add binding for VOP2
  arm64: dts: rockchip: rk356x: Add VOP2 nodes
  arm64: dts: rockchip: rk356x: Add HDMI nodes
  arm64: dts: rockchip: rk3568-evb: Enable VOP2 and hdmi
  drm/encoder: Add of_graph port to struct drm_encoder
  drm/rockchip: Make VOP driver optional
  [HACK, RFC] clk: rk3568: do not divide dclk_vop0

 .../display/rockchip/rockchip,dw-hdmi.yaml    |   14 +-
 .../display/rockchip/rockchip-vop2.yaml       |  118 +
 arch/arm64/boot/dts/rockchip/rk3399.dtsi      |    6 +-
 .../boot/dts/rockchip/rk3566-quartz64-a.dts   |   31 +
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      |    4 +
 .../boot/dts/rockchip/rk3568-evb1-v10.dts     |   31 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |    4 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   75 +
 drivers/clk/rockchip/clk-rk3568.c             |    4 +-
 drivers/gpu/drm/rockchip/Kconfig              |   14 +
 drivers/gpu/drm/rockchip/Makefile             |    4 +-
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c   |  107 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    3 +-
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    7 +-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   15 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 2636 +++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  625 ++++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  505 ++++
 include/drm/drm_encoder.h                     |    2 +
 include/dt-bindings/soc/rockchip,vop2.h       |   14 +
 21 files changed, 4193 insertions(+), 28 deletions(-)
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
