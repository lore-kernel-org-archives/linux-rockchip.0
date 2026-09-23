Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0444BC98304
	for <linux-rockchip@archiver.kernel.org>; Wed, 23 Sep 2026 15:34:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vrv5oTnOkDkmntJKVFM1/Jnw9cB6D/KEYfUiYfThqiA=; b=e5whIHX5abezRo
	8Xw/B9h3wazwOsDqngo247pQFxlt8Taaf7CMnvfBXmuPlEqiqTVjGCWB3jGYy79tieRwS3Pp+GB8v
	yK+5EAt/G7A2+02NnhK/xZw5BJl3CUMbUWrkp2fRfGHeF7Vt39suXf6eh6hiOPhiVQzF8XV3vrTv0
	ICJtd0WimtmlNKydiFU1ydWaDc/LTpGjstrzotXB9+Pv697a6ywXli5tI5qTaW2bLQELW0EXiVcZ0
	fMMre9X60cQQ9SsynEBDVz/Ms1eD8OLjEKyhB5caCLv3MmL4awKHB3RaMFWuMyZiraJS5wFPidvt7
	61+zdwOTp0+FyvIyysoQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Ozc-00000008kcz-0W2u;
	Wed, 23 Sep 2026 15:34:44 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Oza-00000008kcN-3zfc
	for linux-rockchip@bombadil.infradead.org;
	Wed, 23 Sep 2026 15:34:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
	Content-Description:In-Reply-To:References;
	bh=RmWPw9HQP1XagMM9TGKgOpF0w9bX79g0MmpHkabvFyc=; b=ZdiBDkxuxkXeKaOWza0LJlMxjX
	dW24XaN5GAIxzUV2ZQ7G2ftmBuODeuNufhttAGmpfeuS+9w6rOWyIZQ2fyJqRncwz+tpO7gI9MrIJ
	i+XCwEWipG86YYOpkcVNHDKMZXYoWqqiCra0Gof4vP2A2QyreB+dtnGv+Y9f3XwuFhfUFHqLBnZ1p
	vXwbRZbnAuj/4tZ8kk6dgHUNnFqCzu/BgYVsCKNnyzsrjYMkm8QLviMvNaF61HGRR5s27DTMEl7uf
	H1j3kIVIHsZBd55kKWtj+Te3wYW6vQzT4MYr50SfnpqIqXRAvEayw58F2/dmJvojhoehQd2wQ5c4Y
	cHMtcqWQ==;
Received: from mail-pz2-x0c.google.com ([2607:f8b0:4864:3b::c])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x9OzY-0000000Ewc2-0Nwm
	for linux-rockchip@lists.infradead.org;
	Wed, 23 Sep 2026 15:34:41 +0000
Received: by mail-pz2-x0c.google.com with SMTP id 41be03b00d2f7-cc515bef69dso568799a12.2
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 08:34:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790177677; x=1790782477; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=RmWPw9HQP1XagMM9TGKgOpF0w9bX79g0MmpHkabvFyc=;
        b=ML7KaoHugJtPwtdoh7QBF+Sbfuqm1FQJqZbyms1Q73PfHIk4vfdgtJhUftQ3an51X9
         ah0L4O1KXjAEKF2zry6u3c6ENiXqbn+riYn+EkxkOhxn0X/PpOqJLMG29kdAPmri3otQ
         jmZHT6Gg3EyJ6QTsCLdNwvJSwnkERRjp8bHekkW0rbAXWqvAiGi8917uPi+YgAKHm3T7
         PKjpxsvAWQQz6WNdMlPy34KX83UPlB/uxZD5VRgyg7RcN48mOUywfsSsautEg7XLbhAv
         UhmDvmvX8wk87dSoS/CkHK1G4tcXt1TieorCGTEMUrLNY5tDa+dE3Dgr36d66T8MaNwR
         Iz4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790177677; x=1790782477;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RmWPw9HQP1XagMM9TGKgOpF0w9bX79g0MmpHkabvFyc=;
        b=ObIY6jxlxcY92Npu5xWEWYqFG4y7URjwz5HGg8zokqGQ/Yd4/JFuzz33xhmUY1q3BE
         sgqkqZJME4vbe7GuUaYgdzhzNhOCmxtXm8WzqOODczXHBMsPFXa0jRSL3+cwFI2EBiHP
         DzH9+f2Qp1zpSxfpDbzXxDdlrXkHoYjtn+rAljvDiTk1NRGMYlpsaqIBwHMjA3GXBRUY
         rQn8ZJsbW1c+UJCLBqG4cGxJRVqPQAfq6A/HLcouZM7edRXz2VC8RHdRnM5AVXEOHD3Q
         gvsROxVMeHSNG61AXsNlX0lRJHpNFmQ7WcKBWFTymHHaUBVVJZLgimrpyws6l+tOD96+
         MBrg==
