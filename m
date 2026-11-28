Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9783F606A31C
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Nov 2026 06:39:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=BQUDWdL8;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=furiosa.ai header.i=@furiosa.ai header.a=rsa-sha256 header.s=google header.b=MllgbRoR
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=BQEnObyMz2QC+e9TfdDh7H7c1nuN6XIyeyo8+jb8zrs=; b=BQUDWdL8cy9XpLb2EtwxQYAsRf
	LrbPIVSFsm0d2jGDtqELpC/zFB3l/f850DmOiWCs3Ixor0NYK38JY2FoN5Wf3xqsk8c5wpxVpJTYW
	IzQZo663Nd6ln9vxgG1ZeVicgyTLuKzk2MK3vVIc4ELysjmNhODnfHAWx0HkuDSVIyIil8QTYYTuT
	g8iIFuWlIsabztJlVzT5RJPCevsj+HkE4x94tBesrbvxg3E5J0n4Jesu906AM5PTCIhNJeGaAOBt+
	RIXj8WQV/zFeJv1mivIZ5Yr0ZNthNqaykcjpMijJnfhIs2Oxskx+UyRnU77i/1zngaPS3GgGPPCZK
	5tN1fqyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5g-00000000QUg-3d3i;
	Sat, 28 Nov 2026 06:39:20 +0000
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5Z-00000000QQx-19UO
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Nov 2026 06:39:17 +0000
Received: by mail-pf1-x42e.google.com with SMTP id d2e1a72fcca58-8a05b210703so4127326b3a.0
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 22:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1795847952; x=1796452752; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=o9eubjqyEqSUf1SnweeCwXHyF/MyfNmZC7QvIQ6aTX4=;
        b=MllgbRoRWNAqrXbPMNpCyQ7vFGdYgB52RLcd6P124WSgHwtnY9aPGieij6/TtJvaAn
         glp4LVwzKAmsOrgmLO6BfU4Lj7zQPALHFsbuI+654oYFOKUbebPNl0d6sIkZnj8ZsZI+
         bWPsxS+UrgTfdhEAByxsnHpsMa1ZKsjqBSJ+I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795847952; x=1796452752;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=o9eubjqyEqSUf1SnweeCwXHyF/MyfNmZC7QvIQ6aTX4=;
        b=j6xbQYrosWjsFbpNQXqSnyb48cRhhb30hLrpiMeeVDX88mx9FvhILbWjafdlx76itQ
         fxN7hwkqPETUc+O/NeCKxU/zy8wYZx22BMxa6B8EU4aM0v73xFlEba53fgL9FsDbwZ20
         jh4O1jC9AnD0EPqjwQkomFoIqrwqRnJyFSuZMlrgNzUFqzEm1uaiarD4FlXaD+VQmnvx
         uDp4RpCI/vB3nLZILYOQPt0sX3uHOOau6YZ0H2LAB9LGyvjOwaX+IwaKOOSBc3d8x2GW
         FViUm7Qlai2oPALK5ja+t76gloRRaOdYFC97I/IrzAAFUIboPH9JP0e9h42SS/bexI/G
         /cVQ==
X-Forwarded-Encrypted: i=1; AL+hErFoDm8MWJOx4OzaN+N9tKJ1rFlPrOrGF2vQ1t+QkOAN5MX1YM+LgBVNziQh2cSl4Zx06eTxNriX5tFYdk8Z8g==@lists.infradead.org
X-Gm-Message-State: APuU4Z/fBhEOIOJgKoBufxLKIpGvAh1/+frANEuuZ454/HwjZJR3BBF/
	NG2ETbJYT1zHCV/53Y6EuPMLFLLpgv9E9c4wNFsm4/MQcSl1VA7thkExPemVJ32QFsM=
