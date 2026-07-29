Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 069EAC53200
	for <linux-rockchip@archiver.kernel.org>; Wed, 29 Jul 2026 23:25:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NIxIig1RDzOFM+ZiKa+hWyhQF0D/81NmLJD2PmXYarM=; b=wqDTXtT+Z1LHyr
	liFHMKhx2/qYiqv03OqEmSAUnfA3r5Pq2hlSeJGVJaMZTBWKV0if109IN7KLXc/bMNFqYgGq6OgPx
	kbZcuvrEZB544sK3FRkQMNYhb69u/h3A/3CzaCjEMbw6ea5aRrUCzo27ID41x2rCSwLWoTlxSwGfN
	I6fcSDhdOosVGOUcbOK+Du+H5heDKsDdTgx3zPGnk6VpdfK9I3AkAQWJH2mrfwERz+h1s+mK6pABf
	7EZle2TChDSrGuK5fi2sg9u40dtrRNgOAnzjCm+0S8Q5dk6WVg9d1JWuZfrKmha8Smie2CTstPmWD
	kN2Br/4hV88KLNHSE+lA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpDeb-000000096tW-2c4U;
	Wed, 29 Jul 2026 23:25:37 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpDea-000000096tL-2iZv
	for linux-rockchip@bombadil.infradead.org;
	Wed, 29 Jul 2026 23:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=gOPSkr2wlloefEPrua6lklGG7M4k2QPcT5/yGwy/0lw=; b=bbMAl44BJewuUQnOs+/Ob7VcnP
	jBXTFeudI6zSIXC/Na+Yuv2D+pOmN6CmPe4JmyydCg9qKv+nIMrpAU/DkWvrYPuuI0DokZ0L1c0Cc
	R5Klu4YApxe4xzEiVNOgpXBIVhk4xp8dm3gcuglkZMp1JrycSPmgTWa6TBFv39KXii1B3JaMP5ICY
	saPqQBgLvKzYs+fnNmdERuS1aNsTInjguNCZq1e/tAdH3zmTtlKj6Z77GtDPWBxj/uSsvjc2ykAYg
	oqMQ8zASlGTym/SW65wEgftfMODvl03BYgSqp6MuoKO9Veefr5I6Io4oMOKH+A+V08JkAFJTj7WI/
	szHSukmg==;
Received: from mail-gw-fk003.vdone.jp ([160.251.152.193])
	by casper.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpDeV-0000000Ejos-0B2y
	for linux-rockchip@lists.infradead.org;
	Wed, 29 Jul 2026 23:25:34 +0000
Received: from mail-gw-fk003.vdone.jp (localhost.localdomain [127.0.0.1])
	by mail-gw-fk003.vdone.jp (Proxmox) with ESMTP id 64DF9401827CA
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 08:24:55 +0900 (JST)
Received: from e3.valueserver.jp (e3.valueserver.jp [157.7.184.13])
	by mail-gw-fk003.vdone.jp (Proxmox) with ESMTPS id 82F374015A649
	for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 08:24:54 +0900 (JST)
Received: (qmail 287325 invoked by uid 89); 30 Jul 2026 08:24:54 +0900
Received: from p1706034-ipxg06601niigatani.niigata.ocn.ne.jp (HELO localhost.localdomain) (jack@supremeoverlordjabs.co)
  by e3.valueserver.jp with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 30 Jul 2026 08:24:54 +0900
From: Tomonori Nakagawa <jack@supremeoverlordjabs.co>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>
Cc: Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Tomonori Nakagawa <jack@supremeoverlordjabs.co>
Subject: [PATCH] drm/rockchip: vop2: give rk3576 VP2 a primary plane
Date: Thu, 30 Jul 2026 08:24:50 +0900
Message-ID: <20260729232450.13797-1-jack@supremeoverlordjabs.co>
X-Mailer: git-send-email 2.54.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_002531_629294_76F7D035 
X-CRM114-Status: UNSURE (   9.12  )
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

The rk3576 VOP2 has three video ports. VP0 and VP1 each have a Cluster
window that acts as their primary plane, but VP2 - the port wired to the
DesignWare DP controller - only has Esmart windows, all typed
DRM_PLANE_TYPE_OVERLAY.

The driver requires every active video port to own a
DRM_PLANE_TYPE_PRIMARY plane. When VP2 is driven (a board that uses the
DP output) it finds none, CRTC creation returns -ENOENT, and the whole
VOP2 bind fails, taking down the entire display subsystem.

Promote Esmart0 to DRM_PLANE_TYPE_PRIMARY so VP2 has a primary plane.
Esmart0's possible_vp_mask already includes VP2 (BIT(2)) and its
layer_sel_id[2] = 0 is a valid VP2 layer slot, while VP0 keeps Cluster0
as its primary, so the existing VP0/VP1 assignments are unchanged:

  VP0: primary=Cluster0, overlay=Esmart2
  VP1: primary=Cluster1, overlays=Esmart1, Esmart3
  VP2: primary=Esmart0,  overlays=Esmart1, Esmart2, Esmart3

Tested on Anbernic RG Vita Pro (rk3576) with the DP alt-mode output.

Signed-off-by: Tomonori Nakagawa <jack@supremeoverlordjabs.co>
---
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 17eda592b..e7d013dc3 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -894,7 +894,7 @@ static const struct vop2_win_data rk3576_vop_win_data[] = {
 		.format_modifiers = format_modifiers,
 		.layer_sel_id = { 2, 0xf, 0, 0xf },
 		.supported_rotations = DRM_MODE_REFLECT_Y,
-		.type = DRM_PLANE_TYPE_OVERLAY,
+		.type = DRM_PLANE_TYPE_PRIMARY,
 		.axi_bus_id = 0,
 		.axi_yrgb_r_id = 0x10,
 		.axi_uv_r_id = 0x11,
-- 
2.54.0



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
