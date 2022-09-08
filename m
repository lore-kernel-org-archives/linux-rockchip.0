Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B17FC54EE9
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Sep 2022 12:37:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iLPZe4wfHhSFEHfD8gtfS+RxJMrn8ZUwjQ1uJcEK15c=; b=Yo0xysUBZ1cc5v
	fwrhpBVzWrQt+azBliz4PK45QcsVKy2PWwge/iRL1TuZPR/XBiAxgehVlFPqFPFsu7yeDEhel5DQ9
	v9tJmTC8LSLmtHE9+4tUGNVzKxLIkiBwADi2ZDWQqPpFpJ6SzbcGtM5U/oL8hpUfkx4/girw0AXRm
	ycUUBBVkGIypuUrQPiiSdUe7Y0axXpgUd3agIRlyKmYXy24LwkSHu65XJXn1VwzV2BjIxSKz9JPj+
	ACz4R3VDrVe5/mJc/wBtGaKyWuI2XldD+1eIzpolEgXxDjmeP22k4cxj7soS7hXbZXQfZhk6MoecR
	NAV3lKYMHjDaDTrBPy0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWGm5-003LDv-5y; Thu, 08 Sep 2022 12:36:53 +0000
Received: from bg4.exmail.qq.com ([43.154.221.58])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oWGm0-003L0Z-WA
	for linux-rockchip@lists.infradead.org; Thu, 08 Sep 2022 12:36:51 +0000
X-QQ-mid: bizesmtp71t1662640584tam1w07w
Received: from localhost.localdomain ( [182.148.14.0])
	by bizesmtp.qq.com (ESMTP) with 
	id ; Thu, 08 Sep 2022 20:36:22 +0800 (CST)
X-QQ-SSF: 0100000000200090C000B00A0000000
X-QQ-FEAT: NCCf6GxSCjvw1iXhK9qC7rQ2uhCMxKhxNDHZO29CryP9okCDowcQgOAmGUBA0
	305O50IoPtW1SUwsa0tUrHDmdwPFSiTjiHFGZ2RIBqqfxz8+FFrxu7npK2b1+vEefTyrvGk
	eQMq5gOhqz9zxgs2N4WvGcgGzh0bmcDWSsd6/ivDZ2YsUmofRqaxaoPOhVG2ZbHsvFLltRU
	scoTeY4HqGgVng8EYIIcGnJZ99Pidz9egejujj+kuW4Q5KRFSTqmNztLUEMux01Y3G6o+qY
	TJ0KgNpewgfC71emy71V1rqOEkzO3WmYGWLGo1C0WEM0GmuGyJRPXqrdb4D3D9G8a1A7tg5
	ZLorMAQUpaPwMU1mESnLg9SVq/WUMkB90caIGn78FUUK+Y8qRg=
X-QQ-GoodBg: 0
From: wangjianli <wangjianli@cdjrlc.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	airlied@linux.ie,
	daniel@ffwll.ch
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	wangjianli <wangjianli@cdjrlc.com>
Subject: [PATCH] drm/rockchip: fix repeated words in comments
Date: Thu,  8 Sep 2022 20:36:16 +0800
Message-Id: <20220908123616.19195-1-wangjianli@cdjrlc.com>
X-Mailer: git-send-email 2.36.1
MIME-Version: 1.0
X-QQ-SENDSIZE: 520
Feedback-ID: bizesmtp:cdjrlc.com:qybglogicsvr:qybglogicsvr7
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220908_053649_359742_92EC2E09 
X-CRM114-Status: UNSURE (   8.44  )
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

Delete the redundant word 'in'.

Signed-off-by: wangjianli <wangjianli@cdjrlc.com>
---
 drivers/gpu/drm/rockchip/rockchip_drm_vop.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
index bdd48f87d098..fab710910997 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop.c
@@ -1188,7 +1188,7 @@ static bool vop_crtc_mode_fixup(struct drm_crtc *crtc,
 	 *
 	 * Key points:
 	 *
-	 * - DRM works in in kHz.
+	 * - DRM works in kHz.
 	 * - Clock framework works in Hz.
 	 * - Rockchip's clock driver picks the clock rate that is the
 	 *   same _OR LOWER_ than the one requested.
-- 
2.36.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
