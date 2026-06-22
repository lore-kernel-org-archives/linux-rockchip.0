Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A777ACD98F0
	for <linux-rockchip@archiver.kernel.org>; Mon, 22 Jun 2026 00:56:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EG4iR3ZVvX+b+ROfAIlnNdGFPm1fDZl7oc/ZatJzZVE=; b=K8YWykphajejcm
	74sPEkQTok2GXWPaow5n9D24V0fWQ61m3aQPjVOYBuxvZkdisNcHwl1f+SmRDNeVHRIXIfEp+7Rhh
	VOJjmzh+fEE3blEdiyfI50S0ovxZSlxSHkyaMfCTbd5sHHq4J1NlAg9xAIqyPKQIJE/3aWLNLpray
	ZhEteaaSOtizVSmiNcVyNnnw7uUR7G88Q0siGuMWJoEnw6Ff1DnkntTLEpfgEjGOKxyhODaz9OI19
	GzPdsQVegCO/qoUjDRUPfosj5NLSLsPPIbosNIgGy633kIpcrXve4bDh0DXTOCPvk/P7YHuTD3GxM
	JE0sJQmQ+OsbiMB5eZJQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbSxq-00000004G3Z-2Gxf;
	Mon, 22 Jun 2026 00:56:38 +0000
Received: from mail-pj1-x1035.google.com ([2607:f8b0:4864:20::1035])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wbSxm-00000004G2S-2uLF
	for linux-rockchip@lists.infradead.org;
	Mon, 22 Jun 2026 00:56:36 +0000
Received: by mail-pj1-x1035.google.com with SMTP id 98e67ed59e1d1-36d5fd50d20so2576544a91.1
        for <linux-rockchip@lists.infradead.org>; Sun, 21 Jun 2026 17:56:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1782089793; x=1782694593; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vca/CKDASMzwEknu94jkYwLr91umSwU/eeXq3GdHWUE=;
        b=ToKLPfU30MrnN1E2zQJit7c36bE3o6q50TswbNpfHziSytbtyUG/1+FDB0qPXPBNf/
         ARSurhl1DK+DlKAwu9k04F3vX7DPIOf5klCLBc9h+WSzs3fZTwfsc101lsUI+2B2qgcy
         U6kFXLkPfH+bHT/YsL7Vbg68mRM9Q6mNIxkrvNqTgd2LAT9+dovaaOWwBHAsXSXFSr2X
         XDYnVgxHIa06+iVDk5IT4QuKm0zRwfFL7GuwOX0x9y0V/VeUMFkM0jp3btSELvPolHxB
         xK1FAX5vXPvE0n6bXxFYgUDkwspTrAIjoAO6p4wEaw/YtoQCNqYlpd8iAKZGunrHtIGO
         w+kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1782089793; x=1782694593;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vca/CKDASMzwEknu94jkYwLr91umSwU/eeXq3GdHWUE=;
        b=LnvXrAVx4SAH284BfKvZTdPtbFLcB842AdzEVatfRba3EcTt2kgycMUJFc/xaxgZQN
         DBkav9oKtrxN1uj4t5LzgFyU8XUNAVUAq/OevBDYgh2Cw5Rz62wSIdIlSc2N/FRH3IB6
         fVNWxWZUwng3GFriZJ93j/b9Ovu2oydSO58EmpfjLOeXIof0LsUfUAzHOEEWoFipUwfM
         gCJTsQGTC265MACQBFUREoWqnHP7jtsZAy9vg5i3GfxGSPINdtCeetZjmd76378cSUDt
         hiUiZOcMQY/kVsIExuxKtP4Huzn2mzfTQ2wBdikctPLLBRiguAsV2QnbXYNTGsZ+BHHM
         fwrw==
X-Forwarded-Encrypted: i=1; AHgh+Ro64jRRs8PydJMzghKQTtg6l48xDGqDHpSyfgBxB6XZ08MYVCYy4MzYM0E83ai+cpIrsaGbM4jQOFmK8fdENQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YzuDL/CCnA2amU4l/01nEYNfAFKRpIIQCNTucMdNmrrzH7Thd53
	dPWO29nLFOfsY+BzG3bP7JGVBFbx8bLZstAav9d52W+j/rz/6Nf4aLrg
