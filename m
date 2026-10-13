Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5A535CC6B0F
	for <linux-rockchip@archiver.kernel.org>; Tue, 13 Oct 2026 13:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Ao2bDXKGBoOTXiYbIG7ilIyUduho0dz5oxwpiyonhUQ=; b=JBrexnT7iNVwGO
	M/8rU97Z4Njf1pH9VhkWR4j5NaH3uK2gZdMJ1mJT2gT4UVTQHXqHE0qL21XIch/syIN71xuVEecdk
	hMlUzB+HGXabHGDHi/mugiDk+ONP8/PO8uYQnywFBp9g4UsnEu/RIEQLF6GfEZCzZyvVkq5gbVxtQ
	8o7VaKp4fut9bG3Hd9qS5crxAnimFjuo1nPKJ2sSYIaBAqs1J0DWHw0nT/er0XeYr7WkwkAsKpSWV
	zgHHBdJMb5dApht0wUlPYEQO6366wXgbRfgx/pLjud3MJfddO3Pc/k50oS9nWen0qKPrdaQr/Pc60
	rt6m1h5S+5cb32Vh7y5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGcqa-0000000CzzM-0iyt;
	Tue, 13 Oct 2026 13:47:16 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xGcqX-0000000CzyP-0GQM
	for linux-rockchip@lists.infradead.org;
	Tue, 13 Oct 2026 13:47:14 +0000
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-88cfa501c5cso1035615b3a.3
        for <linux-rockchip@lists.infradead.org>; Tue, 13 Oct 2026 06:47:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1791899232; x=1792504032; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=OEd55JoJOoDV13ld4fQoCE8domEIQzBBmawfYivXwdA=;
        b=ZxI5fOtEHFfBw5hX92gnslOEIEBeAf5S+/OsukkRj8EcihFZbj+JGYzMiaYkcFHkzD
         t09yO7nWB47SyYjn+SZfXFJQqMC+NuNltfPrs+lZimKVeeOJpwzzVNjI52qPeWyi7cmd
         U713gqDU+mCjwx2VoRwab1YLQeUzb4OvSJMmbL9vOB7D3uyvUO0yGZoU5pepMd+8NQOS
         KCFkYqTsQZLL7xZRGvVk3f8Xsob0ZeqwLU6SqF9ZMOFhQLD98qDFzvqeaRSvMUqlyZQu
         q13VRlxNvnpoWvjuiyxUoidrDZkJVLPleVu2Zkjw7r4vXTXI+1wY/2LyWyA/iikECdd5
         Oygw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791899232; x=1792504032;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=OEd55JoJOoDV13ld4fQoCE8domEIQzBBmawfYivXwdA=;
        b=Lo63jVdnb3hfudQgKdC9SFpJuy2x3DdG4VVFOCg6e1NlQeVkL8pPU8LomhrQYUMxcY
         ZTa9TbYJkw7jDEqtkhZAvRnBvENNEqh3ZFtCubefHxyYBLHLUZmP2REdKvh5PTpUxnj6
         D7d39P/OS2I4IMuzE41nTme92aJb6Ehqfl5Kyr8GrElFy8MqLnsqHSry7tCRV5Zs+C/S
         1ehlS4l05JTSlSUEXgwhQUFaE3rO3G0gDz9AsDj4Oz3N9EYER4Y4m1oKhqgYjMwAbJVR
         E9j8+zhsBCLaIaGNmgISXJgeQtM1CLrdweSd6irJpOMmfYlGbkwturEImSOMZuLBaJA8
         xKpA==
X-Forwarded-Encrypted: i=1; AKwUvBz4CVOjZYIWBhJIGHvZYP13Dyo5rfjQm2rnbOfX6rvdM+Zbg9ZLZSelnt1E/3023nsIqIe7QwMC1SelX/CIKQ==@lists.infradead.org
X-Gm-Message-State: AFq9FYJV9aV/iGKBOVBc2MzhRLC0SAIWZx8F0u0OZUwpeh7FIlCmmRSN
	0wY4n70Z0rUM/K0iPsDThVvMSrIuj56b9iEuJsP4UZtxJr9Fd3MMGeH4
X-Gm-Gg: AYBFou0mIhsmIh2QKS15cERDHTAH9p+Z3FZdapBxzsRjLC3YnDrMaBOlkWj/VK6LyyV
	qhGadZ3/hr2upRl6RDtCZpcFPc87HzfiZuZ/QJZ1fLzSQ0noDSt0k+c/TRi5EkXe0gORf/arxDQ
	boOL7FV1jYOagaRKuP6R3qkMQ+G9kIJYjbq3e6ROg1RAPkH7hepWgBSg3NKQoWSREr+R2g4DKxB
	7xamwKM7rZmt1ZYeWfwewpbAGHx62bfrIcDYR/XfiMqfiVBQkA6KNK2hwlCHBZAX0Cn2hDJ+ye9
	6W6PgmyCVFHX/ugJaDtxKL8uRO3Qll/dcm3x25OP2zGK24M81IgirNziHMzStjg0dPmq1kr7juF
	cKMvVUAf2k+mKeavd123tyxXrIVjGywPxD/OaYpQiEnB1WEp0UtxmFX7NoC7dlHWYF5zX1aXL0b
	Qpgpd+B+NY7Oqzlqwk0HlHgPaupA/D0sfn5dit9tXL1kPkSBTTpf3ZJJ5wS84U8dJDapIQBVpIa
	lz72yzDxg==
X-Received: by 2002:a05:6a00:b50:b0:882:626a:709f with SMTP id d2e1a72fcca58-897c3ff5155mr10872889b3a.3.1791899231770;
        Tue, 13 Oct 2026 06:47:11 -0700 (PDT)
Received: from arch.localdomain ([161.118.199.118])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-896c3cc80b0sm5044853b3a.29.2026.10.13.06.47.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Oct 2026 06:47:11 -0700 (PDT)
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
Subject: [PATCH v2 RESEND] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Tue, 13 Oct 2026 21:46:57 +0800
Message-ID: <20261013134659.335829-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.56.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261013_064713_105628_04229F4A 
X-CRM114-Status: GOOD (  12.83  )
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

Assisted-by: Claude:deepseek-v4-flash
Signed-off-by: Jun Yan <jerrysteve1101@gmail.com>
Reviewed-by: Damon Ding <damon.ding@rock-chips.com>
---
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
