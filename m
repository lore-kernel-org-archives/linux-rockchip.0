Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 54C16C54791
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 17:40:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=drmEcWgvZjIZoPRmHIMnNmPqCZfpfunobaVNG0svyiU=; b=opsFlhZbyX/FKX
	yk0SMsAtJ6Q5xYDvArZPSScmltLY7+lQYAF177vk7Oj2ps8vem8vl6OA70vsACe5scWNJIOyctmKz
	hyPZXSv+WT/gxgK7amUoh2gqQlrZtskx5rL+8kiNj1Y9/ReMwP1Es7+TO1tQ1jw48BTf7y+k7Qf6e
	ocIL07V0H74BtlTfWR+sg0uEg1GafqDyjvnYdM11S8Bf8IARZh8VemqX4xTgQy9LTIIBqnQK2sjD9
	emtsmeaS0mb+V0bbjAcBwjQqmyapRAd/uvx6fow04EuPsmlYBxgngfTGM5phfVw8Hechd7vJ/SOTW
	5qJyxvKS5MFwzJH7ckVQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD3Q-00000005pVQ-0Blu;
	Thu, 22 Feb 2024 17:40:18 +0000
Received: from mail-qt1-x833.google.com ([2607:f8b0:4864:20::833])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD34-00000005pGv-1UbI
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:39:58 +0000
Received: by mail-qt1-x833.google.com with SMTP id d75a77b69052e-42a029c8e76so57475111cf.2
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:39:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623593; x=1709228393; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ZEqwPir77gZiomgrLUuNDH63tTDpLGc+7y089oTBF1I=;
        b=tdpO84AkKTuMf3PFjBNNRqCxU0lw8d1m+iWN5dJRZtRDngPACQ5z1584H2XBD+PdRA
         tAD5ZqzFFNp5CAQNbHWhDWrTQsXwNm77J7SyYEXKUiJLU3wmnSj8dif1tqzefPzfp1LE
         DthLHQXEQyVVeCz2PJsDzIbFYarv5wQnWnef4YIwPO2c2O9QJSV7GF2rdvLyj8n+Bwc+
         cAGIeEmYzzEdlA9PBD1SrhwGl813kvBdeubcoXRDstDzDRJbRjzKmAmy4YW9hkLLU1nf
         po+JP3DZvBNqo52SvFbF3XpgcdV3K6aUGlyA5JJ2PBKTFceNCD2s+8YxbgO+apG1KUa5
         P+Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623593; x=1709228393;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZEqwPir77gZiomgrLUuNDH63tTDpLGc+7y089oTBF1I=;
        b=bNlPstWzv6I7+bvbO+Hp0DbtkRubysNjqngJBHNOnFuhkEtQui2jNMeGyWHi08+1Gy
         ScgyGFjJlQcrELgGSAkFFVeg5c5ukpsUzbhSSeldSZ5U8dVXRF2mjS4ZfhjJkgX0br91
         h39vtSGTNpBgdCFbzG5thLmCFQjVYfCSCtPowlmwpgXJx1vFKPmQhHBi3F3n3gFKDlXX
         ASAOP3VKJCrqGqOgFJ0I+996ImUbQk6fy/vB/xdAusP2fGwo3hqarDxnNTTRbQLmZu2R
         yJLTMbRDdQ+PQHn6QXcbcTK9p1zmU/iG7sajZusgz8MKNqaUrSSgz3B99OKXJ/DYEFQL
         clyQ==
X-Forwarded-Encrypted: i=1; AJvYcCXMl3JgizrKMyQbOwzV3GBigY9w72WB1cV0KI0mu2Oewt0U/QBxJdBb41Hfgvq/lk4vB1e1yfxV4fOvm1SOOvqVz35N7rLAPBJtPJjP4FLjXh6O
X-Gm-Message-State: AOJu0YwLxkH1ZH6xSBn8M5jDZg78UU8rw0gHdG5qE6yQqn0n1CcX3s9x
	BZbpUjicPJS33Ym3V26YXxETsQhRaPJegfXVm+TeUAyVdrZe8OanFZtGIgbiyMQ=
X-Google-Smtp-Source: AGHT+IHWgbe6ipO8HL4XSLjafpdpzGiSGfQct8NtUqWcRWqXLU3Gq7aLBUbxfLYc4BAno8BAqxzaSw==
X-Received: by 2002:a05:622a:11d0:b0:42d:feeb:64df with SMTP id n16-20020a05622a11d000b0042dfeeb64dfmr18277023qtk.36.1708623593054;
        Thu, 22 Feb 2024 09:39:53 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:52 -0800 (PST)
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
	rientjes@google.com,
	bagasdotme@gmail.com,
	mkoutny@suse.com
Subject: [PATCH v5 08/11] iommu/sun50i: use page allocation function provided by iommu-pages.h
Date: Thu, 22 Feb 2024 17:39:34 +0000
Message-ID: <20240222173942.1481394-9-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_093955_758731_0838CB94 
X-CRM114-Status: GOOD (  10.11  )
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
Acked-by: Jernej Skrabec <jernej.skrabec@gmail.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
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
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
