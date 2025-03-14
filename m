Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 67E7AC35FF7
	for <linux-rockchip@archiver.kernel.org>; Fri, 14 Mar 2025 03:40:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qD2oF7NMMnGqRrmAKKhlEqhjvD2nxE+48JC129dbm4M=; b=2OX/nrNjdoRcHK
	9K6+1KRlUx5guh0gLJJ67/lPMQkAW9BLYQAHdHcIlKQmqDPo9Wio1KBkV3CyyQtZiE1ag2u2gD9qQ
	xT232PqpGsI1WCz2UiKdMEhleBwsJxKlgj4gM0xU+P+ufArQGtVSWT/4h720aBa7j+ncJ39SUpaoX
	47km57NZoNvfj5Yjez/rvxOu+bWMhY3nUjlB3CbdEsDVLfnXe06FiXHu8rc8zo83PwqmCiry+W0yN
	jbHHtseu/JH6p1R/rivbbEXKpWQ9+7BxZIGfAW9sduvx+DLt+ScLqNt+3+3b5kaGmxzlhGlxcfUbI
	TWXM7QIs21cvhBuiS5ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsvu6-0000000D0z8-0Xqi;
	Fri, 14 Mar 2025 03:40:10 +0000
Received: from m16.mail.163.com ([220.197.31.4])
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tsvtZ-0000000D0sv-3j0s
	for linux-rockchip@lists.infradead.org;
	Fri, 14 Mar 2025 03:39:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=163.com;
	s=s110527; h=From:Subject:Date:Message-ID:MIME-Version; bh=2a2NW
	3UqryyRJnCGgSJ1wvchXl4pZnQGntQzL3ReM88=; b=dnh3dwFV0JdaiHHcdb9gk
	RAyiJlhlsvjaapRkfkBe/x4OyvCOOWttt/Cs6Sx/UiEKoYYCao9HIG0nCDRsH5Xv
	vhvPREpzo/7QpeuJp/kLXVOD3auzLqntVSQCLS1+BNBbpp3cuviQ6R2/X4iA3abA
	Jyj+gz+idzRigEkScuSM9w=
Received: from ProDesk.. (unknown [])
	by gzga-smtp-mtada-g0-0 (Coremail) with SMTP id _____wC3bE_SpNNn4bIfSw--.42501S3;
	Fri, 14 Mar 2025 11:39:05 +0800 (CST)
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
Subject: [PATCH 2/5] drm/bridge: cdns-mhdp8546: Switch to common helpers to power up/down dp link
Date: Fri, 14 Mar 2025 11:38:41 +0800
Message-ID: <20250314033856.538352-2-andyshrk@163.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250314033856.538352-1-andyshrk@163.com>
References: <20250314033856.538352-1-andyshrk@163.com>
MIME-Version: 1.0
X-CM-TRANSID: _____wC3bE_SpNNn4bIfSw--.42501S3
X-Coremail-Antispam: 1Uf129KBjvJXoWxZw18Xr1xtF4xAF4UZF4fXwb_yoW5ZFy5pF
	ZxW34UtF4vvw4DZF4ktF10vr43A3W7Ca1kGrW8Gw48Z3WYya4Dta4akF17JFWrGr97Ca1a
	qFnYvayxWFZ2kr7anT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDUYxBIdaVFxhVjvjDU0xZFpf9x07jzLvtUUUUU=
X-Originating-IP: [58.22.7.114]
X-CM-SenderInfo: 5dqg52xkunqiywtou0bp/xtbB0gUQXmfTn9eT4wABsU
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250313_203938_221448_D100E045 
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
---

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
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
