Return-Path: <SRS0=2LhI=B4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-12.8 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SIGNED_OFF_BY,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F16DC433E4
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 06:04:47 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 0D43120709
	for <linux-rockchip@archiver.kernel.org>; Tue, 18 Aug 2020 06:04:47 +0000 (UTC)
Authentication-Results: mail.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.b="mKhSpuHd";
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=tcd-ie.20150623.gappssmtp.com header.i=@tcd-ie.20150623.gappssmtp.com header.b="hxpRljSM"
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 0D43120709
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=tcd.ie
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dsyk25ivv5Eh7T2KaMQebbDpTIbG2yHYMJS88Wnglds=; b=mKhSpuHdbviJePCjz+7rVys6Y
	3prql4G0jSybO3huAAmts36SP+kiqFLm8ZMjW56ERojMs2ay5DlFsDKBzMojuHDvo7684Vb2NUX/f
	BkpccxRbNsUvDkJbVO7AnIrJLGL5d4sTee0Op4yRH9PkCUrJL83VrrwdThx8oCIg75pHZPIxigcZC
	B1ldfinaBM3L5p6zkl3pkENANz9HmHLIC+bUoNAGXLFpsM2kamWw+R8gBrwx2YMySx6kbRJuwr6V/
	UlnUVQw2VAeUxo2t+ClEewlMC/Qz4IM2AfjbLMYVRYw18h2orynj+3ujMqkvu+lR7pUvi1ICl5+vl
	xNuACzGlQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1k7ujg-0001CE-Nh; Tue, 18 Aug 2020 06:04:40 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1k7ujU-00016w-2P
 for linux-rockchip@lists.infradead.org; Tue, 18 Aug 2020 06:04:31 +0000
Received: by mail-pl1-x641.google.com with SMTP id u10so8714900plr.7
 for <linux-rockchip@lists.infradead.org>; Mon, 17 Aug 2020 23:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=tcd-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=a6SU4e7qioZa1MSGn21iWR1ma/iTKUTYpUuysCGcy14=;
 b=hxpRljSMtWhlvVTpffp4qhvMX1mdxLX6f0iMxptJuN7hUOC5AHsbLalFs+KtKDLB/V
 YL6y4BRukmSd0p99UL6RuVK4dHIwnPQgujw5EkR0OwSLbuHb6cHKrRpJ9I9XehRsNagY
 rxVhoRNaj3NwPAkQz+yOOdny8t4nvLbSgWrNevsCNIQB2QmDSOJnPiGn8C2yAhJBBcU6
 SA3gEspw8HLI8LBXCjAdHDMxYTIUo9jpwo1cNNTJfUxHkX/I3V3In9OZhaglBBrdlzyT
 s8Fv+oSbk5r/Z+poak4UteeUno8QRtJmD4t+F9iexuoY0lyXqxIis3Td5/onXebHC4tY
 tBtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=a6SU4e7qioZa1MSGn21iWR1ma/iTKUTYpUuysCGcy14=;
 b=b1K8jsOEhbPUcrcsHHZ4OVHVqC3OmSAJdoNNM5WUJgwMQKNshM6UE98VCg78DsJ/R4
 nIKF0+ArrxwCheaPsXYtNUiDVbYfle9k5kdHxyMEnwTIk1T5qwQjGvAVcCDgI4Rurk66
 TxmmeL6NS2ktFnnkIIgp9EO3pNynrOCZz+w9KgdY1BBiRCt4VCI9uHQ6dPkDHtT1jGDp
 WSU2JE1B6yNSZ5Gfzim/ftGI0R/lxMOn6myNChqaO5FO4KbimOpRvI6+rMuT1Rj1gWbF
 pdFG0qnzOu5e+5W/vQkSnAR+xeizOwlxxSQCy+jyVfMRxaulev7J2gZwHZLz5Y3JhzY6
 lk7Q==
X-Gm-Message-State: AOAM531u3+1ixVNA0jlLagfS3kzfVjeReXNRNMA0tCYupp0a78uMw/7F
 Y+kIQMqxtJ2VOAT4FQ4PjJifZg==
X-Google-Smtp-Source: ABdhPJwIgdAjrz0QhHxtqrEjKsSeJiVX/sPlDBbqWWmVnl1cgdOijSjJUBJdGuOHZxzXZMmQ6vRK4Q==
X-Received: by 2002:a17:90a:1682:: with SMTP id
 o2mr16209039pja.227.1597730665925; 
 Mon, 17 Aug 2020 23:04:25 -0700 (PDT)
Received: from tom-ThinkPad-X1-Carbon-5th.teksavvy.com ([69.172.145.184])
 by smtp.googlemail.com with ESMTPSA id v10sm7102985pjy.3.2020.08.17.23.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 23:04:25 -0700 (PDT)
From: Tom Murphy <murphyt7@tcd.ie>
To: iommu@lists.linux-foundation.org
Subject: [PATCH V2 2/2] Handle init_iova_flush_queue failure in dma-iommu path
Date: Tue, 18 Aug 2020 07:04:14 +0100
Message-Id: <20200818060415.19522-2-murphyt7@tcd.ie>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200818060415.19522-1-murphyt7@tcd.ie>
References: <20200818060415.19522-1-murphyt7@tcd.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200818_020428_149768_467D32BF 
X-CRM114-Status: GOOD (  14.14  )
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
