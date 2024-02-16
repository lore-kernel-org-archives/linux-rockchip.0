Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D0F50C48BC4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Feb 2024 14:40:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7SERrn+D/ZWj1q0HgpFbWYB/U7GkbccKOeREOSJbpq0=; b=hlvnULUN47ptA6
	yZf5u2ySQ2dvnpfMAKwTLD7wgQ9x/ncCvkneO9eUiqOfRcgBvteS9qWFYdDO5kqFGSQ9MRks4s+X8
	33lowFWSNAL0/tpo3UyKHNZFvIAKiUnjcR3zK6CK6KpIPAFcqy2GeZp3dG336GKD1fv6jMDQweg+S
	Ge2ZbkWmqz5tEskH0ZdbjzCrLHQIhtDHWDK90gaVCKVIg0WfKxN0lJOqzSLFwmCtEQWc307wFexOx
	Ii3nWU8YEdOyu03Midlt42sItpCQgoq0I7yX9tbkIxzbDDJwDuu/uA/oEqwJpNviC/zq/pGzvmVCC
	FHug17RFHPy60Yh6QBJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razOK-00000002cxa-43X6;
	Fri, 16 Feb 2024 14:40:40 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1razOG-00000002cu3-3CVB
	for linux-rockchip@lists.infradead.org;
	Fri, 16 Feb 2024 14:40:38 +0000
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-a2f79e79f0cso316920566b.2
        for <linux-rockchip@lists.infradead.org>; Fri, 16 Feb 2024 06:40:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708094432; x=1708699232; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRC42YbuNYRdIwcaj+US8j1sKLD+6CzDw3sU7mb37/4=;
        b=tAJmQgjknWrkqyT9Gp6rSeUpOPI/SpT2US/q1aSTcqcDDR4HLRzZzecZCoBUFXNmIX
         n06ZXVa2ANg77iQ69a5I/xM2/HXFtJwV4mL49S7ReJuEjfCoRB4W/Q0mxefUVnLSu18S
         XkcXH4KimFvQX+juIHD0oz+E74nz9hoNwoVu8EAiQQX/Zz+aVaT5hW9Tp3copZr0VM4s
         1y2LnAvQOzKv1Ib2tBogk8WYlPM7gcjNS26dO1R2VGz6J1L2JhlIrPoNHJrhUcO/sQuU
         4/DJLF09CfO5gFEt0re/StQciirfy4BoARksBBXoqkUBO+ty6EapN9m9Ia7XKzuoyA4Q
         ubww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708094432; x=1708699232;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZRC42YbuNYRdIwcaj+US8j1sKLD+6CzDw3sU7mb37/4=;
        b=QxRhX/pUZOGI0SB8goMslS2Jkx/0GKfKnq2xbvqSWRyqbQ3/1Kw7lmtjShMRRYrgSR
         dYkvzNtyV+SHROFsroYFr+rwaEsU/EW/zV6HP3OLWSHJ5QmrhnJetmbOGhVbgwGG2f3j
         f3kIvMrhhp/jNEQAgnC8Vf1hTI/S4crMIWaQur2LdyxU6WSwv8kHNYN4BjDKK2cY6igf
         S1SU9eMhzYHp0XXJDKRiZargnKARs4DENqg9/QN3vKlN2sEyHm3+3JHJZIdov5vhtd/f
         AzCWqwsooFTrtIXf2Oatnx23jrGwewyEiLEbvUfuyphpESCR4JWccYNu4kj4Kh7CdviC
         oSbw==
X-Forwarded-Encrypted: i=1; AJvYcCUKqDxcG+5cS8nWLhzSXe509AdenIkaV/jDgvM8guDOIe2AgLeCKSXhjVtUfdeatbgUXcLl8rJF6UsMWyeWPHAxdDz83chNU9ME6fN9ErEtQcBd
X-Gm-Message-State: AOJu0YypP4lpaU3NEICyPuuUOEi7jydkHdIo/ZkhSMori3bCHFbzLYOW
	XG56jMiXfZL67YNR9A5BEeh4k8r9TNRmgz029fUR+QxFP4Yyll5yP6XsQHjty9Q=
X-Google-Smtp-Source: AGHT+IHf//9yt3eTnyw6VXgXdUG6tjNHVGPCN0at0VvNZn01LUmWCi7a4swsg2sOshpZkHrmmM9UNA==
X-Received: by 2002:a17:906:185a:b0:a3d:994a:791d with SMTP id w26-20020a170906185a00b00a3d994a791dmr3667044eje.59.1708094432164;
        Fri, 16 Feb 2024 06:40:32 -0800 (PST)
Received: from krzk-bin.. ([78.10.207.130])
        by smtp.gmail.com with ESMTPSA id a8-20020a170906670800b00a3ce3c5b2a4sm1592942ejp.195.2024.02.16.06.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Feb 2024 06:40:31 -0800 (PST)
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
Subject: [PATCH 1/4] iommu: constify pointer to bus_type
Date: Fri, 16 Feb 2024 15:40:24 +0100
Message-Id: <20240216144027.185959-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240216_064037_013643_3D7B224A 
X-CRM114-Status: GOOD (  10.78  )
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

Make pointer to bus_type a pointer to const for code safety.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 drivers/iommu/iommu-priv.h | 5 +++--
 drivers/iommu/iommu.c      | 5 +++--
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/iommu/iommu-priv.h b/drivers/iommu/iommu-priv.h
index 2024a2313348..5f731d994803 100644
--- a/drivers/iommu/iommu-priv.h
+++ b/drivers/iommu/iommu-priv.h
@@ -21,10 +21,11 @@ int iommu_group_replace_domain(struct iommu_group *group,
 			       struct iommu_domain *new_domain);
 
 int iommu_device_register_bus(struct iommu_device *iommu,
-			      const struct iommu_ops *ops, struct bus_type *bus,
+			      const struct iommu_ops *ops,
+			      const struct bus_type *bus,
 			      struct notifier_block *nb);
 void iommu_device_unregister_bus(struct iommu_device *iommu,
-				 struct bus_type *bus,
+				 const struct bus_type *bus,
 				 struct notifier_block *nb);
 
 #endif /* __LINUX_IOMMU_PRIV_H */
diff --git a/drivers/iommu/iommu.c b/drivers/iommu/iommu.c
index d14413916f93..170329a085b8 100644
--- a/drivers/iommu/iommu.c
+++ b/drivers/iommu/iommu.c
@@ -291,7 +291,7 @@ EXPORT_SYMBOL_GPL(iommu_device_unregister);
 
 #if IS_ENABLED(CONFIG_IOMMUFD_TEST)
 void iommu_device_unregister_bus(struct iommu_device *iommu,
-				 struct bus_type *bus,
+				 const struct bus_type *bus,
 				 struct notifier_block *nb)
 {
 	bus_unregister_notifier(bus, nb);
@@ -305,7 +305,8 @@ EXPORT_SYMBOL_GPL(iommu_device_unregister_bus);
  * some memory to hold a notifier_block.
  */
 int iommu_device_register_bus(struct iommu_device *iommu,
-			      const struct iommu_ops *ops, struct bus_type *bus,
+			      const struct iommu_ops *ops,
+			      const struct bus_type *bus,
 			      struct notifier_block *nb)
 {
 	int err;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