X-Gm-Gg: AfdE7cnjo+Q4H0i61D3SuhXdIflBSKsa2Sl9bHAL4qhFCRS0GX2ewG2fXbapbN38/Ln
	ocghbHQhK0Rh2OJsnPP3yGs5TK71ZPw88X0i+uLKym0r6HcK03Bn3myPGhI5cxLoCq6bkoYjoM0
	rFyOVzvb1W6QbQp4BH/puD3j05vgYrW7GGLE0OMGWTupxusIRxAADJw6ggm54rkxdQOQHjNIfS1
	K+ecqxzG2P4piUwxu648dJHDNy6GxZ7uAFTXspbELbD3VYbSohLWszccHPDCjojVF4xhj7DtiIB
	/Pmh43yCSW0i4T36vXDcpthVn2OrMoV+r6ztYP3B+UFogxcIw6JjKUf/f6sz+YJUxGs0jpC0QY2
	1Xvggg7diOYh7orFYOcHyfs6SlxP619l0iZ5CzivHWrH03taGiaInT2TjTx8/FdZz+jNRvjv+Vy
	FS9OjQTkMdCMhlE1Xwj60R/mGwyJOhnCL+Or5locxoRiHe80k=
X-Received: by 2002:a17:90b:1d4c:b0:36d:ae6a:22f4 with SMTP id 98e67ed59e1d1-37d1e8c9b8fmr11813445a91.15.1782089793457;
        Sun, 21 Jun 2026 17:56:33 -0700 (PDT)
Received: from phuc-desktop.. ([183.91.15.56])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c8bc2c8d829sm5441326a12.1.2026.06.21.17.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Jun 2026 17:56:33 -0700 (PDT)
From: phucduc.bui@gmail.com
To: Heiko Stuebner <heiko@sntech.de>,
	Mark Brown <broonie@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>
Cc: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>,
	Krzysztof Kozlowski <krzk@kernel.org>,
	Jaroslav Kysela <perex@perex.cz>,
	Takashi Iwai <tiwai@suse.com>,
	linux-sound@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	bui duc phuc <phucduc.bui@gmail.com>
Subject: [PATCH] ASoC: rockchip: rockchip_sai: Hand over hclk control exclusively to Runtime PM
Date: Mon, 22 Jun 2026 07:56:13 +0700
Message-ID: <20260622005613.21870-1-phucduc.bui@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260621_175634_742749_7464CCD0 
X-CRM114-Status: GOOD (  15.83  )
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

Although switching to devm_clk_get_enabled() in a previous patch was
tested successfully, it introduces overlapping ownership of the clock
lifecycle. Since the driver requires early register access to read the
device version during probe(), enabling hclk at that point is mandatory.
However, relying on devres for automatic disabling at unbind, while calling
clk_disable_unprepare() manually at the end of probe() alongside Runtime
PM's autosuspend, creates redundant and overlapping clock management.

While this mixed approach might not trigger errors under normal test
conditions, it is architecturally sub-optimal. As stated in the code
comments, Runtime PM should exclusively own the clock for register
accesses after the initial configuration phase.

Clean up the design by:

   1 Reverting back to devm_clk_get() to remove the implicit devres
     enable/disable behavior.
   2 Manually enabling and disabling hclk explicitly only around the
     early register access before Runtime PM takes over.
   3 Dropping the stray clk_disable_unprepare() at the end of probe()
     so Runtime PM solely owns hclk afterward.

Signed-off-by: bui duc phuc <phucduc.bui@gmail.com>
---

Links: 
1 This change is based on the discussion around manual hclk handing during probe(),
  as raised by Krysztof:
  https://lore.kernel.org/all/20e4754b-ea9a-404d-b529-ec44a7263cbf@kernel.org/#t
2 Background for the earlier devm_clk_get_enbabled() conversion:
  https://lore.kernel.org/all/2818018.CQOukoFCf9@workhorse/

An alternative approach would be use devm_regmap_init_mmio_clk() and let regmap
manage clock enablement around register accesses. If preferred, I can rework the 
driver accordingly.

 sound/soc/rockchip/rockchip_sai.c | 27 ++++++++++++++++++++-------
 1 file changed, 20 insertions(+), 7 deletions(-)

diff --git a/sound/soc/rockchip/rockchip_sai.c b/sound/soc/rockchip/rockchip_sai.c
index a195e96fed0a..ebb491fac77d 100644
--- a/sound/soc/rockchip/rockchip_sai.c
+++ b/sound/soc/rockchip/rockchip_sai.c
@@ -1438,20 +1438,30 @@ static int rockchip_sai_probe(struct platform_device *pdev)
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
@@ -1482,8 +1492,6 @@ static int rockchip_sai_probe(struct platform_device *pdev)
 	pm_runtime_use_autosuspend(&pdev->dev);
 	pm_runtime_put(&pdev->dev);
 
-	clk_disable_unprepare(sai->hclk);
-
 	return 0;
 
 err_runtime_suspend:
@@ -1493,6 +1501,11 @@ static int rockchip_sai_probe(struct platform_device *pdev)
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
