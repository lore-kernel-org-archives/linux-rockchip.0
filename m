Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1E213FA3741
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 Oct 2022 09:54:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HfpgSCdYZoFMRWpy+7AeDCrBzifDcINcTtkwlIoxKZg=; b=LW9ne476vCvGgl
	WoQ+y7pAqrdSuxDZhNU6TqvCdrZnCDK/z3Eib+KztPX0ebdsrttLtjeUAD00RfNOGbHZbn+p8+5W4
	4YNbAsa9qxMuXDLrbtFab2EZz2ebH3GjwiXncf1L+4JOLNG/PUvIm50bU1Jh00bdQEF7iM3tM9oHK
	OdoAggNkbLvSUraD2reOxw176vuUGTrnanDv6vQYbI2WFC95EoJaL6p137Ky7h9P6woVhEIeyWzta
	Ahd8OuNOpmp/y/YuiHXlhICGvHidyT7Cgw7urBLwJ6uHorhxCxTASAN1siEI8/FEhAGVx1X68lxk8
	L7vC4V3OZW2tR8Omlb8A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooM3w-00GS6n-Tl; Fri, 28 Oct 2022 09:54:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ooM2I-00GRK6-T9
	for linux-rockchip@lists.infradead.org; Fri, 28 Oct 2022 09:52:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1ooM27-0005YV-0C; Fri, 28 Oct 2022 11:52:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ooM24-000s2J-FW; Fri, 28 Oct 2022 11:52:07 +0200
Received: from mtr by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <mtr@pengutronix.de>)
	id 1ooM22-008xq4-Mq; Fri, 28 Oct 2022 11:52:06 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	linux-arm-kernel@lists.infradead.org,
	Chris Morgan <macromorgan@hotmail.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/2] drm/rockchip: vop2: fix IOMMU warnings after reenable
Date: Fri, 28 Oct 2022 11:52:04 +0200
Message-Id: <20221028095206.2136601-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mtr@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221028_025222_949930_111F450A 
X-CRM114-Status: GOOD (  10.26  )
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

Hi,

I was observing a lot of warnings that the IOMMU has blocked accessed by the
VOP2 when I disabled and reenabled the VOP2 by shutting down a DRM user space
application (namely Weston) and restarting it.

The reason for the warnings was that the address of the last framebuffer was
still residing in the read register of Smart0-win0. After enabling the VOP2,
the Smart0-win0 was still enabled and started reading from the address.

This series makes sure that the planes are disabled when the CRTC is disabled
to make sure that the VOP2 is always started with disabled overlays.

Michael

Michael Tretter (2):
  drm/rockchip: vop2: fix null pointer in plane_atomic_disable
  drm/rockchip: vop2: disable planes when disabling the crtc

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
