Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 068D7CD98D8
	for <linux-rockchip@archiver.kernel.org>; Sat, 13 Jun 2026 06:58:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZuFDiDMiQUvc/qdn4USCtSdOCtHQ8qeQqrKjWO8Dmg=; b=y+dGsgsqtlVKfx
	fDnbt6I5vB6I6+8aX1x3op37GtY625HoR+rOok0+IW7rJmlRLVGdzjxIi5Sxb/vKWjEr1sGWHZvb0
	ts7vmOPYsVS4l99iAFbQvH/n5s64EULVF8UV1TYFAcBuX1F5TsNPj9iZ1s6B/P1KlWOOT6CgCRxCi
	3ie5na/H29lXx9Zf8X6fAF8HVrdH3HhZFcplY+JWkVNuYLIqpS/zlz0fRmlUvolOyMYeQ4M7I0Kqu
	34e2Dn+n8pvTVx3ju62GXRsCZC2POAl+nVOMfNBA2YV25Qe1mVJTG5yd6ERgkhtL2w0+0SqueHExx
	WnXgt2rpSZNzCoHJgSxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKJ-0000000C105-3JUJ;
	Sat, 13 Jun 2026 06:58:43 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wYIKF-0000000C0sH-2JOR
	for linux-rockchip@lists.infradead.org;
	Sat, 13 Jun 2026 06:58:41 +0000
Received: by mail-wm1-x32a.google.com with SMTP id 5b1f17b1804b1-4905529b933so16783365e9.0
        for <linux-rockchip@lists.infradead.org>; Fri, 12 Jun 2026 23:58:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1781333918; x=1781938718; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O65kp4uYeS0m80wrjHhLdSErrpFdma2VMG6AHvedRp8=;
        b=fmmqQ6FGtgl27LhZULua35jJ2u99uG01HQroSWgWpeVl96mrZU7hKZInl2AT3+EsrL
         VCso7H1cJpkA4g9IwL7VEBYkyfWGL+AQqLEKTWO6Jly3bBqa31UoGxoweak/RvUyBA2V
         k6h3LfKvdGDIEpJpLinqZW2qhsF5CQxXkH2yR7ngjyw6ztnLXMcmxtPdCRx02AGaOmV/
         Cpv+nnu18l2Dmz5iSdHg5bLRPDffZLZkqHNe3Cdmg7iAXtnhj3xKYgCLZdG9xW1zlL5I
         3NPe/105ZiAXS8cZ+RqyIgq2xTliglHjPAnXJkcn92J2WocQgVEVTys3FYsKaXaWqcbq
         me4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1781333918; x=1781938718;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=O65kp4uYeS0m80wrjHhLdSErrpFdma2VMG6AHvedRp8=;
        b=iX3tIurrdZehm/Ox1SBIU53VhR6ONCjWN/Dw+zZTBucmjkpvnvMlcpYX1MsaUgERf7
         Mj/cJF1AgAoqr6/irbUb3G2Ph7rKd62ZAOj0Ue57A/owLu2xGlL6KvVYKpzvaMweav0x
         XgAxThynOvGV/sDC1Woq5yIpJv3DZ75kJT82paY7j/rYtvV4HCHn7RHO5sV0ugKlozdX
         wmJOkbwe1mlmoZ8aPf0vIpglPa9WYDAGxp/jdx5jE2obdhHQxK0I2D1ADVCA5qdP0Vic
         pXQGOnWzFym+T2LVijszkuBw7RkNvRcsk0PcVxGR3SZS+649v7Bi6HvQ8lQFhfZbzAIa
         KMyQ==
X-Forwarded-Encrypted: i=1; AFNElJ+WztrffSOkfyCCLVEfnWrffgBjMv438AwVkhv3DK2I1m4g8E0rrq4FyOfkdqdxSgNupg1J9zZJPhKBXdsV2w==@lists.infradead.org
X-Gm-Message-State: AOJu0YwGkLU0ieYZEVuZOaxhffo/HIey++h2BjOSzKFwDKJcaZjS0RPY
	+YMaY8t6yae9hGmuvyr3OPCb1vDX/0DjLL3lpcmyd5Io0GmFC3pqCHIT
