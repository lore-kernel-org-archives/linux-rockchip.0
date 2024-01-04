Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2A9B5C47073
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jan 2024 14:40:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v41AMoc+jDhF0L5Wr3MnYGyqWX8e1v5itQn2aAqUVpc=; b=mCUzhc1ZHwnl5R
	pvMhqswXDvMPFym1Xa7c/bkAFpm6oJZvTAp9J6gqCw1L19vLSHwAzt8piZq5oy+kKzfJYlmiwUZgy
	jvtOZxjIlfm9kHA3Evv3RMIg1VCeLCAkCnmkdmKukdrTD+blNtZCeUTqDT7jd271aWFHem+V4cios
	wRWkRMvO+anq+T7h0odm1EDSTNQ1Ee4njNglyU15/vnyEjnN1+Q1PATW03LEarx7eOzjQCWzb4j+/
	894gq9wTYexcMZyp/U26EAbJFug2ZLCA3/+E/pzg01oRQ5odLmrhSBlvrlx+XlABiFUP43P3XExk5
	NTKjcBVSYTyryG6um3jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOt6-00ENUs-39;
	Thu, 04 Jan 2024 14:40:00 +0000
Received: from madrid.collaboradmins.com ([2a00:1098:ed:100::25])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rLOt3-00ENTh-1f;
	Thu, 04 Jan 2024 14:39:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1704379193;
	bh=qc3xakyHE+a32IwuTxDwyhQGwwi7DGoompf3iqlbs2o=;
	h=From:To:Cc:Subject:Date:From;
	b=5lEi+tqYFx+1gRJ81VBYBLnkv9SEtSW55qQj4yA2WZbh1Bw1+Uj+naADvOlQZXKdk
	 64LF9zTsmOgSAGYrSH4zm3/Ci1iLi7Lyih36xo07kjDPs0m/kmPpaDHWZnGatIGjKY
	 mkTZFSpQ1toDi3nD3+MvYPltafvsMd6HYR5QBlFREo8bNOjgBlpIZScfwLjLLX3Vkh
	 PfDzq8OUdtktwHM81P4CGh+TGbJ8VCFG5w/Q/hIgv7fWszGCEUNYzrzDEcJOhxXxEe
	 0UOB463luBT4cEm6iUTdBuJ8tkvG32mVHbthecbI4Colj5LQJ3U2JmCmuw+2Wwb//f
	 S5C2+DyznA+Kw==
Received: from localhost (cola.collaboradmins.com [195.201.22.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by madrid.collaboradmins.com (Postfix) with ESMTPSA id 825D8378200E;
	Thu,  4 Jan 2024 14:39:53 +0000 (UTC)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>
Cc: dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com
Subject: [PATCH] drm/rockchip: vop2: Drop superfluous include
Date: Thu,  4 Jan 2024 16:39:49 +0200
Message-ID: <20240104143951.85219-1-cristian.ciocaltea@collabora.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240104_063957_735115_A3CF7642 
X-CRM114-Status: UNSURE (   9.88  )
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

The rockchip_drm_fb.h header contains just a single function which is
not directly used by the VOP2 driver.  Drop the unnecessary include.

Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 923985d4161b..74c533292bbb 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -35,7 +35,6 @@
 
 #include "rockchip_drm_drv.h"
 #include "rockchip_drm_gem.h"
-#include "rockchip_drm_fb.h"
 #include "rockchip_drm_vop2.h"
 #include "rockchip_rgb.h"
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
