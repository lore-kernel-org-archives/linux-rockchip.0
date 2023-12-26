Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5EE32C46CD3
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 Dec 2023 20:02:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/e+fZ3h2OU+G8e5Cnr36ryx770w2a4jeQTtqhM8iO0s=; b=S8n+FmGWqKveAH
	Re+LJForzbZx4iHP5pekuAX4wAkafdJvEudcuVtPqZBgNY45oRdHGBlj1pN+3jpbybZ6A2MbCZ1+C
	ogzxsi+xuW7PuhPJsFkHmVLY6rbt3UgaOoMxXZXSFNbXMWxYC2bjATauqO0JW4f5+cpUPg/610ff6
	KYrdUttiw2hzegqbyBt3amDrERht6XlGYjDqtp/Mkyw3gpJ50s5EUeB55tCgAjI2/wxBFCSVIGHbF
	TNegBwspcMww3F414ARytQ9vORRto4eGAE6ZRWY0TklEkYQ6M2DLzLclqn/cO+NsEYM1jF6dRoRV2
	G7j82OcwNO+l0lLUKh8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDdK-00DUD9-0W;
	Tue, 26 Dec 2023 20:02:34 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDdG-00DU9a-04
	for linux-rockchip@bombadil.infradead.org;
	Tue, 26 Dec 2023 20:02:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:To:From:Sender:Reply-To:Cc:
	Content-Type:Content-ID:Content-Description;
	bh=WnHaCiJRfpPGl2Fxvk26Xz7yYvu7rKjQdjdVfjQamuM=; b=jkDqKJyweN+cZYIyblognh8EJ3
	Jm4WjyZIkL+lD45FOpCO87jve4LqYvbxLWfwK6yvyIbP6J3QPciZoAFumQzTbdvfg8FukmjwKouOh
	KYeiMFkmMluFil1Ch1WzUWUL8lEzPukT5+PeL/KGY1j+fNs5ZuO1yIAw5+eqb3fXbeu8fIJ8NdSjY
	7bCtbv8qzCjqyR5IyzAQNVfhGeVFTVhR/j9cdn5uU2y0lUFLUYs9BoZoFM+wEC06JjeMf4sDELg0J
	QNW1gB3n87gjFb9M+Za958kX9bP4jNJFKQVGJ1iUQ//KJdqm3UjH2xLzFKGDIzXm3N+WifD8XwlBi
	GVUnbHSw==;
Received: from mail-qv1-xf36.google.com ([2607:f8b0:4864:20::f36])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rIDd7-000T3f-0i
	for linux-rockchip@lists.infradead.org;
	Tue, 26 Dec 2023 20:02:27 +0000
Received: by mail-qv1-xf36.google.com with SMTP id 6a1803df08f44-67f85fe5632so32992636d6.0
        for <linux-rockchip@lists.infradead.org>; Tue, 26 Dec 2023 12:02:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1703620934; x=1704225734; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WnHaCiJRfpPGl2Fxvk26Xz7yYvu7rKjQdjdVfjQamuM=;
        b=KUNcZOSbjFRagMFInYUb78E9tWnOROKQ4aWno+klbmUj2nO/+kijaF4qQpdBvEkFRk
         sW/sqA94Y18PsnwR6nw8WBmdEw6wItTvAKk8IiMDhvrciZ967ghuYnDHJK6LMAkTLg/O
         wf7mavf348prKp0Ry8cbgQolAk+5sf/RxBHbK66b3OFryVBHRGH3erR6MXz15llizD7p
         NVI/T/2ozA4Ad+K9mhUFqyOLFOM+jZNXneMJVeiYAVmLmc6E90hcZmSI9eyu6TPwCe4R
         WjZQ7p+2KVkgnmoyxffMwnJ1GgrRKHtCVpnXztoGXAAbzZvTAZ4n/IlmTerPNNLjQvgC
         G7ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703620934; x=1704225734;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WnHaCiJRfpPGl2Fxvk26Xz7yYvu7rKjQdjdVfjQamuM=;
        b=KfzXgxzTMJSL4bXp7YVJkAAljcYnm1adiL4QgGYIhlG5l72UK03KD+fad1xHJXPbeC
         gwfRm7wNfNhkzaR11jdV4IKV/LDvuUqa+nZftH4XHv61t+mEERES6Urzf9mcuZNqKlEo
         jkyTN3AQYmqoTYYLmDq3ua7XU/WogWh0a3c5fUFYr22Vm4PtPRgzsNdtU9dbQNPM/nvz
         tqlhYiVqe5Dr9OpmLR8zPykHfD1xBHBJuQEDiinih6rrJnjWLHYsZbhasmANjFddA+nO
         iOxqF3rUJDokgkBTqpZ3qu5ioSuB+AjJxJKaADXYKNH6W30NefL0eEl1foTYkxfWYdJ0
         oQ2A==
X-Gm-Message-State: AOJu0Yx8RjYuNokgkVW9aAfGdSwMTmm2FZaruYsXQEl2lSqKWZgqi+De
	+y0U3N6DrD538UkVH/bOBliRUTuPdcQ+QA==
X-Google-Smtp-Source: AGHT+IEjSL92+xZ/bAtRl2Tju/DugZ1gVQzpypJBCuESKN0IWhI/QyhY0T30YGd/IZCCOkD5WPDVJg==
X-Received: by 2002:a05:6214:2a85:b0:67f:67de:5d32 with SMTP id jr5-20020a0562142a8500b0067f67de5d32mr12181917qvb.41.1703620934647;
        Tue, 26 Dec 2023 12:02:14 -0800 (PST)
Received: from soleen.c.googlers.com.com (55.87.194.35.bc.googleusercontent.com. [35.194.87.55])
        by smtp.gmail.com with ESMTPSA id t5-20020a0cf985000000b0067f696f412esm4894539qvn.112.2023.12.26.12.02.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Dec 2023 12:02:14 -0800 (PST)
From: Pasha Tatashin <pasha.tatashin@soleen.com>
To: akpm@linux-foundation.org,
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
	jernej.skrabec@gmail.com,
	jonathanh@nvidia.com,
	joro@8bytes.org,
	krzysztof.kozlowski@linaro.org,
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
	m.szyprowski@samsung.com,
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
	wens@csie.org,
	will@kernel.org,
	yu-cheng.yu@intel.com,
	rientjes@google.com
Subject: [PATCH v3 07/10] iommu/sun50i: use page allocation function provided by iommu-pages.h
Date: Tue, 26 Dec 2023 20:02:02 +0000
Message-ID: <20231226200205.562565-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231226200205.562565-1-pasha.tatashin@soleen.com>
References: <20231226200205.562565-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231226_200221_741763_230B5EF0 
X-CRM114-Status: GOOD (  10.05  )
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
Acked-by: David Rientjes <rientjes@google.com>
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
2.43.0.472.g3155946c3a-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
