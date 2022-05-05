Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2D9CC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu,  5 May 2022 11:11:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=unPA40KVMTXYCPjCFa0qDcNm+LS9f2SUtKQxVIS1u7g=; b=25u0rM/meoYLcc
	hsc+4VQwINS7yKogvTUu1xyHRlF+b7azZIhC8qJ8F8q0m3VpPKLAl4vsgI8f0pQvZpkZaDbukkl++
	rjaLuyQbqH7N3fdbxzubwie5me7khBfV1+iGoBr50Rhdz8PMOrbqZ3PSD2F/vULYJ11nGyj5GXICa
	LUQLjL0i0WntwBCIt/xwvqCsY9AWP+PjC0aZjXsWCapwQPCKXwubcS8Gwli2qMCRXY115DiLry2RI
	fCmyK9CcRDSWhi9ZtiE7x/PSyq7X9BJyN+wClEsvz+NaKopvWah2MGAoH+Avq5bIu38iO0Z7wVl0P
	cNxl4YEa/t/IR5FIbl7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmZNr-00FOb3-NS; Thu, 05 May 2022 11:10:59 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmZNg-00FOWZ-2a; Thu, 05 May 2022 11:10:49 +0000
Received: by mail-wm1-x330.google.com with SMTP id 129so2429949wmz.0;
 Thu, 05 May 2022 04:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7fZe7ZuhkcHkphV8RgWm+aqXThfc6HEs1D3+w7fnW1E=;
 b=SF6NsgMh/aI7dxvNSm4J0F8dduL8PgQFBddrpPStEMC88whboFowO6an+39Xec59dR
 cialT9GTdpTTBlnhpUM3FJSMNcMenDRq9vxT4AhKLE3FnWOfGvhKUzv0XPRX4S9unHyq
 SJn01UIX7/0ppvj+tlyfSojkTUi5skbGGPe9dk8NaZoZdBQX9dYZ530f4HegVXm4Qjce
 4WoZ0Qoa/0mHf/bMvlgoA1/dkJSg9rWKe90SPua56pGHGvs7cDaJzGPwL7fBTageCK/X
 GnR+nS2Nf9KkS2HbQuhuIIJb9/NIPZKcM9hVS65VZ5Z+yNCJMxuXjicKlW+QD0DVUUP3
 RmMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7fZe7ZuhkcHkphV8RgWm+aqXThfc6HEs1D3+w7fnW1E=;
 b=zHJKMyawDICFBwQXtSfsQmxSdVA091EvqW45zJ8VXbiyhRSwkmZAZZCPan0fTOYnJi
 LggEPRNsrgLwBO/JMG6RmUiEi2setk22jw9mn5NWppNKXZSYpH1cGHIc2fY1EKDA9Nnd
 DEbE2MUNJAZwtox7HN8dfDIQouLRb7HYwf+qkP6wHd3m7hpRaESJih17BTdtxjxJwxPg
 uPs1WBGgOwC5yx8T6K056twR5H78k7SF/ZYZn+f1eHOTPnwq9z2XcSacJ0u3pSsJakAr
 0qlyyXMvVVT2OBMZ8R/6ZuIrQQdtTCRZ54xT9QblIdpw+W4WEdJ9hGRiSTCAf2OLlCau
 msvw==
X-Gm-Message-State: AOAM531UXqpQORAjMwbtxOnahgqbXOZUD/RLihxAawQHQ05Z37slMJ9W
 QGe/FQS0+dSJQILf4ZuFGAI=
X-Google-Smtp-Source: ABdhPJx/+pEPKFamTmmbN/plSGNtO72hEEKl6yTB7HoNEk+TwL9rhZ7ovl3RzseVO64gCmaWJwIfCg==
X-Received: by 2002:a05:600c:2045:b0:394:2457:9c36 with SMTP id
 p5-20020a05600c204500b0039424579c36mr4002675wmg.76.1651749045827; 
 Thu, 05 May 2022 04:10:45 -0700 (PDT)
Received: from localhost (cpc154979-craw9-2-0-cust193.16-3.cable.virginm.net.
 [80.193.200.194]) by smtp.gmail.com with ESMTPSA id
 z7-20020a5d4d07000000b0020c5253d920sm1122934wrt.108.2022.05.05.04.10.45
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 05 May 2022 04:10:45 -0700 (PDT)
From: Colin Ian King <colin.i.king@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
Cc: kernel-janitors@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH][next] drm/rockchip: Fix spelling mistake "aligened" ->
 "aligned"
Date: Thu,  5 May 2022 12:10:44 +0100
Message-Id: <20220505111044.374174-1-colin.i.king@gmail.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_041048_177466_140B2299 
X-CRM114-Status: GOOD (  10.87  )
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

There is a spelling mistake in a drm_err message. Fix it.

Signed-off-by: Colin Ian King <colin.i.king@gmail.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 0b49fed16535..04e8e22a8640 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -1202,7 +1202,7 @@ static void vop2_plane_atomic_update(struct drm_plane *plane,
 		 */
 		stride = (fb->pitches[0] << 3) / bpp;
 		if ((stride & 0x3f) && (xmirror || rotate_90 || rotate_270))
-			drm_err(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligened\n",
+			drm_err(vop2->drm, "vp%d %s stride[%d] not 64 pixel aligned\n",
 				vp->id, win->data->name, stride);
 
 		rb_swap = vop2_afbc_rb_swap(fb->format->format);
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
