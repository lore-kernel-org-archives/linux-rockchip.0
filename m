Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 11EDDC48260
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 14:40:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jsgIa/r7Xg8bVgEcPgPMJ0JyfE7jtBNQgRWoi0f7iDQ=; b=2mG+qU3Kk0ozxS
	mPQ86Cyz8pCzKOivYEzsRB5bdWRszsS38MziwEBfG4ogsg9HaZCC4gm7K9ew8nknawTyM0bwqe3Lm
	8YaD+qNCYBOVdPBm0CHcYK3xe3RV8QW1HyHtKXJbXsyvMVDf3GLF82kyhELRTq527b2nJH8gvC1I0
	aO1G/nAYsAK5B7s8FbSOKzVEVDgHdmFpVRUQpgLv1u3+jJjNXhmAUkRRGW1AX8mmeT5ar+FQ1vr/R
	IXZLGjoFvd+IwtHWP1KcDzOOE99P5YCLowhBnCir4QkL281aYLEAxTO0CeweTVQInq4Dl2MrSe248
	TZE3QNrx6CR1nDd//Kww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razOO-00000002d0H-1kLc;
	Fri, 16 Feb 2024 14:40:44 +0000
Received: from mail-ej1-x62c.google.com ([2a00:1450:4864:20::62c])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razOH-00000002cu8-0T2J
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Feb 2024 14:40:40 +0000
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-a26fa294e56so320436566b.0
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Feb 2024 06:40:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708094434; x=1708699234; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WJiF2hWzkU3/F88EHjNDrbxkoRCZ4txRyg+xgBcF7fk=;
        b=Oi4aRv6+NDeZqbPwdnL5SpVb9M22p9S3eF1j1vN7lBrTlnhdSa8mgw3OodVTyTG9qg
         UQ5jzEBkymmEcWXDF8UDEq7ROpuSP/Ef3gSBLKx4Mm+eHD/1Vd4WPvH4qzUJw8RgDgO6
         qqi3+HARTAMnWhqlQB9JnbFSzxowflEAWu3yWyrkK6nSuPW+J/OzY5429fpVE7O7KLYs
         TsxTlJttN4yEjISPMZvO5uE+gdaE0oBW3iqJh6R6mVWKTRKoTG/HRiqs8SgYdquAc+oj
         fHbNnT7hI/Tc2iGdNWERziKGJXatR0kYIIwd9wJDhxB/r6yX2v9azW8n0rEMF3kAqfP7
         6qMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708094434; x=1708699234;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WJiF2hWzkU3/F88EHjNDrbxkoRCZ4txRyg+xgBcF7fk=;
        b=AqI2z105BKKlSmASAgdPB9lKRDm7n2h7ycwCi41V/ROOs8e2MEcVlU7Qf6DsipqaXD
         pzfCpd8LY3+r/vClxksy2NjXP+svIN1fdhPAIXqKMq7+Q2Zsks6li8Mi0GI4IzSrz65j
         S+gHP6BUUDX5VWDCxd8tcuf8VfNN3BNOUtJCQBp6AQgdiK9NkoH6iSGnckvscd9XipUn
         07JtSWmeGmFIK1CmRI2XG70H2FX2zW1x/w3OrCOx+kExpPZjsDTBiuJR58wa8vT61jgh
         LH64AwjqkiI10430gaayXO0pDAo95nzVW2z/tvq6vk1BFBjvzxJKuTQrDeVzyQ+r5yS9
         wQ8g==
X-Forwarded-Encrypted: i=1; AJvYcCWJF/xq9Btf2ZGzBKv+aptiane+QW4pYMsbRUsG9uhB0PDT9LZ1/qfnE74qmT01rk+ElEzzZDPjKeSGQfSjGBQamAjckz/wCcCtMzYko7njQzlf
X-Gm-Message-State: AOJu0YyXbUuUIBp+lIOaFN+A4HBipNoYeE2GXldJ+qFyD4Mr7Nr4AFxM
	9gcmTapqU4ikIUQp3zMuVkSc1Wl+I3gCDoAzXYwHF7gHvfdnmXVA+S0724s6Ntwzb7kbLSF1pxg
	d
