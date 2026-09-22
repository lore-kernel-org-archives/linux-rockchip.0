Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1D40BC982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:02:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ICEMOjp90e8iDwXK0TvzeGM4rqA274EXkOKLN43KhNk=; b=BbgVPunt0jPYsB
	j4wagsku58Yy68u0o3DxTyF1YbDpiDFhNIhjcmrnDD3EnU+7PRSGlmuhL6toQtUHb5z5XXlDQWu38
	/PkeaKLYBGWghddROz1qAsA0/AIElDVGq0XkNqPbEKmxs6R+i0vrsiPJQWKlg5SreTsBHKYOvyZwC
	2TFifWvvAWbWXACDttB5FIRKGpV5rVZs7yy0/j9SSmVRr7BH5nx7Xn2Nydvp9+iT/I+WwPH1v5jjZ
	1xn3hb8v9OO0ROoS19/6AoO/Gv1aq04qkHvpuww6jdLDQl6ozi3CTm9rWcWle8m/lfKGd5/fHk/3l
	pQ8dcPjxwK+0/7NgBUjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vS9-00000004ago-3DGn;
	Tue, 22 Sep 2026 08:02:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRc-00000004aJQ-2NHM
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:01:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=pp6BX0mvVT2CZt7W5iAnQc+T8SkoWRi5DiwXWjU82F8=; b=Zapj8kTIvIAQ9ew+j10uJ/CYcZ
	hrjZUGcPt2pOldEbe2jbQELd1BMCN9EBaoR4Rd6srZzfus2TN8lBvwbGONKG0S4LgAkGFtAbL5GTJ
	/LTb7/uZmlPkHmzXVKadQGh3dVAzF4vellrHQ43yxBdiScl4MRpFdUKJLhP0Xw72rE8JYNlJJgFt3
	EcV7IKf9HnAC8fwtTtrf7GqUd4xE2A+VKVrl63lDmkAFc14HXYdXQfjQp9iT30TRzW8huOLozkYEq
	i4PSUidvFATHkcSQrlrvHT9JU0Fqc1H8G9VyorNXdGWL4kBCaMQ+qVGQzAgN7CPfFMU9pcHFoR7S4
	OpWc6S3A==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8vRU-0000000DEeM-1OrN
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:01:39 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49e6baf77afso1695495e9.2
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064091; x=1790668891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=pp6BX0mvVT2CZt7W5iAnQc+T8SkoWRi5DiwXWjU82F8=;
        b=gCufh0r1g8f2CHFVRWlsyW1YsjvgpTO4zbf8PtyH+kPGlzG1d5jIOZA01nhdhq4sRg
         U0k3Zu/Osk82YPmCtTymPJhk24r+8EMhdITUFCTXahO49qbBvmhbNARM2UqVzemJyNtf
         8mLO7qaZGaP67tUpBXTE7wg1cuRhxrGC6LU67Y924P6Ynffrox17onUqYt3QWbAbNFHY
         rQmeH4PXxVUPO5zi7PccEAYXulyP3LaVw66z7mGEzf/r4fSW5zE9r3x8pfEEKSfIa5qR
         ig5NGAENOj8qEmrvgk2adXcRAVVKanUfPU276cvofrfhkU/HwwaXpBNm+gwOSSJ1QH6K
         gTeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064091; x=1790668891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=pp6BX0mvVT2CZt7W5iAnQc+T8SkoWRi5DiwXWjU82F8=;
        b=uid8N8nipYwSfrHKaK/hkT6VT2kCgjebeL381MkH7IBKhwlXvVFP6pniSAB83thRPQ
         pKac0HyC/ntCJCqQGkBf//hJsmMXxtx5ChbmThuLb6xn3w3Wuta4aDpJ51oN/MJQNthK
         S/8cykYGkWFF6jNL0OXUpO0vld+YUK6bfKOBaDJWT2NJA+Q547KyfnMOx8kNxipRGD+Y
         Vw/nMRagmB5DF860r49XuMPGqr4fIyHYqaGs9bt19CE6SYyf7ZdC4K4XMxj/m0t+gVQb
         s3aBCKzS0IYo2cuntNEadLNZFtnj8nd6xMFGKWh0fzs/Dco0u5rfllZWQrqcv36F5XDS
         eNDA==
X-Forwarded-Encrypted: i=1; AKwUvBxCNdD7mIsSSXrbSJACiDFqdPjH+gUeYMsrmsVJNigGKxWrMRmUOs8bwp161h210P5eQi6ZRRvrRVA+eJ+mUQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mgYAp6eNcIXslgMMtpGTi2G16tZ4+/nFry8ioNd0ZrX8CjLDf0
	REFJQPDQmNESdk1UTSzoWvtNvTopymHFTwvvHPJB7It89pYaE9HNq9HT
