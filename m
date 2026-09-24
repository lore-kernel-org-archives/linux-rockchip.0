Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2EC5AC9830D
	for <linux-rockchip@archiver.kernel.org>; Thu, 24 Sep 2026 02:04:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vrv5oTnOkDkmntJKVFM1/Jnw9cB6D/KEYfUiYfThqiA=; b=3wHXVVjy8JvCqh
	YsS51WhUe93TLELVpjJ1CnfDXS2pB7VLQIPGHaQy3q3MFrgtv3twraIEnMOGiFL8dZgZj2oQxNCLM
	/3GYTjXKIauRG27s+Dn6S8CEmOU+Yhm8SdB33mJmO6zwZ/lHjsP1xCpps02Jn7qcj7IduiXrHK1cN
	8/TUZvX6uW7UczkelnEHBho34wrxH9IYurI/6TO6Ydn+ADfo9mhirMe53lT3ldAZZbKBQDrcWlw+2
	yxO0E6wCGwpipYv93hahGHqfPnNofwm+XcyOJ7ilXaDAy8tooqS0GXDYlxn/sghHQIeS3hOL4iIum
	Kzs59PXMJvJIruD6pDIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Yp6-00000009q1v-3Qii;
	Thu, 24 Sep 2026 02:04:32 +0000
Received: from mail-pz2-x0f.google.com ([2607:f8b0:4864:3b::f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9Yp4-00000009q13-0KD1
	for linux-rockchip@lists.infradead.org;
	Thu, 24 Sep 2026 02:04:31 +0000
Received: by mail-pz2-x0f.google.com with SMTP id d2e1a72fcca58-85469d249c5so993349b3a.3
        for <linux-rockchip@lists.infradead.org>; Wed, 23 Sep 2026 19:04:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790215469; x=1790820269; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=RmWPw9HQP1XagMM9TGKgOpF0w9bX79g0MmpHkabvFyc=;
        b=Q8QloAngvWmx5UzZZ29wqtS6n0AxzWrYS4sctEjYvU/5yFA2rrFbQNOx52FBZmBXG/
         2gXmdUkBezSFElT66oQ/CoMvmB3X8D0Z89ru44xPI+qGecmVft2+ydqqVRNzaHl1RycA
         78pYx00IGYPRdzVb018f0QLwG8rkOp1fLYWtFS5UNXX1fU8eww0MA0Hu3PvZTLKPLBuN
         i0adKu8unnIT3xZVajXCLFe2IkuZ0wlyWwvxbLj+ojkIAzR2XypW10NkE/HeDOMWrahX
         0rF/UxOUasLq8F5/hJMezZTntzmwxuQ/t/fgiHNPEH7AkelORygE0Sshy/AYwmnyUV4g
         ii1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790215469; x=1790820269;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RmWPw9HQP1XagMM9TGKgOpF0w9bX79g0MmpHkabvFyc=;
        b=CKrSh+Uro0hXDHmjslnxSGb0Xioy1UqNd5TOPT43a8O2icBbve8/zep0ma79lHnbOB
         5Prt5XRQ8BgSndmx+PCn3WN2iqFuVNWQVytWzZGIotiqmddl9qynn+lgERs/Vt/0jzs3
         NhEA1eII0HCMagOUZm4MrEbulfGnJKcfGbrMY9zYyJYhFoqq86nAXhEirxtQUJwsVLVo
         rmPXdXu6NjMq1vCO9LBNdUAN4ZmrmhHb7yvHmttlERtywEiEtXPY0dD/s65kGvkXVfA4
         1DNYu6mAsuhTD0kFR8JzvhG3Ie2Yy+nwlweoBq3iEaq2XPshjtp57Kx6S/EMn8GyYlxf
         G0mA==
X-Forwarded-Encrypted: i=1; AKwUvBz679y+kXjriNUcQxcFN0RZdtdQ4Dal0+wm67se4RyWZTyOTREXt81jCHJ6CVLFp93B9QCvpxki4rkY8UHO1Q==@lists.infradead.org
X-Gm-Message-State: AFuF++malf1b8coD/QVgGoc3/DxBNSlBI7+y46RDGVJO2Yv4c52CFuz9
	Kbwh6Uj+RffRT2jS7N3VyqyBnaMgMRCFwRVmNUWchVSAggiOZEtBENvEfRpXk5I9m3U=
X-Gm-Gg: AYBFou24dRk7YM+6OqK50njtXbK9MNUuPXD2rX0ex8tZfktnSEPWe4BZXF6wRslqXs3
	EMTSi1OI7BG+l9S5dhGNMOqDgyd5YUgwQvcU3iYgHUSwradVhRlkV6KckSu+5U6iFrOxEYDPJRG
	aEfwWEHmuvla14PrtRuf99tr/ol8TMvBfVI4FCSM26s0JXIz1Lgb70Qb6ttUxUflamvK3Phz3bD
	Evq6rWIYt7XleVryHk6JRMkDbZIz+ihCkisi4qU178shSGWMdP/DzmGIwfACgEdgmpnPDyuT77r
	lUee6NB6leTj5frunpreVY13r8HO/ZjCuKrg1ZhM8Bcbe6ZKRU+vOGXJMAq0YOpNiGC4KvqVBWM
	boq3gGp27kuDBDcSGJ/oNA7kdVuk9+0BMo/NYjrHWMuvmHXsbmDkh0EnxQ3HYJjrz0Pdd+XTf7L
	22Wxn0i1ULPEfFPc1OpNrWospwVVlo+uVMq5OC7lusGPTnXWDFi75r0yt6SFlKH4p+zJbXIx8+h
	ZtjHdab5m46vFBHWpOYt4nPMcTDgPIf
X-Received: by 2002:a05:6a00:6088:b0:874:706d:856d with SMTP id d2e1a72fcca58-87e9b3ba37amr753328b3a.30.1790215468861;
        Wed, 23 Sep 2026 19:04:28 -0700 (PDT)
Received: from arch.localdomain (123202092053.ctinets.com. [123.202.92.53])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-87d1d5c1331sm2041625b3a.24.2026.09.23.19.04.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Sep 2026 19:04:28 -0700 (PDT)
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
Subject: [PATCH RSEND] drm/bridge: analogix_dp: use devm_phy_optional_get() for the DP PHY
Date: Thu, 24 Sep 2026 10:04:16 +0800
Message-ID: <20260924020417.868588-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_190430_113148_7DCDE002 
X-CRM114-Status: GOOD (  12.44  )
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
