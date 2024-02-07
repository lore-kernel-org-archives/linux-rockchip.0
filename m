Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B3FEC4829C
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 17:41:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wt1eUHe6u3MGW+gzfa5ibvCGIQHHX440E3ZDjhcVQS0=; b=H9vRNtvKz1CdWO
	pqo8iRtlacEt0Jc7iir/WLmRHU2tZByoYgUTvazRodoVSzUJbGMN3dG+dvvq0JBtmMsWb0QrevXT1
	gHVD7VMImd8zHQ+h4P8JYbMSjoC3An/emcUFRUqFU4CgaKq4pO6ej4XPAGc5WgbxNKFE0nHik7gQM
	p1a5sx4m97cvl+5Xil0trw3/mvi3suHF2e9lPWnZ4kOsIDcJSYnu8hClyLB1+6u96aERU7SmgPwix
	8Qrie9EpVR5jYSr6L6ebcgBt4XGCDUw/WIZiBvQZ5FNpkDqU5hSDKSAfiV9r6bzxEAPjv3sg7dgub
	rwsn7cccYb+U8wJkdF8Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvM-0000000BKT3-0D3c;
	Wed, 07 Feb 2024 17:41:28 +0000
Received: from mail-qk1-x730.google.com ([2607:f8b0:4864:20::730])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvC-0000000BKGl-21lb
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Feb 2024 17:41:22 +0000
Received: by mail-qk1-x730.google.com with SMTP id af79cd13be357-783f553fdabso5940385a.0
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Feb 2024 09:41:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707327676; x=1707932476; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wfVh0oPEahUZvzrBZ9xf+/i5rxN2+U5mi493evzNcuQ=;
        b=A2CSALiUo6Zm0YWbIbOWZnSsd9nAbCXv4YjRbO9C1ojlxL/VTuvN+JHEtUVaiLs4VP
         GY86d7lQt0I4GMaC5DizCqqOzS454PnGaFCnBYXBoViPfV7lGRX/X5HrcAeTFlX0tCkC
         BBOV4AkqA+w7uvwzNntkRgoVxhGW0QLHIYeh+dEzqtlSNNdKDJHLRj9bM25suu3VLQAW
         ess0+2g5n88pitFqMz1TdX9/YXxlY+Y5Vx4fh0T0W97mGl6oPeWKDv/rtP/f0xA45Bhx
         iPIIKyurrShPWw7oq0qUUhTwRfSZR/wUi90p6oIOadzteizgndIuxzLeU1hDfR4BJPV4
         pvMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707327676; x=1707932476;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wfVh0oPEahUZvzrBZ9xf+/i5rxN2+U5mi493evzNcuQ=;
        b=YsjLrFPdlvAM6hIF3RUMdPOVn6uRd1YRptMw+3ubKK6iLUHgRtw+9Cv4MRttR40KMN
         CyfuSadwA4Mgb/2PN3Fxbbmr5cv50bvmE5oJjw3Q29/iZ9HzIHvTNgt10Di1UO8EbbJ7
         UtsfznROTKWk2yWLdqN2HoIYEeZmw1bVn/YPFFHeN175JZJ07oCKiHsC3DPHkNQ6SVaI
         eMCflyUPDmeemqJzaSyvjQ8MWc/N4noZRiwLN1sxhrfX04IIq4dzdu3hNFovt7eUnr9g
         FOPhg+1LKHwRGdM/5CAXVlYSmu1G770skAUgq5avA4pbOP1dVjiD8+wH0K8ZC25bEruU
         dGeA==
X-Forwarded-Encrypted: i=1; AJvYcCXLTImRHgI5ekozZkQEWriIxjIH2/U5mvb8Exldr0RkAS5k+/rc+hzHkBE4LxlPlGJnv7yOZ8y13JP+dE0v9JbW3gzwLD4TXDmMkzEPpv8/fzN9
X-Gm-Message-State: AOJu0YxMIqZos4msHmaTFMVffq7OZrzDtRK4K7sYHO+0yIu+0Smj5ZWZ
	HmXqN4kmry29rz9QxW238N6gD9bg1EKvYSeITqufChwSyrhQK1ir9/Ux6WhUBPM=
