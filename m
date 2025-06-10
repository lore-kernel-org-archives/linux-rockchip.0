Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBB43C61DB2
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 22:50:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=netzSzBoFEFoRNhtwj6f9soY2MMpWvw23zfw4YE5HFc=; b=gNR5B126ksP2hf
	qWUnk9UqJ0ytTwjj7tkjbsIMHTfh7MyI4XGssXYYrEqgCCGTCZyf/cTnP009ILjx+IbQ/G7TavXDa
	SLCNt17osNqECJ5zcfr8qKocEtv5V1DPVcHTGdjcAqBcE/mjlRNyPadt+Zaee8U6cFF0MTteX9WQS
	2BC/PAxLNnob4VA10u2qG8sobrY9Hs2ZpOKkJpsr6zVRqOH7KcYhM4FxJy0KdHLGTMlgWwuLwEYhF
	6ZEcLYSN89vR1b7Qd7fwetj8OaoWdm8gY8UVPam1VYZgOVpMJ6mY5dChd2t9iTnmfW6BvtvxPQ6C5
	5bgLmpRanEVFcK/ZHV8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP7nv-00000008JRc-28xs;
	Tue, 10 Jun 2025 22:50:51 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uP6WG-00000008726-1zjc;
	Tue, 10 Jun 2025 21:28:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:In-Reply-To:References;
	bh=Awpi5GpyOLDB1Nt8+DeBTohsa+vKyjBC3GHy2DGNNYE=; b=tkGM+2MYM6zqsua3VbEBs0B9wM
	5yEPvrg8fK5rC8+Iu7nwoxeeeZXMCK6l1FbkO37Xkgb1ZUeBNjb4rnkFzmCz021lQpjvix1P/9pe+
	M7p4rE4S1XcPRjEXvFyOXNRULT44QYOKgNVJLjHWDJ6jNOJV4Ky99iKlbpf5QpZve0YpjbCVUOrAl
	d6Pm3FpKFvDTZtgEENTvVIMjNxi5EmnaPxaQGKDP6tcqmjvlInTAZYDy64TCYrEqS5B0sLxP/BLQG
	m8yjYN6YgibOTHMyxrlbaobIXinZSkMeyV78F5h6yvFTOrT6G1tMb91NkkEkGQ1mnEAOkjT309lBL
	LhanHnDw==;
Received: from i53875b1c.versanet.de ([83.135.91.28] helo=localhost.localdomain)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1uP6Vs-0007Jb-My; Tue, 10 Jun 2025 23:28:08 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com
Cc: maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: vop2: fail cleanly if missing a primary plane for a video-port
Date: Tue, 10 Jun 2025 23:27:48 +0200
Message-ID: <20250610212748.1062375-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_142832_540540_065F9EFE 
X-CRM114-Status: GOOD (  14.50  )
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

Each window of a vop2 is usable by a specific set of video ports, so while
binding the vop2, we look through the list of available windows trying to
find one designated as primary-plane and usable by that specific port.

The code later wants to use drm_crtc_init_with_planes with that found
primary plane, but nothing has checked so far if a primary plane was
actually found.

For whatever reason, the rk3576 vp2 does not have a usable primary window
(if vp0 is also in use) which brought the issue to light and ended in a
null-pointer dereference further down.

As we expect a primary-plane to exist for a video-port, add a check at
the end of the window-iteration and fail probing if none was found.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 7ddf311b38c6..a8dc2e55812a 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -2425,6 +2425,10 @@ static int vop2_create_crtcs(struct vop2 *vop2)
 				break;
 			}
 		}
+
+		if (!vp->primary_plane)
+			return dev_err_probe(drm->dev, -ENOENT,
+					     "no primary plane for vp %d\n", i);
 	}
 
 	/* Register all unused window as overlay plane */
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
