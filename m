Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3694BCD8C80
	for <linux-rockchip@archiver.kernel.org>; Thu,  4 Jun 2026 13:53:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=svGHBPO9LjRV53ftuUhVI1reR4l16KhP2WdKJYLm7vU=; b=2tGf5qiFn8JgRd
	3We/xt6vo61zfmdbRzBieaV3Tg9O0DiilMj/HRI0DrkQqIlAftrw9MiiWo8a34NhB853VZl/v0r26
	CUOXsr0GXR9gSh6iA4EnDidspv9njAVT7D8DsABFChJPoKpOHV7bTTba9MjHvwSfqCD2Dg/PvvwHH
	jlHjEME24dyIhz6IfalSVk1w2sFsovhp7CnQhPUD+9tQd/kDXJtowCiGPmypWuQDS76YAAy4EZod6
	Y+U4ik81C58oe/1cvF+M8phgZolNvzg0SyNDtPBG0gsN8AqpeKlhzxRHTiaa0FlO+GIaKIeKJmsXB
	nIj0ajB9BIapoKUNnuZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VQ-0000000Gpr7-3VMA;
	Thu, 04 Jun 2026 13:53:08 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wV8VO-0000000GplA-0mh1
	for linux-rockchip@bombadil.infradead.org;
	Thu, 04 Jun 2026 13:53:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=peByEg9qkw/NuaYmCEAUEFnpiWasS3prWUS+hf7e7ys=; b=kz3w2rHFxLkfMYAtPDCtk/TtjJ
	pmm3MO8t7o1Uv1lkKsRu5AJCrT3LmGd8PrsH5YxDsGXk8kbERBRADbPY84cCgC7TmqtMWpkSBGZQ3
	e+fhRToP+Y9HbsebHmQ2CtRMyMP0PnGw3+538003OrD+zFaQJ23xOlpArq2FQN9/AtMG8lOniyw38
	6jLYEZo94wrx8sUbmL+MZCTZaugkX87+R1lopnaAjRG8MhLtK8g09NHps7aUt405wkMv3aDq7CF+e
	AF6LGiBZ149X7bfGlh5ulrrlVpe/AGUa3htMSnUHT/D/Mq6BVQFnvBR18tqy8FYotraZeAmA1zs/G
	UHy6boxw==;
Received: from mail-wr1-x429.google.com ([2a00:1450:4864:20::429])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1wV8VL-0000000EOrt-0edv
	for linux-rockchip@lists.infradead.org;
	Thu, 04 Jun 2026 13:53:04 +0000
Received: by mail-wr1-x429.google.com with SMTP id ffacd0b85a97d-45ee6d32402so421622f8f.1
        for <linux-rockchip@lists.infradead.org>; Thu, 04 Jun 2026 06:53:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780581181; x=1781185981; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=peByEg9qkw/NuaYmCEAUEFnpiWasS3prWUS+hf7e7ys=;
        b=RYrr0ULX1/Nh8lBb1DyM0bNfsYr6ovXBpJb5QmJf+QQoHRwY3mSJDJCPl7OHUvidNO
         YrJZltwtgLrf6CgvcQyplfYj77ZQqvAC+nXoOSahSYkX7Ug2oXGmb3U7/7Wa809wx4Y5
         kEYRzbZr2gSI4OWYg/WxmFIaW8NbKnt2doILeULhVu9bSR4ZYe4QSptnXJrV1dET9wOF
         G0nNf9LV4Nmi2MHj61PDolssK/1whoBnizI45Oy3y+ZKQ6gKXGDbEunTU8SSObO/vMmw
         rtwpH1JFADBN3Ba6fOdMaBdi3uLG9UT0ZkdVbrNkLmqM/8+08C4SIvwzyE4UvIHtTYib
         u1CQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780581181; x=1781185981;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=peByEg9qkw/NuaYmCEAUEFnpiWasS3prWUS+hf7e7ys=;
        b=DiIuqEnDuKOUxVhjdHbgepa3J6DKcEaD8GckrtwUG48q1xxwqfSBOMkFZsa6Hv1+36
         MF8OIj8RTepIcJfg5UJe9/AphFPfPBkrniUJ6si9j4U0Chp6Ly1kjPr56r0u/LmB0JcV
         eimnSpcrG5YXOBgGbd6Ia3YzSh/bStTCBXw65ALbPp9HMADBrc0z1w5oneTjjt6Q1ghO
         J0Dfu7CHHWK0eaFZO3GPnoOLmsr76fpktZVb9TsHGa020rtT3OwZpXhLj+TlTYVqNDqi
         jceosaU6kH1pU8C4pmyQldEDAaxnEHizFYuVtTm7dnU78V+AtJfLM6j1+pK1+G00Eesu
         YDfw==