X-Google-Smtp-Source: AGHT+IEYw/oN3ccwsdwQFv2jRl2FvfT6B6nkPyMXJGG4ZBtYYD02TxlhcFEf6LXGuUiTE1mdL7ys/w==
X-Received: by 2002:a05:620a:2191:b0:785:a0fd:26c with SMTP id g17-20020a05620a219100b00785a0fd026cmr230165qka.36.1707327676289;
        Wed, 07 Feb 2024 09:41:16 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVXXSvczqKSyNm43JX5/tzjrxJXXar4QNtSDMhqU2+N72ON7heLA3zeXwN1sPD8iNP1Ua3viph4VSvSaigEeBs+4AB16FSQoHG3nR2ARKpJ6Z6eqdW6RZ/Dx5gVULGUeNiZJs2bmFqEcerVJIR/k77MlP0P0vb2m946zLj3/Q+KKlAaf+S7e+fUwZ84VZBAoIKR3CAFqaEvfgSVeHvJDNlreq4nUF0bRbOmv+CTFkg6/34uIuhSrA1PfBuZS9NDpUrr7qD3iWEui7dadf1quYchsrHJm7Et0JCMwNo5G7j88fU0jnlH2f3xq6IprlzgVbwgVawD+F0w5yMxaKe31AMQCKLJDPkDnYGtso1cb3VcL9cwUUlE8zHdYGqDtmL4A3bNsEc+cHEYWlAikX+B5mca++p25pQQybiJgq5+xuv6MXn3SJAmkIrOedVuJQIGWWxUXhVKrHyW1vTefklNntllKnJ8kE94Q2QK6FQ7R5hbS7ZM+HnDQX4b8eU46NlXSODa0H04teVLWvmP9gtCad8fAMZqMrrR3WQ/TUTBO30OMZ3zF+k4DWHX9SXVVrt9nrRNprKLO9Z7u8dKJ7+GXLD3DWJoiQaPYhHwdfNS0J/6cWv0Cmhs4GVlXWvAwjKLkG6R+bd+Ys0jdTkMgWDuLUuIUZJXKs8G2j8ytxUN9ONqBDbvEtiqVgUbhqFtknANpqKIjtrOa5afMZB6vaVlSXSz7JIia1p4WLqYg76UjL26wPfE+YNYaoqoyla+/NM5tlqcG+Qv9qaBsUT0PrZlag/9hIB7OlkLkbIDeffOo1piVsMnuWQ2Fb0sIE5M3tMlSV4LOUvlm6MMoqTigjLdoiMPCpo3eSydh5ThPXQcdvauDs1iooRO19ROz7wfGQiGkN433FzI8pQIGwB/Y28HAGJ2Z/e4dzgMME9mxSg6/v6VWpPcpYfrpADNnE1HG5m17F3Z9/
 UwJNwsxkn3pX7eMFA/DZyCzVr6lCgR+6OWns+GLU2SxZUdU0xVvSfjQhkSCVyzsqGTBKOAl46Qb5IR6uUP95vhYRyZh/sazLK1hp6TuSuGwGRiqCEq3kw5QrDYNAeSeryfxDajztI6S9jiXf9iOAeZ2u7rYaFZy50vg9l9iMXxf9hkJco867096dyje+DKkhn4WuJV5pUKUPg0jyDyOEh9YkiepVTHVZe+2/e6eXAACmAIqtLN291FEcNxHSFVc9VoRJotuYKq+P9z10tdNS+gaUUxRVwOH60jk5JdNq6iqwWPhfb90cWSdU5X/SASbKNAWT2TUn7fb+cqTPdJqZU5F61vo4y6m5LgEiIZFuY8ciAZqGeXCJ4KoNYNcloHQYen9MDAb9yvPdMPytSIThAuivd6JL/t1mQ68T7pjNDeJUQ62Bl8xjmJOCkONVL1QfNYzX6G15djtpimeWhgGmyglvGJqsqIKWUnJObt/eRFoB8y
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b007854018044bsm696310qki.134.2024.02.07.09.41.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 09:41:15 -0800 (PST)
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
Subject: [PATCH v4 07/10] iommu/sun50i: use page allocation function provided by iommu-pages.h
Date: Wed,  7 Feb 2024 17:40:59 +0000
Message-ID: <20240207174102.1486130-8-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_094118_771480_2CFC682B 
X-CRM114-Status: UNSURE (   9.96  )
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
Acked-by: David Rientjes <rientjes@google.com>
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
2.43.0.594.gd9cf4e227d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