X-Gm-Gg: AZFdTZdB4DFT36B+kGIMzjNlpKuq5KPTn2OW+7TNshy+seoBGAy82Qrz1lmlBwjZ1QA
	DlwOHCJBhHWpq0wk+LpQhbpSPc/y87saJ6sSVxNHhuEm5WcYJx73sqdxtU2F/vkOEYzvxpm0cK4
	Dy9M/7cJ9X4TSnF3SzoVv5YcVTox1M6CNqr4wU8UJD91KCFSq9lcjfCnlkr0139+NfPhQ0zYBIY
	LYVlpJnmyMGETMeIvuWKi5qdq39f9UK4BWEPF4sGbH94iJZKHO+Ows/s+g9/e66xlOw5c+teRiV
	VW3gYxDPs6b8CLQmXkCbO1HOdtbDShH3hJV3PJovprqUogz9uy3VE2F54yevNkDU/H0u9xplDbB
	bk+G0OsZFvRsPA9FaBn1Hjt2XTl/d4D60NCNRL9TsrP+n2ypmvXok7+i/2MNjBGFFmSqKOgOurH
	MTlg4zKwwtJCWCbUz43nwSSm/YkwZbXV9Z9qaFEf5YRK9n0rJReaJhYNi0poyR/z97tvk1oxQ+y
	WIwj7BAdntWiFI7yR7/Em8ohRGlA5KgnCvidAicPM3nEehC6lQiZSwsILdRfmY10xDv5NPB88fT
	ZNOirn870LhCOeqKt4FuqDQFCm9UB+DrASzuujnc0PMA88BZS2zkk5xbx9V+c0mtfzV3vpQohwU
	hvTPEp8n3T4lEuBDpHcvx04k+g7flEaZpGw==
X-Received: by 2002:a05:6a00:3403:b0:8a0:3307:c46c with SMTP id d2e1a72fcca58-8c87cb4678fmr24975744b3a.36.1795847952011;
        Fri, 27 Nov 2026 22:39:12 -0800 (PST)
Received: from rock-5b-plus ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87077944bsm13939838b3a.2.2026.11.27.22.39.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 22:39:11 -0800 (PST)
From: Sidong Yang <sidong.yang@furiosa.ai>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Haoming Gao <Naixumogu@whut.edu.cn>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sidong Yang <sidong.yang@furiosa.ai>,
	stable@vger.kernel.org
Subject: [PATCH 3/4] accel/rocket: Skip CPU cache sync when prep_bo wait fails
Date: Sat, 28 Nov 2026 15:38:43 +0900
Message-ID: <20261128063844.1537615-4-sidong.yang@furiosa.ai>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
References: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_223913_631189_03976C63 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

rocket_ioctl_prep_bo() calls dma_sync_sgtable_for_cpu() unconditionally,
even when dma_resv_wait_timeout() fails with -ETIMEDOUT, -EBUSY, or
-ERESTARTSYS.

When the wait fails, the NPU may still be performing DMA on the buffer.
Syncing the scatter-gather table for CPU access while the device still
owns the buffer violates DMA ownership rules and can corrupt in-flight
DMA data.

Only sync the buffer for CPU access when the wait succeeds.

Fixes: 525ad89dd904 ("accel/rocket: Add IOCTLs for synchronizing memory accesses")
Cc: stable@vger.kernel.org
Signed-off-by: Sidong Yang <sidong.yang@furiosa.ai>
---
 drivers/accel/rocket/rocket_gem.c | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/accel/rocket/rocket_gem.c b/drivers/accel/rocket/rocket_gem.c
index e52fc6ea7cf0..dddaf9d2fbc8 100644
--- a/drivers/accel/rocket/rocket_gem.c
+++ b/drivers/accel/rocket/rocket_gem.c
@@ -171,9 +171,11 @@ int rocket_ioctl_prep_bo(struct drm_device *dev, void *data, struct drm_file *fi
 	else if (ret > 0)
 		ret = 0;
 
-	shmem_obj = &to_rocket_bo(gem_obj)->base;
-
-	dma_sync_sgtable_for_cpu(dev->dev, shmem_obj->sgt, DMA_BIDIRECTIONAL);
+	if (!ret) {
+		shmem_obj = &to_rocket_bo(gem_obj)->base;
+		dma_sync_sgtable_for_cpu(dev->dev, shmem_obj->sgt,
+					 DMA_BIDIRECTIONAL);
+	}
 
 	drm_gem_object_put(gem_obj);
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
