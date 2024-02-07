Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 873FFC4828F
	for <linux-rockchip@archiver.kernel.org>; Wed,  7 Feb 2024 17:41:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jL3Wrgk+JmpEYCiqdBl8G0AuTLjpKjinP3ljER/WBtU=; b=IDwJ5RGiI3Nw+Y
	02veEz9oLUkqWbGmowWbU7+YFAnpcbVoVHsZrssIla5qdx/NkP13MxlXvX9uPmq8E8edqv56SzBgZ
	rvEHnNftGZdQUEauDISy0tdQVSX8/EEl7yqE0jxHPEUEceXB8awxWC6hVu3f8PfkSEHaHqB7BcB/E
	3Fb66FDDMSOzRBquF3MHYumKy5R+TVXT2GSU6Gv25jpHxvTpM3KLketDnI1ojt3lNXRNcKXfS69Nf
	Hon9/cUTYGjLf4heB3lYiurIBWSvw9g3oByDXLfDAHIBdOpikuTmIiwVV9wQMhyIIetliq/9AzQVp
	ZtDA3gqH3U0RUYRpDU0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlvC-0000000BKHi-0GnI;
	Wed, 07 Feb 2024 17:41:18 +0000
Received: from mail-qk1-x729.google.com ([2607:f8b0:4864:20::729])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXlv6-0000000BKB6-1OFZ
	for linux-rockchip@lists.infradead.org;
	Wed, 07 Feb 2024 17:41:15 +0000
Received: by mail-qk1-x729.google.com with SMTP id af79cd13be357-783f27300b1so40594985a.1
        for <linux-rockchip@lists.infradead.org>; Wed, 07 Feb 2024 09:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen.com; s=google; t=1707327670; x=1707932470; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0JA+g9MenvDAdiHbGDRChMbxLGZk1W2zcwaqv2KKBmE=;
        b=YxXSVEdUvO89RY6Ndi59/pNQOssblrDsQCr64ZAO7mp6UsLj7sEvbMy9I+ykLgE43H
         SSWVvOVjF8VYOGVUoM+XM5Pk1hGHC/p3YRdGxlGJwpr/oM5FzH/juvKpXxgL/dwfikxr
         cYW7CYlxwM6a7owGQsPIy1O9qzxtFBsXekPbOd8HCJ7UJWVjSKR2YwpdArQpC6xAtWNq
         jZqe4Rg0ED5RdkPNuv6CehhfP7Ga/DOBLRxOmDhc+GW5MEK/Oe82vR8fII68BULTc4fr
         +HvhjCs8o7B8iZSGGCy+/tm4xR5z72iqVQRU3Dya9Dj8T/KRldZcQ06Y9cadYHpVtBd+
         gSeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707327670; x=1707932470;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0JA+g9MenvDAdiHbGDRChMbxLGZk1W2zcwaqv2KKBmE=;
        b=TNJh2nzLsDDmdiiszq93CkBZfojBlNdVqlpOIaU7z/6l3h8paRXf5fB2M2Sx67s4SF
         5ZHGu9AJoG6350J2eMWQBE9epI4XT74gsECeNdTOsjqvuiTXNn6CY40d2VMehJOugWXw
         FoLWPAbxb6UChJSbKmSofsuWhGun2z0XlCICAbx80hEg1Pn0GwYS+RzKLwxHHiyUz8hb
         zupqi7oU+wb/Fzp2d9sD9Htrx91epPi47sC/9isLOlG1dblIwG2T6iMCk5zjUsKD2psC
         Bxk09KWtSNdu/s+msahrxLaKwzjnKdvbsGplMMEKG1qm5XnAduei57cchA4jVrYx2LQb
         WAKw==
X-Forwarded-Encrypted: i=1; AJvYcCUuHB//WoBeLgScT/Gaui8+7EynZnOSN9gK2NyLjzS7ENoEUTEe0tuNM8DqnN8DNllwnw/vJjtQzikF4T1Yj7kNYZYvP35veQOSww7tklcwPcn/
X-Gm-Message-State: AOJu0Yx1aJxbMhm6E7yDdJNQYazV5k9xlaKtaCPy7pFQHftlBWafLvYj
	KKROE+/nUJ3/ZFBWEf7CYA9iEmvN4PEZ/otiP+beL77F+wgoR4VFG7dLczjBtwg=
