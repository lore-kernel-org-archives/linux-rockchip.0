Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CB427C433EF
	for <linux-rockchip@archiver.kernel.org>; Wed, 15 Dec 2021 18:14:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=CDubyr9kYfSC0xU1jM5XZZCR6/Ed+T7XEl/Up3Ux+8g=; b=3n9bSNUF3V0Zmu
	WFhuoOL12agO6QNppBirHs4p0yA82lxwcprgo7RzK4TTH6I2xeuQjzCDi/0q4TE6rt+dNQ/JZge/F
	jlUOFX5eJ3E/IskXJ0ZV4+F9Am+Zzj5vXEqArFGAV7ajyT0xWfju3TMTpzPUbT9FQgORZ1XEc1C+9
	zD7uRf4wc0T1ET+tQnFWSBDmA4LwxWHWOqZHCCXfkB/YK5WQc3bNM85Q+1x+oPLAWTz2n9ovfuyH/
	pxJKBwmfnrAAF0jm5MmR5qa9R/zMHewXcUlfSumQEOe21QvH3DiSy1tbUbNhWz8UJlYJ+QhIhC8gc
	OBA/TdDkDnXBcc2AtjWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mxYnS-002DOi-Ns; Wed, 15 Dec 2021 18:14:34 +0000
Received: from [2001:8b0:1628:5005::111] (helo=metanate.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mxYn9-002DG0-NI; Wed, 15 Dec 2021 18:14:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=metanate.com; s=stronger; h=Content-Transfer-Encoding:Message-Id:Date:
 Subject:Cc:To:From:Content-Type:Reply-To:Content-ID:Content-Description:
 In-Reply-To:References; bh=wsq8cUBFjzgYgnMDS2RJHFOuvoD7tYl9ctoDcV6S2XU=; b=ma
 VHM7jnW3jr4hNhZHkDvbhYleitth2sQiAk9MQr4S21BANoKCUezlSV2fxfYr3Bxz+Lb3ETG6oFk76
 HRmLtccR3HooekJURkDGWIw6c+GSNADF8zBWZra7N9Mdxx9SgruBVu4nTIsaFBwdzm8gLPAdnqiLm
 PQeIyY69c7Zvex5/fSBnxfk02Zppy+OUgrQcIvmQyYJwFXCdlaOeO7G6mmaeOxsznh1Mp8tI+K8QV
 mh7e4n5xbv0n3NVvzkc7IyxmESBXtYyv14G8vcQVtqkN77EsAt2QP3Zg331QvenUtq8w+53T5+D/H
 1RueANeVYxJFgafLegyqTDY2wkvs41UQ==;
Received: from [81.174.171.191] (helo=donbot.metanate.com)
 by email.metanate.com with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
 (Exim 4.93) (envelope-from <john@metanate.com>)
 id 1mxYmz-0001lA-Au; Wed, 15 Dec 2021 18:14:05 +0000
From: John Keeping <john@metanate.com>
To: dri-devel@lists.freedesktop.org
Cc: John Keeping <john@metanate.com>, Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] drm/rockchip: vop: duplicate subclassed state variables
Date: Wed, 15 Dec 2021 18:13:58 +0000
Message-Id: <20211215181358.2950649-1-john@metanate.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-Authenticated: YES
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211215_101415_791641_4F9D2378 
X-CRM114-Status: GOOD (  11.78  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

Duplicating the CRTC state should copy all of the fields in the
subclassed state as well as the base state.  Switch to kmemdup to cover
all of these (which are all simple variables).

Most of the state variables are only used for .atomic_enable where they
will have been set in the initial check, and enable_afbc is always set
in the preceding .atomic_check, so the only issue here is inspecting the
state later when these field end up no longer reflecting what has been
programmed in the hardware.

Signed-off-by: John Keeping <john@metanate.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index f3975905599b..0efd79be8f3b 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1552,7 +1552,7 @@ static struct drm_crtc_state *vop_crtc_duplicate_state(struct drm_crtc *crtc)
 {
 	struct rockchip_crtc_state *rockchip_state;
 
-	rockchip_state = kzalloc(sizeof(*rockchip_state), GFP_KERNEL);
+	rockchip_state = kmemdup(crtc->state, sizeof(*rockchip_state), GFP_KERNEL);
 	if (!rockchip_state)
 		return NULL;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