X-Gm-Gg: AYBFou2hw0jjc02oGAOpdheYgBgGp4pj2Kq0pJO/FEyD3yoh4Q8bEd/NDVlu6y4j0ea
	LVybfhnNLbTdJpexOnwaNia3jBm3IEezRgu66kzU/IYI7wbydmvYK5fV7iHRWd7JgknaNnt+1DB
	hId115pXvakDjbTccGTilo1b5N/CXAsaK4ej1NtpK2mGUS9z2CQ4WUP+/vefHj9Gm4whSnbH2uW
	Rw0RVM5JJHRmVPfsY7Uv/GKJQEkuXDJaeq7opEXTT/wQ9RAU2F7+4wsAv9PvcC7AAHMgx2MhSh5
	7jcmkIplP3BOfYkaqDTHPuqMy+ul/IPCk+AAI6/iUqH1qGL0CU3PPeSbeg9AtkIAOmRL/6wGbER
	+DSxl8wJZCCbbr8GzpKVJeqV5rX9OanO5GxcU44dGa7vDuqf0PI938d36ufxT0xfZuhEC4Wozdo
	HZobo9KsqD6OJdfiiPYI8INjGAJuGVqgO1uVPuV5D0STTu0JDD9DHZxVHwN73p6tH9233IcKeGv
	tX87k9FSNLldKMR2GzHVsFeoue6JkSeM0hesHWBJxSDOH+PqJx6ZImtORLaw53z7aB6m+pz7aEl
	GFVsSQnyg9Dj1TY=
X-Received: by 2002:a05:600c:6992:b0:49b:9241:7ff0 with SMTP id 5b1f17b1804b1-49fc7b7a756mr226927785e9.0.1790064090983;
        Tue, 22 Sep 2026 01:01:30 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdaaf97e2sm18248625e9.2.2026.09.22.01.01.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:01:30 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Jeff Hugo <jeff.hugo@oss.qualcomm.com>,
	Robert Foss <rfoss@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	Guangshuo Li <lgs201920130244@gmail.com>,
	=?UTF-8?q?H=C3=BCseyin=20BIYIK?= <boogiepop@gmx.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH v2 04/11] accel/rocket: keep core slots stable across unbind and rebind
Date: Tue, 22 Sep 2026 10:01:07 +0200
Message-ID: <20260922080114.44662-5-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922080114.44662-1-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_090136_202163_74DC308C 
X-CRM114-Status: GOOD (  33.95  )
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

rocket_probe() inserts a new core at slot num_cores, and
rocket_remove() only decrements that counter without clearing the
slot. That falls apart as soon as one core is unbound while its
siblings stay bound:

 - the next bind reuses the slot of a still-live core and overwrites
   it while its IRQ handler (dev_id points into cores[]) and its
   DRM scheduler are still active;

 - rocket_open() unconditionally uses cores[0].dev, which after an
   unbind of core 0 is a stale pointer to an unbound device.

On an RK3588 with three cores, unbinding the first one and binding it
again puts it on top of the third:

  rocket fdab0000.npu: drm_sched_init: scheduler already initialized!

One device now sits in two slots and the third core in none. The next
unbind of the first core finds its stale slot, torn down already, and
finishes the same scheduler a second time:

  Unable to handle kernel NULL pointer dereference at virtual address 0000000000000000
  pc : drm_sched_fini+0x4c/0x1e0 [gpu_sched]
  Call trace:
   drm_sched_fini+0x4c/0x1e0 [gpu_sched] (P)
   rocket_job_fini+0x28/0x60 [rocket]
   rocket_core_fini+0x4c/0x78 [rocket]
   rocket_remove+0x78/0x110 [rocket]
   platform_remove+0x2c/0x68
   device_remove+0x58/0xc0
   device_release_driver_internal+0x214/0x2e0
   device_driver_detach+0x24/0x50
   unbind_store+0xd8/0xe8

