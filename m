Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6527C636CC
	for <linux-rockchip@archiver.kernel.org>; Wed,  8 Feb 2023 09:08:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JudOYFE6afODXyM+fDwqqjv49YF9s5fSRgij8TIoygU=; b=bhAeQGlJRhv7Y3
	M9yda4zw+q5rtskA6d+0OEU2MksWeIO+HPLN8i0FhmbtH1Wk9FJaWBsC9SqoTUBth5iAd6YWTsXAi
	VqBCAqinOnSBIsf4MH9WPNtHBd6LB/70Hfpy9LHZddCZRquDF3eNDq9GnK4cldAcDL4bpdxf/cL54
	j6eEkelFvS8dpKLobbm8NhontvAIoNoYjmijm05z7ToztS9srthgkiTsorwDmFBYvtQsb0gKgR3pQ
	RY2rAdWdWhkHbmYdF6Dcb6yTP25B6JGoMchc2f4eZfb5nXrd5MkyzExzxqbcLS36Rvqa7r4TRx3Lf
	z+Xo48Q9/9dqKZXwsLSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgRZ-00Eh4B-CL; Wed, 08 Feb 2023 09:08:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pPgRV-00Eh0R-Qe
	for linux-rockchip@lists.infradead.org; Wed, 08 Feb 2023 09:08:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pPgRC-0004ed-RW; Wed, 08 Feb 2023 10:08:22 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPgR6-003TfI-Pz; Wed, 08 Feb 2023 10:08:18 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pPgR7-00GG7j-7a; Wed, 08 Feb 2023 10:08:17 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: Sandy Huang <hjc@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	Michael Riesch <michael.riesch@wolfvision.net>,
	kernel@pengutronix.de,
	Robin Murphy <robin.murphy@arm.com>,
	Dan Johansen <strit@manjaro.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v5 0/4] drm/rockchip: dw_hdmi: Add 4k@30 support
Date: Wed,  8 Feb 2023 10:08:12 +0100
Message-Id: <20230208090816.3810589-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230208_010841_880475_968B68EA 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
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

Some more small changes to this series, see changelog.

Sascha

Changes since v4:
- Use struct vop_reg to store resolutions
- Only check for valid clock rates when clock != NULL

Changes since v3
- Add patch to limit VOP resolutions to hardware capabilitie

Changes since v2:
- Use correct register values for mpll_cfg
- Add patch to discard modes we cannot achieve

Changes since v1:
- Allow non standard clock rates only on Synopsys phy as suggested by
  Robin Murphy

Sascha Hauer (4):
  drm/rockchip: vop: limit maximium resolution to hardware capabilities
  drm/rockchip: dw_hdmi: relax mode_valid hook
  drm/rockchip: dw_hdmi: Add support for 4k@30 resolution
  drm/rockchip: dw_hdmi: discard modes with unachievable pixelclocks

 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c  | 41 ++++++++++++++++----
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c  | 15 +++++++
 drivers/gpu/drm/rockchip/rockchip_drm_vop.h  |  6 +++
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.h |  5 ---
 drivers/gpu/drm/rockchip/rockchip_vop_reg.c  | 18 +++++++++
 5 files changed, 73 insertions(+), 12 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
