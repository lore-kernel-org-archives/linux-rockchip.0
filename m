Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C79E6C44536
	for <linux-rockchip@archiver.kernel.org>; Wed, 22 Jul 2026 11:53:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=f25va7fJzFBJsRYL+aEc+3HY/HXaV+0X3/vJ5PEWTbs=; b=Kg9AoP80GF/BNy
	kdyWOAw2mLScJLI9b7srFZm9tudp+9e7eZTImLHFwa+BKrWrBEVjkg3QSFQATXQoQWwB4jhBZDqyn
	5zd5QxRrw0v+RWnLPtnvmagNxVfZY9oX5R3QgCgsXalTdSdHfAXIfUQnUwFqRD+yzNA2ApKoyfapf
	YUB+42VzNFbzGaaWpavApsJmJY6LGNHlIj3I1I4lIjTvlGtyMt/Blr+NhIdknFaL3BjZeWQrNhwXS
	ZA/gB1v+NqVtqArdqreY5Jwu3en1i/aCPDZH5x0yYqbJrPHsGRnH8BZX4hZohLeQSq2UBWcQPboRh
	i02rJVydhzFHLgq+k6Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVVY-0000000Bgeg-3jCK;
	Wed, 22 Jul 2026 11:53:04 +0000
Received: from mail-pl1-x635.google.com ([2607:f8b0:4864:20::635])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wmVVW-0000000Bgdi-1lM4
	for linux-rockchip@lists.infradead.org;
	Wed, 22 Jul 2026 11:53:03 +0000
Received: by mail-pl1-x635.google.com with SMTP id d9443c01a7336-2cc891373e0so155606185ad.2
        for <linux-rockchip@lists.infradead.org>; Wed, 22 Jul 2026 04:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784721181; x=1785325981; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=IoeICiFY2vzSXM+Iy/1wkeuTFUAUTDrBzHwhQ/RHhYE=;
        b=UvDVExfETOlO+9o9LHV90p3YPm25ZtrVI2wX/z9SVIyOyLRN0Va5CTcJqe+q5R7E/N
         gaoETmRlvmCLLwHNfYvBm2sNnpC4xc33xnsej1wlJ1MoxTSXe9wU/F+i/+wQLRyJVg1d
         aJLaH2itYkdTpt5zZeYTrG5j29syXeM2oIfeYgls6tMXTQk+BURstW/4XFck3o3OHrTQ
         GtNnqXuenPrN+jF5G7+0OgSSHA+lDqmAwoYP3pVU7+Rws+le6yFBwf5yPJKiGYHrnn0i
         1HxDdfk9bS1sNRR1AeYb7U2EPZP8iP50cUo6PNu3bRh4BdO2k2b59YdyuLCVfyMfmt72
         kNZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784721181; x=1785325981;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=IoeICiFY2vzSXM+Iy/1wkeuTFUAUTDrBzHwhQ/RHhYE=;
        b=PvD+DFxjLeny6yUJO5PBJvlX2VQ77b72o1IxS9AsaAm6MVb0m2wuC8IhkgCeCFF6i4
         n5XZq8RWggaKv3SSmBdFQR79JLXa0fN204Bqt/34F5q9YnPCQ93Cnhd5jdShDOGs2cGg
         QoAbptZj9HQrrgKcuNf8PYWZ+U5z3CaIL96BZLyMTiGb4KFEJaB3UL3Prjn31340/qnS
         HKYRiJy2ysLTxd1i50VdZD1a/opAC8r79KPbodfVcuWHQoLRrCR8/O4IpTeivKJCztGA
         Hg+vMAdKxh5c+9n1X7rWKpMDLDwzTQ+576CQcfO3tm2prg1GNJKRGFBLrA5rRk4QTjr5
         YN6g==
X-Gm-Message-State: AOJu0YyDBs0n2q0dwUUiz9wyO/oJBNQmdrll+u7mTcYDUf5C2F6pj77+
	28zrS2/c8aJaEMcnmQbig78OiWV7/CaRTtdLNySYAFjDMSn0vf7lkUKb
