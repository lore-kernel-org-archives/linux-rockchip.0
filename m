Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0508CD277D0
	for <linux-rockchip@archiver.kernel.org>; Sat, 10 Jan 2026 01:07:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CLBNFfsslLjXO4uc2qljgWnWaMcBCOPXg2v016+imVw=; b=kDRNH9oot5whMD
	cxTi0Q6etxqDt/RFTJJNJwib1Ir1e57lnGLq0Wr35VILnzYy30RPhjntNJTqAVGzZUM399IR0k0A/
	Cxj64UfyXmo/QbK/LTXyQ2Antz6IeG643sx0903U68Q+Dt4sjXGc8mTMQrK9naFqilMcA3FWgBGf3
	HakoD3BYXBlvW9kQDThTCOT2drv8Vw8DVyxyfl/tMhS93fNuU2fI5n1GQ/DXvR2BM6kH7CMyCzt+d
	L9aVkZhotCVaB5UzuNQKFMRwNYdEzAMHnLH74XLCY4u66eYM2MoLqMatir7QGH//ZJL2ybvFRVH8J
	dvQHZ56/P2SJjyQye/DQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veNS4-0000000393J-1OHO;
	Sat, 10 Jan 2026 01:07:36 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1veNS0-000000038zI-1l38
	for linux-rockchip@lists.infradead.org;
	Sat, 10 Jan 2026 01:07:33 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 5b1f17b1804b1-4779adb38d3so33519815e9.2
        for <linux-rockchip@lists.infradead.org>; Fri, 09 Jan 2026 17:07:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768007250; x=1768612050; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3mRvqRARBlLlFVSu4cS3ROES8gW2l+6tv55cSmtfsrs=;
        b=ImbzUp6HLG6E0sLrrOAPLhJiUYP9Pxdn9puJBDHRgtx/gc0NkCqELTjc5bcpmuKeUl
         +k2fiVoY8Zld0MY+5rexugMji3kXfwzccOJoF/bZAvCJIe61gpqNRHyc5sc7JsU2Aitm
         jOnGItCOk7e2ZT8jLTFZ8jiT7eWTIzSyCkD311glthQ2acALE/uzwMInLFYnXYyO2TzO
         EIkh2bt13c+eWwgH3dXE7eGPXsxygnjkgOuCGU86tuemodULiRW5C2g05pPJ2IfLSCME
         YvN6Lrk/cRodcYUmlr4MPo6jyMLhI/+BLnomTFFs4splG9Zgixa1nFeWwkTK8zdS9kzx
         85XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768007250; x=1768612050;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=3mRvqRARBlLlFVSu4cS3ROES8gW2l+6tv55cSmtfsrs=;
        b=T4q/HoYmnJRYetNJKvWvp7FwU3W1vrJGF42W3D7ETgHdw899K90PMyzumfnTYdTshg
         g5gCVl18pOwKfvOB642XJrg35lxK/iSRJPFmWsF5h9TxOgve2aVDngbYNHjUkye7Yt8m
         nupdpCZMsyDbZWgPhYtgu1C4PnfYvdeu+MB+VWpih7V2DOt5onjUXqSA2GftAQS1Rp7S
         62m/D2vqjgJhfjRM5z+HlKABemEiMLGVSFpSVW4DjB5mGZb34LybUQMkWKsBnI4fTOEf
         jX3seCaKFpFdKe2ZxGGWcrj5rxrrKaewxOJYmJGbiVgbbnSYrUa8RX5O3O0hZfmR6KXK
         5dyg==
X-Forwarded-Encrypted: i=1; AJvYcCX+gOgVHnXu4Z7jvhbu/jssKyFXwt1gx5LaGe3F/d/g22PxAkWdoD33M+BJq+voQCl8PDMBf48d84319iaApQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzxpLS3Ffn6dufxgR132zqELtbsmeNHDjt5Wo6Mwy+bhCcYxA8R
	qjduKaHr8FUCmLZ85QE5Nb6EhyuTOGc6ZoFlw9LC2acAiVQBlyoIDOjL
X-Gm-Gg: AY/fxX78hf7oHvuXVZCmiksqH7barrL5m0T0cegKVMgkOcFY+dhf/UiMaq8G63EdBCF
	1mXGEe2FHJ8kWm70DNIsIdvhwaJ/Bebn9aZ7SKZBSck7OxmrJf0iQxNlpSM9U0HvHgHUGRh2ST1
	gHPgqbTkqIlNo5O6BO2OjuJ9NlB9s1yDYlBqLQ+vvf7YuMCNe82UTi1TkKtJNjAHkYZIw8gVDc1
	RwR/rT4oaU4I6yE0VqUMLw+GqeCoY6UTqCY1Lv2lD2i9NCkGRt0Z2KP+r5BWLglNGm4jp2id5K+
	g2Aa31XZD0E9dxYXxVKE30wFzBmV5xDpSkwdgbM/fSYRvxQUeNVB84rk1mrY+TgR6Lu01VVPSNV
	iYd0mb1l8Mj0+y76Mm5P7SASu8eDHvQVyu5F4JmDCggETjmbd0orzaI2RTAn5aD/vnqdc1w+SQ5
	NYV3TaTyDQ0PqMZuD5kfeDULUPiKUD6yy5s6/d+5Akl5ceooaqytKxtSzA1RdvcafFHb0Uvhu9h
	ffFuW4=
