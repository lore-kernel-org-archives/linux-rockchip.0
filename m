Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DA36C48BF8
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Feb 2024 18:46:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wL6wiJLXe+6/BtS4WGW+68WOzxwJyw424on5vBcQ+vI=; b=IaejZkdnS4Uv2r
	LxPfO1vgcf76CDLj0ujA8KTM5AyXrwHeBfM/k4k931xsqEJtpFyz3SsPa8NSLG/hlBbXTf7tIhNSn
	46Dpv+YdErsgs75YOYoTKQvb1B8b9xXOr/JRfHnL/cnCM71sJJtI3Ghr/ZB4Y8Xk7mt+dvIPHIhY1
	m14XCY/ryH7eMkWUSPVjuU3qpjkRqp5AelM8XwemlhL/XUvSTFCDGeBhlHbrEdOzXm1BKFlLHsWaE
	V2n1zjcRLbqiz6hZcXNJdC1aP7PKiRkevi0w9JTLcF/Jlo58TQJSgPKZomON71Kl/Hpgc0azqEPT+
	Q4B8ePJi0gCJ5vRFKPOQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdE5K-00000006BjM-17IA;
	Thu, 22 Feb 2024 18:46:18 +0000
Received: from mail-qt1-x834.google.com ([2607:f8b0:4864:20::834])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rdD2y-00000005pCf-2MbG
	for linux-rockchip@lists.infradead.org;
	Thu, 22 Feb 2024 17:39:53 +0000
Received: by mail-qt1-x834.google.com with SMTP id d75a77b69052e-42dfe1c3353so17285901cf.1
        for <linux-rockchip@lists.infradead.org>; Thu, 22 Feb 2024 09:39:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=soleen-com.20230601.gappssmtp.com; s=20230601; t=1708623588; x=1709228388; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WCq+3vWtONMZUCcchixRvndD69tz6ABYgm5wv9T97ic=;
        b=NprdbwUX9e86eVU78OyGiFgD78EqaoHm3H2pdSyLRwwIuZY0uqY6SGPY8LANK6oNGn
         DBF6BF87nh/B71+Y1VS8FkjZrRNbu/3xCV0rYAmmTLAgCRPT/MJpwOuDB5Dwxh30rXPI
         Czz9E7UW9JVSWI78w2Ry8CjlTBA5FL3jIttlH17Y5GUiTpbHrJvNc0/z90gykb+dzImy
         M6CpwH7WbGx8cLzwHpYE8n9NTyit6yxTZix7AOcRbZadZpeasSRpNEISsgilbQYQzV+y
         38oPIqk0EeyYbDxUikw0bOL8p6iC5wJS+EgZJluNTHj+EBGACxfBrbgeSOjTXhqX/mAb
         AXiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708623588; x=1709228388;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WCq+3vWtONMZUCcchixRvndD69tz6ABYgm5wv9T97ic=;
        b=tvsu2B80fkWfFdqRI6fmgnZRKj1r67DC0efWeVykgvhIny72YKC6xDHivYItx592RZ
         ComIXHo1nSYGyUmDdHNn+Y/sQC9Q6EAXYxfo8yM0WmX+9LYmIdRgdDpJn9Nzjm9bf6qK
         QbW0FeZddBgoBrC8p7OEnAlG6bt9jRCILF1TL6q3eU0NqEu3V8WFg7eKWZcKtvft9lut
         aESTZnPUXdkZ02oDbQIwnbXaqQCvkvAvcLE/wqXJaMkbpdmj1k/PAWSWG+iEx2dcOnFv
         51QslZVS/Qe7ooT8DQd0UGYXgW9zCOoaMX3zezCXcnVZDmDEP1SUTCC9D1vjSaI7h6HB
         GeBg==
