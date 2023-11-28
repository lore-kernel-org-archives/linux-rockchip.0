Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71A59C4167B
	for <linux-rockchip@archiver.kernel.org>; Tue, 28 Nov 2023 20:50:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ass+AAn5SBFxsJu4mAWstV6FxpjrqhWhhf6SfXaKUAM=; b=FGV9nApcjKmlnd
	uMIuv9HOLIvcVSSk2nv5JQxjkoO+0tKh9az0VcokS79/J5wBBalK/GuyHhqraF2WXv0pEhDoyLsN+
	8mtaQM3FQweaP8hbSRSd61UhNZebIQQLsrbqcoMrKceF7slPoeP/9mPKRKcDESqnYOWOl/mB3sbng
	U2wbRa0ilN88nAJCvUUbOrKj5xx0P1vssjCiUzysLDWAM2HyfQEXytsnZJvi3q77wrlAYmadOVW5Q
	nUN868BbtFkFzWBz45l9s1xQeUjFbmRLZOt4SHfMtoQC+g8NCSHwK7ByBCiWJmdCbMHDZhkUDTzgf
	d2WpfgWcCeObYZ3YaswA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r851y-006ICO-1h;
	Tue, 28 Nov 2023 20:50:06 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r851r-006I3L-1S
	for linux-rockchip@bombadil.infradead.org;
	Tue, 28 Nov 2023 20:49:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=WwZxW20NTsAI6OtU2mg3WBn7dc7VhXurLb9lJcGaB3s=; b=hAUkI4o4+ZO64GsxmyNqEL/WFY
	tnDfx0Zs1iheOPnoJYztOkV/H/0M4lIYvwXdimrCsy1XF+t9aRhBYZqCwEMso12IzzlWzhz5B3MhU
	JxSVVJYyx3UzUeEzlZg8XneIXDjEPKU5kqQu+dWyuJMmiJuB3Kw5HwbcbnnnrsAZSSzNxmqKopVI2
	Bigdu6DF2qsFER3ooN6+GH5jZj25mXgun8jFvN/X1nziLuM9dUHKjmLSV7oInuJgblNizSjaO6Iny
	NxHUBWWQTh1A7j1MT7uXCcCTcN9EAQzNx+BUQMkWiiZX50m+qA9QOxduNKmdz02uaThg6kTFsiaig
	GRpFwmxA==;
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1r851m-00CiGO-SG
	for linux-rockchip@lists.infradead.org; Tue, 28 Nov 2023 20:49:57 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-5d05ff42db0so27503517b3.2
        for <linux-rockchip@lists.infradead.org>; Tue, 28 Nov 2023 12:49:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1701204591; x=1701809391; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WwZxW20NTsAI6OtU2mg3WBn7dc7VhXurLb9lJcGaB3s=;
        b=e/m0Xxguk98NJhWDywflRhTVv93e0kAfnbxKjNi80gUZQBnp5UuR+Uwl6ax/8TMDnZ
         M+5qoe1skTANm6KuNcFNSC67k6v0++qgTl5W97Qb9KKCUz8Lsb+AMDvdqBpOiVG467Ir
         TcSZT7SbkdheMIlf4kfRV8tBT10ViNyfehqF7B4ShwwG6bVRPP8Bv6OQ2oW1rhrhUHGQ
         paQXpGcSMw3k/E7DGWuptyqtPfXHXIo2OKaVGBvjEEH+JLRcPvVGMf85QQcEj0AiVrTK
         ZQZQeviQoyBvaYTMijekQJXRYM1od03Ih/wXwyBMcWo40AvZeneKfONi4i0rc189KTzQ
         N7kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701204591; x=1701809391;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WwZxW20NTsAI6OtU2mg3WBn7dc7VhXurLb9lJcGaB3s=;
        b=TYgEQUs6e97XnQpAlVFMVduZIjdu5vZvs+4pZN5AcPDDc/o9NdgUSfPx+dU9P+w42O
         mQSIwh+2snRoqXzTT5oTRnKGyJugpt3zmTrHqW8/H+NgoddLm2MCC27NWxAGIdWzRWsX
         xU4sQk8HCVMiivzsSAiJrRJSF8lKLuEfZQ5+E3ll3SrGG4eVmQ+BRZqncj/ul2xQ3EEP
         YuOx/3PoVuLtspQOlcOj8McD6kpgJ2AFFNAfh+DHULJe6BmOx2FJzNFrJkwEO37tZkDN
         Y6gWPWfpzOnOJuTomnhsi/WmV9lTQ3A+fzyIvLMpUuj9s5i8yrZhmL6TIqZic7pI1v/r
         /aEA==