X-Google-Smtp-Source: AGHT+IEruxoVLQw+uvAQdMicgfFRe8XyeFbrLqGms3k4V0pLxVUBHW1PFuUJeUnVq2ysNptvW2pOWA==
X-Received: by 2002:a05:600c:83c7:b0:479:3a86:dc1c with SMTP id 5b1f17b1804b1-47d84b52e31mr128613185e9.36.1768007250459;
        Fri, 09 Jan 2026 17:07:30 -0800 (PST)
Received: from stor1.home.marco.cx (ip-178-202-227-016.um47.pools.vodafone-ip.de. [178.202.227.16])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47d8717d9e7sm71779475e9.8.2026.01.09.17.07.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jan 2026 17:07:30 -0800 (PST)
From: Marco Schirrmeister <mschirrmeister@gmail.com>
To: heiko@sntech.de,
	ulf.hansson@linaro.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Marco Schirrmeister <mschirrmeister@gmail.com>
Subject: [PATCH v1 2/3] mmc: host: dw_mmc-rockchip: add rockchip,disable-runtime-pm quirk
Date: Sat, 10 Jan 2026 02:07:14 +0100
Message-ID: <20260110010715.1610159-3-mschirrmeister@gmail.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260110010715.1610159-1-mschirrmeister@gmail.com>
References: <20260110010715.1610159-1-mschirrmeister@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260109_170732_489407_AD271B94 
X-CRM114-Status: GOOD (  17.31  )
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

The FriendlyElec NanoPi R76S (based on the Rockchip RK3576) suffers from 
a persistent bus-reset loop on the microSD (dw_mmc) interface during 
idle periods. When the microSD controller enters runtime-suspend, the 
subsequent transition back to an active state causes the bus timing to 
become unstable. This forces the driver to drop the bus speed to 400kHz 
to perform a full retraining of the SDR104 link.

Investigations using the runtime_status interface confirm that 
preventing the controller from entering a low-power state stabilizes 
the link and eliminates the reset loop entirely.

This patch introduces a new 'rockchip,disable-runtime-pm' Boolean 
property to the dw_mmc-rockchip driver. The property is used to:

- Bypass the 50ms autosuspend delay during the probe sequence.
- Explicitly increment the device usage count via pm_runtime_get_noresume()
  to keep the controller active and prevent it from being suspended 
  during idle periods.

Signed-off-by: Marco Schirrmeister <mschirrmeister@gmail.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 25 ++++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 62c68cda1e21..d3e5c06d80ef 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -538,6 +538,7 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
 {
 	const struct dw_mci_drv_data *drv_data;
 	const struct of_device_id *match;
+	bool disable_rpm = of_property_read_bool(pdev->dev.of_node, "rockchip,disable-runtime-pm");
 	int ret;
 
 	if (!pdev->dev.of_node)
@@ -549,8 +550,13 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
 	pm_runtime_get_noresume(&pdev->dev);
 	pm_runtime_set_active(&pdev->dev);
 	pm_runtime_enable(&pdev->dev);
-	pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
-	pm_runtime_use_autosuspend(&pdev->dev);
+
+	/* Only setup autosuspend if the DTS hasn't prohibited it */
+	if (!disable_rpm) {
+		pm_runtime_set_autosuspend_delay(&pdev->dev, 50);
+		pm_runtime_use_autosuspend(&pdev->dev);
+	}
+
 
 	ret = dw_mci_pltfm_register(pdev, drv_data);
 	if (ret) {
@@ -560,7 +566,20 @@ static int dw_mci_rockchip_probe(struct platform_device *pdev)
 		return ret;
 	}
 
-	pm_runtime_put_autosuspend(&pdev->dev);
+	/*
+	 * For boards with sensitive signaling like the RK3576-based NanoPi R76S,
+	 * we inhibit runtime PM to prevent bus resets during idle transitions.
+	 */
+	if (disable_rpm) {
+		/*
+		 * Instead of nuclear option (pm_runtime_forbid), we use
+		 * the "soft" way by incrementing the usage count to
+		 * prevent the controller from ever hitting runtime_suspend.
+		 */
+		pm_runtime_get_noresume(&pdev->dev);
+	} else {
+		pm_runtime_put_autosuspend(&pdev->dev);
+	}
 
 	return 0;
 }
-- 
2.52.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