X-Forwarded-Encrypted: i=1; AFNElJ8ty5PqoR7KCNhgh0J5gZbQPOmmJwW/pn1ryu9G7262g9HXjccU4C35S/anHrx6o+1RQXXC+/dPvEtx7mrF1A==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzt3EAm1nwbC4EviHKc4yzOkVbKuQ5sb+7BLjAAl7GSdzGqXnaX
	MjErRZWoQunN+/VqBzvlGWEbNHeDNnS2AoId0wR6+PbFpO81w2IGn2Ty
X-Gm-Gg: Acq92OHSiTbF4tP9FtfWfLiJcxJ4tf7Wy/pxjL0EyNmHFw+pw3bO61nNK8f6NkTO24I
	ix06UQISabBMVOq0eWZGHeN2axr7KhIa/NrfTyUlnFUfV7fZlwcYp1tQlhKxYAcDqH6JzLtd1NN
	JRzEFFgcGK1N8X6obUqTrGqgV7LPRU1I2FsIp/8nlO21hryRCB0tVUybV1LVMnJFCVYI1j6oRU5
	WZxus2qUNkNA1TdDq825wx1wt/cE/R6M81H8IcnxPiR/Uu++foIDgX17f81areD/kNlndIeZjz/
	jOfXMPUDqUwfHk/6QyPsc8zWAeQ+dqyM/AJ29R8/mDIdI42iGRN7zs8jzLIaveoni7a3iPxd6M3
	5JVIPVFmlVDcDTKj57I5erc54cBp5qYMg+hl7Oi1SD2qlgVErStLt60wx0PH6PemQoajgwrqQPm
	8Zc/ollNrBCp2pthqQRv+dc9rTxYx+g45WaC5Ou6DMOIDWnb7VorIpb+lr3iUyBdw=
X-Received: by 2002:a5d:44d2:0:b0:45e:9431:ee3c with SMTP id ffacd0b85a97d-46021792538mr9334388f8f.10.1780581181471;
        Thu, 04 Jun 2026 06:53:01 -0700 (PDT)
Received: from compiler-rock3b.tailb81abf.ts.net ([2a01:e0a:104a:4d80:be24:11ff:fe12:2776])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4601f0a43e9sm16661068f8f.0.2026.06.04.06.53.00
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
Subject: [RFC PATCH v3 5/9] accel: rocket: Keep the IOMMU domain attached across jobs
Date: Thu,  4 Jun 2026 13:52:51 +0000
Message-Id: <20260604135255.62682-6-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20260604135255.62682-1-midgy971@gmail.com>
References: <20260604135255.62682-1-midgy971@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260604_145303_318543_72261491 
X-CRM114-Status: GOOD (  18.32  )
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

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
 drivers/accel/rocket/rocket_core.c |  6 ++++++
 drivers/accel/rocket/rocket_core.h |  3 +++
 drivers/accel/rocket/rocket_job.c  | 27 +++++++++++++++++++++------
 3 files changed, 30 insertions(+), 6 deletions(-)

diff --git a/drivers/accel/rocket/rocket_core.c b/drivers/accel/rocket/rocket_core.c
index a8de876365873..634f78dfe2887 100644
--- a/drivers/accel/rocket/rocket_core.c
+++ b/drivers/accel/rocket/rocket_core.c
@@ -13,6 +13,7 @@
 #include <linux/reset.h>
 
 #include "rocket_core.h"
+#include "rocket_drv.h"
 #include "rocket_job.h"
 
 int rocket_core_init(struct rocket_core *core)
@@ -112,6 +113,11 @@ void rocket_core_fini(struct rocket_core *core)
 {
 	pm_runtime_dont_use_autosuspend(core->dev);
 	pm_runtime_disable(core->dev);
+	if (core->attached_domain) {
+		iommu_detach_group(NULL, core->iommu_group);
+		rocket_iommu_domain_put(core->attached_domain);
+		core->attached_domain = NULL;
+	}
 	iommu_group_put(core->iommu_group);
 	core->iommu_group = NULL;
 	rocket_job_fini(core);
diff --git a/drivers/accel/rocket/rocket_core.h b/drivers/accel/rocket/rocket_core.h
index 66d138a8ed773..05a197a9c0113 100644
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
index e25234261536b..b248371be8a1e 100644
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
@@ -376,8 +393,6 @@ rocket_reset(struct rocket_core *core, struct drm_sched_job *bad)
 	 */
 	rocket_core_reset(core);
 
-	iommu_detach_group(NULL, core->iommu_group);
-
 	/* NPU has been reset, we can clear the reset pending bit. */
 	atomic_set(&core->reset.pending, 0);
 
-- 
2.39.5


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
