Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56146CD6E4A
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NBGS7i68gOAiZ+oykmeYw1pLWrmaXa33INZVv3LKcPU=; b=1+H1IFsOH41vPq
	JM4MbRTz1ORVV/eg5ddt12XdQtwlDrct940Q3Zx5yzbNLMwy5CX3w4il2iTkamhAIsrkf+4B4kVX0
	ExkoSSzHFMt6SzvFOv3TMiD1J7tmt8xrO8fYf1zZx0IqJUssdBLY9cCpYOCvs4YeuILpkXSz1ZE/n
	NfJXBsR8xLwMzd7BeKrmJxOO/D+tWGgl1/BJEIK1xpEwoUIqBpGAE0+uzTdzsR0ZEAe5Cgfmz4C+r
	yjONWteXBgWWwmAKkERTZYUrQ+mg3WdlSoZYocS0H4BqsZOmMVubstRYWF7hnhkfMztgeHzmhGbva
	yRDMQKNW4lYAEttYuHPA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VR-0000000Gprp-0L3k;
	Thu, 04 Jun 2026 13:53:09 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VP-0000000Gpmj-0f6c
	for linux-rockchip@bombadil.infradead.org;
	Thu, 04 Jun 2026 13:53:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=7zTkYHigKQy3WkeWXyJsWd48o8A6LM0P0gm1ZhPIld0=; b=g4jznLxKBErpok38F7qmztdi40
	dWJVjafh6M1eo1jfUQKidp6V7f+NxvkWF7Fq9wmWwmfMxAR8dtSlWULtu+KP8ViORbEoqU0Gokiax
	1ohWEoce6gnf6Mw6TPHx/YlRpKG0dZkSBPufwW6SAqOIfHDoLHo+chldpqRtf+dHcvmsVzZp6b+kL
	v+FG2y92JSRsshIBs6h+zWAoTScGCV+BZZNqVeqnE4pEwHwecRRMO+1zICXtKPnmM0RyQVPnwBY1R
	KJSpNErc/1NB9kJ2NBgOWLlYU+mvtcVYowCdrlgptzRIjlEhmCS2PnxJ7RsAQStiODp0+A/rU1XjH
	j4Ad/bbg==;
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wV8VL-0000000EOsh-3lBb
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:05 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-45ee6d32402so421629f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:53:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581182; x=1781185982; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7zTkYHigKQy3WkeWXyJsWd48o8A6LM0P0gm1ZhPIld0=;
        b=f+y2PzK+8FJpj1XF7R/WEwD8UJ0ARuCSe47N3XI9R0DOViLEGAHFlygb/BrgLKMXEt
         L9JrEK8U0ChlCVmqUmwealnC5Qm09sAW8IzZZ14kxuZTx5hgWGw43eA/fm15oxZjvgCO
         eCW6SPaymXRyhH7fZn3jZRMxmspyXxbh+44JmFoUmLLwJEkrfdPjcJ65kDJ8lAgbPP91
         gvay79QCUIpwTXPvNgOxp1gO9uaqwJCgGjZSyw6jmvBY3zCuG1CI/iWQa708RNjwywYb
         GBi9j5ETyhzD/BX5v7lYNMLSNaD2Cw8JJeuqWm9ho23jHSGtx7aX4jeBgoowErx1pnUM
         hKfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581182; x=1781185982;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=7zTkYHigKQy3WkeWXyJsWd48o8A6LM0P0gm1ZhPIld0=;
        b=SVIeEhmePfhSyLtygysgRvPhAxyepV05t5RIecrU+RNieJKV1EfxzQshl6eHRGJu5Z
         Q6PQoU7LDdq73v0Fd5FOvx6f14Sa38pAYL41NnFkBfb5GZup6CBnr+po5cLk7e6XDnzV
         a63blm0qEr1CoAYCTpvXga/5aV0BbfC+DABZhaGHUeR9v2cFlHCovJ3SFwnrf7mcWWZB
         AXt2ZnpVCgkN3CuiMBl2cz9aepdoMP8wF+v5yZY0cZaEL9BWja8Sq09+b88mnqJYvXGq
         aAiSDsf9QWKqiNT1JIcO7qt7+SDUnqIEBzQSk6ILWigMgC1qQhS3aVhpilKauS9dj+Ag
         093A==