X-Gm-Gg: Acq92OHGcPhPOOBKTQODMadCa3qfOBJ50ZFyEOl4kOUC8xuqQ4gmDYbsMF6xP9Znai8
	6YU/L0iwAjU3pEgUvdl4PB/jOregYBezt75tCpgXe5/kGw/mobYG9NNo6kqHrqFrRshxf2aoJrY
	xYHtkFyo92K/busNcVLQ51FR41AKxTON5zmf61SGJESSbb+6BkCWlIxZA/LV1hR+RJGBrwb7DPo
	4UaGXQ3OOG8pHRdX/mADRlmY3IJ5rputnWnR1rfMLprlijyB311wE1G2CSJ43z+zL/RKLuxLMD/
	96rHe6izDuFKA1KzJupu61dOhvbZaMhpb22y9Vv0Yym0PB7cl6UuJn5lgNygZxOMXLvXVO22dQh
	nWJGw2sppeNjv+uGwi/mPDCNs0oULSdoWK5fcFQRda8kGwv4OV/0P0HjVYhTpAjqiGt51MAbbu8
	FG5CXKkUUW8RoMBjYx/iJBjVRb3AsFipVoD5uA2PelXAJ5deJhjIEo
X-Received: by 2002:a05:600c:5296:b0:492:1e7f:d426 with SMTP id 5b1f17b1804b1-4921e7fd54bmr38722125e9.2.1781333917619;
        Fri, 12 Jun 2026 23:58:37 -0700 (PDT)
Received: from debian.tailb81abf.ts.net ([2a01:e0a:104a:4d80:14c0:9448:1c38:77df])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-492202e5cbasm42917705e9.2.2026.06.12.23.58.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Jun 2026 23:58:37 -0700 (PDT)
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
Subject: [RFC PATCH v4 5/9] accel: rocket: Keep the IOMMU domain attached across jobs
Date: Sat, 13 Jun 2026 09:01:12 +0200
Message-Id: <20260613070116.438906-6-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260613070116.438906-1-midgy971@gmail.com>
References: <20260613070116.438906-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260612_235839_627174_38E4548E 
X-CRM114-Status: GOOD (  19.52  )
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

rocket attached the job's IOMMU domain in rocket_job_run() and
detached it again on every completion and reset. Each attach/detach
toggles the rk_iommu stall/force-reset/paging handshake, and on
RK3568 the NPU MMU is idle between jobs, so that handshake times out
and logs a burst of "stall/paging request timed out" errors for
every job.

Attach the per-context domain once and keep it: track the attached
domain in the core, swap it only when a job from a different context
runs, and detach it at core teardown. A reference on the attached
domain is held so it outlives the job that first attached it and is
released on swap/teardown.

Because a hardware reset (on job timeout) wipes the IOMMU page-table
base register, drop the attached domain after rocket_core_reset() so
the next job re-attaches and reprograms it. Also tear down the
scheduler before detaching the IOMMU in rocket_core_fini(), so an
in-flight job can no longer reach the domain being detached.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_core.c | 14 +++++++++++-
 drivers/accel/rocket/rocket_core.h |  3 +++
 drivers/accel/rocket/rocket_job.c  | 35 +++++++++++++++++++++++++-----
 3 files changed, 46 insertions(+), 6 deletions(-)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index 779e951596a15..6c128f585cff4 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -13,6 +13,7 @@
 #include <linux/reset.h>
 
 #include "rocket_core.h"
+#include "rocket_drv.h"
 #include "rocket_job.h"
 
 int rocket_core_init(struct rocket_core *core)
