Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8B295CDB47E
	for <linux-rockchip@archiver.kernel.org>; Wed, 18 Oct 2023 09:43:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RjxIhpTY/9LRRnTuo28Rg7uKtj1PAIX20fce1UGZFqo=; b=fN7gvvCQfY9Gm2
	eKUXTMoSrU6oSAq8/3dgiTzdeAZpFs/eBF33FT6UvRFdh3bbLkHk5KdSISrRdt0CgbT+fjpdffzuu
	+cGcLxmz7M24pG8f5rsoNHfnoQXDakQWXunzbAeYBdGQ5W49ORIunvXd40KHIUzD//LWPiWKTHbha
	VX3kreDmJvNiMYRicNM8QH7QEdqvOO+6LTxHLav7JEwBPK2fOZxrklFovnsa5GeqpuwVPZ7UMGaUu
	tNwaj4SBzjvBBMjRnS0yBZzL3yQOiV+GdVgTZXQU2LgIyGHguRdVfZHrzJwVThcAYNcuaCj51EkHc
	3et7Muo9M6DjjdM7OdbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt34v-00EIgP-1X;
	Wed, 18 Oct 2023 09:43:01 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qt34r-00EIfG-2t
	for linux-rockchip@lists.infradead.org;
	Wed, 18 Oct 2023 09:42:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=gWcp7
	Ck1o8pAhe9Dgb62+cMiM53lM5GE6Vwy41G9ck0=; b=lkWgbNwNkcRyvMsLABzPu
	vFMO5SSBjgtH/f6mh/9tgO3mfQhP49dYM60y3GyE/BddEhiBGM9AOIv703I5M67a
	s3zmBCIcSpgWpJ0YGFaqzSJxMQ/z9XNQPZDCq6kZ9IKcldq+2QHeoKmYnqULoLp+
	SJk4xOvR1wVUMMXln1xmKQ=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g2-3 (Coremail) with SMTP id _____wAHbw+QqC9lM2uTAw--.3018S2;
	Wed, 18 Oct 2023 17:42:43 +0800 (CST)
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
Subject: [PATCH v3 2/4] drm/rockchip: remove the unsupported format of vop2 cluster window
Date: Wed, 18 Oct 2023 17:42:39 +0800
Message-Id: <20231018094239.2475851-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231018094122.2475668-1-andyshrk@163.com>
References: <20231018094122.2475668-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wAHbw+QqC9lM2uTAw--.3018S2
X-Coremail-Antispam: 1Uf129KBjvJXoWxCFy3XFy7KF1fXrWxuFyDWrg_yoW5Cr4xpr
	W3ZrZrZrW0kF10qFWDJryFyF4fC3ZFkayIvwsakwn7uFyjkFyDW3ZFkFy8Ar93KryxCrWI
	yF43JrW5Zr48trJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jS-e5UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiOxUNXmC5n72JFwAAsY
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231018_024258_315950_BB9C8577 
X-CRM114-Status: UNSURE (   9.64  )
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

The cluster windows on vop2 doesn't support linear yuv
format(NV12/16/24), it only support afbc based yuv
format(DRM_FORMAT_YUV420_8BIT/10BIT), which will be
added in next patch.

Fixes: 604be85547ce ("drm/rockchip: Add VOP2 driver")
Signed-off-by: Andy Yan <andy.yan@rock-chips.com>

---

Changes in v3:
- make it a split patch

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 24 +-------------------
 drivers/gpu/drm/rockchip/rockchip_vop2_reg.c |  3 ---
 2 files changed, 1 insertion(+), 26 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 93b27b03d479..8289ddc95bee 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -342,10 +342,6 @@ static enum vop2_afbc_format vop2_convert_afbc_format(u32 format)
 	case DRM_FORMAT_RGB565:
 	case DRM_FORMAT_BGR565:
 		return VOP2_AFBC_FMT_RGB565;
-	case DRM_FORMAT_NV12:
-		return VOP2_AFBC_FMT_YUV420;
-	case DRM_FORMAT_NV16:
-		return VOP2_AFBC_FMT_YUV422;
 	default:
 		return VOP2_AFBC_FMT_INVALID;
 	}
@@ -366,25 +362,9 @@ static bool vop2_win_rb_swap(u32 format)
 	}
 }
 
-static bool vop2_afbc_rb_swap(u32 format)
-{
-	switch (format) {
-	case DRM_FORMAT_NV24:
-		return true;
-	default:
-		return false;
-	}
-}
-
 static bool vop2_afbc_uv_swap(u32 format)
 {
-	switch (format) {
-	case DRM_FORMAT_NV12:
-	case DRM_FORMAT_NV16:
-		return true;
-	default:
-		return false;
-	}
+	return false;
 }
 
 static bool vop2_win_uv_swap(u32 format)
@@ -1232,7 +1212,6 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 			drm_err(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligned\n",
 				vp->id, win->data->name, stride);
 
-		rb_swap = vop2_afbc_rb_swap(fb->format->format);
 		uv_swap = vop2_afbc_uv_swap(fb->format->format);
 		/*
 		 * This is a workaround for crazy IC design, Cluster
@@ -1249,7 +1228,6 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		if (vop2_cluster_window(win))
 			vop2_win_write(win, VOP2_WIN_AFBC_ENABLE, 1);
 		vop2_win_write(win, VOP2_WIN_AFBC_FORMAT, afbc_format);
-		vop2_win_write(win, VOP2_WIN_AFBC_RB_SWAP, rb_swap);
 		vop2_win_write(win, VOP2_WIN_AFBC_UV_SWAP, uv_swap);
 		vop2_win_write(win, VOP2_WIN_AFBC_AUTO_GATING_EN, 0);
 		vop2_win_write(win, VOP2_WIN_AFBC_BLOCK_SPLIT_EN, 0);
diff --git a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
index 62b573f282a7..b5e59dd34325 100644
--- a/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
+++ b/drivers/gpu/drm/rockchip/rockchip_vop2_reg.c
@@ -24,9 +24,6 @@ static const uint32_t formats_win_full_10bit[] = {
 	DRM_FORMAT_BGR888,
 	DRM_FORMAT_RGB565,
 	DRM_FORMAT_BGR565,
-	DRM_FORMAT_NV12,
-	DRM_FORMAT_NV16,
-	DRM_FORMAT_NV24,
 };
 
 static const uint32_t formats_win_full_10bit_yuyv[] = {
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
