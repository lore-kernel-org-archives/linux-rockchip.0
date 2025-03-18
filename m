Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 27FC1C35FF8
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 06:35:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XVoL/DNFRe5J4SKMkP2hISRHM0uAw0PqVV0R/6WQJ/U=; b=cg+tddwom2Oqd4
	mv+YHX6KtmlKKtD8Q180xBh1uEk7Ugd9R8TABbNi3v4qUT96Y+E4wvUslF+pZCJunOdXg8tCBxoHy
	yRjZ/5BTbEvgxfnBcl5DwJfNDPxkTQKR1ECefQjbRuqGL0hPTsAG6EKJPI1lmmJdUQrGfq3YbCtH4
	wjdJljGNFSb4CXNfFK7NFRc4c5HUqhiE9thodZNmvuoi9k7zKcOXIULmqaS1S0upCBSTtjf0e+sHR
	+ihCcyd7okOzdCgxFkY+2wDy0tH3qbibzv5+107era0ljTA4s20+PzeiaKKdkV50icQq0KcYny99h
	scPQ+1D3a8AcqKeu2NBg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuQY3-00000004q9k-0pgD;
	Tue, 18 Mar 2025 06:35:35 +0000
Received: from m16.mail.163.com ([220.197.31.2])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuQY1-00000004q7T-1PaP
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Mar 2025 06:35:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=R5tub
	IkLGLLauxbma/eCHLbMxtXUO/cXsdIf0aGk0vM=; b=IaSe35HRlr+O00Tn+gVG7
	Zq3ltfYBuFBPMdtP12nP1ACPF75RBIE3Cm88u+cA2SbI8/LLyScE+51NWbjBMdvl
	fYkG8n6cq7Bo4+2QyZc9hL2BtAkASERvhyQ1AS28AqSqdLwfJJIf6eRbudC4CIxg
	VAwBer3lpESVCwwDE6+BQQ=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wDnnuYSFNlnP+WyAA--.9231S4;
	Tue, 18 Mar 2025 14:35:03 +0800 (CST)
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
Subject: [PATCH v2 3/5] drm/bridge: anx6345: Switch to common helpers to power up/down dp link
Date: Tue, 18 Mar 2025 14:34:37 +0800
Message-ID: <20250318063452.4983-3-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250318063452.4983-1-andyshrk@163.com>
References: <20250318063452.4983-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnnuYSFNlnP+WyAA--.9231S4
X-Coremail-Antispam: 1Uf129KBjvJXoW7Cr4ktrW5tF1kur4rGF17Wrg_yoW8AFW8pr
	13C342qF1S9wnYqrs0kF10gFs8Z34DW395GrWUCw48u3WUCFnFy34Sy34fGas5XrykA3Wj
	qFnrAF9rZFyvvr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jTT5dUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/1tbiqAEUXmfZDcXVgQAAsB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_233533_684682_1BAAF7F0 
X-CRM114-Status: UNSURE (   9.84  )
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
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---

(no changes since v1)

 .../drm/bridge/analogix/analogix-anx6345.c    | 30 +------------------
 1 file changed, 1 insertion(+), 29 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
index 83d711ee3a2e..f4fffe4bbb30 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
@@ -143,35 +143,7 @@ static int anx6345_dp_link_training(struct anx6345 *anx6345)
 	if (err)
 		return err;
 
-	/*
-	 * Power up the sink (DP_SET_POWER register is only available on DPCD
-	 * v1.1 and later).
-	 */
-	if (anx6345->dpcd[DP_DPCD_REV] >= 0x11) {
-		err = drm_dp_dpcd_readb(&anx6345->aux, DP_SET_POWER, &dpcd[0]);
-		if (err < 0) {
-			DRM_ERROR("Failed to read DP_SET_POWER register: %d\n",
-				  err);
-			return err;
-		}
-
-		dpcd[0] &= ~DP_SET_POWER_MASK;
-		dpcd[0] |= DP_SET_POWER_D0;
-
-		err = drm_dp_dpcd_writeb(&anx6345->aux, DP_SET_POWER, dpcd[0]);
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
+	drm_dp_link_power_up(&anx6345->aux, anx6345->dpcd[DP_DPCD_REV]);
 
 	/* Possibly enable downspread on the sink */
 	err = regmap_write(anx6345->map[I2C_IDX_DPTX],
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
