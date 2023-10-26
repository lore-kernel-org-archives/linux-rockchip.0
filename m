Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C5C99C25B6B
	for <linux-rockchip@archiver.kernel.org>; Thu, 26 Oct 2023 19:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xDQtYuc98h0Ib63M3ZMG7tn1O8T4dbYoKjvCFTcFXyg=; b=Yxvl5CnhEbIe2E
	PwzthxJBHjmUQEe9CdSu0efswjofqaiRGXjNZQWyfkO58vK3FVfytiwxlEOZNUys7JD3ncsWFIPab
	s+dzPkNuEf7EjysW3PY0TIQ3laQS8YNWYbobIeLgrttQcPnMPKE0FwWmpAPBiwkUcJ9xo1qdwqD+l
	OhKiYNEte6Cf53pgxQaNvFedkgyATTTJinrpdfGdq5g+PenR3DEPtM+sBeCltZGaumkNvrjFhVbfx
	NbsTVjEsEVm188E5kBrzQKE9kdIepJrhtdYJf4zuSevYxGGMep/VPLIHITJPMFgbCcw4GsPYd2XJr
	a0Ns8q14IBMDoDzG+ekA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qw5pR-00F2mo-0G;
	Thu, 26 Oct 2023 19:15:37 +0000
Received: from smtp.forwardemail.net ([167.172.40.54])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qw5pN-00F2kE-05;
	Thu, 26 Oct 2023 19:15:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: Message-ID: Date: Subject: Cc:
 To: From; q=dns/txt; s=fe-e1b5cab7be; t=1698347709;
 bh=H5xROb9Mq7jaJ0zsDNHjRXkPAmzwRa/v5qsxfjL/qww=;
 b=JugZH+SXup/DsE/dVZgeHKhyg4eX7mPMlLki3IZih3gTapClZ4jt77etp4Si5UEH/A3BqpENj
 OidNxRWO5888fxv9dQVt3lHoMoHkicjnP3+WarXPkrvMGqPDbfijDNjjCuwUG+jH3Gtp5LzsdiB
 HtAi807oEu4GkGZLVanKWqmQW3XJdGhpy2Fsz7xLJxyt1ZyHGZttesqIk3zr8EzJtICJZdMXiH0
 LMtg5CtpYFhhnEdSwe9pesBSvcnNpY5UHbbJcw4H+dyrdKjLyTH6ys5t/QkRa8k8hyUtkfA5O9J
 8jZKfwKBY+4y+/n7DHEA2wfVrWFd//nQEX5X0AvJC3Rg==
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, Tomasz
 Figa <tfiga@chromium.org>
Cc: Christopher Obbard <chris.obbard@collabora.com>, Andy Yan
 <andy.yan@rock-chips.com>, Jonas Karlman <jonas@kwiboo.se>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] drm/rockchip: vop: Fix color for RGB888/BGR888 format on VOP full
Date: Thu, 26 Oct 2023 19:14:58 +0000
Message-ID: <20231026191500.2994225-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.42.0
MIME-Version: 1.0
X-Report-Abuse-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-ForwardEmail-Version: 0.4.40
X-ForwardEmail-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 167.172.40.54
X-ForwardEmail-ID: 653ababbbb49096ed18860ca
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231026_121533_996779_D2FBF66A 
X-CRM114-Status: GOOD (  10.34  )
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

Use of DRM_FORMAT_RGB888 and DRM_FORMAT_BGR888 on e.g. RK3288, RK3328
and RK3399 result in wrong colors being displayed.

The issue can be observed using modetest:

  modetest -s <connector_id>@<crtc_id>:1920x1080-60@RG24
  modetest -s <connector_id>@<crtc_id>:1920x1080-60@BG24

Vendor 4.4 kernel apply an inverted rb swap for these formats on VOP
full framework (IP version 3.x) compared to VOP little framework (2.x).

Fix colors by applying different rb swap for VOP full framework (3.x)
and VOP little framework (2.x) similar to vendor 4.4 kernel.

Fixes: 85a359f25388 ("drm/rockchip: Add BGR formats to VOP")
Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
Changes in v2:
- Add comment about different rb swap for IP version 3.x and 2.x
- Add fixes tag

 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 14 +++++++++++---
 1 file changed, 11 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index b3d0b6ae9294..ed2ed25959a2 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -247,14 +247,22 @@ static inline void vop_cfg_done(struct vop *vop)
 	VOP_REG_SET(vop, common, cfg_done, 1);
 }
 
-static bool has_rb_swapped(uint32_t format)
+static bool has_rb_swapped(uint32_t version, uint32_t format)
 {
 	switch (format) {
 	case DRM_FORMAT_XBGR8888:
 	case DRM_FORMAT_ABGR8888:
-	case DRM_FORMAT_BGR888:
 	case DRM_FORMAT_BGR565:
 		return true;
+	/*
+	 * full framework (IP version 3.x) only need rb swapped for RGB888 and
+	 * little framework (IP version 2.x) only need rb swapped for BGR888,
+	 * check for 3.x to also only rb swap BGR888 for unknown vop version
+	 */
+	case DRM_FORMAT_RGB888:
+		return VOP_MAJOR(version) == 3;
+	case DRM_FORMAT_BGR888:
+		return VOP_MAJOR(version) != 3;
 	default:
 		return false;
 	}
@@ -1035,7 +1043,7 @@ static void vop_plane_atomic_update(struct drm_plane *plane,
 	VOP_WIN_SET(vop, win, dsp_info, dsp_info);
 	VOP_WIN_SET(vop, win, dsp_st, dsp_st);
 
-	rb_swap = has_rb_swapped(fb->format->format);
+	rb_swap = has_rb_swapped(vop->data->version, fb->format->format);
 	VOP_WIN_SET(vop, win, rb_swap, rb_swap);
 
 	/*
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