Make .dev the slot-liveness marker: probe takes the first free slot
and clears it again if core init fails, remove clears .dev after
rocket_core_fini() and warns if the core cannot be found, lookups skip
empty slots, and rocket_open() and rocket_job_open() use only live
slots. num_cores keeps counting bound cores for the last-core teardown
check. A missing core is no reason to refuse a new file: the device is
one core short, not gone, and any bound core will do for the IOMMU
domain, which is attached to the group of whichever core runs a job.
With a single core live the scheduler list that drm_sched_entity_init()
does not keep is freed at once, as rocket_job_close() only frees what
the entity kept.

Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
Cc: stable@vger.kernel.org
Assisted-by: LLM sparse checkpatch
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
v3, now in this series:
 - rebased onto the three fixes before it: "accel/rocket: search
   every core slot when a core is removed", which provides max_cores,
   "accel/rocket: number the cores by devicetree position, not bind
   order", so a slot no longer doubles as the hardware number, and
   "accel/rocket: search every core slot when looking up a scheduler"
 - the crash above: this is what the devfreq patches ran into when
   tested on a kernel without this one
 - free the scheduler list when a single core is live
 - Cc: stable
v2: https://lore.kernel.org/r/20260731064933.12548-3-royalnet026@gmail.com
 - also clear the slot's .dev when rocket_core_init() fails (Jiaxing Hu)
 - check .dev in sched_to_core() (Jiaxing Hu)
 - document the synchronous-probe assumption at the slot scan
v1: https://lore.kernel.org/dri-devel/20260730080355.177422-3-royalnet026@gmail.com/

Unbinding a core that still has jobs in flight, or that an open file
already holds the scheduler of, has further pre-existing issues that
are out of scope for this bookkeeping fix. One of them, a use-after-free
under KASAN, is described in the cover letter. The driver does not
serialize probe and remove against open; this does not change that.
For stable, this goes with the three patches before it.

Verified on RK3588 (Orange Pi 5 Plus), 7.3.0-rc2 drm-misc-next plus
this series, in-tree rocket, all three cores enabled: 25 rounds of
unbinding and rebinding all three cores; 4 rounds of unbinding a single
core (twice the devicetree-first core, twice the second one), each with
an inference run while the core was absent and one more after all four;
5 rmmod/modprobe rounds; 3 unbind/rebind rounds and 1 rmmod with the
clock raised to the 1 GHz OPP (CRU selector on the PVTPLL before
each). No "scheduler already initialized" message and no
oops; the regulator user count returns to its boot value after every
round. Without this patch the same single-core round oopses in
drm_sched_fini() on the second unbind, as shown above.
The single-core, full, rmmod and raised-clock rounds were repeated
(10 full rounds and 3 rmmod rounds this time) on a KASAN and
PROVE_LOCKING build of the same tree: no report, and lockdep still
enabled afterwards.

 drivers/accel/rocket/rocket_device.h |  2 +
 drivers/accel/rocket/rocket_drv.c    | 55 +++++++++++++++++++++++-----
 drivers/accel/rocket/rocket_job.c    | 38 ++++++++++++++-----
 3 files changed, 77 insertions(+), 18 deletions(-)

diff --git a/drivers/accel/rocket/rocket_device.h b/drivers/accel/rocket/rocket_device.h
index c62d567010696..abb88a254e569 100644
--- a/drivers/accel/rocket/rocket_device.h
+++ b/drivers/accel/rocket/rocket_device.h
@@ -18,7 +18,9 @@ struct rocket_device {
 	struct mutex sched_lock;
 
 	struct rocket_core *cores;
+	/* Number of currently bound cores. */
 	unsigned int num_cores;
+	/* Slot capacity (DT core count); slots with a NULL .dev are free. */
 	unsigned int max_cores;
 };
 
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 7d927bb6b322d..b9b36c578db20 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -68,11 +68,21 @@ rocket_iommu_domain_put(struct rocket_iommu_domain *domain)
 	kref_put(&domain->kref, rocket_iommu_domain_destroy);
 }
 
+static struct rocket_core *rocket_first_live_core(struct rocket_device *rdev)
+{
+	for (unsigned int core = 0; core < rdev->max_cores; core++)
+		if (rdev->cores[core].dev)
+			return &rdev->cores[core];
+
+	return NULL;
+}
+
 static int
 rocket_open(struct drm_device *dev, struct drm_file *file)
 {
 	struct rocket_device *rdev = to_rocket_device(dev);
 	struct rocket_file_priv *rocket_priv;
+	struct rocket_core *core;
 	u64 start, end;
 	int ret;
 
@@ -85,8 +95,18 @@ rocket_open(struct drm_device *dev, struct drm_file *file)
 		goto err_put_mod;
 	}
 
+	/*
+	 * Any bound core will do for the domain: it is attached to the group
+	 * of whichever core runs a job, and the NPU IOMMUs are all the same.
+	 */
+	core = rocket_first_live_core(rdev);
+	if (!core) {
+		ret = -ENODEV;
+		goto err_free;
+	}
+
 	rocket_priv->rdev = rdev;
