Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 02E8ECCA489
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:46:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vf+pxlZ5YS+gy0+Yu2/t2fK9ClEzBkOcOG3KfeqmVzM=; b=s1E2rZU1N2JNZv
	v140yLFIrspcRhirUcFnzdhSNvqUxlWUyXIFfVuAK9UufBRHEwSkrZgiDz+3IYzgELYtkxLn2ykjO
	Tt0apq/lN1pd3vj/56EjfJ4fkVa4lVAHr/iwSkNiBvxEiIgRpADC5kssbSor7FbhqpITbnSILaUBB
	ANaoUjdAHtbjh2k0mMNbSwDyuzlG7gXtjn1kXh2JolGwxhoFBzPP28JcsPjd+fvWheIBEK3zxNd45
	Ekz1V7N1GOhfggDT14T7rIiy6+trtoY1BWKSlN5ohQVK8F28C/MAYE949fZ+YSfKKD1h+ApG3P0n0
	9vD88IQMdNu8auyMYxxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFM1C-0079bQ-Au; Sat, 23 Jul 2022 20:46:34 +0000
Received: from mail-pj1-x102b.google.com ([2607:f8b0:4864:20::102b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLz2-0078LS-7Q
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:21 +0000
Received: by mail-pj1-x102b.google.com with SMTP id f3-20020a17090ac28300b001f22d62bfbcso5667399pjt.0
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0JYQHhkMBvJ54BnDj2DKX+8l1TYnz+gpKI3PN4wmfDQ=;
        b=v2E3nNGM2y1pGKkwxe8O29Kl/nsdVaQjCOKxwOL95dsKTeA2SJJj9GrV0DlE5YyUY4
         ZpRnmeHzPCjvFOgGHEU3YHRhRm6eZdJ9HSC4LTDz/lpSyiFApm+4nvypziOPD1+R1fKj
         /yNLFnzKNBGpTFM4T3P0feRsMQ/Imddav3cU/m65MQi0+jYNJsGYUwemHn3fKnQxWlUu
         wSKkKR/qoTEGoiGM0km1sv8A1GlVokHJIod/b7r8mIlz+C7a1lVN3+hXedp/iKLSCWtD
         Q5hJ4jNN+Qgc33GXKN1/niu7BpYzcNa7JDoCSzO/eBKlvUPoeyudN0HxzjVhtYnHCZda
         +GhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0JYQHhkMBvJ54BnDj2DKX+8l1TYnz+gpKI3PN4wmfDQ=;
        b=BoSSrgxxNtY+n0B6+bkdSqB41F2Rz6TvsP9l28ZlUA1/j+WYym1q2miRbs9ywWvdqG
         X9LheYeG7e7JbD4mzw2SewzzGGPXbQdP8L6+uYqo/hnkpfMAO6pKMbqlJkOqQAavFZga
         f2SEsDf6d/daHzf5pnMwYWB+ww3Ctsi3Un+RUyB+jRoa6l0V2Tw+JV8D1WmvIw4MBA7Y
         L+BwsLW1WFPK/CtpRpWd+IFiU/JjgFaP/SIsz+hNXpPsraI7HhazjpG1po0v4/seOKCP
         eJJr6IG/4gouDI7/seVqUNwc80wY6V2wd7OAAqN+kxO4fNmm8kQc250YnagWyBIY1BHJ
         PAvA==
X-Gm-Message-State: AJIora/EaHmIEPZ1I/lF2htWQLTeS4WidbsrD0VoicPtwoULl1fUkfZ/
	KoORz0g+sXjpSxu/dhXoKIS4og==
X-Google-Smtp-Source: AGRyM1sGe/YuF2G1ZykcVfuYkCukeJuL1dDJ7wz1R0rzQGKqNZYb7QZu37z3YlzWV+NPfxQShPBssA==
X-Received: by 2002:a17:90b:2241:b0:1f0:2fa5:184f with SMTP id hk1-20020a17090b224100b001f02fa5184fmr24551243pjb.97.1658609058552;
        Sat, 23 Jul 2022 13:44:18 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.44.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:18 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jianqun Xu <jay.xu@rock-chips.com>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 05/22] soc: rockchip: io-domain: Add RV1126 IO domains
Date: Sun, 24 Jul 2022 02:13:18 +0530
Message-Id: <20220723204335.750095-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134420_311094_1CE43153 
X-CRM114-Status: GOOD (  11.58  )
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

From: Jianqun Xu <jay.xu@rock-chips.com>

Add IO domains support for RV1126 SoC.

Cc: Liam Girdwood <lgirdwood@gmail.com>
Cc: Mark Brown <broonie@kernel.org>
Signed-off-by: Jianqun Xu <jay.xu@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 drivers/soc/rockchip/io-domain.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index 9df513d1219b..6619256c2d11 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -491,6 +491,22 @@ static const struct rockchip_iodomain_soc_data soc_data_rv1108_pmu = {
 	},
 };
 
+static const struct rockchip_iodomain_soc_data soc_data_rv1126_pmu = {
+	.grf_offset = 0x140,
+	.supply_names = {
+		NULL,
+		"vccio1",
+		"vccio2",
+		"vccio3",
+		"vccio4",
+		"vccio5",
+		"vccio6",
+		"vccio7",
+		"pmuio0",
+		"pmuio1",
+	},
+};
+
 static const struct of_device_id rockchip_iodomain_match[] = {
 	{
 		.compatible = "rockchip,px30-io-voltage-domain",
@@ -544,6 +560,10 @@ static const struct of_device_id rockchip_iodomain_match[] = {
 		.compatible = "rockchip,rv1108-pmu-io-voltage-domain",
 		.data = &soc_data_rv1108_pmu
 	},
+	{
+		.compatible = "rockchip,rv1126-pmu-io-voltage-domain",
+		.data = &soc_data_rv1126_pmu
+	},
 	{ /* sentinel */ },
 };
 MODULE_DEVICE_TABLE(of, rockchip_iodomain_match);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