@@ -112,9 +113,20 @@ void rocket_core_fini(struct rocket_core *core)
 {
 	pm_runtime_dont_use_autosuspend(core->dev);
 	pm_runtime_disable(core->dev);
+
+	/*
+	 * Stop the scheduler before tearing down the IOMMU so an in-flight
+	 * job can no longer touch the (about to be detached) domain.
+	 */
+	rocket_job_fini(core);
+
+	if (core->attached_domain) {
+		iommu_detach_group(NULL, core->iommu_group);
+		rocket_iommu_domain_put(core->attached_domain);
+		core->attached_domain = NULL;
+	}
 	iommu_group_put(core->iommu_group);
 	core->iommu_group = NULL;
-	rocket_job_fini(core);
 }
 
 void rocket_core_reset(struct rocket_core *core)
diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
index 5a145ba8c5a92..78791ecb32e75 100644
--- a/drivers/accel/rocket/rocket_core.h
+++ b/drivers/accel/rocket/rocket_core.h
@@ -42,6 +42,8 @@ struct rocket_soc_data {
 #define rocket_core_writel(core, reg, value) \
 	writel(value, (core)->core_iomem + (REG_CORE_##reg) - REG_CORE_S_STATUS)
 
+struct rocket_iommu_domain;
+
 struct rocket_core {
 	struct device *dev;
 	struct rocket_device *rdev;
@@ -56,6 +58,7 @@ struct rocket_core {
 	struct reset_control_bulk_data resets[2];
 
 	struct iommu_group *iommu_group;
+	struct rocket_iommu_domain *attached_domain;
 
 	struct mutex job_lock;
 	struct rocket_job *in_flight_job;
diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index e25234261536b..368b2ebead1b3 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -9,6 +9,7 @@
 #include <drm/rocket_accel.h>
 #include <linux/interrupt.h>
 #include <linux/iommu.h>
+#include <linux/kref.h>
 #include <linux/platform_device.h>
 #include <linux/pm_runtime.h>
 
@@ -314,9 +315,26 @@ static struct dma_fence *rocket_job_run(struct drm_sched_job *sched_job)
 	if (ret < 0)
 		return fence;
 
-	ret = iommu_attach_group(job->domain->domain, core->iommu_group);
-	if (ret < 0)
-		return fence;
+	/*
+	 * Attach the job's IOMMU domain only when it differs from the one
+	 * already attached. Re-attaching per job toggles the rk_iommu
+	 * stall/reset handshake on an idle NPU MMU, which is slow and
+	 * noisy; keep the domain attached across jobs instead.
+	 */
+	if (core->attached_domain != job->domain) {
+		if (core->attached_domain) {
+			iommu_detach_group(NULL, core->iommu_group);
+			rocket_iommu_domain_put(core->attached_domain);
+			core->attached_domain = NULL;
+		}
+
+		ret = iommu_attach_group(job->domain->domain, core->iommu_group);
+		if (ret < 0)
+			return fence;
+
+		kref_get(&job->domain->kref);
+		core->attached_domain = job->domain;
+	}
 
 	scoped_guard(mutex, &core->job_lock) {
 		core->in_flight_job = job;
@@ -340,7 +358,6 @@ static void rocket_job_handle_irq(struct rocket_core *core)
 				return;
 			}
 
-			iommu_detach_group(NULL, iommu_group_get(core->dev));
 			dma_fence_signal(core->in_flight_job->done_fence);
 			pm_runtime_put_autosuspend(core->dev);
 			core->in_flight_job = NULL;
@@ -376,7 +393,15 @@ rocket_reset(struct rocket_core *core, struct drm_sched_job *bad)
 	 */
 	rocket_core_reset(core);
 
-	iommu_detach_group(NULL, core->iommu_group);
+	/*
+	 * The reset wipes the IOMMU page-table base, so drop the attached
+	 * domain to force the next job to re-attach and reprogram it.
+	 */
+	if (core->attached_domain) {
+		iommu_detach_group(NULL, core->iommu_group);
+		rocket_iommu_domain_put(core->attached_domain);
+		core->attached_domain = NULL;
+	}
 
 	/* NPU has been reset, we can clear the reset pending bit. */
 	atomic_set(&core->reset.pending, 0);
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
