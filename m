Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 602BEC4167B
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Nov 2023 12:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=R1UTEhV08JiSEpwH/wrbhVhdvV8L+EUBrETQr9uSDo0=; b=Eqjy7dDyYsPxlk
	IquiHZRbVLQwMXOgMdgiWjW12jdEZn47/w58qn2i9TMLrtVuc9iIXxTq4V2m+52uDrDZzHKj7rL+9
	OOOcXB3ri1R8ez11INuAsXyiDouV8E0Nj0yJnZQbjB78meLkGLRF6tn/Eo9DAS32wyisipy1rvgLG
	uYSsQRUVDE2FOF5OBDQCvNyqPA4of64ushPqjOGDNnXXlou3ANNne+ObmaiyLI+Q71Nk6kC1uzYbs
	UJdoP9rT2yJFP36FCjNkizMAuZK6k7Ooe0VpR+UvIW390L76DE6dh4N3dY6iDX9WVuntGsivlP/di
	6XCH/JhVRXIL3NFCX2Wg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8g4c-00ApvN-1b;
	Thu, 30 Nov 2023 12:23:18 +0000
Received: from m15.mail.163.com ([45.254.50.220])
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r8g4Z-00Aptu-0N
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Nov 2023 12:23:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-Id:MIME-Version; bh=pekM+
	FGyDCtPmb0jWNTPyTz93vTz66hJl88mKNFM3+k=; b=pj5gQtgLsemcTArQLPlyv
	gKTImVy8ZTePfOvGj1fJPJrYPjA1ccyf8Bu0xCLeebn+OFcQJ8lLjkotfjVagoOo
	T4g7PRuQO8SESsCGQ3uB5PuWUtt9xlPbgJEkORFURA9R/UW7U/CJ7Cbj+nFHvLpS
	CvxM0apXWl4eJJiYYoJoqk=
Received: from ProDesk.. (unknown [58.22.7.114])
	by zwqz-smtp-mta-g0-2 (Coremail) with SMTP id _____wCXP+Wcfmhl9jhZCg--.50702S2;
	Thu, 30 Nov 2023 20:22:56 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: heiko@sntech.de
Cc: hjc@rock-chips.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	devicetree@vger.kernel.org,
	sebastian.reichel@collabora.com,
	kever.yang@rock-chips.com,
	chris.obbard@collabora.com,
	Andy Yan <andy.yan@rock-chips.com>,
	Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v3 02/14] Revert "drm/rockchip: vop2: Use regcache_sync() to fix suspend/resume"
Date: Thu, 30 Nov 2023 20:22:51 +0800
Message-Id: <20231130122251.12835-1-andyshrk@163.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231130122001.12474-1-andyshrk@163.com>
References: <20231130122001.12474-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wCXP+Wcfmhl9jhZCg--.50702S2
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cw1rGr1xXF4xCFy7tr45trb_yoW8Cw4UpF
	W7AryYqr4IgFWjqw1kJFWUZFWYyrsFyayfCrn7G3WS9rnxKrnakrn8GF15ZFn8Ar1xur42
	yFn7ta47CFW7uFJanT9S1TB71UUUUUUqnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jo4E_UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBnA44XlghltxCMAAAs1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231130_042315_538893_082EFBA5 
X-CRM114-Status: GOOD (  13.09  )
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

This reverts commit b63a553e8f5aa6574eeb535a551817a93c426d8c.

regcache_sync will try to reload the configuration in regcache to
hardware, but the registers of 4 Cluster windows and Esmart1/2/3 on
the upcoming rk3588 can not be set successfully before internal PD
power on.

Also it's better to keep the hardware register as it is before we really
enable it.

So let's revert this version, and keep the first version:
commit afa965a45e01 ("drm/rockchip: vop2: fix suspend/resume")

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
---

(no changes since v1)

 drivers/gpu/drm/rockchip/rockchip_drm_vop2.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
index 312da5783362..57784d0a22a6 100644
--- a/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
+++ b/drivers/gpu/drm/rockchip/rockchip_drm_vop2.c
@@ -217,6 +217,8 @@ struct vop2 {
 	struct vop2_win win[];
 };
 
+static const struct regmap_config vop2_regmap_config;
+
 static struct vop2_video_port *to_vop2_video_port(struct drm_crtc *crtc)
 {
 	return container_of(crtc, struct vop2_video_port, crtc);
@@ -883,7 +885,11 @@ static void vop2_enable(struct vop2 *vop2)
 		return;
 	}
 
-	regcache_sync(vop2->map);
+	ret = regmap_reinit_cache(vop2->map, &vop2_regmap_config);
+	if (ret) {
+		drm_err(vop2->drm, "failed to reinit cache: %d\n", ret);
+		return;
+	}
 
 	if (vop2->data->soc_id == 3566)
 		vop2_writel(vop2, RK3568_OTP_WIN_EN, 1);
@@ -913,8 +919,6 @@ static void vop2_disable(struct vop2 *vop2)
 
 	pm_runtime_put_sync(vop2->dev);
 
-	regcache_mark_dirty(vop2->map);
-
 	clk_disable_unprepare(vop2->aclk);
 	clk_disable_unprepare(vop2->hclk);
 }
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
