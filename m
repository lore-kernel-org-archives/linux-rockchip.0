Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CBAB2C41513
	for <linux-rockchip@archiver.kernel.org>; Thu,  9 May 2024 12:07:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ycs2uGboooUUDpN50Hk94VNQ1Ibv5KR+a/fqdHLoZE4=; b=nK3JdvZuLlWaJ0
	qLe8wiICs7REUHbcifLPmyTRZvNIQ5wcyoblpyZLDj7Pjwu/1Xsm1gQ7ltCQpjKXI8KIYimjGPMFQ
	AKT99FxJAQBsEr230aH5w7t4SBFkwjlrjVOINNrzrZk/zGqD4ctt/7ZaTQPlLAf/8TZWN9FTDXBf0
	YpZKQ8/+d5CEIQIigI5YsSgUTFfADerpWCPoHkhtiYsUceuMvwj3FRKfikZdVxxPOfvj8kNFLhP+U
	1+NX2JZP1DZZILR4ZUAV9cyhNkjapMHHbsJbimwWYiv0BnwA4qBcyRjgl9xSk9nJE0kHBI3at5V/M
	QZxsdRnf9TRoL9E0Xp8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Z0-00000001MUK-2cCU;
	Thu, 09 May 2024 12:07:54 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1s52Yb-00000001M51-1wxN;
	Thu, 09 May 2024 12:07:31 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-51f1bf83f06so789683e87.1;
        Thu, 09 May 2024 05:07:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715256445; x=1715861245; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=q8klZW1X3Sda14Lq0eRI1WDVW4JJJl7xuMqHEZ5sEhE=;
        b=Dh4SlIYbxRbdhG1sX91QcBA6b9je7v6yNpGqld/QXjiLDphpWL5J049Zi3pdmGENP1
         ZP0fCNja3reim6YNy7o+wAAF+NbfO77b0S7SJm+MGb2P0/WxSWxnr7Kxsx2rbsMgbQSz
         qJGq2/0miyf41LSi6lb726qdOcAVrp3/OR0hvqMeNJSztsvBPZWEm97MJtyNUaranStv
         tlv1cQkZl+34u/11ObSOB7lnYP24lxnYFdQwzDUSrZgavvmO184c1XwRDgAFzwH6ExBV
         9d0d65Wk3+A3UciMORUR0gUTnxcL48nPSTpnCckiFZ4wemIhbJcTwNO/PPzgRccPjCwJ
         IPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715256445; x=1715861245;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=q8klZW1X3Sda14Lq0eRI1WDVW4JJJl7xuMqHEZ5sEhE=;
        b=t/y6iJvaQHusFP8FLcIDrn8iDqexLSTS7AMsescG8myeKhjor1bgaGR2MfjGBiOyWL
         rgOYXcBu4vA4djtLUtnFPwIKeXaMdlvhTOt/cfIRda8SMuk/e6HcxIRZj4ZbW8S3JOlt
         FW6GTAN4/xRb25zaBILFqQvI73dQT0/4MHYkXJQYgiKJMkCAkM5h/wzYPKevAcFxPwg+
         r1n3/X8MLPCWCTXC1QSjhlvJW7OdeotNqc4ni/nE2LMCbn0BIkNZmt4Vsq44he7RTnui
         RGdfLOj5qvrTlrZTg8lYJd+9/8l07fMlcF/8wpa5uIYFAd3bmKi9KiCt6UdZpcY2pwuP
         OXpA==
X-Forwarded-Encrypted: i=1; AJvYcCVyK7mYO4SzYa9SUGXBcyZEePMkh69fZ6k1crBX3DYObhnAMx/A6fH5dBmnrclTJIixUyDUZV90tC/sb/iViEhx3tpsX4w50L9xUOFTWY3dg+FXBnn+dfikLEvExS30LZW4AJE4mrApQv6nLgEjT6pwJT3s3AMTnJg=
X-Gm-Message-State: AOJu0YyQ0dtf+OMqc0tfyAscAzz7lSTH8+sbY8Od57/dhsZWu/SXpR+D
	s2deqkiN3gHJH52rjmRHw6OtsBb2B3WF4OqKIllDKTtr+Dz4iqI=
X-Google-Smtp-Source: AGHT+IFecuxCJWM/nUWDhGJ7gBSfItZDqcg8FMCaOxeHy6FMY+wOyJdPzB48iweW2PiFVOX6Z6J58A==
X-Received: by 2002:a05:6512:210a:b0:51d:9921:20f7 with SMTP id 2adb3069b0e04-5217c56f496mr3116279e87.40.1715256445211;
        Thu, 09 May 2024 05:07:25 -0700 (PDT)
