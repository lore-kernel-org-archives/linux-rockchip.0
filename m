Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id DA26AC28B28
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 03:40:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WzolM5lxR7CsgmJwfG+f9zs2D7DA7v17fvz86L3r3ss=; b=FPteMc+pqcQC+q
	HP+xU1+7I/fFr0ssBisK93EsBrKZrZj3LUt6PAt3QgEsW1LPZMqRyHrAl/MbTTZ8gvmFD0RrtKalZ
	VbtlY5qZT3UfW6PGKv9GpPmiSpWR1O+ykKttzKZiK2FmdSVrXpqci///2mgvX/BFSWA/QO6zh4ouy
	zaK/hTN3ZCW/DRwTJFSVCQeZvYMR3V/zslbV9G1fUeJ2N2VMQ590lp4genysoGbU6CxolHzQjkUdr
	hy/6Nmpwvqkh4DbKtt9FvBVQxraI4bo+2x9eeVcz5K+KSFkOOw8L9vw4rwWI4TED/qIWi3Rh+W8uS
	aK0w4aeIhWf1WJ6tVlzQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsvu7-0000000D0zV-0gL8;
	Fri, 14 Mar 2025 03:40:11 +0000
Received: from m16.mail.163.com ([117.135.210.5])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsvtb-0000000D0sx-0Gbb
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 03:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=5S7qD
	G/7DiIxk9A/IfhgNysBrSkCcxry2fy219vj0Rk=; b=PWVa65gWwB60fYUl0DgFM
	qqU4lQK8+asSfFZ3hKaiARZPi1+eiw1qf1BiE1xHX+0QmKhX1WgIziNA6IccxXKf
	7fvF5dmHDPV4asXNl6Td04lu21uBPuSZLokvOcEDVLk1Z9UQeFoBzCYdcHk/Attm
	kjSU0XXixtLdjuFiE5JZCQ=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wC3bE_SpNNn4bIfSw--.42501S5;
	Fri, 14 Mar 2025 11:39:07 +0800 (CST)
From: Andy Yan <andyshrk@163.com>
To: lumag@kernel.org
Cc: mripard@kernel.org,
	neil.armstrong@linaro.org,
	dri-devel@lists.freedesktop.org,
	dianders@chromium.org,
	jani.nikula@intel.com,
	lyude@redhat.com,
	jonathanh@nvidia.com,
	thierry.reding@gmail.com,
	victor.liu@nxp.com,
	rfoss@kernel.org,
	linux-rockchip@lists.infradead.org,
	Andy Yan <andy.yan@rock-chips.com>
Subject: [PATCH 4/5] drm/bridge: anx78xx: Switch to common helpers to power up/down dp link
Date: Fri, 14 Mar 2025 11:38:43 +0800
Message-ID: <20250314033856.538352-4-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250314033856.538352-1-andyshrk@163.com>
References: <20250314033856.538352-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wC3bE_SpNNn4bIfSw--.42501S5
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cr4ktrWfZFyxArWfXr1kZrb_yoW8Ww45pr
	1fKw42yr1xuw13Xr4YkF10gFW5Za4DW395CrW7Cw4vy3WUAFnF9a4IvFyfJ3s8JryrAr10
	qr1DJasrZa409w7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jm388UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0h0QXmfTn9eUNAAAsd
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_203939_510178_711AE11D 
X-CRM114-Status: UNSURE (   9.71  )
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

Use the common dp link power up/down helpers to avoid duplicating code.

Signed-off-by: Andy Yan <andy.yan@rock-chips.com>
---

 .../drm/bridge/analogix/analogix-anx78xx.c    | 30 +------------------
 1 file changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
index f74694bb9c50..3d9daa885eef 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx78xx.c
@@ -656,35 +656,7 @@ static int anx78xx_dp_link_training(struct anx78xx *anx78xx)
 	if (err)
 		return err;
 
-	/*
-	 * Power up the sink (DP_SET_POWER register is only available on DPCD
-	 * v1.1 and later).
-	 */
-	if (anx78xx->dpcd[DP_DPCD_REV] >= 0x11) {
-		err = drm_dp_dpcd_readb(&anx78xx->aux, DP_SET_POWER, &dpcd[0]);
-		if (err < 0) {
-			DRM_ERROR("Failed to read DP_SET_POWER register: %d\n",
-				  err);
-			return err;
-		}
-
-		dpcd[0] &= ~DP_SET_POWER_MASK;
-		dpcd[0] |= DP_SET_POWER_D0;
-
-		err = drm_dp_dpcd_writeb(&anx78xx->aux, DP_SET_POWER, dpcd[0]);
-		if (err < 0) {
-			DRM_ERROR("Failed to power up DisplayPort link: %d\n",
-				  err);
-			return err;
-		}
-
-		/*
-		 * According to the DP 1.1 specification, a "Sink Device must
-		 * exit the power saving state within 1 ms" (Section 2.5.3.1,
-		 * Table 5-52, "Sink Control Field" (register 0x600).
-		 */
-		usleep_range(1000, 2000);
-	}
+	drm_dp_link_power_up(&anx78xx->aux, anx78xx->dpcd[DP_DPCD_REV]);
 
 	/* Possibly enable downspread on the sink */
 	err = regmap_write(anx78xx->map[I2C_IDX_TX_P0],
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
