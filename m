Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627FD606A330
	for <linux-rockchip@archiver.kernel.org>; Sat, 28 Nov 2026 06:39:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=NUEDDUqw;
	dkim=fail reason="signature verification failed" (1024-bit key) header.d=furiosa.ai header.i=@furiosa.ai header.a=rsa-sha256 header.s=google header.b=Wq5o5SRj
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=ju0WDnmSPdJF6MNCMqXMxjPLDXlox8xQTcZ6PhrSk10=; b=NUEDDUqwmKwhGypclcISAMTLP3
	XvBt5x4ah0B0xphXjJ6ZbXWobZXcGWRkm0Zk8xBegVkgAtz/nbK3lFTgo1+0zOrN6q58deJz7mWsM
	mBV4yH65bEchdPAQ6JeBk1zXE7/V8KG0yVv5wGUiLWsdD4M5iABHcioSNJls1P1rhZXKESmcVFcpP
	U5nkimfQoIaKFqYB+A8H77Q4A1W/9PCB0+2C1Okko5E/bMDJJYaxyDRJr0C1tXsPAoeLvT+DCAsaK
	7LAcuVpVi2kT92VX1TrUJmMfNVk1tG2w86aRDsqQolld6GSd4Ik4pg9dc2XxV7cAHCWvJIPh2zKlZ
	jlUgI7NA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5V-00000000QPt-1A1P;
	Sat, 28 Nov 2026 06:39:09 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xXC5Q-00000000QPD-1R7e
	for linux-rockchip@lists.infradead.org;
	Sat, 28 Nov 2026 06:39:07 +0000
Received: by mail-pg1-x52d.google.com with SMTP id 41be03b00d2f7-cdb75699c7cso3400945a12.2
        for <linux-rockchip@lists.infradead.org>; Fri, 27 Nov 2026 22:39:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=furiosa.ai; s=google; t=1795847943; x=1796452743; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=nUqNSCpFAuXqhx4v1WEMdxqMn1uV2jBGy3KoprDM6Os=;
        b=Wq5o5SRjeTOVt/kHkSgsqFOliuOu5FNXpMCi0o52COAljDROuBADlC4WQsnSGOXpzN
         KchhB2hfIRgXGiazW7+zKo+XL5HiwmbD5alywMwGw6ZBBDbUR9iNn8gNbq8Gmy1hJr05
         J2r6vUDf/rU9NAdCQmTm8TUeXWx2YKlzMUJTw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795847943; x=1796452743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=nUqNSCpFAuXqhx4v1WEMdxqMn1uV2jBGy3KoprDM6Os=;
        b=xkC3ZqFxt85Xr2OJP15w7p0suLjn5QE0nV1qXwqL8Mug0RTVPZ9ALCk0aKb6lqC3zG
         RZAtNxHXN/Qyr67LG3NOVJEpuZ1EHM2Z827yFoELDCxoF9PY15iuT0yy0HrRDloS7MrJ
         z3x09/diFH+zfF5b+eb8eJ6bgrr52x7lfJKux+BPstl8w9RsPoBO6h3sMNozJH4JrL1D
         J6Ydxu1Z02i8pEvytgXgeUNsd1NRsM0qfWo9goaRLFJL+lCeYR9pQfZGorKFK0zwkzKy
         2AtVPzRwD2syt0Ut2dbs5r/NNg30eYyQ1snL0bMc/7NDC9D3qXIxwNsmCWRA/5SCD5CG
         u8Ow==
X-Forwarded-Encrypted: i=1; AL+hErEhP9xubRoEjK4QN3qSN5lIDWx7a2+DRmeCvh/rjUaWWUtVUODp1DfLYgWrmguAReNveZAR7w1tWli/Jp4MeQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9Gh2o7cKAP6/oo/qe+vqXubCfgJw38FJJ/QkKfRNeEC6LKNRd0
	xN0FgzOs8qFPOAalUzg4nVzdEr64CpSnkdFM/D0af/8w24UVc84gcEw6clYSkOljqhc=
