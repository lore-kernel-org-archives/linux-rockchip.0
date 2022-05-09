Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 29EECC433EF
	for <linux-rockchip@archiver.kernel.org>; Mon,  9 May 2022 08:38:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CHenbjtHzq4EbjD+e6Es/NEoSVVRI8vBwZNyiOZOFTc=; b=TQj7ZA2wN0RxbX
	Z0Ez6OoEVqUxBTDE9fa5kFCKHJeuxeA4k72sUwVS0EoGeTuvCJ0xAotBVAsGOsvGakAymCFJin4su
	+XzDGSVo+Rv0B75qG7VNloXRvgcMDzoC1upiO1YvI0qo14NTUzc6s7DNB6da5LZafiOmOtmM4gq+d
	fO0j/oHvm2/u8m5YerThDetMQ89paFVz8Ul1RUMGjTWI25HOW0UXXfTr+c/tAwEavo5muIdmsC7Fa
	P2HX/9KH56XHZVQlk2vJpR8XLNyEEa4z/iVpwdYBcNqaB4XMXwYDwRXoCMFFDagIoQ1EdUoHmgEuP
	zTl77X4o3W6Ptuyxvczg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nnyuK-00D91D-Br; Mon, 09 May 2022 08:38:20 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nnytz-00D8uQ-8y
 for linux-rockchip@lists.infradead.org; Mon, 09 May 2022 08:38:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nnytn-0007CJ-6Y; Mon, 09 May 2022 10:37:47 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nnytj-001G7v-To; Mon, 09 May 2022 10:37:42 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nnyth-005EQO-Lh; Mon, 09 May 2022 10:37:41 +0200
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
Subject: [PATCH v12 0/3] drm/rockchip: RK356x VOP2 support last fixups
Date: Mon,  9 May 2022 10:37:35 +0200
Message-Id: <20220509083738.1246866-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220509_013759_341606_ECFB432B 
X-CRM114-Status: GOOD (  12.30  )
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

This is not the full series, if you want that, look for v11.

This series merely has a last-minute change: The VOP2 driver used
platform_get_resource_byname() to get its registers, but the reg-names
property hasn't been documented in the binding. This series adds the
missing documentation and along the way renames the generic "regs"
name to "vop" and "gamma_lut" to "gamma-lut".

Sascha


Andy Yan (1):
  drm: rockchip: Add VOP2 driver

Sascha Hauer (2):
  arm64: dts: rockchip: rk356x: Add VOP2 nodes
  dt-bindings: display: rockchip: Add binding for VOP2

 .../display/rockchip/rockchip-vop2.yaml       |  146 +
 arch/arm64/boot/dts/rockchip/rk3566.dtsi      |    4 +
 arch/arm64/boot/dts/rockchip/rk3568.dtsi      |    4 +
 arch/arm64/boot/dts/rockchip/rk356x.dtsi      |   51 +
 drivers/gpu/drm/rockchip/Kconfig              |    6 +
 drivers/gpu/drm/rockchip/Makefile             |    1 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.c   |    1 +
 drivers/gpu/drm/rockchip/rockchip_drm_drv.h   |    6 +-
 drivers/gpu/drm/rockchip/rockchip_drm_fb.c    |    2 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h   |   15 +
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c  | 2706 +++++++++++++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h  |  477 +++
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c  |  281 ++
 include/dt-bindings/soc/rockchip,vop2.h       |   14 +
 14 files changed, 3713 insertions(+), 1 deletion(-)
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
