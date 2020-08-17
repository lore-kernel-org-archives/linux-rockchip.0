Return-Path: <SRS0=J3GV=B3=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1E44C433E4
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:20:24 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 6D4ED20758
	for <linux-rockchip@archiver.kernel.org>; Mon, 17 Aug 2020 21:20:24 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="FoABbJxp";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tcd-ie.20150623.gappssmtp.com header.i=@tcd-ie.20150623.gappssmtp.com header.b="tQ0FE9hL"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 6D4ED20758
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tcd.ie
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dsyk25ivv5Eh7T2KaMQebbDpTIbG2yHYMJS88Wnglds=; b=FoABbJxpll0j5M8JoQojqJJsK
	+OPCbHecJqYQpykwXvVitVoNfUTLDA+ZqnT8dTcvjV6JvQvRfRhGYZlqbBCsyae3bjv+LL1lHPvEO
	nHpic7+RACTyqM9siFf5tjOQjehTykhRqbnsm3S6UvXlLP1ElBlamWJCvMCQ8jmUrCZDeN0TXWaIU
	VBiVekWTlxSboB21t/kRUGlkLuWF2SZOwkDIpDmPm68Wun90HAlHPswWwALroS56MY0CwXXRmJ7UP
	rUlL7R8xBIBsUJC3ThPzVrbXDf6SudVmP0xnrdU4cdfZ5H1231BGQN40iJ/+AFnuqRHrJkOIEVZT3
	wmAB3ZFtA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7mYF-0003w3-6y; Mon, 17 Aug 2020 21:20:19 +0000
Received: from mail-pj1-x1043.google.com ([2607:f8b0:4864:20::1043])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7mY0-0003pl-AS
 for linux-rockchip@lists.infradead.org; Mon, 17 Aug 2020 21:20:09 +0000
Received: by mail-pj1-x1043.google.com with SMTP id 2so8408162pjx.5
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Aug 2020 14:20:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a6SU4e7qioZa1MSGn21iWR1ma/iTKUTYpUuysCGcy14=;
 b=tQ0FE9hLvaMYPBTVoFLMvapqE3NmtNzvVLom8ama2749kqs+FHz9nxs7AHIJO7mDBv
 K8Q+pQ4G/b4TMv1DEEAJUykFiG2bIYGrU3nC3oR7j6f2NPSzKfCcVFaY4kOAcXUttSVT
 FcQd5pxyrvBzc1oQk+/2JMAu6G+p7dtknI9bruysURWXuQybraU9AWYk41P2rQ/Ugs1V
 KCxO0AsJuqMRVrwiHYTBB1bwM8dzGrwTw+I2FuHbRzUP2Mdhb2OLUMXYWcNu2LS9HUSM
 o/iArU0Mr099iYvhHaRGgPLkM2XevIGWNnpUQKOQ1d+f4UwWeBsVd7zpHvgp1Gst8iud
 sCxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a6SU4e7qioZa1MSGn21iWR1ma/iTKUTYpUuysCGcy14=;
 b=d266UL0iz8ZB+KzZ/U/Boem+gfMPn/Z8cEW6LV/UekH5krq9QP96qVueUe0jAbHRDv
 kNvPwr3moLeQ78d/BV1JFKzMl95ZSeSbAyYnjMW8TfLAhAvvgUr8pj8KzFl2ucQBbH0u
 IpiFjBtc9LN4WjeuoQbD/UFJRjrJzhLw3dv8+XgaiJ9ngbLxTb7/ikyNkaUMeIkWPMdq
 WMkinj2bGsY1cmpwKv1oAQXqDDOPIGHEfr0khZcIiht6gi7TygKRl1QRDcz/prs1wEqp
 eNMv+JJHV3Gy51TjOIBQMo6+Ybhe7QA7DPyMWnlZJn6rKMVz2XHN8RBk++ens+qN++pd
 DX2A==
X-Gm-Message-State: AOAM531de+yeRq8PgDT63dboKbuRcPigFdVCrH8YCQHESKQXZgfwT/qR
 iqpeOYkXtzl9v8Qqy0P3mOKn+w==
X-Google-Smtp-Source: ABdhPJxLpxYOD9HqJyjPsE+aMSLqEST9f99mfp5IwRRr6pkeOH6GEyp42pRMo63jP9uxCJQN7toCzQ==
X-Received: by 2002:a17:90b:128e:: with SMTP id
 fw14mr14318007pjb.66.1597699202157; 
 Mon, 17 Aug 2020 14:20:02 -0700 (PDT)
Received: from localhost.localdomain (S0106ac17c8c0ce82.vc.shawcable.net.
 [24.87.214.6])
 by smtp.googlemail.com with ESMTPSA id q10sm20733468pfs.75.2020.08.17.14.20.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 14:20:01 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH 2/2] Handle init_iova_flush_queue failure in dma-iommu path
Date: Mon, 17 Aug 2020 22:19:50 +0100
Message-Id: <20200817211951.14794-2-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200817211951.14794-1-murphyt7@tcd.ie>
References: <20200817211951.14794-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200817_172004_484592_CF539C84 
X-CRM114-Status: GOOD (  14.42  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>, 
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Cc: Heiko Stuebner <heiko@sntech.de>, Matthew Rosato <mjrosato@linux.ibm.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, linux-tegra@vger.kernel.org,
 Thierry Reding <thierry.reding@gmail.com>, Will Deacon <will@kernel.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 Jean-Philippe Brucker <jean-philippe@linaro.org>,
 linux-samsung-soc@vger.kernel.org, kvm@vger.kernel.org,
 Joerg Roedel <joro@8bytes.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, linux-rockchip@lists.infradead.org,
 Chen-Yu Tsai <wens@csie.org>, Andy Gross <agross@kernel.org>,
 Gerald Schaefer <gerald.schaefer@linux.ibm.com>, linux-s390@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, Maxime Ripard <mripard@kernel.org>,
 Alex Williamson <alex.williamson@redhat.com>,
 linux-mediatek@lists.infradead.org, Matthias Brugger <matthias.bgg@gmail.com>,
 virtualization@lists.linux-foundation.org,
 linux-arm-kernel@lists.infradead.org, David Woodhouse <dwmw2@infradead.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-kernel@vger.kernel.org,
 Tom Murphy <murphyt7@tcd.ie>, Rob Clark <robdclark@gmail.com>,
 Kukjin Kim <kgene@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 Lu Baolu <baolu.lu@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

init_iova_flush_queue can fail if we run out of memory. Fall back to no
flush queue if it fails.

Signed-off-by: Tom Murphy <murphyt7@tcd.ie>
---
 drivers/iommu/dma-iommu.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/dma-iommu.c b/drivers/iommu/dma-iommu.c
index 7433f74d921a..5445e2be08b5 100644
--- a/drivers/iommu/dma-iommu.c
+++ b/drivers/iommu/dma-iommu.c
@@ -356,9 +356,11 @@ static int iommu_dma_init_domain(struct iommu_domain *domain, dma_addr_t base,
 
 	if (!cookie->fq_domain && !iommu_domain_get_attr(domain,
 			DOMAIN_ATTR_DMA_USE_FLUSH_QUEUE, &attr) && attr) {
-		cookie->fq_domain = domain;
-		init_iova_flush_queue(iovad, iommu_dma_flush_iotlb_all,
-				iommu_dma_entry_dtor);
+		if (init_iova_flush_queue(iovad, iommu_dma_flush_iotlb_all,
+				iommu_dma_entry_dtor))
+			pr_warn("iova flush queue initialization failed\n");
+		else
+			cookie->fq_domain = domain;
 	}
 
 	if (!dev)
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
