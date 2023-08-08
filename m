Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 201F7C001B0
	for <linux-rockchip@archiver.kernel.org>; Tue,  8 Aug 2023 10:44:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=AZTFxgseNWihzkuPakKF0F4zGDyL823hhvV7gqUdvt4=; b=C/b7LSUspxpqFA
	xyCWO/V3mi5paToEfjbtQFup2kxD6043V+nNNvt17gai8Uw+gnTk836na0CvGBTnGHppkYIetzOY7
	/81Xn4r2F1IcZoFuR5jJpZL4T6YT1LN2FVnSAsgcBedzmMwXRtd5VvWnOQpsMsxxcvaZtgEin+60t
	qn/pR1S4btqNXIUZtktfxDj+KiMkUX99FwZo8KJLtpmXWbGXdQjUoMC/pcDCwc5Yw8CYrq5lITOhw
	740gk0Q62snXRfP6quK30DFFLFbgK8TbLe1D5iwaBHvTzOEHzce2AcOebRM/+bdtVzaSyeBwpn08Z
	bLjwapJkV11JQ7xYQe+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qTKCH-002KTI-0H;
	Tue, 08 Aug 2023 10:44:17 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTKCF-002KRH-1d
	for linux-rockchip@bombadil.infradead.org;
	Tue, 08 Aug 2023 10:44:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=OOcVy0gbQaufF0sp/LMQlOIqST+bH3DNbQ6ygDNrv18=; b=XXUuiaZBW3+HCmS/T/ZBixLnMT
	mPuLm7d9w0l1nRP9xEQUv/YGZLFZ2CBhwskkFUmu3TeKDUFNtCGAjy39UegzPCcTQ12I8tK+R/TEf
	pEmN5KtE0etUt5wxLyQ9d7SeYNYrRmf9ViqNw8sf1cT8rvppsuPR0UjjYCs9aNc23IEeGGGqCrCUv
	QXvINs6NqLoa5X9Sjr/+lgo9QZfgmC9QyE0mmj/kpsILRqud82eMlQ3JJIV/s+S5Lt11R8nWNiwkp
	ZElHScoCwPSSgPyzg4r3zeynACc/KAF5ClqFEPgNbBO3Ni1xTgFenpIZsIsaL0kPmTxzYt6SLQd58
	EHUxrDAQ==;
Received: from madras.collabora.co.uk ([46.235.227.172])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qTKCB-004j1S-1I
	for linux-rockchip@lists.infradead.org;
	Tue, 08 Aug 2023 10:44:13 +0000
Received: from strictly.printclub (unknown [5.151.124.206])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: daniels)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id BF3DB6607207;
	Tue,  8 Aug 2023 11:44:08 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1691491448;
	bh=85vuuRF0tMoEaLhW9I6v3ofumqZOtQ5z2vb4Z7G70ZM=;
	h=From:To:Cc:Subject:Date:From;
	b=DuCREdww2HMkOcLK/te3ska11xe7qdyM48ex64O+vvAXaScULhuPI2ZxLU1nGISyP
	 PWclZTevzR5M/pi9ZSx3c+ZhPfsi6sc7+VPLNW7NjHPhPyhZcj/SEo4w0QQe7Qee6x
	 p98/mFMhJCpe4oTX6Rm04R2zuEtneMpPssYg2ECkftdRBMoD3RaLa6pvTI/ib7zo7a
	 blV9aS7IJvHKBCkOAfQHdgAdH7J3MFoihfrnpeXyKczwBQbuxV8R48AZOqGSRIUWJr
	 WQY3XzFZSPWN5z0eR37enmt8dEQQgFb9XTkoiP7ZfoFoIvzHH6lbkif/gZHa8jlFxv
	 dsfE5edhFAjLg==
From: Daniel Stone <daniels@collabora.com>
To: dri-devel@lists.freedesktop.org
Cc: linux-rockchip@lists.infradead.org,
	hjc@rock-chips.com,
	heiko@sntech.de
Subject: [PATCH] drm/rockchip: Don't spam logs in atomic check
Date: Tue,  8 Aug 2023 11:44:05 +0100
Message-ID: <20230808104405.522493-1-daniels@collabora.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230808_114411_955577_39F71CB0 
X-CRM114-Status: UNSURE (   9.78  )
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

Userspace should not be able to trigger DRM_ERROR messages to spam the
logs; especially not through atomic commit parameters which are
completely legitimate for userspace to attempt.

Signed-off-by: Daniel Stone <daniels@collabora.com>
Fixes: 7707f7227f09 ("drm/rockchip: Add support for afbc")
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 17 +++++++++--------
 1 file changed, 9 insertions(+), 8 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index 86fd9f51c692..14320bc73e5b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -832,12 +832,12 @@ static int vop_plane_atomic_check(struct drm_plane *plane,
 	 * need align with 2 pixel.
 	 */
 	if (fb->format->is_yuv && ((new_plane_state->src.x1 >> 16) % 2)) {
-		DRM_ERROR("Invalid Source: Yuv format not support odd xpos\n");
+		DRM_DEBUG_KMS("Invalid Source: Yuv format not support odd xpos\n");
 		return -EINVAL;
 	}
 
 	if (fb->format->is_yuv && new_plane_state->rotation & DRM_MODE_REFLECT_Y) {
-		DRM_ERROR("Invalid Source: Yuv format does not support this rotation\n");
+		DRM_DEBUG_KMS("Invalid Source: Yuv format does not support this rotation\n");
 		return -EINVAL;
 	}
 
@@ -845,7 +845,7 @@ static int vop_plane_atomic_check(struct drm_plane *plane,
 		struct vop *vop = to_vop(crtc);
 
 		if (!vop->data->afbc) {
-			DRM_ERROR("vop does not support AFBC\n");
+			DRM_DEBUG_KMS("vop does not support AFBC\n");
 			return -EINVAL;
 		}
 
@@ -854,15 +854,16 @@ static int vop_plane_atomic_check(struct drm_plane *plane,
 			return ret;
 
 		if (new_plane_state->src.x1 || new_plane_state->src.y1) {
-			DRM_ERROR("AFBC does not support offset display, xpos=%d, ypos=%d, offset=%d\n",
-				  new_plane_state->src.x1,
-				  new_plane_state->src.y1, fb->offsets[0]);
+			DRM_DEBUG_KMS("AFBC does not support offset display, " \
+				      "xpos=%d, ypos=%d, offset=%d\n",
+				      new_plane_state->src.x1, new_plane_state->src.y1,
+				      fb->offsets[0]);
 			return -EINVAL;
 		}
 
 		if (new_plane_state->rotation && new_plane_state->rotation != DRM_MODE_ROTATE_0) {
-			DRM_ERROR("No rotation support in AFBC, rotation=%d\n",
-				  new_plane_state->rotation);
+			DRM_DEBUG_KMS("No rotation support in AFBC, rotation=%d\n",
+				      new_plane_state->rotation);
 			return -EINVAL;
 		}
 	}
-- 
2.41.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