X-Google-Smtp-Source: AGHT+IFP5HHX1guzF/48MOqdlDZBBAfEIzlz2cxyflX0prrbUITF2QEfGuDa23nujSq4oJPlrwTGyw==
X-Received: by 2002:a17:906:2c0c:b0:a3d:ab64:7525 with SMTP id e12-20020a1709062c0c00b00a3dab647525mr3120223ejh.11.1708094434431;
        Fri, 16 Feb 2024 06:40:34 -0800 (PST)
Received: from krzk-bin.. ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id a8-20020a170906670800b00a3ce3c5b2a4sm1592942ejp.195.2024.02.16.06.40.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:40:33 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Hector Martin <marcan@marcan.st>,
	Sven Peter <sven@svenpeter.dev>,
	Alyssa Rosenzweig <alyssa@rosenzweig.io>,
	Joerg Roedel <joro@8bytes.org>,
	Will Deacon <will@kernel.org>,
	Robin Murphy <robin.murphy@arm.com>,
	Rob Clark <robdclark@gmail.com>,
	Marek Szyprowski <m.szyprowski@samsung.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Yong Wu <yong.wu@mediatek.com>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Orson Zhai <orsonzhai@gmail.com>,
	Baolin Wang <baolin.wang@linux.alibaba.com>,
	Chunyan Zhang <zhang.lyra@gmail.com>,
	Chen-Yu Tsai <wens@csie.org>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Samuel Holland <samuel@sholland.org>,
	Thierry Reding <thierry.reding@gmail.com>,
	Krishna Reddy <vdumpa@nvidia.com>,
	Jonathan Hunter <jonathanh@nvidia.com>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	asahi@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	linux-samsung-soc@vger.kernel.org,
	linux-mediatek@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	virtualization@lists.linux.dev
Subject: [PATCH 2/4] iommu: constify of_phandle_args in xlate
Date: Fri, 16 Feb 2024 15:40:25 +0100
Message-Id: <20240216144027.185959-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240216144027.185959-1-krzysztof.kozlowski@linaro.org>
References: <20240216144027.185959-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_064037_203739_B839ED48 
X-CRM114-Status: GOOD (  16.49  )
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

The xlate callbacks are supposed to translate of_phandle_args to proper
provider without modifying the of_phandle_args.  Make the argument
pointer to const for code safety and readability.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/iommu/apple-dart.c                  | 3 ++-
 drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c | 3 ++-
 drivers/iommu/arm/arm-smmu/arm-smmu.c       | 3 ++-
 drivers/iommu/arm/arm-smmu/qcom_iommu.c     | 3 ++-
 drivers/iommu/exynos-iommu.c                | 2 +-
 drivers/iommu/iommu.c                       | 2 +-
 drivers/iommu/ipmmu-vmsa.c                  | 4 ++--
 drivers/iommu/msm_iommu.c                   | 4 ++--
 drivers/iommu/mtk_iommu.c                   | 3 ++-
 drivers/iommu/mtk_iommu_v1.c                | 3 ++-
 drivers/iommu/rockchip-iommu.c              | 2 +-
 drivers/iommu/sprd-iommu.c                  | 3 ++-
 drivers/iommu/sun50i-iommu.c                | 2 +-
 drivers/iommu/tegra-smmu.c                  | 4 ++--
 drivers/iommu/virtio-iommu.c                | 3 ++-
 include/linux/iommu.h                       | 4 ++--
 16 files changed, 28 insertions(+), 20 deletions(-)

diff --git a/drivers/iommu/apple-dart.c b/drivers/iommu/apple-dart.c
index ef3ee95706da..eb1e62cd499a 100644
--- a/drivers/iommu/apple-dart.c
+++ b/drivers/iommu/apple-dart.c
@@ -779,7 +779,8 @@ static void apple_dart_domain_free(struct iommu_domain *domain)
 	kfree(dart_domain);
 }
 
