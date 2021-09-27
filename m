Return-Path: <SRS0=jpTb=OR=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 2C560C433EF
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:00:39 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id D04A3604E9
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Sep 2021 18:00:38 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org D04A3604E9
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6nIfdN2jRrbKEWSjx2nBf25vFiO2XMuZ0l8DfDVKr+I=; b=1dHHVco/nFNEs8
	AC2UyHKgCGLiJaG2qdzyy8Q9EBAfL+vlWccW/7nydRJfvYHakQ85ulhbLicBlbl+a2Hm8hl9VXvq9
	O6VdSeL8K2OMuKm5A+K2Hfydegw7I/zwHdIYOwby9+t4PMNiDeiQNabKpWmpazbMnhbYQYDQ6IR7Y
	91ChVOl3s5u7pdRnd1oy/D4RUTh88CmPvDBYgwNrh/ZZ7ObXuKyA79dl3WzbtBJYu2KFfYfkTUq1h
	UdolWtWyLwQR9ITwn0EKmfHUdiSRFhE76ulzAanXMuI9Z5d18Z6BBw0S2PoWQ9n/JmscjbrFr2dg6
	QaTzqRFBC8A7k92B+o4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mUuvb-003iAq-4c; Mon, 27 Sep 2021 18:00:35 +0000
Received: from mail-pg1-x530.google.com ([2607:f8b0:4864:20::530])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mUuvX-003i6C-Dj
 for linux-rockchip@lists.infradead.org; Mon, 27 Sep 2021 18:00:32 +0000
Received: by mail-pg1-x530.google.com with SMTP id s75so2015292pgs.5
 for <linux-rockchip@lists.infradead.org>; Mon, 27 Sep 2021 11:00:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1+a7FKoAYL96RPr7QGB+xkOteevSmzHcwGmtuLohIN4=;
 b=b/opL5QdAO5JDtZRjNuLtZQB/wib0usA33ZEHqJAYreIpRU/NtWka3Z1lPgKGBurqF
 qtg47my+uHjW3vpgdrtd9bvjcDcayVvHg0fMWGju5Uwm4LP2FFLetaGlofSo6sL5vi/y
 XNVcsAIuTod4ooj0W5mOYNv54mwVOVVemSZCQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1+a7FKoAYL96RPr7QGB+xkOteevSmzHcwGmtuLohIN4=;
 b=fqCz/zcmuFqtlFhRuVTqvaaRYrin/1SYlR7ueENVsM3N6iZKdSReg8yst6Z90mzlvd
 aVq6vh3is28ic+/pfse1IPMCwyrKiz9EoOky3cA/Y/oJHBCgq8Cu/ciIQdjE3EVJxQCp
 4q6MDuu53evy2kLPglmV6Q98B6dqNoH0wvvUNXP4XTo0ISj8R3mhzLMG1zegfH4vWfk9
 bJQeSjgEW6/H0HzYEWw9IPNc7HiwOq/74ZQg8+QxYO9JNZNk8uvUSDZbMYCaMuJ1bEeP
 nfN+PIwRZ089eenQeRMqPfmfquc7QHJnQYQIOUJMxp/d+v0QQNzHTBK23m+tNye8HaJc
 CSqw==
X-Gm-Message-State: AOAM532JIp6uJf2K4cS6dO16WYOhAgnq3MVTTMy4l2b5aH820mEBzENy
 wtj40ULLoZjOoJ9yTVR7lVAKrQ==
X-Google-Smtp-Source: ABdhPJxq7Y5R55DSsFgb767+FM/jYFg4xB9p3IXsKCB/X5PXOi8QwLfnVvoTDnR7LOJjxiCl1fIfRg==
X-Received: by 2002:a63:8541:: with SMTP id u62mr822463pgd.308.1632765625576; 
 Mon, 27 Sep 2021 11:00:25 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:82d7:f099:76bc:7017])
 by smtp.gmail.com with UTF8SMTPSA id b2sm18139527pfr.58.2021.09.27.11.00.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 27 Sep 2021 11:00:25 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: Thomas Hebb <tommyhebb@gmail.com>, dri-devel@lists.freedesktop.org,
 Chen-Yu Tsai <wenst@chromium.org>, linux-rockchip@lists.infradead.org,
 Sandy Huang <hjc@rock-chips.com>, linux-kernel@vger.kernel.org,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v2 3/3] drm/rockchip: dsi: Disable PLL clock on bind error
Date: Mon, 27 Sep 2021 10:59:44 -0700
Message-Id: <20210927105928.v2.3.I8bb7a91ecc411d56bc155763faa15f289d7fc074@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
In-Reply-To: <20210927175944.3381314-1-briannorris@chromium.org>
References: <20210927175944.3381314-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210927_110031_488836_37ADBA1B 
X-CRM114-Status: GOOD (  11.19  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Fix some error handling here noticed in review of other changes.

Reported-by: Chen-Yu Tsai <wenst@chromium.org>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

Changes in v2:
- New

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index fa4080176719..0ed13d81fe60 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -943,7 +943,7 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 	ret = clk_prepare_enable(dsi->grf_clk);
 	if (ret) {
 		DRM_DEV_ERROR(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
-		goto out_pm_runtime;
+		goto out_pll_clk;
 	}
 
 	dw_mipi_dsi_rockchip_config(dsi);
@@ -955,17 +955,19 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 	ret = rockchip_dsi_drm_create_encoder(dsi, drm_dev);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to create drm encoder\n");
-		goto out_pm_runtime;
+		goto out_pll_clk;
 	}
 
 	ret = dw_mipi_dsi_bind(dsi->dmd, &dsi->encoder);
 	if (ret) {
 		DRM_DEV_ERROR(dev, "Failed to bind: %d\n", ret);
-		goto out_pm_runtime;
+		goto out_pll_clk;
 	}
 
 	return 0;
 
+out_pll_clk:
+	clk_disable_unprepare(dsi->pllref_clk);
 out_pm_runtime:
 	pm_runtime_put(dsi->dev);
 	if (dsi->slave)
-- 
2.33.0.685.g46640cef36-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
