Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 121A0CD4851
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 May 2026 09:57:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vBDrRjT/C37feuTxT3hat2IrzpFBO20hX2bnX85AfEk=; b=iKmXjSuMSBtqrC
	Yszg7qyLEennZHqwqd2kKQ+iOS/+Ex/ny5fQqsrzxGjzuHAKm4pm8JG0ATvKVrI18Jw/l4kl9ZB2X
	g5LAJff1iWFR1oIERIN1h6pEe2wi8KPDai851iESXLyo2u9qNOdFWtsICdeSJT2Ug+PKQrGmat37u
	S0DeW9JK6ut9GC/S8B5eebz98QJ6B1fq+SfzULWq3nRS4DijqVDzlLRvSi76mLNDG0/QyEG7N4JgR
	UZFuElKl3rQpaUCsZVfMNl9xuVY/Lt/3R+o5tuIbVnhVdBcxCfmXREJ69zfzeEkDPB4GAJXqy6QgC
	WhvKiMfzZqxZgkoreiZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMjrf-0000000GLDE-03Ex;
	Tue, 12 May 2026 09:57:23 +0000
Received: from mail-m3282.qiye.163.com ([220.197.32.82])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wMjrU-0000000GKqK-3QLr;
	Tue, 12 May 2026 09:57:15 +0000
Received: from zyb-HP-ProDesk-680-G2-MT.. (unknown [61.154.14.86])
	by smtp.qiye.163.com (Hmail) with ESMTP id 3e1830344;
	Tue, 12 May 2026 17:57:06 +0800 (GMT+08:00)
From: Damon Ding <damon.ding@rock-chips.com>
To: hjc@rock-chips.com,
	heiko@sntech.de,
	andy.yan@rock-chips.com,
	maarten.lankhorst@linux.intel.com,
	mripard@kernel.org,
	tzimmermann@suse.de,
	airlied@gmail.com,
	simona@ffwll.ch,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrzej.hajda@intel.com,
	neil.armstrong@linaro.org,
	rfoss@kernel.org
Subject: [PATCH v4 10/10] drm/rockchip: analogix_dp: Add support for RK3576
Date: Tue, 12 May 2026 17:56:44 +0800
Message-Id: <20260512095644.1946084-11-damon.ding@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260512095644.1946084-1-damon.ding@rock-chips.com>
References: <20260512095644.1946084-1-damon.ding@rock-chips.com>
MIME-Version: 1.0
X-HM-Tid: 0a9e1b9e691e03a3kunm05d2ddd61290a9
X-HM-MType: 1
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFITzdXWRgWCB1ZQUpXWS1ZQUlXWQ8JGhUIEh9ZQVkaQ0odVk1JS09MQ09CT01ISVYVFA
	kWGhdVEwETFhoSFyQUDg9ZV1kYEgtZQVlNSlVKTk9VSk9VQ01ZV1kWGg8SFR0UWUFZT0tIVUpLSE
	pKQk1VSktLVUpCWQY+
DKIM-Signature: a=rsa-sha256;
	b=IH4z4M18JGjzFiTAeUaoopq/j2LaXZNBC5fpyr6OfnFyYXNV0mJ6E49DqHfWwaDTUoLyez1uusVjk7QqWLh9yKwKhfSqtkookdaBa7AbcGwGqn464U0kjFX1CNWFhvSHgBKRoFpgGK3PgDW//Qr5R+70UA8SA8CUti/wtZfS75o=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=edZDAKPiDlvqHKvoUwOBwwRUJ9g2BB/RXNhTktgWsfA=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260512_025713_306794_1E17051F 
X-CRM114-Status: UNSURE (   9.68  )
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
Cc: dmitry.baryshkov@oss.qualcomm.com, devicetree@vger.kernel.org, jonas@kwiboo.se, linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org, sebastian.reichel@collabora.com, jernej.skrabec@gmail.com, dianders@chromium.org, linux-rockchip@lists.infradead.org, Damon Ding <damon.ding@rock-chips.com>, Laurent.pinchart@ideasonboard.com, luca.ceresoli@bootlin.com, nicolas.frattaroli@collabora.com, linux-arm-kernel@lists.infradead.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

RK3576 integrates Analogix eDP 1.3 TX and Samsung combo PHY
hardware blocks that fully match the proven RK3588 design.

Add dedicated chip data table and device tree matching entry
to bring up basic eDP functionality for the RK3576 platform.

Support is limited to RGB output up to 4K@60Hz for now; audio,
PSR and other advanced eDP 1.3 features remain unvalidated.

Signed-off-by: Damon Ding <damon.ding@rock-chips.com>
Reviewed-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Reviewed-by: Luca Ceresoli <luca.ceresoli@bootlin.com>

---

Changes in v2:
- Split out a separate patch to enable the "hclk" clock.
- Add Reviewed-by tag.

Changes in v3:
- Add Reviewed-by tag.

Changes in v4:
- Modify the commit msg.
---
 drivers/gpu/drm/rockchip/analogix_dp-rockchip.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
index a864bcf8200e..75706a2fdba8 100644
--- a/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
+++ b/drivers/gpu/drm/rockchip/analogix_dp-rockchip.c
@@ -522,6 +522,14 @@ static const struct rockchip_dp_chip_data rk3288_dp[] = {
 	{ /* sentinel */ }
 };
 
+static const struct rockchip_dp_chip_data rk3576_edp[] = {
+	{
+		.chip_type = RK3576_EDP,
+		.reg = 0x27dc0000,
+	},
+	{ /* sentinel */ }
+};
+
 static const struct rockchip_dp_chip_data rk3588_edp[] = {
 	{
 		.edp_mode = GRF_REG_FIELD(0x0000, 0, 0),
@@ -539,6 +547,7 @@ static const struct rockchip_dp_chip_data rk3588_edp[] = {
 static const struct of_device_id rockchip_dp_dt_ids[] = {
 	{.compatible = "rockchip,rk3288-dp", .data = &rk3288_dp },
 	{.compatible = "rockchip,rk3399-edp", .data = &rk3399_edp },
+	{.compatible = "rockchip,rk3576-edp", .data = &rk3576_edp },
 	{.compatible = "rockchip,rk3588-edp", .data = &rk3588_edp },
 	{}
 };
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