Received: from U4.lan ([2a02:810b:f40:4600:b44:d8c3:6fa8:c46f])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-41fccce1912sm24112005e9.11.2024.05.09.05.07.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 May 2024 05:07:24 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Sandy Huang <hjc@rock-chips.com>,
	=?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
	Andy Yan <andy.yan@rock-chips.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>
Cc: dri-devel@lists.freedesktop.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH v2 4/7] drm/rockchip: dsi: Support optional AHB clock
Date: Thu,  9 May 2024 14:07:12 +0200
Message-ID: <20240509120715.86694-5-knaerzche@gmail.com>
X-Mailer: git-send-email 2.43.2
In-Reply-To: <20240509120715.86694-1-knaerzche@gmail.com>
References: <20240509120715.86694-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240509_050729_580463_A7AEED19 
X-CRM114-Status: GOOD (  15.27  )
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

Some integrations of the IP additionally have an AHB clock which has to be
enabled before accessing the registers is possible.

Add support for it as an optional clock.

Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
changes since v1:
 - new patch

 .../gpu/drm/rockchip/dw-mipi-dsi-rockchip.c   | 25 +++++++++++++++++++
 1 file changed, 25 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
index 4cc8ed8f4fbd..6ed64cc35275 100644
--- a/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw-mipi-dsi-rockchip.c
@@ -265,6 +265,7 @@ struct dw_mipi_dsi_rockchip {
 	struct clk *pllref_clk;
 	struct clk *grf_clk;
 	struct clk *phy_cfg_clk;
+	struct clk *ahb_clk;
 
 	/* dual-channel */
 	bool is_slave;
@@ -1153,7 +1154,15 @@ static int dw_mipi_dsi_dphy_init(struct phy *phy)
 			goto err_init;
 		}
 
+		ret = clk_prepare_enable(dsi->ahb_clk);
+		if (ret) {
+			clk_disable_unprepare(dsi->grf_clk);
+			clk_disable_unprepare(dsi->pclk);
+			goto err_init;
+		}
+
 		ret = dsi->cdata->dphy_rx_init(phy);
+		clk_disable_unprepare(dsi->ahb_clk);
 		clk_disable_unprepare(dsi->grf_clk);
 		clk_disable_unprepare(dsi->pclk);
 		if (ret < 0)
@@ -1240,6 +1249,12 @@ static int dw_mipi_dsi_dphy_power_on(struct phy *phy)
 		goto err_phy_cfg_clk;
 	}
 
+	ret = clk_prepare_enable(dsi->ahb_clk);
+	if (ret) {
+		DRM_DEV_ERROR(dsi->dev, "Failed to enable ahb_clk: %d\n", ret);
+		goto err_ahb_clk;
+	}
+
 	/* do soc-variant specific init */
 	if (dsi->cdata->dphy_rx_power_on) {
 		ret = dsi->cdata->dphy_rx_power_on(phy);
@@ -1269,6 +1284,8 @@ static int dw_mipi_dsi_dphy_power_on(struct phy *phy)
 	return ret;
 
 err_pwr_on:
+	clk_disable_unprepare(dsi->ahb_clk);
+err_ahb_clk:
 	clk_disable_unprepare(dsi->phy_cfg_clk);
 err_phy_cfg_clk:
 	clk_disable_unprepare(dsi->grf_clk);
@@ -1296,6 +1313,7 @@ static int dw_mipi_dsi_dphy_power_off(struct phy *phy)
 			DRM_DEV_ERROR(dsi->dev, "hardware-specific phy shutdown failed: %d\n", ret);
 	}
 
+	clk_disable_unprepare(dsi->ahb_clk);
 	clk_disable_unprepare(dsi->grf_clk);
 	clk_disable_unprepare(dsi->pclk);
 
@@ -1429,6 +1447,13 @@ static int dw_mipi_dsi_rockchip_probe(struct platform_device *pdev)
 		}
 	}
 
+	dsi->ahb_clk = devm_clk_get_optional(dev, "ahb");
+	if (IS_ERR(dsi->ahb_clk)) {
+		ret = PTR_ERR(dsi->ahb_clk);
+		DRM_DEV_ERROR(dev, "Unable to get ahb_clk: %d\n", ret);
+		return ret;
+	}
+
 	dsi->grf_regmap = syscon_regmap_lookup_by_phandle(np, "rockchip,grf");
 	if (IS_ERR(dsi->grf_regmap)) {
 		DRM_DEV_ERROR(dev, "Unable to get rockchip,grf\n");
-- 
2.43.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
