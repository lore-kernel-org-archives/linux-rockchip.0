Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E8CE8C54E55
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Mar 2024 10:30:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=x7RogfbroR4BjSqI9W8wLZXVvoZ3Ms/+jkT33hwLUVs=; b=l13jx4xHpi8nq6
	QeAtIBnoTI2HPcViBLswD87SrOGQPuvm6rvvWt7Kx6dG0TXqTBuNs/cfzlZlOLLgpzN5GUCcpby6O
	2g9suoX1xxipImx9esRtX8gtS5Bka+PCW+1VLeeMiNNfyQMjDqqRLaCJX4WuhTGG/M4pVW7SDQgrd
	EilnF4lBTKauxc99ocotwxwQ6hnDMZU9ysKhmL+yAauWSq9o3bI3/psioRGIfMlCTT74pUOWGHP1M
	jvTAsbDTdEqnPVR65ICQCpjxd1qmwNC3skSDkUMsCsrki/+JnB2dtCaMCVU5d47gkBL/Q2oEcyjib
	7gL4V0s7HzKEhrPcLaig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5aL-00000008cPn-15A7;
	Mon, 04 Mar 2024 10:30:17 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rh5HJ-00000008Xt9-1ReJ;
	Mon, 04 Mar 2024 10:10:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=rWWze
	ynqvpKTE8wM5BvJ7WhI4cRh2jw6a0Kbi0ZwsdA=; b=V1g4ZJXgnDduvAq01bKml
	dVxaDiyDzC5H4z8/n32ZfrcKQKaIKR84bNNjoy39SlkZ4ACN02OkX7LyOHn3rPMt
	3o5L/JA0VGQGxfl9d6OGJoZ6RYmMk3p9veoiCHDvQ2k/XdiEmDlo1ZL8lSo48HFe
	dM9SAFp1cugZROOeyXS7fM=
Received: from ProDesk.. (unknown [103.29.142.67])
	by gzga-smtp-mta-g0-3 (Coremail) with SMTP id _____wD3n_jzneVlOacmAQ--.60415S2;
	Mon, 04 Mar 2024 18:10:01 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	s.hauer@pengutronix.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH] drm/rockchip: vop2: Remove AR30 and AB30 format support
Date: Mon,  4 Mar 2024 18:09:52 +0800
Message-Id: <20240304100952.3592984-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CM-TRANSID: _____wD3n_jzneVlOacmAQ--.60415S2
X-Coremail-Antispam: 1Uf129KBjvdXoWrKr47XrWkGr4DZw17ur45KFg_yoWfuwcEk3
	47X3Wfur4xCrn8Jw12y3y7WrZFy3WI9Fs2ga9Yyan5AF1vvw1rXFy0vry7Gas8JF42kFs7
	GF1jqry3CFn8WjkaLaAFLSUrUUUUjb8apTn2vfkv8UJUUUU8Yxn0WfASr-VFAUDa7-sFnT
	9fnUUvcSsGvfC2KfnxnUUI43ZEXa7IU1YL95UUUUU==
X-Originating-IP: [103.29.142.67]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBEB6XXmVOCknmwAAAsJ
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_021037_938963_74393B9A 
X-CRM114-Status: UNSURE (   7.05  )
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

From: Andy Yan <andy.yan@rock-chips.com>

The Alpha blending for 30 bit RGB/BGR are not
functioning properly for rk3568/rk3588, so remove
it from the format list.

Fixes: bfd8a5c228fa ("drm/rockchip: vop2: Add more supported 10bit formats")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 48170694ac6b..18efb3fe1c00 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -17,9 +17,7 @@
 
 static const uint32_t formats_cluster[] = {
 	DRM_FORMAT_XRGB2101010,
-	DRM_FORMAT_ARGB2101010,
 	DRM_FORMAT_XBGR2101010,
-	DRM_FORMAT_ABGR2101010,
 	DRM_FORMAT_XRGB8888,
 	DRM_FORMAT_ARGB8888,
 	DRM_FORMAT_XBGR8888,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