-static int apple_dart_of_xlate(struct device *dev, struct of_phandle_args *args)
+static int apple_dart_of_xlate(struct device *dev,
+			       const struct of_phandle_args *args)
 {
 	struct apple_dart_master_cfg *cfg = dev_iommu_priv_get(dev);
 	struct platform_device *iommu_pdev = of_find_device_by_node(args->np);
diff --git a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
index 0ffb1cf17e0b..4434d6a2fc2f 100644
--- a/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
+++ b/drivers/iommu/arm/arm-smmu-v3/arm-smmu-v3.c
@@ -2739,7 +2739,8 @@ static int arm_smmu_enable_nesting(struct iommu_domain *domain)
 	return ret;
 }
 
-static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
+static int arm_smmu_of_xlate(struct device *dev,
+			     const struct of_phandle_args *args)
 {
 	return iommu_fwspec_add_ids(dev, args->args, 1);
 }
diff --git a/drivers/iommu/arm/arm-smmu/arm-smmu.c b/drivers/iommu/arm/arm-smmu/arm-smmu.c
index 68b6bc5e7c71..8e5e4ab5fad3 100644
--- a/drivers/iommu/arm/arm-smmu/arm-smmu.c
+++ b/drivers/iommu/arm/arm-smmu/arm-smmu.c
@@ -1551,7 +1551,8 @@ static int arm_smmu_set_pgtable_quirks(struct iommu_domain *domain,
 	return ret;
 }
 
-static int arm_smmu_of_xlate(struct device *dev, struct of_phandle_args *args)
+static int arm_smmu_of_xlate(struct device *dev,
+			     const struct of_phandle_args *args)
 {
 	u32 mask, fwid = 0;
 
diff --git a/drivers/iommu/arm/arm-smmu/qcom_iommu.c b/drivers/iommu/arm/arm-smmu/qcom_iommu.c
index 17a1c163fef6..e079bb7a993e 100644
--- a/drivers/iommu/arm/arm-smmu/qcom_iommu.c
+++ b/drivers/iommu/arm/arm-smmu/qcom_iommu.c
@@ -546,7 +546,8 @@ static struct iommu_device *qcom_iommu_probe_device(struct device *dev)
 	return &qcom_iommu->iommu;
 }
 
-static int qcom_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
+static int qcom_iommu_of_xlate(struct device *dev,
+			       const struct of_phandle_args *args)
 {
 	struct qcom_iommu_dev *qcom_iommu;
 	struct platform_device *iommu_pdev;
diff --git a/drivers/iommu/exynos-iommu.c b/drivers/iommu/exynos-iommu.c
index 2c6e9094f1e9..d98c9161948a 100644
--- a/drivers/iommu/exynos-iommu.c
+++ b/drivers/iommu/exynos-iommu.c
@@ -1431,7 +1431,7 @@ static void exynos_iommu_release_device(struct device *dev)
 }
 
 static int exynos_iommu_of_xlate(struct device *dev,
-				 struct of_phandle_args *spec)
+				 const struct of_phandle_args *spec)
 {
 	struct platform_device *sysmmu = of_find_device_by_node(spec->np);
 	struct exynos_iommu_owner *owner = dev_iommu_priv_get(dev);
diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index 170329a085b8..26a31ba4f72d 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -3038,7 +3038,7 @@ void iommu_fwspec_free(struct device *dev)
 }
 EXPORT_SYMBOL_GPL(iommu_fwspec_free);
 
