Return-Path: <SRS0=31Gl=OS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9294C433FE
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 21:36:25 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 8229961381
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Sep 2021 21:36:25 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 8229961381
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=chromium.org
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7zygXRkJuSPR9cN+mTSsQA5kfm9OoLcrZAoo1o03+xw=; b=uwCccfl4toiVli
	LxOWvxEF7BTyC1h0zUBazTfChF4Wyw7xCqu2D+U846AjIqoEmKFYBNUT7slqMPKfhb2PxhK6D56Zx
	7BMzzg/9dbYM4qzz1jPaAdZNnUfMMLCzZopUdbw6LCi629skTW3UpZ/vscRjDs+1HzlsYU8xV6bnL
	vzL+xV3bgyu9YIC7v27apj+mWUboEDbr6Cm6/S0cOolIIOrberDzl/24bnM8ycrHlL3t2tBQBthka
	pKyeDYiGqzGp1Kj8ifv7h0bBBneR/NKrHD1djTZxOWhEvtemdO99+QqRUblIOQFCBforATTtQFr7d
	T/lbaj+sn2SGSOk4ZGgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mVKlx-008t66-IS; Tue, 28 Sep 2021 21:36:21 +0000
Received: from mail-pj1-x102d.google.com ([2607:f8b0:4864:20::102d])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mVKlp-008t0x-Kq
 for linux-rockchip@lists.infradead.org; Tue, 28 Sep 2021 21:36:15 +0000
Received: by mail-pj1-x102d.google.com with SMTP id
 om12-20020a17090b3a8c00b0019eff43daf5so171316pjb.4
 for <linux-rockchip@lists.infradead.org>; Tue, 28 Sep 2021 14:36:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1LNSqUpNDlXbVZHt+Lb7O7KY/KMDbp0tDoKUCa6MfgQ=;
 b=BSP9s5A6HNs96Xx3gqzT+DHPRVUCnZ4QKZEF4NOnGWm0ur51PvnoX9wbs02LwzNzwQ
 ul1lq7z8w8PFSB7SbjCJH01zZU7Hv604HAD2e1CjM1A/DQG+YJQVbteLvOHVwYSQw9UH
 TCehEAZQTlJrOdXrob7IQA9eZy1fITvLTASSE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1LNSqUpNDlXbVZHt+Lb7O7KY/KMDbp0tDoKUCa6MfgQ=;
 b=5mKEYgn7joXxWgfI2yz7yhmvxI3TGRmXZ6rS6SlHiyNQbWmRe6vooFM1oVd6UhQ6C9
 zsVWZZ4wfiQQw7872I7phSM6NPcXiBaWCW9aUgXIb3Hc4ebcoZX8l+2cWV3c5WYpqn1P
 xEXjTfwmnWoS4OzyhZtpCq0SUh3gaLW81KEjbkSSDhONg/vPiXsFr8tf344egGRQhPJa
 uXZiac9W7GVKn2EecKqhH2Gnrnsln+flRR+JQcy+dBAr1euWT8gfKLLruNi1LT0wWc4+
 kx1SQFkQ4AaPk4/k8dEsB95otTyUt0VWWphXklj4qlBSzaG74m2TOgAJk0v11pgu5iCM
 stdA==
X-Gm-Message-State: AOAM533edbjtsQOdFM+t9EfUV3CD2EfVr3wWIhjPqQYpDNfPiXoe6bAc
 uRlwH4uRtIsP8Kyrv7y+F8KbFg==
X-Google-Smtp-Source: ABdhPJxjbWSkdJdJzilKLHeRp1lHIcZWzW4YtepNGEvc8VW+u0wUL7tQbw8C+0nidF1DgUI3HUWpyw==
X-Received: by 2002:a17:90b:1d12:: with SMTP id
 on18mr2316906pjb.180.1632864972431; 
 Tue, 28 Sep 2021 14:36:12 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:d7ca:580:94ab:8af8])
 by smtp.gmail.com with UTF8SMTPSA id i24sm76520pjl.8.2021.09.28.14.36.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 28 Sep 2021 14:36:11 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc: linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-rockchip@lists.infradead.org, Sandy Huang <hjc@rock-chips.com>,
 Chen-Yu Tsai <wenst@chromium.org>, Thomas Hebb <tommyhebb@gmail.com>,
 Brian Norris <briannorris@chromium.org>
Subject: [PATCH v3 4/4] drm/rockchip: dsi: Disable PLL clock on bind error
Date: Tue, 28 Sep 2021 14:35:52 -0700
Message-Id: <20210928143413.v3.4.I8bb7a91ecc411d56bc155763faa15f289d7fc074@changeid>
X-Mailer: git-send-email 2.33.0.685.g46640cef36-goog
In-Reply-To: <20210928213552.1001939-1-briannorris@chromium.org>
References: <20210928213552.1001939-1-briannorris@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210928_143613_752461_605C694C 
X-CRM114-Status: GOOD (  11.45  )
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

Fixes: 2d4f7bdafd70 ("drm/rockchip: dsi: migrate to use dw-mipi-dsi bridge driver")
Signed-off-by: Brian Norris <briannorris@chromium.org>
Reported-by: Chen-Yu Tsai <wenst@chromium.org>
Reviewed-by: Chen-Yu Tsai <wenst@chromium.org>
---

Changes in v3:
- Add Fixes, Reviewed-by

Changes in v2:
- New

 drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 8ea852880d1c..59c3d8ef6bf9 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -945,7 +945,7 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
 	ret = clk_prepare_enable(dsi->grf_clk);
 	if (ret) {
 		DRM_DEV_ERROR(dsi->dev, "Failed to enable grf_clk: %d\n", ret);
-		goto out_pm_runtime;
+		goto out_pll_clk;
 	}
 
 	dw_mipi_dsi_rockchip_config(dsi);
@@ -957,19 +957,21 @@ static int dw_mipi_dsi_rockchip_bind(struct device *dev,
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
 
 	dsi->dsi_bound = true;
 
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