-	rocket_priv->domain = rocket_iommu_domain_create(rdev->cores[0].dev);
+	rocket_priv->domain = rocket_iommu_domain_create(core->dev);
 	if (IS_ERR(rocket_priv->domain)) {
 		ret = PTR_ERR(rocket_priv->domain);
 		goto err_free;
@@ -199,10 +219,21 @@ static int rocket_probe(struct platform_device *pdev)
 		}
 	}
 
-	unsigned int core = rdev->num_cores;
+	unsigned int core;
 
 	dev_set_drvdata(&pdev->dev, rdev);
 
+	/*
+	 * Take the first free slot: cores can unbind and rebind in any
+	 * order. The scan-then-claim relies on platform probes running
+	 * sequentially; revisit if the driver ever enables async probe.
+	 */
+	for (core = 0; core < rdev->max_cores; core++)
+		if (!rdev->cores[core].dev)
+			break;
+	if (WARN_ON(core == rdev->max_cores))
+		return -ENXIO;
+
 	rdev->cores[core].rdev = rdev;
 	rdev->cores[core].dev = &pdev->dev;
 	rdev->cores[core].index = index;
@@ -210,13 +241,18 @@ static int rocket_probe(struct platform_device *pdev)
 	rdev->num_cores++;
 
 	ret = rocket_core_init(&rdev->cores[core]);
-	if (ret) {
-		rdev->num_cores--;
+	if (ret)
+		goto err_core;
 
-		if (rdev->num_cores == 0) {
-			rocket_device_fini(rdev);
-			rdev = NULL;
-		}
+	return 0;
+
+err_core:
+	rdev->cores[core].dev = NULL;
+	rdev->num_cores--;
+
+	if (rdev->num_cores == 0) {
+		rocket_device_fini(rdev);
+		rdev = NULL;
 	}
 
 	return ret;
@@ -229,10 +265,11 @@ static void rocket_remove(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	int core = find_core_for_dev(dev);
 
-	if (core < 0)
+	if (WARN_ON(core < 0))
 		return;
 
 	rocket_core_fini(&rdev->cores[core]);
+	rdev->cores[core].dev = NULL;
 	rdev->num_cores--;
 
 	if (rdev->num_cores == 0) {
diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index 4bc4f9c8ee403..25ee4ab172a82 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -284,7 +284,7 @@ static struct rocket_core *sched_to_core(struct rocket_device *rdev,
 	unsigned int core;
 
 	for (core = 0; core < rdev->max_cores; core++) {
-		if (&rdev->cores[core].sched == sched)
+		if (rdev->cores[core].dev && &rdev->cores[core].sched == sched)
 			return &rdev->cores[core];
 	}
 
@@ -511,22 +511,42 @@ void rocket_job_fini(struct rocket_core *core)
 int rocket_job_open(struct rocket_file_priv *rocket_priv)
 {
 	struct rocket_device *rdev = rocket_priv->rdev;
-	struct drm_gpu_scheduler **scheds = kmalloc_objs(*scheds,
-							 rdev->num_cores);
-	unsigned int core;
+	struct drm_gpu_scheduler **scheds;
+	unsigned int core, n = 0;
 	int ret;
 
-	for (core = 0; core < rdev->num_cores; core++)
-		scheds[core] = &rdev->cores[core].sched;
+	scheds = kmalloc_objs(*scheds, rdev->max_cores);
+	if (!scheds)
+		return -ENOMEM;
+
+	/* Only the cores that are bound right now have a scheduler to offer. */
+	for (core = 0; core < rdev->max_cores; core++)
+		if (rdev->cores[core].dev)
+			scheds[n++] = &rdev->cores[core].sched;
+
+	if (!n) {
+		ret = -ENODEV;
+		goto err_free;
+	}
 
 	ret = drm_sched_entity_init(&rocket_priv->sched_entity,
 				    DRM_SCHED_PRIORITY_NORMAL,
-				    scheds,
-				    rdev->num_cores, NULL);
+				    scheds, n, NULL);
 	if (WARN_ON(ret))
-		return ret;
+		goto err_free;
+
+	/*
+	 * drm_sched_entity_init() keeps the list only when it holds more
+	 * than one scheduler, and rocket_job_close() frees what it kept.
+	 */
+	if (n < 2)
+		kfree(scheds);
 
 	return 0;
+
+err_free:
+	kfree(scheds);
+	return ret;
 }
 
 void rocket_job_close(struct rocket_file_priv *rocket_priv)
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