X-Gm-Gg: AR+sD13U2vDbEcE+mCHCeFRpe4R27Etm38ZC1FCspXqpSc+69eCTx0AcAenxo8AIynJ
	tc8ByTvna37PMsZwzllExocNSt003zFpWncrZTDhWqRdoEOLZ7vmZDAwuUmpzBCqkodj1GIMzPV
	wcRVFMiCws15yhahcb+plL5EfVFqxkTumvdaUupNsuH+/gEakP8IYR27O5EdHw2Tva9YYc3tPBa
	m+9k2MjqVB3Y+3n+r+4/oTA5+PvOw0mIOFPXQAwIVPJNllfOyIvNmKivG3FDjWZdci4Y+EK3aWZ
	zV5rKj+QP1rijZaNkIQrRN4KTMGmEvqhcZ9WGJY/qsMASVhPnDDhoSjckN3L2SeAN1jmt68XJu3
	cpfLoq6r2PUz2pxu7uq6zwzADteix2n3SdV1f9EgZdJ3sguH87HG78WpQo/DctvVCzCYtMOocUc
	OJFQIE0HxpUtl4HTM3RjiOahb7eYW3WEZCSdD+5hqt3n8bC0A=
X-Received: by 2002:a17:902:e54b:b0:2c9:b48c:fdec with SMTP id d9443c01a7336-2cf348547d0mr253249555ad.12.1784721181533;
        Wed, 22 Jul 2026 04:53:01 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2cf8f2e6247sm13376205ad.54.2026.07.22.04.52.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2026 04:53:01 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	linux-sound@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH v2 1/2] ASoC: rockchip: rockchip_sai: Fix unbalanced clock reference count when CONFIG_PM=n
Date: Wed, 22 Jul 2026 18:52:49 +0700
Message-ID: <20260722115250.62588-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260722_045302_465742_A7529DA3 
X-CRM114-Status: GOOD (  12.61  )
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

From: bui duc phuc <phucduc.bui@gmail.com>

When CONFIG_PM is disabled, Runtime PM callbacks are stubbed out. Using
devm_clk_get_enabled() causes an unbalanced clk_disable_unprepare() upon
driver unbind, as devm cleanup attempts to disable the clock a second
time after manual disabling, triggering clock framework warnings.
Replace devm_clk_get_enabled() with devm_clk_get() and manually manage
hclk enablement around probe register accesses to keep clock reference
counts balanced regardless of CONFIG_PM.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

Link v1: 
https://lore.kernel.org/all/20260622005613.21870-1-phucduc.bui@gmail.com/

Changes in v2:
 - Update the commit message.

 sound/soc/rockchip/rockchip_sai.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index 585e89f61f0d..9a80e120dbda 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -1443,20 +1443,30 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 		return dev_err_probe(&pdev->dev, PTR_ERR(sai->mclk),
 				     "Failed to get mclk\n");
 
-	sai->hclk = devm_clk_get_enabled(&pdev->dev, "hclk");
+	sai->hclk = devm_clk_get(&pdev->dev, "hclk");
 	if (IS_ERR(sai->hclk))
 		return dev_err_probe(&pdev->dev, PTR_ERR(sai->hclk),
 				     "Failed to get hclk\n");
 
+	ret = clk_prepare_enable(sai->hclk);
+	if (ret)
+		return dev_err_probe(&pdev->dev, ret, "Failed to enable hclk\n");
+
 	regmap_read(sai->regmap, SAI_VERSION, &sai->version);
 
 	ret = rockchip_sai_init_dai(sai, res, &dai);
-	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "Failed to initialize DAI\n");
+	if (ret) {
+		ret = dev_err_probe(&pdev->dev, ret, "Failed to initialize DAI\n");
+		goto err_disable_hclk;
+	}
 
 	ret = rockchip_sai_parse_paths(sai, node);
-	if (ret)
-		return dev_err_probe(&pdev->dev, ret, "Failed to parse paths\n");
+	if (ret) {
+		ret = dev_err_probe(&pdev->dev, ret, "Failed to parse paths\n");
+		goto err_disable_hclk;
+	}
+
+	clk_disable_unprepare(sai->hclk);
 
 	/*
 	 * From here on, all register accesses need to be wrapped in
@@ -1487,8 +1497,6 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 	pm_runtime_use_autosuspend(&pdev->dev);
 	pm_runtime_put(&pdev->dev);
 
-	clk_disable_unprepare(sai->hclk);
-
 	return 0;
 
 err_runtime_suspend:
@@ -1498,6 +1506,11 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 		rockchip_sai_runtime_suspend(&pdev->dev);
 
 	return ret;
+
+err_disable_hclk:
+	clk_disable_unprepare(sai->hclk);
+
+	return ret;
 }
 
 static void rockchip_sai_remove(struct platform_device *pdev)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