-int iommu_fwspec_add_ids(struct device *dev, u32 *ids, int num_ids)
+int iommu_fwspec_add_ids(struct device *dev, const u32 *ids, int num_ids)
 {
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	int i, new_num;
diff --git a/drivers/iommu/ipmmu-vmsa.c b/drivers/iommu/ipmmu-vmsa.c
index ace1fc4bd34b..cd7219319c8b 100644
--- a/drivers/iommu/ipmmu-vmsa.c
+++ b/drivers/iommu/ipmmu-vmsa.c
@@ -709,7 +709,7 @@ static phys_addr_t ipmmu_iova_to_phys(struct iommu_domain *io_domain,
 }
 
 static int ipmmu_init_platform_device(struct device *dev,
-				      struct of_phandle_args *args)
+				      const struct of_phandle_args *args)
 {
 	struct platform_device *ipmmu_pdev;
 
@@ -773,7 +773,7 @@ static bool ipmmu_device_is_allowed(struct device *dev)
 }
 
 static int ipmmu_of_xlate(struct device *dev,
-			  struct of_phandle_args *spec)
+			  const struct of_phandle_args *spec)
 {
 	if (!ipmmu_device_is_allowed(dev))
 		return -ENODEV;
diff --git a/drivers/iommu/msm_iommu.c b/drivers/iommu/msm_iommu.c
index 67124f4228b1..d4c0f2ad184b 100644
--- a/drivers/iommu/msm_iommu.c
+++ b/drivers/iommu/msm_iommu.c
@@ -588,7 +588,7 @@ static void print_ctx_regs(void __iomem *base, int ctx)
 
 static int insert_iommu_master(struct device *dev,
 				struct msm_iommu_dev **iommu,
-				struct of_phandle_args *spec)
+				const struct of_phandle_args *spec)
 {
 	struct msm_iommu_ctx_dev *master = dev_iommu_priv_get(dev);
 	int sid;
@@ -616,7 +616,7 @@ static int insert_iommu_master(struct device *dev,
 }
 
 static int qcom_iommu_of_xlate(struct device *dev,
-			       struct of_phandle_args *spec)
+			       const struct of_phandle_args *spec)
 {
 	struct msm_iommu_dev *iommu = NULL, *iter;
 	unsigned long flags;
diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 7abe9e85a570..955de8fb7732 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -957,7 +957,8 @@ static struct iommu_group *mtk_iommu_device_group(struct device *dev)
 	return group;
 }
 
-static int mtk_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
+static int mtk_iommu_of_xlate(struct device *dev,
+			      const struct of_phandle_args *args)
 {
 	struct platform_device *m4updev;
 
diff --git a/drivers/iommu/mtk_iommu_v1.c b/drivers/iommu/mtk_iommu_v1.c
index 25b41222abae..ae16d8238d84 100644
--- a/drivers/iommu/mtk_iommu_v1.c
+++ b/drivers/iommu/mtk_iommu_v1.c
@@ -398,7 +398,8 @@ static const struct iommu_ops mtk_iommu_v1_ops;
  * MTK generation one iommu HW only support one iommu domain, and all the client
  * sharing the same iova address space.
  */
-static int mtk_iommu_v1_create_mapping(struct device *dev, struct of_phandle_args *args)
+static int mtk_iommu_v1_create_mapping(struct device *dev,
+				       const struct of_phandle_args *args)
 {
 	struct iommu_fwspec *fwspec = dev_iommu_fwspec_get(dev);
 	struct mtk_iommu_v1_data *data;
diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 2685861c0a12..da79d9f4cf63 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -1140,7 +1140,7 @@ static void rk_iommu_release_device(struct device *dev)
 }
 
 static int rk_iommu_of_xlate(struct device *dev,
-			     struct of_phandle_args *args)
+			     const struct of_phandle_args *args)
 {
 	struct platform_device *iommu_dev;
 	struct rk_iommudata *data;
diff --git a/drivers/iommu/sprd-iommu.c b/drivers/iommu/sprd-iommu.c
index 537359f10997..ba53571a8239 100644
--- a/drivers/iommu/sprd-iommu.c
+++ b/drivers/iommu/sprd-iommu.c
@@ -390,7 +390,8 @@ static struct iommu_device *sprd_iommu_probe_device(struct device *dev)
 	return &sdev->iommu;
 }
 
