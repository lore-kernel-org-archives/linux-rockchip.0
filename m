Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EB65606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Nov 2026 02:37:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=j0/dNY1I;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=FDXmRROp
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=CdZn+Rn6kWoWSYz0NLzjfh2chFnwY+SaCHCCdoCCgF8=; b=j0/dNY1I8GzEXdc9LgqxJxIS+B
	p8ILyFMdDsPGMDa48N1pnsGnRF2sNHSSuXvMROpHYD4zsPC5SDjIzqG4gXe95Rsw26TlLl5xWc8zU
	lyBKwcqTpUYT8M1FE4kQ3iKbqvYlnqMlO0zTpoUi9fv9qOa6AyS9SEwujXdI5QzBJb47qPkL5VRyw
	329zAvuOYqBSFhcw58PSLZiuf9J/xHtlzAk1DazLLT9xivhCnYKDs+O3TsajanVsq4mexZx5RoNlf
	15pePp66MJDLXn6oX+1cbLIP0n6W362eOKD92x0nlibztUeN/By9/4yUUE/chOtm85cL4dDnxhcf2
	UAVQ+brA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQbjv-00000002BKu-00BZ;
	Tue, 10 Nov 2026 02:37:39 +0000
Received: from mail-dy1-x1330.google.com ([2607:f8b0:4864:20::1330])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQbjr-00000002BJu-26TF
	for linux-rockchip@lists.infradead.org;
	Tue, 10 Nov 2026 02:37:37 +0000
Received: by mail-dy1-x1330.google.com with SMTP id 5a478bee46e88-3720addb068so2574935eec.1
        for <linux-rockchip@lists.infradead.org>; Mon, 09 Nov 2026 18:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1794278254; x=1794883054; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=m9wZvEuCDe3XvfF7/Jwj2zWHljA+DeJITddjwCddf8c=;
        b=FDXmRROpMiIcGSX2P/GsRrWfzII05RDaczz5NbT/UlVimf22gVyFTbH4+doPsf0YAI
         CZW8V9s9C+gQm5vqLZqhMGk7377Vtkvw5pvHRZLR+vsb4ZmvJu0TRNI+k52oL45HfYuI
         K1DcSgdaXX5qCTGJKxArZOFIdQbg5swS+s1HJYy1F0IVN8fmAxzry1W8TgamHbRyYA8/
         JljAW+Qp1aT4XH5JDnTZMNOZs5O2c9ZZJshTpy6rmRvhMZB8u9pY4ryWnMcnBuEQ0Ggg
         PRBTiCMAvzF3q3IPW1NaNzTpcG8v6QOKaIqGUGeagOhM/RNN7Sofb5ffqPqnfDK8kZrM
         3Rzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1794278254; x=1794883054;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=m9wZvEuCDe3XvfF7/Jwj2zWHljA+DeJITddjwCddf8c=;
        b=iAE/e0maa7dQM/AbWppbzFJ+6Z560t2/dfQvFW1WFmNh+HepayjzQ1nF6phpoBnMuI
         u2onoxY0YTlkAd+Y7kusMKqK1i+S8BSCMbUhjttEv7T+ZsR8T6zHxH9wHLV+NPvF9j7j
         EXIMFZBTIX/zOSPdK5vjnz0S8LXq1Q6owFCs7WsOJKLfAm2DyBSKbD7KvOJ1CDlKoJqQ
         VbwsT2tk9RgOI/QJu82Gf5QHq/FDyg/IHrd4Enq3G29bj0cOPn8bZLdyxf0yzCY5G+g1
         SA3CWteNIwFCl0FV30NMgpM4ZM8K6PKvcjdsuaa0lRBO+/jMiA2QkeBKXvI4N/yPdlkz
         iVlw==
X-Forwarded-Encrypted: i=1; AL+hErE/S+AzgSVZAHHcQAtWx41Avd6BzNyumyUX5xdoofsUZwT/R8x7oqW9X8zj3+4vRQ4ro3dNtkv8SBi9/zzEcw==@lists.infradead.org
X-Gm-Message-State: APuU4Z/4hMpQf0Y3wo1tD28BLVtBX7bwOFrJOSWw2pWBPraKO7AdZn7z
	YmYU3+wJZbh+5CMoarfHrOjp0Hsi0jQ6jKS1AoOMxyUfiyKEkIYDYTiD
