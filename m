Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 793D4C433F5
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 May 2022 08:22:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=onECH8fbYlTguPczsRItuI9Crzb7njd6yR9JAQ5sDtc=; b=WGNXQX3XEPUC4k
	eWMjcXO5AcBNDFdxdlPgtH8MIo5DlCMWiS23AFShRKYHTNlt9DLFZ7yHV9RvTZscqm2a5cEeEVyS2
	eNQ+AhYVRyX9n82gXuLCx1Hs1y+X/ir1ZBmXUD4SFk7yEhF0kGEsh2ujvipBVkPGci1eJn9Ry4q5L
	96otVxsOU4dsLmfA4JfKYyyCllyH56+RY0PIk3z0D+WldgS1vtNt5EwqLZjx4H1PBScN8Wq0bXi/8
	Vh+MZdM/mfy0nXN1HHSpRsTa9Xz3phlalRgTsmDCdhPdKRhdeQdEWYbwhnekC4uGSsU8tYtLOKpna
	QDO3P7C8KMXqaAyNqwNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nohbe-005tMg-M9; Wed, 11 May 2022 08:22:02 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nohbK-005t5p-2A
 for linux-rockchip@lists.infradead.org; Wed, 11 May 2022 08:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1nohat-0002Ut-0m; Wed, 11 May 2022 10:21:15 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nohaq-001eQR-Pa; Wed, 11 May 2022 10:21:11 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <sha@pengutronix.de>)
 id 1nohao-004lTq-Jq; Wed, 11 May 2022 10:21:10 +0200
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
Subject: [PATCH v2 0/3] RK356x VOP2: Change register space names
Date: Wed, 11 May 2022 10:21:06 +0200
Message-Id: <20220511082109.1110043-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220511_012142_158130_7C9B47DA 
X-CRM114-Status: UNSURE (   8.81  )
X-CRM114-Notice: Please train this message.
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

The VOP2 driver sitting in next uses named register spaces, but the
binding lacks documentation for that. Add the missing documentation
and while at it take the opportunity to rename the register spaces
from too generic "regs" to "vop" and from "gamma_lut" to better looking
"gamma-lut".

Changes since v1:
- Fix dt_binding_check errors

Sascha Hauer (3):
  dt-bindings: display: rockchip: make reg-names mandatory for VOP2
  drm: rockchip: Change register space names
  arm64: dts: rockchip: rk356x: Change VOP2 register space names

 .../bindings/display/rockchip/rockchip-vop2.yaml          | 8 +++++++-
 arch/arm64/boot/dts/rockchip/rk356x.dtsi                  | 2 +-
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c              | 4 ++--
 3 files changed, 10 insertions(+), 4 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
