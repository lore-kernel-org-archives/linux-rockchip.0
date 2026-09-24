Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3375C98317
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 11:19:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=39/0TbLlZwXCj4US53f0leG60BXGvQ7/dUyfM1c44jk=; b=wFVwhXgVEQ7YoR
	9qJ4mOMVBTAxwNWcXdc6XjmxJH+4o+tY8eI2t1axulBXkUs4FDdH4Icmof/iX0lfZeLJYmYDN8EsG
	LDAxLAmFKJ6U5iY6qXsM9bzgjPHrhkV8y90uLERW5R0RFfLc+wrAbIXyc4zjDTESgoNsiBU6c5nPv
	fpqNELpRe7muXWSsi/OK+7QhsqW/XkUQ2opHkfvFUuYtmPkzebuVtWd/Fq9pMf0u8fbeHp2KvcEUf
	dNza/aK6cyhIUNvWNOzI1ykh+3ZVX1GqyrrMSVgOKpzd1VIICEdz7AiY6CgBa5oc+W4kp8b9zxlRP
	TpqwVV9NHiACAt/2PJgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hTg-0000000AqFA-43Go;
	Thu, 24 Sep 2026 11:19:00 +0000
Received: from mail-pz2-x0e.google.com ([2607:f8b0:4864:3b::e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9hTe-0000000AqEC-3REE
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 11:18:59 +0000
Received: by mail-pz2-x0e.google.com with SMTP id 41be03b00d2f7-cc1cea4bfd1so998782a12.0
        for <linux-rockchip@lists.infradead.org>; Thu, 24 Sep 2026 04:18:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790248738; x=1790853538; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=hiZAP5CE2Qg+2953jUYih6NAEp+heJ/HVnYd8DX8Ozo=;
        b=hBcMWvvf7V9nt1jpDkhXE/JJxX0nZ3VsDWywarGCB2rEo+4TaF1nU3uSiThXunJSva
         Vu5J972rr9CUKLJQ1MUuFP7MZeZK8JB4/B8HC0FA5DI427PSBsNXut62NhdZElZ+gjK/
         oewQ/0tQ8Ogrs7Tlq3TP+rRq8pXXI5ANz1KJa1Ufg/4Lf8MPBNCiwudgwj/ZL9vOpS4I
         Q9toEhxJVhioPfqqbHAzzMwxEK5dFCxw2ya5M61miJXv5TZ7qyQHMnOuBGP3TnhErbbn
         ideHgwbHYuz3slr6sil6XDcKiSpLmVXbpDeznt2foala7pWqk6KtWiZ5aFZT5hVP7DvY
         El2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790248738; x=1790853538;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=hiZAP5CE2Qg+2953jUYih6NAEp+heJ/HVnYd8DX8Ozo=;
        b=QuL7FIGWadBZpa33Hjaz2Tn6T1JE+/qbJbNGS/6ctieeVMlzrb9pme8ES78tFa4uSS
         QM0pcaPmREIvb7ideXBhpXGxQ4Ho/RmgNKWqP3oxMLlqC3LW4MaqXBRrfKEER74Av9wt
         dHjfrx1XsZDVV2ddWU5J27lt9FUA7U/LamCGpj9MJ3sQjL0NWNW6oIABeiLTPFPSZful
         +Cre6dvWbbcglPZQFwkBl/Q4E1+XHzKmhXCZbOirBYT+X6q9mKe+B7+3TQJQjbzeRiHI
         4SM0BI662OwWmsHoZrnOD/SEjeS+n161Q04fCbOea4YodPoptqMWY1cNgEizqhIEHMFk
         XPNg==
X-Forwarded-Encrypted: i=1; AKwUvBwynbJtDrmWvEk2QMEHKIwJQjqdcREi5O40eL9FD3ya7ReoU+Rpr95MAzNvWTPb4Av/b1gG0FDRTCDxB+YvMg==@lists.infradead.org
X-Gm-Message-State: AFuF++mGyQ+OTuDbK7rOueaBAofkf+mV67vHTaKRPlCvp4cTECcXenVO
	vpV9p6by0xNbGqh2Bxz+EnDKseSaQMZBlCSWybsTL6mxrUZvaChhYsQy
X-Gm-Gg: AYBFou3SWiJh99UbDNyzaB0XfQK9AVmRAWY+JR8ZOV6YWe9XjqfvhZ9lCj8XMNbSaJ2
	BVyksVYURbONru1FPaAg3VshfcOGWmKli+aaCKQ/IC3qLxN5Ow7MRyNvfmayonviRTvtpUMwkwt
	+tVkTljS/pUM5xUvabkRDGM3Mjcl7krkqiBZCn4bRdM8Ckr7EnAxhiAnBlB7yjRpTdaAIZ/IHNH
	HmFLr3tdSbKj2RFx7713Bpi6SJuyx8E/nVkuwbe4Pus96BgtU6NPxNfOHRtlu3MTNdkVuEwtcMu
	9nceGwsTMxf9rveP1a+T/+rL6yhEIBBPniNb8/5tErxXPRL4WRLPl+oDUHF0KkHIGopEYPsFqVq
	RUi0DLbr2g6uiuIB9K/rTZX19QS8MPR4edvpFPZK85VtHnFweEs3YRmjvxJJ9h+ojlN9EVEpNVd
	/1/sL5Zx5/sFijqrGnG02ZVIgAr+4F6cfSm1dTkq8qJ+SuNfbDhTIEaTZp3taM5pmKYGIqDOtFC
	hZxQfVkXz9cGjgHwM7zode2whjouCU/
X-Received: by 2002:a17:90b:2dc5:b0:39d:efa9:cd25 with SMTP id 98e67ed59e1d1-3a09856fb98mr1677016a91.2.1790248733078;
        Thu, 24 Sep 2026 04:18:53 -0700 (PDT)
Received: from arch.localdomain (123202092053.ctinets.com. [123.202.92.53])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3a0972efa0bsm4314680a91.8.2026.09.24.04.18.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2026 04:18:52 -0700 (PDT)
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
Subject: [PATCH v2] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Thu, 24 Sep 2026 19:18:42 +0800
Message-ID: <20260924111843.937649-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260924_041858_858783_2962DDCD 
X-CRM114-Status: GOOD (  12.78  )
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
index 18e76d1e78e1..a126c411b5cc 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix_dp_core.c
@@ -1427,21 +1427,13 @@ analogix_dp_probe(struct device *dev, struct analogix_dp_plat_data *plat_data)
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
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
