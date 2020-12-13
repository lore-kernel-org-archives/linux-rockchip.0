Return-Path: <SRS0=qXuv=FR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B54FEC4361B
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Dec 2020 20:57:58 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 740E22312A
	for <linux-rockchip@archiver.kernel.org>; Sun, 13 Dec 2020 20:57:58 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 740E22312A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=58C9OoXG2QDDOFp3Y07ifDR9Zi1hc6JfrTSWXZNREi8=; b=RbIQlvHQ9WBwjqniKxzVAp0HQH
	xu61lq6V2Teuj0HObTyGDMF2lMMee6jd6ZD5BP0rmfWdzeiH7OSgzXiIGnHebnXX4mfi/Vi/41pLs
	wGULieU4xDHxJqYqHC9N5EtwCOunpgAK5c1MczHeZpziyssMuSBL5AeYFn5fdgtBdnYyoULRMy7oi
	SwfVOVCG9NWlTLJaolcmAwCR5v7yKUh+NX0b4F0r2UXd/QF4Dh7IaP6mX4v/9LWavgSYRzCT0iMxJ
	SzquxGjFTG4uxXAIhfrnPbhTwm/bmh9LiVhm6GDgQbl/J4LyWlvNYewRCJlciXUXJpGaIzho23iFe
	064G4+XQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1koYRC-0002TZ-RK; Sun, 13 Dec 2020 20:57:50 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1koYR8-0002Se-MX; Sun, 13 Dec 2020 20:57:47 +0000
Received: by mail-pl1-x643.google.com with SMTP id 4so7526133plk.5;
 Sun, 13 Dec 2020 12:57:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+C7df/JhpDNOhvRuvCv8MZFRD0LpPBGsO24mPtK2tQI=;
 b=JAssQKBLdQSUpXX1qdsRhJs56Z8/S+6oAKAbc2F2UTnmO2I+q7uRH9uRh4kOH21iAu
 /RyV5qbTL3/JHc4nWUw6rUycYHRekYUz26ozaJTKdun9or8Jn3ihWkW4HWXRirHD/RAm
 Bbsa12k6y8jSu5N/XXdY4KEQINEtcq2Hhz6/gUW9AA0/zEtIA/9N6apB5ZLhh5oINcp6
 J0s66SmiAsEB+r3QWzQw4NCzqABm2x/uWZN0/zWdfYMK3vHC4pDYVuZX3n4W04xHqH4a
 jV3jwPifpbjlwWQrr0FHxTpwmXU1VBwzhzy21Hb9lY6JIQ6uNQ3lFXB7309yQV78olIj
 jPYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+C7df/JhpDNOhvRuvCv8MZFRD0LpPBGsO24mPtK2tQI=;
 b=fRtIeLX3DUuiklvXzHP0WvKwUFaS8M7laA4Ssh08tRlZxQUhDbLTGZRjqO+v6UM7yj
 UAgWSLXxvJEMyxvsCI0gs/VNHxY+euHTzu9Xwc0TxXhUdMjJALMv+ECEJLdhQrGFkkEr
 RdlLjO40E8FrHblx7VrNwmmAf/6TFs5TAVSoVJczgUgGuYhQkYmNgz0R5XxtFSGdTzvi
 wxMcmLlQrXnu7mEdM3lFTRxl7homC+uUROlRX9qeEqNkLGNHXmTzfbt1Y2dDWazyKf3d
 eqqlmuIFsRQ/rl3+oqvjnLKLu0Fv+LeBaQTzZ5qPeWAFn+qggdC2lIhVSyhHOk/ia9pa
 mOGw==
X-Gm-Message-State: AOAM530qMQgg/apDL+HecBKRdbCm6yREBZzwJs8SAKJeGIKlavFpOAKW
 iGXtYCnwnid/A76pwvhgKqU=
X-Google-Smtp-Source: ABdhPJxlNQ9tZOYsryjlZNee15dnRjN02bQG+zSlcPfd2KePaHUVhVXhFDGFhfxyCkac3knOhN+0fQ==
X-Received: by 2002:a17:90b:3698:: with SMTP id
 mj24mr21767123pjb.149.1607893061404; 
 Sun, 13 Dec 2020 12:57:41 -0800 (PST)
Received: from glados.. ([2601:647:6000:3e5b::a27])
 by smtp.gmail.com with ESMTPSA id 37sm14173930pjz.41.2020.12.13.12.57.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Dec 2020 12:57:40 -0800 (PST)
From: Thomas Hebb <tommyhebb@gmail.com>
To: linux-kernel@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>
Subject: [RESEND PATCH] drm/rockchip: dsi: remove extra component_del() call
Date: Sun, 13 Dec 2020 12:57:26 -0800
Message-Id: <149477f8d5d5a76c624766cb8cbdfdb3fa416ee8.1607893019.git.tommyhebb@gmail.com>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20201213_155746_821062_B31B9BC4 
X-CRM114-Status: GOOD (  13.92  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: linux-rockchip@lists.infradead.org, David Airlie <airlied@linux.ie>,
 Sandy Huang <hjc@rock-chips.com>, stable@vger.kernel.org,
 Andrzej Hajda <a.hajda@samsung.com>, Thomas Hebb <tommyhebb@gmail.com>,
 dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

commit cf6d100dd238 ("drm/rockchip: dsi: add dual mipi support") added
this devcnt field and call to component_del(). However, these both
appear to be erroneous changes left over from an earlier version of the
patch. In the version merged, nothing ever modifies devcnt, meaning
component_del() runs unconditionally and in addition to the
component_del() calls in dw_mipi_dsi_rockchip_host_detach(). The second
call fails to delete anything and produces a warning in dmesg.

If we look at the previous version of the patch[1], however, we see that
it had logic to calculate devcnt and call component_add() in certain
situations. This was removed in v6, and the fact that the deletion code
was not appears to have been an oversight.

[1] https://patchwork.kernel.org/project/dri-devel/patch/20180821140515.22246-8-heiko@sntech.de/

Fixes: cf6d100dd238 ("drm/rockchip: dsi: add dual mipi support")
Cc: stable@vger.kernel.org
Signed-off-by: Thomas Hebb <tommyhebb@gmail.com>
---
Resending since I wasn't subscribed to dri-devel

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 542dcf7eddd6..ce044db8c97e 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -243,7 +243,6 @@ struct dw_mipi_dsi_rockchip {
 	struct dw_mipi_dsi *dmd;
 	const struct rockchip_dw_dsi_chip_data *cdata;
 	struct dw_mipi_dsi_plat_data pdata;
-	int devcnt;
 };
 
 struct dphy_pll_parameter_map {
@@ -1121,9 +1120,6 @@ static int dw_mipi_dsi_rockchip_remove(struct platform_device *pdev)
 {
 	struct dw_mipi_dsi_rockchip *dsi = platform_get_drvdata(pdev);
 
-	if (dsi->devcnt == 0)
-		component_del(dsi->dev, &dw_mipi_dsi_rockchip_ops);
-
 	dw_mipi_dsi_remove(dsi->dmd);
 
 	return 0;
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