X-Forwarded-Encrypted: i=1; AKwUvBzVnBI9PPgwHC/LIpHgVLSnGDY9XUodqumLhu8ORTGEEUJ/lT62GI7VCDYL7EMYH90rk3muWma+UUsEinZ6cg==@lists.infradead.org
X-Gm-Message-State: AFuF++nfV7tbDfH2zyNJOtsh7wBUOyIbWRFI0qXlxUQ0sQzEGsVxx1NI
	Z9RS2SAPpPAAzzdHxxh/RVFBJn4mQ2cgSEoYxYgIQSiBuqY8qRWbrUXE
X-Gm-Gg: AYBFou1OK7caLnKYjus2th9KBS/kZOT2aTXyNy+6QOSokqqr7DGjXUPKfGcNabONeIO
	WSGPAK6mN/m6yQp3aJMtHoYg54LkLKwAlHZvbhinjB9WVHeAuXhuft/eedozFGVcVUbNoJAiauv
	imV9zQRFqgCqSSk6nPdttvJAb1lpqTqjakd4klCEZ7JmVjIFy6rHx2eDHRhjwfcOxR65nMBfLgg
	HduNbDzPsAZlbQgXBnsJFN99jijzlK+tn68pXQUXmgZbMqaTJQqNh4T1s7J673cqigQEG0Nmcmp
	GlKeN/JDF+6Eci7Ug8GuC2T5C9y/SUfVMAoSoYdmKEZCwGlaAM4LeYWsncUPgeTzrhTgJ2nymTG
	y7GVCSZsJKX03CruxyYKayPsRK9BCysU+jQA2lJXOFnMJi3lP1rEcz+vaqL8gqrtVy3ZarJe5JJ
	3LLdvC5PlSobtSEhZPD5Vac3WFtTwYlHvkpZBFjYwWctDnWAf6gsAAdCdbh7tB4h3kMwbMjbwDg
	DF3JCpVX1zsC3f5QOu4dk23TXVPZFPzX+hV8swxtC0=
X-Received: by 2002:a05:6a20:c70e:b0:3dd:a197:7360 with SMTP id adf61e73a8af0-3ddf8296639mr2981172637.57.1790177676973;
        Wed, 23 Sep 2026 08:34:36 -0700 (PDT)
Received: from arch.localdomain (123202092053.ctinets.com. [123.202.92.53])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-cc75f3f5e79sm1318844a12.25.2026.09.23.08.34.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 08:34:36 -0700 (PDT)
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
	dri-devel@lists.freedesktop.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org
Subject: [PATCH] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Wed, 23 Sep 2026 23:34:22 +0800
Message-ID: <20260923153423.804759-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_163440_344753_DA6DB1BE 
X-CRM114-Status: GOOD (  12.42  )
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
---
 .../gpu/drm/bridge/analogix/analogix_dp_core.c | 18 +++---------------
 1 file changed, 3 insertions(+), 15 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
index 18e76d1e78e1..28eb668d3e3f 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1427,21 +1427,9 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
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
+	dp->phy = devm_phy_optional_get(dp->dev, "dp");
+	if (IS_ERR(dp->phy))
+		return ERR_CAST(dp->phy);
 
 	dp->clock = devm_clk_get(&pdev->dev, "dp");
 	if (IS_ERR(dp->clock)) {
-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
