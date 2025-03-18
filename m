Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 82D06C35FFA
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Mar 2025 06:35:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=s9PeNNYn6U7Q6FMF/nGyeMt0cqZQ07BDj6YxacjRdTk=; b=D71tY8lN0/wEw8
	7WJ3swz1psf8TDofhg0fadhYXbMTzyvTurcD0VRQmTIKTHrTEwR1QbivmJ2QPVJGH13QNm5xv9R4Q
	SHzbvpt2c8F197haOaLP1KL9o/ooE8XSS20h4p1BM4L40UVNnzaEh6L4wazomipEO6bvSMWlBXkD+
	RWTzMy1AE1pM4hWOiOl7nGDyyaESvlxY1huKyJY10bFeK/7BKRaH+nCl3G1ScakCGsRgd6jpWcf9T
	KSMU6iJCiz8KMfHU/V2DoXE26LAd2pC+amcLTlIg6WDGeheGbnZzOjz5TrQyoulRAjKA2efL53RlU
	mr78xpR6dDW7PIzXfb7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuQY4-00000004qBQ-3o9T;
	Tue, 18 Mar 2025 06:35:36 +0000
Received: from m16.mail.163.com ([117.135.210.3])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tuQY2-00000004q7R-2440
	for linux-rockchip@lists.infradead.org;
	Tue, 18 Mar 2025 06:35:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=Lni5v
	gIHCnsELvDKBqFqxLmr1fHW/mwIGLXVHAW3C7g=; b=SzHkNd2QYFIpittBiqDGc
	d7vrnpG2TxueyfV+kGQAdlevWf0RPxiYprddST6wQD3PpgYFgCNxy9DPw1j3o2oK
	U0iWA542OI+0Xzj4zTxKTENWrkyXo315AD+WeBGr1HI1EvvKvSff2qXthM7g1GbS
	moKgcHOiCaqOMlw8epiuuA=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-4 (Coremail) with SMTP id _____wDnnuYSFNlnP+WyAA--.9231S3;
	Tue, 18 Mar 2025 14:35:02 +0800 (CST)
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
Subject: [PATCH v2 2/5] drm/bridge: cdns-mhdp8546: Switch to common helpers to power up/down dp link
Date: Tue, 18 Mar 2025 14:34:36 +0800
Message-ID: <20250318063452.4983-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250318063452.4983-1-andyshrk@163.com>
References: <20250318063452.4983-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wDnnuYSFNlnP+WyAA--.9231S3
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw18Xr1xtF4xAF4UZF4fXwb_yoW5uF15pF
	ZxW34UtF4vvw4DXF4ktF109r43A3W7Ca1kGrW8Gw48Z3WYyas8ta4a9F17JFW5Gr97Ca1a
	qFnYvayxWFZ2kr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jxYFAUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbBkAIUXmfZEzUB-gACs9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250317_233534_926015_55891E4D 
X-CRM114-Status: GOOD (  10.36  )
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

 .../drm/bridge/cadence/cdns-mhdp8546-core.c   | 74 +------------------
 1 file changed, 2 insertions(+), 72 deletions(-)

diff --git a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
index 81fad14c2cd5..6094ecde35ff 100644
--- a/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
+++ b/drivers/gpu/drm/bridge/cadence/cdns-mhdp8546-core.c
@@ -545,76 +545,6 @@ int cdns_mhdp_adjust_lt(struct cdns_mhdp_device *mhdp, unsigned int nlanes,
 	return ret;
 }
 
-/**
- * cdns_mhdp_link_power_up() - power up a DisplayPort link
- * @aux: DisplayPort AUX channel
- * @link: pointer to a structure containing the link configuration
- *
- * Returns 0 on success or a negative error code on failure.
- */
-static
-int cdns_mhdp_link_power_up(struct drm_dp_aux *aux, struct cdns_mhdp_link *link)
-{
-	u8 value;
-	int err;
-
-	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
-	if (link->revision < 0x11)
-		return 0;
-
-	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
-	if (err < 0)
-		return err;
-
-	value &= ~DP_SET_POWER_MASK;
-	value |= DP_SET_POWER_D0;
-
-	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
-	if (err < 0)
-		return err;
-
-	/*
-	 * According to the DP 1.1 specification, a "Sink Device must exit the
-	 * power saving state within 1 ms" (Section 2.5.3.1, Table 5-52, "Sink
-	 * Control Field" (register 0x600).
-	 */
-	usleep_range(1000, 2000);
-
-	return 0;
-}
-
-/**
- * cdns_mhdp_link_power_down() - power down a DisplayPort link
- * @aux: DisplayPort AUX channel
- * @link: pointer to a structure containing the link configuration
- *
- * Returns 0 on success or a negative error code on failure.
- */
-static
-int cdns_mhdp_link_power_down(struct drm_dp_aux *aux,
-			      struct cdns_mhdp_link *link)
-{
-	u8 value;
-	int err;
-
-	/* DP_SET_POWER register is only available on DPCD v1.1 and later */
-	if (link->revision < 0x11)
-		return 0;
-
-	err = drm_dp_dpcd_readb(aux, DP_SET_POWER, &value);
-	if (err < 0)
-		return err;
-
-	value &= ~DP_SET_POWER_MASK;
-	value |= DP_SET_POWER_D3;
-
-	err = drm_dp_dpcd_writeb(aux, DP_SET_POWER, value);
-	if (err < 0)
-		return err;
-
-	return 0;
-}
-
 /**
  * cdns_mhdp_link_configure() - configure a DisplayPort link
  * @aux: DisplayPort AUX channel
@@ -1453,7 +1383,7 @@ static int cdns_mhdp_link_up(struct cdns_mhdp_device *mhdp)
 		mhdp->link.capabilities |= DP_LINK_CAP_ENHANCED_FRAMING;
 
 	dev_dbg(mhdp->dev, "Set sink device power state via DPCD\n");
-	cdns_mhdp_link_power_up(&mhdp->aux, &mhdp->link);
+	drm_dp_link_power_up(&mhdp->aux, mhdp->link.revision);
 
 	cdns_mhdp_fill_sink_caps(mhdp, dpcd);
 
@@ -1500,7 +1430,7 @@ static void cdns_mhdp_link_down(struct cdns_mhdp_device *mhdp)
 	WARN_ON(!mutex_is_locked(&mhdp->link_mutex));
 
 	if (mhdp->plugged)
-		cdns_mhdp_link_power_down(&mhdp->aux, &mhdp->link);
+		drm_dp_link_power_down(&mhdp->aux, mhdp->link.revision);
 
 	mhdp->link_up = false;
 }
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