-static int sprd_iommu_of_xlate(struct device *dev, struct of_phandle_args *args)
+static int sprd_iommu_of_xlate(struct device *dev,
+			       const struct of_phandle_args *args)
 {
 	struct platform_device *pdev;
 
diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
index 41484a5a399b..decd52cba998 100644
--- a/drivers/iommu/sun50i-iommu.c
+++ b/drivers/iommu/sun50i-iommu.c
@@ -819,7 +819,7 @@ static struct iommu_device *sun50i_iommu_probe_device(struct device *dev)
 }
 
 static int sun50i_iommu_of_xlate(struct device *dev,
-				 struct of_phandle_args *args)
+				 const struct of_phandle_args *args)
 {
 	struct platform_device *iommu_pdev = of_find_device_by_node(args->np);
 	unsigned id = args->args[0];
diff --git a/drivers/iommu/tegra-smmu.c b/drivers/iommu/tegra-smmu.c
index 310871728ab4..14e525bd0d9b 100644
--- a/drivers/iommu/tegra-smmu.c
+++ b/drivers/iommu/tegra-smmu.c
@@ -830,7 +830,7 @@ static struct tegra_smmu *tegra_smmu_find(struct device_node *np)
 }
 
 static int tegra_smmu_configure(struct tegra_smmu *smmu, struct device *dev,
-				struct of_phandle_args *args)
+				const struct of_phandle_args *args)
 {
 	const struct iommu_ops *ops = smmu->iommu.ops;
 	int err;
@@ -959,7 +959,7 @@ static struct iommu_group *tegra_smmu_device_group(struct device *dev)
 }
 
 static int tegra_smmu_of_xlate(struct device *dev,
-			       struct of_phandle_args *args)
+			       const struct of_phandle_args *args)
 {
 	struct platform_device *iommu_pdev = of_find_device_by_node(args->np);
 	struct tegra_mc *mc = platform_get_drvdata(iommu_pdev);
diff --git a/drivers/iommu/virtio-iommu.c b/drivers/iommu/virtio-iommu.c
index 34db37fd9675..04048f64a2c0 100644
--- a/drivers/iommu/virtio-iommu.c
+++ b/drivers/iommu/virtio-iommu.c
@@ -1051,7 +1051,8 @@ static struct iommu_group *viommu_device_group(struct device *dev)
 		return generic_device_group(dev);
 }
 
-static int viommu_of_xlate(struct device *dev, struct of_phandle_args *args)
+static int viommu_of_xlate(struct device *dev,
+			   const struct of_phandle_args *args)
 {
 	return iommu_fwspec_add_ids(dev, args->args, 1);
 }
diff --git a/include/linux/iommu.h b/include/linux/iommu.h
index 1ea2a820e1eb..600fc6e6f308 100644
--- a/include/linux/iommu.h
+++ b/include/linux/iommu.h
@@ -468,7 +468,7 @@ struct iommu_ops {
 	/* Request/Free a list of reserved regions for a device */
 	void (*get_resv_regions)(struct device *dev, struct list_head *list);
 
-	int (*of_xlate)(struct device *dev, struct of_phandle_args *args);
+	int (*of_xlate)(struct device *dev, const struct of_phandle_args *args);
 	bool (*is_attach_deferred)(struct device *dev);
 
 	/* Per device IOMMU features */
@@ -902,7 +902,7 @@ struct iommu_mm_data {
 int iommu_fwspec_init(struct device *dev, struct fwnode_handle *iommu_fwnode,
 		      const struct iommu_ops *ops);
 void iommu_fwspec_free(struct device *dev);
-int iommu_fwspec_add_ids(struct device *dev, u32 *ids, int num_ids);
+int iommu_fwspec_add_ids(struct device *dev, const u32 *ids, int num_ids);
 const struct iommu_ops *iommu_ops_from_fwnode(struct fwnode_handle *fwnode);
 
 static inline struct iommu_fwspec *dev_iommu_fwspec_get(struct device *dev)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