X-Gm-Gg: AZFdTZfIXsMMZo/XeAH7TL26fGo7Bw3CtKo4ZXVdgLCQsXoPavC5jcJCqGRI3svbBpf
	uduyvmhOiO/sSFXoYoRzG8FhyhNSTSUHcaZuUuy6PwV67pYCM6d1nGhFrZXzo9L0u/aq0VZaDTG
	grukXEDhLuKoHoxoDxYQt6t9fIBiJUrh+scgfC6nXFN6fxJMM8kEOEClV3YCazyr3032n0D9LCv
	P+3NUhIE5kSFlbip7oWa037VtFeiuc3/b9FPmNAUHN3Tm/jVCTkLQstuwcEyMXDK5AvPtlU5wZl
	z2R/cvX/Izx1A9k1wnxWJkLiLsoeR6UA3Td/6lfaNWZcsU5AhltZc4MGKVVD40jtrCuQzQTfGUp
	X8Ji6FnYRWgdj2GtArvyDSIU+oOXJ5EOENWjDSiwTfWlpqtm3IX+9xiP8/qxLkmVxW1QDyA9uf7
	A7n47zv/ZzPoFkvG+6SdYmmViSxWP8zV5wvdRGAqw8c/uXW1A7mUbB/qfwn3R91hXImJCyoo3iC
	yrvV1YMbDM9biYwFICFgLjBpvX9iPA3AIWwZ26I0w/QvWHVHNp84JNMVWdsO5pYxeKwf+e0Z3sa
	CnZpZbHVFKnhDz10QMut/8PSiLxOtf+MhF2sn/ryHsuW1mWAoDgjcQ1bARWedi4SO1CJyLA7P21
	8Z/glN26PQw+D
X-Received: by 2002:a05:6a20:4314:b0:3e0:b1b2:2af9 with SMTP id adf61e73a8af0-4014c2573a7mr29687518637.60.1795847942770;
        Fri, 27 Nov 2026 22:39:02 -0800 (PST)
Received: from rock-5b-plus ([61.83.209.48])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-8c87077944bsm13939838b3a.2.2026.11.27.22.39.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Nov 2026 22:39:02 -0800 (PST)
From: Sidong Yang <sidong.yang@furiosa.ai>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Haoming Gao <Naixumogu@whut.edu.cn>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Sidong Yang <sidong.yang@furiosa.ai>
Subject: [PATCH 0/4] accel/rocket: Fix BO creation and prep_bo handling
Date: Sat, 28 Nov 2026 15:38:40 +0900
Message-ID: <20261128063844.1537615-1-sidong.yang@furiosa.ai>
X-Mailer: git-send-email 2.53.0
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261127_223906_139032_50032B0D 
X-CRM114-Status: UNSURE (   5.37  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-11.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

This series fixes four bugs in drivers/accel/rocket/rocket_gem.c, based
on drm-misc-fixes:

1. Reject zero (post-PAGE_ALIGN) BO sizes in rocket_ioctl_create_bo() to
   prevent a ZERO_SIZE_PTR dereference in sg_alloc_append_table_from_pages().
2. Store iommu_map_sgtable() return values in ssize_t (avoiding int
   truncation and leaked IOMMU mappings on >= 2 GiB allocations), size
   the drm_mm node from gem_obj->size, and unmap short mappings on error.
3. Skip dma_sync_sgtable_for_cpu() in rocket_ioctl_prep_bo() when the
   fence wait fails.
4. Wait on DMA_RESV_USAGE_READ in rocket_ioctl_prep_bo() so PREP_BO also
   waits for in-flight jobs that published read fences on input BOs.

Sidong Yang (4):
  accel/rocket: Reject zero-sized BO creation
  accel/rocket: Fix iommu_map_sgtable() return handling in create_bo
  accel/rocket: Skip CPU cache sync when prep_bo wait fails
  accel/rocket: Wait for read fences in rocket_ioctl_prep_bo()

 drivers/accel/rocket/rocket_gem.c | 43 +++++++++++++++++++++----------
 1 file changed, 29 insertions(+), 14 deletions(-)


base-commit: e950f467b8adbfb2f460d9b9454280cdbf597885
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
