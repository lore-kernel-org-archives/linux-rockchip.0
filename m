Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ACE3CC88E4D
	for <linux-rockchip@archiver.kernel.org>; Fri, 11 Sep 2026 15:45:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vrv5oTnOkDkmntJKVFM1/Jnw9cB6D/KEYfUiYfThqiA=; b=CIPjsfY8KzhFSV
	6M5h5QpBpBxGo+BNJra4jp8EYlCaa5axXgvEEDc5QLvyznEBw971nBdYy7rleYdfCQG3pmLByyz6x
	R/KAMZE1j28c6O+Lw++D51T5qDcRh6gn8ZgnXjri1TT/X0kFIA/Ldt92rJiCM9MC41djXI4DHiHlx
	/+j+IEy138sHsyF/pVO0nE75nZv1aq7xnpoXne/Awx9ln4NI4C2FpRgPQKtfoF9CqFwc9MOLRi06i
	qHnMZEApSvwzgmvjYfyPU4UtNkzZsPpQ9/5LupJQeGd2M72pnPIDCiGwVJN0U3mcG7taLbrsWjSch
	6Ita2seaDtXbmCIGUoJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Ro-0000000H7fT-3FyP;
	Fri, 11 Sep 2026 15:45:52 +0000
Received: from mail-pj2-x10.google.com ([2607:f8b0:4864:39::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x53Rj-0000000H7eD-1Tlh
	for linux-rockchip@lists.infradead.org;
	Fri, 11 Sep 2026 15:45:48 +0000
Received: by mail-pj2-x10.google.com with SMTP id d9443c01a7336-2d90ba1d807so13102255ad.3
        for <linux-rockchip@lists.infradead.org>; Fri, 11 Sep 2026 08:45:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1789141546; x=1789746346; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=RmWPw9HQP1XagMM9TGKgOpF0w9bX79g0MmpHkabvFyc=;
        b=smV/VPDPOPC4OR3L19fDKJqOUsNx9sOvoTRGZFK37QutQGbUFdHLCfl2lD3AIyU0l7
         PqLCjBb+yVB3D+humwfPPnwzVGDopz5a0aUhGFf66Fe2apFxm5KI9Iab/MfU90gzND3k
         0D+uQ8R7zrrunCiUzBm5c/RGqeIB8ly9vmSedxwQ5Dz+xcxNBiuwDnHAuAbtGZTaINI0
         bPh3yzUibwDy9YHDE5a/64C499RH0fMhUpLMIPvDLGr6ep99HHuREMlNLX9djQKv9kAB
         IBnJVVYjYgM+oPqfWV51wbNdOAbj5XMa7UbYEKrrPnYaepYuL4pFiceVTUvYPNUoQuij
         sfLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1789141546; x=1789746346;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=RmWPw9HQP1XagMM9TGKgOpF0w9bX79g0MmpHkabvFyc=;
        b=mE9sctqT+NBEQRfbDFyqmq+r8k1MTKPbyCoN7I/yIcvZ31J5R55wX30Yx5xP+ZwoYr
         pjs9eYdCqz0SSw6kz1Qhx7tj695nCwtFfeXEjMgM//4aJOruGjCp+ENyWznPDIxgXbju
         3kJbj/91U6TuI/onoNGXl25kPk0Lh7fRAR3A0D0L90+1bV0NBtBuj3r/MTSiIKaxUmUi
         VwJNPSeG7g7oNeWXxe78yOPPpRS4QTHSgeZdNF0BH2R4vMd8JFPRU7rCWlusDAqJqszJ
         014yKz6OfnA1m09rtPQiI76tPlZ5Y7ZahwW4Aew7AVmEQuXLuCJbiOevS7BT9sbjJoCy
         fBeQ==
X-Forwarded-Encrypted: i=1; AKwUvByQ+8jXNP+V97eJ2lWly5KTUqSye9BBNRGaUpkEVgmpdY7qMZnUT/qoBhCFY8i/7TBJCJ/F+hkxjQKBQy5wvQ==@lists.infradead.org
X-Gm-Message-State: AFuF++kc2BcD/9tdCT3YMm0RbDA3Kg4UcU0shQfcM04BlHyCfNi1rdUe
	Q24AVEV5xpVgFcJ+7ncjS8Py7VjeVeloDo1ZfphltHcPpuvROlFUv6/1
X-Gm-Gg: AYBFou0a9APEvUJNga0GNzeO4k5UyiHeNZ18hwZX5NtcyYI6l/vWido/DRm/iNO8M9s
	NYeUdLggXr4Lrwc3Nku0FilQkMiKKNR0cweRVjCeP+FLi1+v1WfDpnKFb6vh41+r9GX0x8Kflrr
	FnTEJiWcfFq3o1YVGvkQk/sCgg9fo9mAJ1Qo4Y4Ei8fFxOJgjDee8VZspHR/5ysTxnAGlZT9+gg
	G2VGVHDBVOpsohoUvJUeqC0xlkfpW4dsdZM0yG/yRc6SYLSRA2hFREM/4KsdUvKKPKWx+NI1lC5
	jHDvBvYfgPbLmhuTPSpS0WlNcuYAuxkvuREm+ILNAMYkHXRciBE9OL++vAjLsPqMajrXCPFPBDA
	bz8hqVFaSbkROlxDEEUQpZ1PLZnDZP/+xfEDdt8D3v+AlsmyHR8WAOMFV/qrjxT/R5WLNC8nt9J
	rdlK8SExX/hKQJPo3/MLbk+4m4b6l80ETyivZKU1sjU9hXPGxXgLkvjaQ1QTASR57AFbwkoosql
	wNxJ1UM
X-Received: by 2002:a17:902:f60d:b0:2db:5c0a:f184 with SMTP id d9443c01a7336-2dd2a34fd91mr100447505ad.17.1789141545988;
        Fri, 11 Sep 2026 08:45:45 -0700 (PDT)
Received: from arch.localdomain ([158.101.31.158])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2dd2cfc2d3bsm13628145ad.48.2026.09.11.08.45.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2026 08:45:45 -0700 (PDT)
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
Date: Fri, 11 Sep 2026 23:45:33 +0800
Message-ID: <20260911154535.266121-1-jerrysteve1101@gmail.com>
X-Mailer: git-send-email 2.55.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260911_084547_397552_D1C2D795 
X-CRM114-Status: GOOD (  12.33  )
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
