Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 8946AC282EC
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 06:35:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lzqrdHXCwKWlnHTxN8jn9CKPTJNPXetvZwTU+iw9e4Q=; b=mpRB0Hxa2Q1zui
	Wx8IczVtxlROCzoFCnZqa0xXSaj5LgA9mP3jIo37A2MXk1jmJV/rokEYCJhX+8Whr74R4nugTnmgL
	N/vqH5g2c9ezzVXLUaJ5h8YHRtL+e+jWAQf1MaTbf3al2TJdheho2sxBPliS1+AO9VhIZXIwjBd5H
	1TH0/TAoEZcNfWT742mqZK8wyACEWmBv1xy8y+kW7b9VKMpHZTnFycq0vat0c0u7VUzK4a82ctdu+
	ZL1XH+QSXX+nW+TllSkLObnjFTuRWEq9wMei4bcEkbVY5WY7H1FAcvZ8sa1zirBDyv0/oj9LWnb6i
	K1weL6AVB2uNexpoUqPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuQY0-00000004q7S-38Om;
	Tue, 18 Mar 2025 06:35:32 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuQXx-00000004q6O-1qrk
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Mar 2025 06:35:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=rPBTU
	KbnNgaTouZNcb18EqWega5P/0Ty2iUC9/ZbyI4=; b=nOU4A+w9e3xPUle5k6gVe
	2Nq0w09lLfcCAG/oY3Q8JG3WogxWq7bzTzrsWO8I/3qtz9Ylahej3jDVzeVQhucr
	68HLOWRHmHnXt/4Z/RRhm8SuGBQJ/+7tPRanw9Og0K0NUtQcl86hrTb9PNTiTEC/
	UCJiJJKc1K62kr+8OGAMBA=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wDnnuYSFNlnP+WyAA--.9231S5;
	Tue, 18 Mar 2025 14:35:04 +0800 (CST)
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
	linux-tegra@vger.kernel.org,
	Andy Yan <andy.yan@rock-chips.com>,
	Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v2 4/5] drm/bridge: anx78xx: Switch to common helpers to power up/down dp link
Date: Tue, 18 Mar 2025 14:34:38 +0800
Message-ID: <20250318063452.4983-4-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250318063452.4983-1-andyshrk@163.com>
References: <20250318063452.4983-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnnuYSFNlnP+WyAA--.9231S5
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cr4ktrW5tF1kur4rZryUAwb_yoW8AFW5pr
	1fKw42vr1xuw13Xr4YkF40gFW5Za4DW395CrW7Gw4vy3WUAFnF9a4IvFyfGas8Jr95AF10
	qr1DAasrZa409w7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jlXd8UUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0hMUXmfZEI52+wAAsm
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_233529_798059_DE3F6DC8 
X-CRM114-Status: GOOD (  10.12  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---

(no changes since v1)

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
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
