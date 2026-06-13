Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 94F10CD98DD
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:58:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tzvWN9KmIlRNA4LmSyCkCoI2z1ugjUqPVt4eQ3N3Yjs=; b=heebAZE+/AF9XR
	UgGrgfE5DbDxBVbEDDrRXpzbSomCwCeb2o5JhLRjonRXbEtDV3EGoBCGHsYAQ8eM4F/uJ9OfR+YJ8
	i7GM1tCNp8p8lyx5S95O8Vv16RIPGwacSy7z8xJyvyp80gpGtCrbJrYE2KtoVBcMAmBz4cE0Rkb/A
	kxLfSgsUuYqJd3YvQoE5jh/mUxJU5PE8oiB9/uTxL5Zy977ypJGfWAdsg3nX9+jjdfuJPDDUHVPG1
	Bpx1hk5YO4mYQf1NvWarzgtqJAEB1fDb3Cafe2nt5rITA+M1nrFz4d5ldpxT7gS3LdG72u9B5VlnT
	o9bc72bhTbe6nhfe+dkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKG-0000000C0uC-0fgR;
	Sat, 13 Jun 2026 06:58:40 +0000
Received: from mail-wm1-x334.google.com ([2a00:1450:4864:20::334])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKD-0000000C0qP-2Q3p
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:38 +0000
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-490ae94a89eso14412745e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333915; x=1781938715; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VKXNGySjUJiX6/3GllpQ7O9YCp87EzXF/WJp8p9p0Qc=;
        b=AMR1Tigl53yNDLHVFUJwN9U3wmn2168oEIQ0DIOQK5o2JDxR41TDCjeUN84yBKb3PB
         dzsLNgfL68ZeL5FKr0k/ElZjaQyfotH7E19TCv7r4TTGLKyuogf1cZC4R1HU51tD+g9C
         Fo/wfYh+kAmW2xLwV8gtI2QzsQD7v0QsymM18UwX3zdjf4PDTkFvXbkyCQnmlHzwFxNU
         3lbbfaNJlt/LNOFmYWFai62y3uxMwoMPxhb0gOysi+DhoBbrD8lvfWNsNgf0+yC8Ba23
         x/KjRnvYBd8u7ZYI9Ru9cUszK4/yOW3nU7EUWt3GKOmpvXTYltCfVRp1rHwDFa8f7/cT
         nVyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333916; x=1781938716;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=VKXNGySjUJiX6/3GllpQ7O9YCp87EzXF/WJp8p9p0Qc=;
        b=WwY/IJ2qFkJXNSh61bF70sVLxCDxYbLhOee8qhO0mOixDTa0o7+/V0EkfmHi7Lk060
         MgUcEcQeP5MZoYLYmhjjKnDvTIaUVIHqFt+70++t9p1RD6hCDvBtFm4uC5qcMIgQq5kk
         moWh/+1BSWt3VYaHOsVMGXFRYoonvQM8IZVRzMISFA6cms3W/Nw44sYx1KlpjbRdBadP
         woWMmaBfsRDy31iDSijrNvq/pqa70CudH9HwPvBMMK8ju5LEXBg0rcpUt5ZNpB320JGq
         zhdWlxmvrWqyMRNlNuXqs2CKo5JhErh/h+WkSKA3rtrcSSRlz+Y4jlFo5HFtbDJhNmkh
         ONzw==
X-Forwarded-Encrypted: i=1; AFNElJ9ALGYRvv+XrcsSTrlswtEJtstbqc1bugWbrTT5kKoh2uv2porSSS6IJ+bEEM3NEU3ym5Oz/tg/IGICradfCA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzj1fHw7X16n2D7bUHhsw33L8b4roeQPfXRv8xy//I9DlJFOyhD
	fUortLla6yeuW0c9dytHM3SCH1sY8c5RRWh/K2nHJ6RAS1hg/+4rRHSY