X-Forwarded-Encrypted: i=1; AFNElJ9cz35iNAOByKngInD21Kx2JeswxGTpLuWdBGtohgjRkEx3i7YS+qwe6J+fFAPD+2zQbd4s3Oviy1uwdImriw==@lists.infradead.org
X-Gm-Message-State: AOJu0YwSbgalIu8/3hcy/2+weO9GLzxjftxafhut9UIIP10dA0aKvv5p
	Tnz4PUumGFcpYH5fyYl+mDH7sYtQO4QxSf2I/RjySSPtTr1XD/DGMPTV
X-Gm-Gg: Acq92OHpSt6oO4yOz0kZ/4amWiC1W9K3r6y0AYtT7ZtF4xoKeU9Oq2t2vc9FhsC0X67
	HMNSta1mxmK8FCZo+yALZrXBB8XSnORjHDKynBQHLJMSJuGJAgcpP0hxgZxYNTlSmCcLUIZwaDt
	/ThXPfmf5UImUbWg4++km9K0Pq2MiqyUbpJuQUQFkFcW0xsnJ6raJy5ac6Jwg+ek1+RyCYBp/8X
	6VdA5x22GztIIayiz7B0hRqUNmMi1+K4ilfWI0CSul3pr1fkEiDfMSUoKMlsQ29BGTUXDiSc4Rc
	kNiK8XYoT0c54wfmt6n8KGzv+vIgw5FApaW2A5rq54Yl5iN7sACdtvqHOZyP94ItEM1cA+eSJuF
	WyEOWVoaV6FESFbLTG85PvsMG/mdGzAyA9IhpYvd0LPnG0zdlCeL1YHlk6YTPIp17rnzeiTrMAL
	XyTy67K1KzRdJV1pftmIf9BJUrqZo7OvLIRarweE/Qzx95rGtaTHqJq0SGzSEin7M=
X-Received: by 2002:adf:e00c:0:10b0:45e:f381:cd7f with SMTP id ffacd0b85a97d-460217831bamr9227520f8f.5.1780581182173;
        Thu, 04 Jun 2026 06:53:02 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.53.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Jun 2026 06:53:01 -0700 (PDT)
From: Midgy BALON <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	joro@8bytes.org,
	will@kernel.org
Cc: robin.murphy@arm.com,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: [RFC PATCH v3 6/9] iommu/rockchip: Clear AUTO_GATING bit 1 on the RK356x v1 IOMMU
Date: Thu,  4 Jun 2026 13:52:52 +0000
Message-Id: <20260604135255.62682-7-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_145304_024008_E50C6B1E 
X-CRM114-Status: GOOD (  11.82  )
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

On the RK356x v1 IOMMU, RK_MMU_AUTO_GATING resets to 0x3. Bit 1 enables
auto clock-gating of the page-table walker, so the walker's AXI master
loses its clock between transactions; a TLB-miss page walk then never
completes and the IOMMU is left stuck (PAGING_ENABLED, never IDLE).

Clear bit 1 (keeping bit 0, the slave-port gate) once paging is enabled
so the walker keeps its clock. This is required for the RK3568 NPU MMU.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/iommu/rockchip-iommu.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/iommu/rockchip-iommu.c b/drivers/iommu/rockchip-iommu.c
index 4da80136933c4..e3d8b6e9ca12b 100644
--- a/drivers/iommu/rockchip-iommu.c
+++ b/drivers/iommu/rockchip-iommu.c
@@ -953,6 +953,18 @@ static int rk_iommu_enable(struct rk_iommu *iommu)
 
 	ret = rk_iommu_enable_paging(iommu);
 
+	if (!ret) {
+		/*
+		 * RK356x v1 IOMMU: RK_MMU_AUTO_GATING bit 1 enables page-walker
+		 * auto clock-gating; the walker's AXI master then loses its clock
+		 * between transactions and a TLB-miss page walk never completes,
+		 * leaving the IOMMU stuck (PAGING_ENABLED, never IDLE).  Clear
+		 * bit 1 (keep bit 0, the slave-port gate) once paging is enabled.
+		 */
+		for (i = 0; i < iommu->num_mmu; i++)
+			rk_iommu_write(iommu->bases[i], RK_MMU_AUTO_GATING, 0x2);
+	}
+
 out_disable_stall:
 	rk_iommu_disable_stall(iommu);
 out_disable_clocks:
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