X-Gm-Message-State: AOJu0YzDR8hR30YL6GPgZCnCX8TPXby4QbyvfpqkYR6UYJn9BJ5RIkPV
	sJ/e+8L/BDE4xv0rtt/lMgWgBg==
X-Google-Smtp-Source: AGHT+IHCcneC8xut0NvwO9Mjx/qxjTP4L7ixlY2hbUe9eNo80eBX8ekYQZcNVvvgdD6z0QrQuBV3MA==
X-Received: by 2002:a0d:d409:0:b0:5cb:5171:ab07 with SMTP id w9-20020a0dd409000000b005cb5171ab07mr16139567ywd.12.1701204591541;
        Tue, 28 Nov 2023 12:49:51 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id d11-20020a0cfe8b000000b0067a56b6adfesm1056863qvs.71.2023.11.28.12.49.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Nov 2023 12:49:51 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
	alex.williamson@redhat.com,
	alim.akhtar@samsung.com,
	alyssa@rosenzweig.io,
	asahi@lists.linux.dev,
	baolu.lu@linux.intel.com,
	bhelgaas@google.com,
	cgroups@vger.kernel.org,
	corbet@lwn.net,
	david@redhat.com,
	dwmw2@infradead.org,
	hannes@cmpxchg.org,
	heiko@sntech.de,
	iommu@lists.linux.dev,
	jasowang@redhat.com,
	jernej.skrabec@gmail.com,
	jgg@ziepe.ca,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	kevin.tian@intel.com,
	krzysztof.kozlowski@linaro.org,
	kvm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-doc@vger.kernel.org,
	linux-fsdevel@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mm@kvack.org,
	linux-rockchip@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-sunxi@lists.linux.dev,
	linux-tegra@vger.kernel.org,
	lizefan.x@bytedance.com,
	marcan@marcan.st,
	mhiramat@kernel.org,
	mst@redhat.com,
	m.szyprowski@samsung.com,
	netdev@vger.kernel.org,
	pasha.tatashin@soleen.com,
	paulmck@kernel.org,
	rdunlap@infradead.org,
	robin.murphy@arm.com,
	samuel@sholland.org,
	suravee.suthikulpanit@amd.com,
	sven@svenpeter.dev,
	thierry.reding@gmail.com,
	tj@kernel.org,
	tomas.mudrunka@gmail.com,
	vdumpa@nvidia.com,
	virtualization@lists.linux.dev,
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com
Subject: [PATCH 11/16] iommu/sun50i: use page allocation function provided by iommu-pages.h
Date: Tue, 28 Nov 2023 20:49:33 +0000
Message-ID: <20231128204938.1453583-12-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.rc2.451.g8631bc7472-goog
In-Reply-To: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
References: <20231128204938.1453583-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231128_204955_008440_E5F39147 
X-CRM114-Status: UNSURE (   8.55  )
X-CRM114-Notice: Please train this message.
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

Convert iommu/sun50i-iommu.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/sun50i-iommu.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/sun50i-iommu.c b/drivers/iommu/sun50i-iommu.c
index 41484a5a399b..172ddb717eb5 100644
--- a/drivers/iommu/sun50i-iommu.c
+++ b/drivers/iommu/sun50i-iommu.c
@@ -26,6 +26,8 @@
 #include <linux/spinlock.h>
 #include <linux/types.h>
 
+#include "iommu-pages.h"
+
 #define IOMMU_RESET_REG			0x010
 #define IOMMU_RESET_RELEASE_ALL			0xffffffff
 #define IOMMU_ENABLE_REG		0x020
@@ -679,8 +681,7 @@ sun50i_iommu_domain_alloc_paging(struct device *dev)
 	if (!sun50i_domain)
 		return NULL;
 
-	sun50i_domain->dt = (u32 *)__get_free_pages(GFP_KERNEL | __GFP_ZERO,
-						    get_order(DT_SIZE));
+	sun50i_domain->dt = iommu_alloc_pages(GFP_KERNEL, get_order(DT_SIZE));
 	if (!sun50i_domain->dt)
 		goto err_free_domain;
 
@@ -702,7 +703,7 @@ static void sun50i_iommu_domain_free(struct iommu_domain *domain)
 {
 	struct sun50i_iommu_domain *sun50i_domain = to_sun50i_domain(domain);
 
-	free_pages((unsigned long)sun50i_domain->dt, get_order(DT_SIZE));
+	iommu_free_pages(sun50i_domain->dt, get_order(DT_SIZE));
 	sun50i_domain->dt = NULL;
 
 	kfree(sun50i_domain);
-- 
2.43.0.rc2.451.g8631bc7472-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