X-Gm-Gg: AYBFou2m640IJ4+BZCj34NN/nP3wcKBH73eWkRBQiXrjLGR86TLAGzxgessiCikKxRH
	P2D6Y7KMGBzYu11YqBbmUmhH/icDa2TVQ9pa0nlzG5AY9qjbdhvN3c4d++uMjdjTB9eu4YRnYdA
	mBzINDuhUiVt2nOQA3sEdVbhGxnDkk2wqhFSNYUYwoTy/V1Z/7u+RxnfqbSVbHtfexkq2QtbOUL
	gtKqKD1l0wLloJn1B00c71Ynjl4Zf9H9HODH1wUe5OmTVZ+9HB0mJFEoWi9l1CnZDDSsNQY9ybT
	/8Ul3+rI7o9YrQJweXpHX52yq2+7L0r2ZpVyurHMIG7+JR+iGBo1PRtlH8zi0PUvK6G+0BpIYsZ
	AIdeNRtIkTOYb3GLuA+QAMHW6USmTuQMIqWcQK20PoNlefUl4UfKZC6DGFfeAnP6zsiF49tPgJt
	JTbIP0GmtXCjtggmxnLcov+HL7GWOuI3DmZQIuT7sPr+I8PgHGYDG+mei9V3JOGz5smVesXswSy
	6TXOUNInuOPHyyRsVq8FBAEkP4zoOzVESYMFomHUEs0ylMr+HfkH05ZdpcvDdWBl4h2QmHglvt5
	LI0Wk5MkFwYKphmmHU//Y5aKavjfna/zdmvfMc4=
X-Received: by 2002:a05:701b:4354:b0:1ac:2f6d:e1c6 with SMTP id a92af1059eb24-1b3b5fa8f34mr1600581c88.6.1794278253866;
        Mon, 09 Nov 2026 18:37:33 -0800 (PST)
Received: from arch.localdomain ([152.175.35.61])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1b3b5b54431sm2883025c88.17.2026.11.09.18.37.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2026 18:37:33 -0800 (PST)
From: Jun Yan <jerrysteve1101@gmail.com>
To: Andrzej Hajda <andrzej.hajda@intel.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Robert Foss <rfoss@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Simona Vetter <simona@ffwll.ch>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Jun Yan <jerrysteve1101@gmail.com>,
	Damon Ding <damon.ding@rock-chips.com>,
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH v3] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Tue, 10 Nov 2026 10:37:19 +0800
Message-ID: <20261110023721.2014061-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_183735_544060_CF40DF4B 
X-CRM114-Status: GOOD (  13.54  )
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

The DP PHY is optional: the Rockchip RK3399 eDP controller (used as the
internal eDP port) has no separate PHY device and relies on its built-in
PHY, which is programmed directly through the GRF registers, so its DT
node carries no "phys"/"phy-names" property.

Requesting the PHY with devm_phy_get() therefore returns -ENODEV (or
-ENOSYS when CONFIG_GENERIC_PHY is disabled) and the driver logs a
misleading "no DP phy configured" error at probe time before falling back
to a NULL phy.

Use devm_phy_optional_get() instead, which returns NULL when the PHY is
absent and otherwise behaves identically, and drop the manual -ENODEV/
-ENOSYS handling. This also removes the spurious error message.

Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Damon Ding <damon.ding@rock-chips.com>
---
Changes in v3:
  - Add missing changelog entries and reference links
  - Link to v2: https://lore.kernel.org/dri-devel/20261013134659.335829-1-jerrysteve1101@gmail.com/

Changes in v2:
  - Added comments to explain the changes made.
  - Link to v1: https://lore.kernel.org/dri-devel/20260924020417.868588-1-jerrysteve1101@gmail.com/

 .../drm/bridge/analogix/analogix_dp_core.c    | 22 ++++++-------------
 1 file changed, 7 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 6df6963740d2..637b1bff0f6c 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1426,21 +1426,13 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
 	if (ret)
 		return ERR_PTR(ret);
 
-	dp->phy = devm_phy_get(dp->dev, "dp");
-	if (IS_ERR(dp->phy)) {
-		dev_err(dp->dev, "no DP phy configured\n");
-		ret = PTR_ERR(dp->phy);
-		if (ret) {
-			/*
-			 * phy itself is not enabled, so we can move forward
-			 * assigning NULL to phy pointer.
-			 */
-			if (ret == -ENOSYS || ret == -ENODEV)
-				dp->phy = NULL;
-			else
-				return ERR_PTR(ret);
-		}
-	}
+	/*
+	 * RK3288/RK3399 use Analogix DP controller built-in PHY,
+	 * no extra PHY configuration is required.
+	 */
+	dp->phy = devm_phy_optional_get(dp->dev, "dp");
+	if (IS_ERR(dp->phy))
+		return ERR_CAST(dp->phy);
 
 	dp->clock = devm_clk_get(&pdev->dev, "dp");
 	if (IS_ERR(dp->clock)) {
-- 
2.56.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
