Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F724C55172
	for <linux-rockchip@archiver.kernel.org>; Sat,  1 Aug 2026 22:35:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Eemc7tMxqwCmBLMdp7qZGzL9KVaGvS6kzi5iVRcf52A=; b=Kf7g1N51Ldizqg
	uqcK2SFe79ZW3W2AfkjF7SQu7HBeC0z4wnOY+9xtSHfzhwxmVDKJPCMb7I5Rnm8gMdJ+x6EDGm1kO
	mWiQSOF0tKaLnsaDLKevPs1hyfny3Ae2ZSGM1ZuSqv4ExRqoUvb4DCnVejk0uo3+c7vesYpY20lL+
	Pvnzr/IghFkymca2HjtRzqHoqhMXaTNQt+5xjqgJcu1Tb02HfRknz3e8WPlxbgIDLBe53VYq4Ro7V
	L7PwOvsnm/fwDPqbKfEIEptq19AWo9hk1cay75giJnrlwRZMvyVie168Mr5F/s647F6Q+oJvUM0KS
	YiSTHOitb/KvGCKc4KXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqIIw-0000000FB8V-2fkc;
	Sat, 01 Aug 2026 22:35:42 +0000
Received: from mail-gw-fk003.vdone.jp ([160.251.152.193])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wqIIt-0000000FB7g-0ox3
	for linux-rockchip@lists.infradead.org;
	Sat, 01 Aug 2026 22:35:40 +0000
Received: from mail-gw-fk003.vdone.jp (localhost.localdomain [127.0.0.1])
	by mail-gw-fk003.vdone.jp (Proxmox) with ESMTP id 346B3401583AE
	for <linux-rockchip@lists.infradead.org>; Sun,  2 Aug 2026 07:35:26 +0900 (JST)
Received: from e3.valueserver.jp (e3.valueserver.jp [157.7.184.13])
	by mail-gw-fk003.vdone.jp (Proxmox) with ESMTPS id 2A6F0401827EF
	for <linux-rockchip@lists.infradead.org>; Sun,  2 Aug 2026 07:35:25 +0900 (JST)
Received: (qmail 849831 invoked by uid 89); 2 Aug 2026 07:35:24 +0900
Received: from p1706034-ipxg06601niigatani.niigata.ocn.ne.jp (HELO localhost.localdomain) (jack@supremeoverlordjabs.co)
  by e3.valueserver.jp with ESMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 2 Aug 2026 07:35:24 +0900
From: Tomonori Nakagawa <jack@supremeoverlordjabs.co>
To: Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Sandy Huang <hjc@rock-chips.com>,
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
Subject: [PATCH v2] drm/rockchip: vop2: give rk3576 VP2 a primary plane
Date: Sun,  2 Aug 2026 07:35:20 +0900
Message-ID: <20260801223520.8661-1-jack@supremeoverlordjabs.co>
X-Mailer: git-send-email 2.54.0
In-Reply-To: <20260729232450.13797-1-jack@supremeoverlordjabs.co>
References: <20260729232450.13797-1-jack@supremeoverlordjabs.co>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260801_153539_373194_28BC18C6 
X-CRM114-Status: GOOD (  12.62  )
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

On rk3576 the two Cluster windows are the only windows typed
DRM_PLANE_TYPE_PRIMARY, and both have possible_vp_mask = BIT(0) | BIT(1),
so they can only be attached to VP0 or VP1. VP2's only attachable
windows are the Esmart windows, which are all DRM_PLANE_TYPE_OVERLAY.

vop2_create_crtcs() requires every video port a board wires up (an output
endpoint on video_portN) to own a DRM_PLANE_TYPE_PRIMARY plane. On a
board whose DT routes any interface to VP2, no attachable primary plane
is found and probe fails with -ENOENT ("no primary plane for vp 2"),
tearing down the whole VOP2.

Promote Esmart0 to DRM_PLANE_TYPE_PRIMARY. Its possible_vp_mask is
BIT(0) | BIT(2); since vop2_create_crtcs() assigns primaries in window
array order and Cluster0/Cluster1 precede Esmart0, VP0 and VP1 still take
Cluster0/Cluster1, and only VP2 gains Esmart0 as its primary:

  VP0: primary Cluster0
  VP1: primary Cluster1
  VP2: primary Esmart0

Tested on Anbernic RG Vita Pro (rk3576), which routes its DP output to
VP2.

Signed-off-by: Tomonori Nakagawa <jack@supremeoverlordjabs.co>
---
v2: reword the commit message per Chaoyi Chen's review - VP2 is not
    DP-specific; describe the plane topology instead (the two
    PRIMARY-typed Cluster windows are limited to VP0/VP1 by
    possible_vp_mask, so VP2 has no attachable primary). No functional
    change.

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