X-Google-Smtp-Source: AGHT+IElGFXh4B0vtRDxKd8uklPl89u5PGWF33uvo1vT3Tprks3bAAOetfH+2TcFICeRh6m1eJF/jA==
X-Received: by 2002:a05:620a:4393:b0:785:98ab:8898 with SMTP id a19-20020a05620a439300b0078598ab8898mr3650487qkp.18.1707327670170;
        Wed, 07 Feb 2024 09:41:10 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCXnOhFQK//OwjZNKUHINcQcq4GudU6s8Wsutjl75lKOf6D9RWh4FLHgsOUIKofDqbNFRfWgV/NHq4wMqswC5boWbx8uBB3eLjdPPJEDG+JpokbKJ24prVlsZCvz1bJ8lArrWCc2ovwEGlsvxtG2iwKNu+/Trrg2V6q2NVi2AnFBisRh30T4uHYT71AYbFR4RAaBrB9DJfu9gBgqW67xCIrBebLJHhdBt6iemjDFphM1ze+qyCJ3SfW7rnvQ5VN6LILBv5D3M7D7p6BESzx5yvv9tZ5MPENSw4Yf9hiA8/mM0hyJirPFR3Xlk2WeN4BnK0oM+unwGSpufCd27SfWadz7626HL/nyFqCDcbVwRo8suAZcfP7aVH3ftKhXi6Q8gEh19xp+lm04M8pJOSbegy3UzRzuOw3uqCPHO7d8Ej+iytbJKsDI2UXVT9eAbbYyddf8AnjZLxS1cT8BWSLa6QB/OJDMNI7YrAQ3ZRoUeEb7ZtVTnV0VjJOOJ6Q7tLPMt8I93o5ADXBUFTOS9Z9dIxPsD7pylm5o6N1CCII9ENXJ6rarWAvN+lCwGz8ANG5TOcZPgc2iBQK9wElVV3Q0nKQCa4keQlJZlBGxROG/lIjqXc8OZkfJELUKKlOCYFqJwdG3iUsNbOyS5cfUAg2cD9YpKt2ZAVtvZ9RW1/CCho7S2eD9vihzafV7l7B+GY27RkKonMQEbqUHIdBr25L/ZVWDF/B20M96ndDH/iNnjt1cg/U80ydG5MX4tEA4YoPWEnJkF4/BKzDpEGuIWseeppB1JFzf4HUfSuRm/JSL/kw+l0fYUTI1X4A5KLT8AAhJEptMUaFu18pKAwXNBHVI4MJTHWXC6vB/NP8WjoxON8R4WP1Ffpw01ZL8E75NGkzZcgJmptCJQrPFWgJ/dJ8JHS5Rh+kHTNTYJL6Scxh+h3vshyVNyKXHTwab2M6eST2kOzCUNQ
 +Zy4XD7JcdygwKNsFqhHYU9f4qLik9Wt+jJXdBCmW00mbGJQLSbt3auPkpzgZCWxdDiUkyWmSy2erf5ZmNoCCvTODBILMexUleg+8Zh/lUkX0mcQ2a3MEsLeys6KUqvNvWS18JlWOiJw7TALOzXDz3BxJS9qCWzgIT7MpIfbZLqPPjvO1RwhcvaMoGpFJABn52u1L64O87/jK116UWlhgXqQ0Xvme+jQrcJnwQxdgnLFl1NuOU9EBjTG0MLF2Zs9CkGuzI9VfaEAw6FFDPBRx/3kRTFC+HLR/teJ9sN6aRXkgugBq3eJQbqTGhWa6RM01Mqk6tgSJO978N5R3lGHqQkt5pjjpX5hqYiMYIyWldRmjRI1ZqkL3m60FfU2mFBF+CA91okBT0Jdtj/YeL/cJRGUvYR6Uqz6L3ShLyC2UepAwEUE9xgfVRs8EEJx2MJn6QdFO8I493pkNddkbzt8GpT4eFRrro01q41ZILmvRYLx0l
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id e10-20020a37db0a000000b007854018044bsm696310qki.134.2024.02.07.09.41.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Feb 2024 09:41:09 -0800 (PST)
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
Subject: [PATCH v4 03/10] iommu/io-pgtable-arm: use page allocation function provided by iommu-pages.h
Date: Wed,  7 Feb 2024 17:40:55 +0000
Message-ID: <20240207174102.1486130-4-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.43.0.594.gd9cf4e227d-goog
In-Reply-To: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
References: <20240207174102.1486130-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240207_094112_464536_4210ECBB 
X-CRM114-Status: GOOD (  10.37  )
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

Convert iommu/io-pgtable-arm.c to use the new page allocation functions
provided in iommu-pages.h.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
Acked-by: David Rientjes <rientjes@google.com>
Tested-by: Bagas Sanjaya <bagasdotme@gmail.com>
---
 drivers/iommu/io-pgtable-arm.c | 15 ++++++---------
 1 file changed, 6 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm.c b/drivers/iommu/io-pgtable-arm.c
index f7828a7aad41..3d23b924cec1 100644
--- a/drivers/iommu/io-pgtable-arm.c
+++ b/drivers/iommu/io-pgtable-arm.c
@@ -21,6 +21,7 @@
 #include <asm/barrier.h>
 
 #include "io-pgtable-arm.h"
+#include "iommu-pages.h"
 
 #define ARM_LPAE_MAX_ADDR_BITS		52
 #define ARM_LPAE_S2_MAX_CONCAT_PAGES	16
@@ -198,14 +199,10 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 
 	VM_BUG_ON((gfp & __GFP_HIGHMEM));
 
-	if (cfg->alloc) {
+	if (cfg->alloc)
 		pages = cfg->alloc(cookie, size, gfp);
-	} else {
-		struct page *p;
-
-		p = alloc_pages_node(dev_to_node(dev), gfp | __GFP_ZERO, order);
-		pages = p ? page_address(p) : NULL;
-	}
+	else
+		pages = iommu_alloc_pages_node(dev_to_node(dev), gfp, order);
 
 	if (!pages)
 		return NULL;
@@ -233,7 +230,7 @@ static void *__arm_lpae_alloc_pages(size_t size, gfp_t gfp,
 	if (cfg->free)
 		cfg->free(cookie, pages, size);
 	else
-		free_pages((unsigned long)pages, order);
+		iommu_free_pages(pages, order);
 
 	return NULL;
 }
@@ -249,7 +246,7 @@ static void __arm_lpae_free_pages(void *pages, size_t size,
 	if (cfg->free)
 		cfg->free(cookie, pages, size);
 	else
-		free_pages((unsigned long)pages, get_order(size));
+		iommu_free_pages(pages, get_order(size));
 }
 
 static void __arm_lpae_sync_pte(arm_lpae_iopte *ptep, int num_entries,
-- 
2.43.0.594.gd9cf4e227d-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