X-Gm-Gg: Acq92OE7FDoqBC2oTay4r0Z9ZPUkcXbQaOzBoi0DiKNvaUZLNEjN/i55l+yc7t8Vtq1
	sXjxymbmwTZS+LmzEljQ7nUyIE1C14+6cdTJFLi/RHsaOg2MD0Kw01sJbI2ioWTd9zV/lJAT+MW
	/czBBdHYakD3aVBgHYx3tR8QU546H/RHXpLk1IEjv/R6P0Y8qJOE/l2Qm2lsHScbJNNKNpTGM5C
	uDc1FMSJuIo3tKDX5ezXI4VeDI/PZU8jrlgPcMHvMEevNoYNNz1eRMLK1DCwnXH28a1CbACivuw
	gdT1EFA1Xuvg/vSw/V6AOjLqGzCNIl0I+vQ55/30uOmOtiW3/eyRw8DiLgLU4X8FTrIohuuvjrY
	2XIzwF1nkFiLZ4772JNX9nYjtZqptBcm9w+qNY0injiKgpTOcwPvTAadmklTY0vtcQa9qXlrRwB
	KhXm/QMskcksQSjnpR7X6cHGuIUSMghRklozHzb8CATHCqXE6408Hm
X-Received: by 2002:a05:600c:6287:b0:485:9a50:3370 with SMTP id 5b1f17b1804b1-492200516d4mr27804035e9.8.1781333915366;
        Fri, 12 Jun 2026 23:58:35 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:34 -0700 (PDT)
From: MidG971 <midgy971@gmail.com>
To: tomeu@tomeuvizoso.net,
	ogabbay@kernel.org,
	heiko@sntech.de,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	ulf.hansson@linaro.org
Cc: dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-pm@vger.kernel.org,
	iommu@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	xxm@rock-chips.com,
	chaoyi.chen@rock-chips.com,
	finley.xiao@rock-chips.com,
	diederik@cknow-tech.com,
	jonas@kwiboo.se,
	Midgy BALON <midgy971@gmail.com>
Subject: [RFC PATCH v4 4/9] accel: rocket: Reset the NPU before detaching the IOMMU on timeout
Date: Sat, 13 Jun 2026 09:01:11 +0200
Message-Id: <20260613070116.438906-5-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235837_635818_A6C1B8E7 
X-CRM114-Status: GOOD (  11.51  )
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

From: Midgy BALON <midgy971@gmail.com>

On a job timeout the NPU AXI master can be left wedged with
outstanding transactions. rocket_reset() detached the IOMMU group
before resetting the hardware, so iommu_detach_group() ->
__iommu_group_set_core_domain() asked the rk_iommu to stall and wait
for the in-flight transactions to drain. They never did, the stall
request timed out (-ETIMEDOUT) and the IOMMU core WARNed:

  WARNING: drivers/iommu/iommu.c:157 __iommu_group_set_core_domain
    iommu_detach_group
    rocket_reset
    rocket_job_timedout

Assert the core reset first: it quiesces the AXI master so the
following IOMMU detach completes cleanly. Move the detach after
rocket_core_reset() and out of the job_lock (it does not touch
in_flight_job).

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_job.c | 12 +++++++++---
 1 file changed, 9 insertions(+), 3 deletions(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index ac51bff39833f..e25234261536b 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -364,14 +364,20 @@ rocket_reset(struct rocket_core *core, struct drm_sched_job *bad)
 		if (core->in_flight_job)
 			pm_runtime_put_noidle(core->dev);
 
-		iommu_detach_group(NULL, core->iommu_group);
-
 		core->in_flight_job = NULL;
 	}
 
-	/* Proceed with reset now. */
+	/*
+	 * Reset the NPU hardware before detaching the IOMMU. A timed-out job
+	 * leaves the NPU AXI master wedged; detaching the IOMMU then issues a
+	 * stall request that never drains and times out (warning in the IOMMU
+	 * core). Asserting the core reset first quiesces the master so the
+	 * detach completes cleanly.
+	 */
 	rocket_core_reset(core);
 
+	iommu_detach_group(NULL, core->iommu_group);
+
 	/* NPU has been reset, we can clear the reset pending bit. */
 	atomic_set(&core->reset.pending, 0);
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
