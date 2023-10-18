Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1A29CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 09:42:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kECGeZ4aP7daLjlSXoFd3YBRs1Arpzfl6guNrZvfvPA=; b=on2V/c3VGszDpI
	wvhbM3KwbieDlVXUhtTYBqixumGpYThKrb6nouYpqNPjrZ0y8aC5P3HCxtpKVGXYSTGMegpXqd95f
	pup45RJeH/y+8X0qlHQwcPWHe2hLAcsriI/AsQ4+ChTCvExrj6lSrW+RdrWzFCVxM6nU98YGcO7je
	Dw/LsswPPxezNH3qUV/47b0KPyl2YXz+mjO/s3WwAlEtFdD2arYqZqllKZkF0Sc6pKdeSrzqH2a7z
	RHDyoakeSZ/VE7MSOSfl15JnsiJ/UPM0hSJMIf77s85i2egi31QUyybHSjQSrZl9NYCvlm2+VHRA1
	RQ6y5GT5js7IwXkSVrQQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt34d-00EIcZ-1z;
	Wed, 18 Oct 2023 09:42:43 +0000
Received: from m15.mail.163.com ([45.254.50.219])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt34a-00EIbC-2a
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 09:42:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=D8orW
	aZoftxAaMcKBCJtMoDO5cmw6kme9A0KiSp4QR8=; b=Pw7npVl3Cx/3BmSj4FnHH
	yFO5ZUEcDQwzS3Upd3LpKCVEXKxtR1PpwWvWTlFuatK+fOMlnkyGSmT+Fm7QGhke
	sU1cytA3jMulrAfPXY8WX4jC90usXZLtjqutMWToFWZmCGqRJWPIAxKirSiAtUDF
	3OqrB8FWx6NK1Z/jf4JKfw=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-1 (Coremail) with SMTP id _____wD3fzp3qC9lkJuJAw--.52842S2;
	Wed, 18 Oct 2023 17:42:19 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: linux-rockchip@lists.infradead.org,
	dri-devel@lists.freedesktop.org,
	heiko@sntech.de,
	jonas@kwiboo.se
Cc: s.hauer@pengutronix.de,
	hjc@rock-chips.com,
	sebastian.reichel@collabora.com,
	sjoerd.simons@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH v3 1/4] drm/rockchip: fix vop format bpp calculation
Date: Wed, 18 Oct 2023 17:42:10 +0800
Message-Id: <20231018094210.2475771-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018094122.2475668-1-andyshrk@163.com>
References: <20231018094122.2475668-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wD3fzp3qC9lkJuJAw--.52842S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7urW3tF13uFW7AF1DZFyrJFb_yoW8Zry7pF
	WUAr90gr45KFWjgFn7JaykZFWakwnxCay2grW7G3s8KF13KFyDAw1akrWUAr98GFyxur1a
	yFsxKrWUCa12k3DanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jSWlkUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiEB8NXl8YL0Q5UgAAsb
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_024241_254362_A443BF46 
X-CRM114-Status: UNSURE (   9.21  )
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

We can't rely on cpp for bpp calculation as the cpp of
some formats(DRM_FORMAT_YUV420_8BIT/10BIT, etc) is zero.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 18 ++++++++++++++++--
 1 file changed, 16 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 57c05c6b246c..93b27b03d479 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -282,6 +282,20 @@ static void vop2_win_disable(struct vop2_win *win)
 		vop2_win_write(win, VOP2_WIN_CLUSTER_ENABLE, 0);
 }
 
+static u32 vop2_get_bpp(const struct drm_format_info *format)
+{
+	switch (format->format) {
+	case DRM_FORMAT_YUV420_8BIT:
+		return 12;
+	case DRM_FORMAT_YUV420_10BIT:
+		return 15;
+	case DRM_FORMAT_VUY101010:
+		return 30;
+	default:
+		return drm_format_info_bpp(format, 0);
+	}
+}
+
 static enum vop2_data_format vop2_convert_format(u32 format)
 {
 	switch (format) {
@@ -482,7 +496,7 @@ static u32 vop2_afbc_transform_offset(struct drm_plane_state *pstate,
 {
 	struct drm_rect *src = &pstate->src;
 	struct drm_framebuffer *fb = pstate->fb;
-	u32 bpp = fb->format->cpp[0] * 8;
+	u32 bpp = vop2_get_bpp(fb->format);
 	u32 vir_width = (fb->pitches[0] << 3) / bpp;
 	u32 width = drm_rect_width(src) >> 16;
 	u32 height = drm_rect_height(src) >> 16;
@@ -1080,7 +1094,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 	struct drm_display_mode *adjusted_mode = &crtc->state->adjusted_mode;
 	struct vop2 *vop2 = win->vop2;
 	struct drm_framebuffer *fb = pstate->fb;
-	u32 bpp = fb->format->cpp[0] * 8;
+	u32 bpp = vop2_get_bpp(fb->format);
 	u32 actual_w, actual_h, dsp_w, dsp_h;
 	u32 act_info, dsp_info;
 	u32 format;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