X-Forwarded-Encrypted: i=1; AJvYcCVyUbEUq74vQsMpWs3aeVAop56x+rnjWRuswyCSMTBYIcJZ54hEbuLbdgj040KZLS73weDTvXjZARXEYvW5o6Uzqdcs3g3se9MTqDxwTU5HfSwV
X-Gm-Message-State: AOJu0YyEY92X1VYu+zi4bB3v+YUpJq19Di6myJlKfP3J0XRxbCww2T1B
	XopVxOwJbqH3j7+/9PbN7+aN4DkNhYObwZ5v6crIKbC+KWYNi/1BCr2Jq+5BEJI=
X-Google-Smtp-Source: AGHT+IHYsjufxgrQOIaZKGAlBEgAe+E77c4mX2kxpmgTPbMZQuerhv+xRzMr0weawYHNzNvAJaqSlw==
X-Received: by 2002:ac8:7e82:0:b0:42e:5791:3531 with SMTP id w2-20020ac87e82000000b0042e57913531mr1519017qtj.22.1708623587773;
        Thu, 22 Feb 2024 09:39:47 -0800 (PST)
Received: from soleen.c.googlers.com.com (249.240.85.34.bc.googleusercontent.com. [34.85.240.249])
        by smtp.gmail.com with ESMTPSA id f17-20020ac86ed1000000b0042e5ab6f24fsm259682qtv.7.2024.02.22.09.39.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Feb 2024 09:39:47 -0800 (PST)
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
Subject: [PATCH v5 02/11] iommu/dma: use iommu_put_pages_list() to releae freelist
Date: Thu, 22 Feb 2024 17:39:28 +0000
Message-ID: <20240222173942.1481394-3-pasha.tatashin@soleen.com>
X-Mailer: git-send-email 2.44.0.rc0.258.g7320e95886-goog
In-Reply-To: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
References: <20240222173942.1481394-1-pasha.tatashin@soleen.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240222_093950_041578_DA261811 
X-CRM114-Status: UNSURE (   9.74  )
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

Free the IOMMU page tables via iommu_put_pages_list(). The page tables
were allocated via iommu_alloc_* functions in architecture specific
places, but are released in dma-iommu if the freelist is gathered during
map/unmap operations into iommu_iotlb_gather data structure.

Currently, only iommu/intel that does that.

Signed-off-by: Pasha Tatashin <pasha.tatashin@soleen.com>
---
 drivers/iommu/dma-iommu.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 50ccc4f1ef81..fa0c4be79f9f 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -32,6 +32,7 @@
 #include <trace/events/swiotlb.h>
 
 #include "dma-iommu.h"
+#include "iommu-pages.h"
 
 struct iommu_dma_msi_page {
 	struct list_head	list;
@@ -156,7 +157,7 @@ static void fq_ring_free_locked(struct iommu_dma_cookie *cookie, struct iova_fq
 		if (fq->entries[idx].counter >= counter)
 			break;
 
-		put_pages_list(&fq->entries[idx].freelist);
+		iommu_put_pages_list(&fq->entries[idx].freelist);
 		free_iova_fast(&cookie->iovad,
 			       fq->entries[idx].iova_pfn,
 			       fq->entries[idx].pages);
@@ -254,7 +255,7 @@ static void iommu_dma_free_fq_single(struct iova_fq *fq)
 	int idx;
 
 	fq_ring_for_each(idx, fq)
-		put_pages_list(&fq->entries[idx].freelist);
+		iommu_put_pages_list(&fq->entries[idx].freelist);
 	vfree(fq);
 }
 
@@ -267,7 +268,7 @@ static void iommu_dma_free_fq_percpu(struct iova_fq __percpu *percpu_fq)
 		struct iova_fq *fq = per_cpu_ptr(percpu_fq, cpu);
 
 		fq_ring_for_each(idx, fq)
-			put_pages_list(&fq->entries[idx].freelist);
+			iommu_put_pages_list(&fq->entries[idx].freelist);
 	}
 
 	free_percpu(percpu_fq);
-- 
2.44.0.rc0.258.g7320e95886-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
