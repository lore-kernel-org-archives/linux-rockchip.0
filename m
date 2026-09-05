Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id ED036C624D3
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 15:05:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NwA/tyeGcGoJhBQ4Yz06TQydbj+XUQ2jaRfKKWziBLo=; b=f3sKrSQFeJVuSB
	NWhxTZgCsLhRT6BrlqahoUeJRrRzRkxhq0u/bkJwaNEkW38V+Ccw3I3Jnd0pM5O/dsmOE5ohFwbm1
	zX5yrfQvgjwZ5gtS8aj99da8nQ9QOb4Bcrt0PTyb1wHC0ejhgX03aHKOT0H8HszhfTDmnVipQwhOR
	Ghovas/q1jre2Dq5m6sHiXqG/K4bZgnhdr0wwcAvEEmZTc9/0cv48WPKI1yHrG13LnU8FzlAWi3oW
	8VKCEk6+LHp5VTFCivCsZUMbZr64y03YfZqn0/9TKvpO1sTq5bsXw9UB6cryI/dv2HJQvMEXDyIXu
	bbaGOgzzMNE1BYZH32Gg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2rwy-00000004AiB-1W7l;
	Sat, 05 Sep 2026 15:05:00 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2rwv-00000004AhD-2FeS
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Sep 2026 15:04:58 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-499db1740f2so684675e9.3
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Sep 2026 08:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788620695; x=1789225495; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=NM2S1Q42b15aXVJKX75peJvXAR4lZmt0uA+gclfAVgo=;
        b=c9K/dnLcsRXMyU/8t32O3l102R2sKTjS5ZmOtBhQ/K1ralnGH7E5RoJ2iol7Vttjfn
         4P+qwnPrFD6aBYZFyiQwc30RhqxPrqob6vgzQUmuoVIxiByvstJO+IGfkGwmOHyh0NMs
         524TeBtqsHjEqdv6Aq0ND3qwPNHePpgY2CtfEA+rk4QZ7f5hN+Y8yTRYd+0XWVNzHjy+
         bAUJslrKfGVPHM7sRj1OwhWaUtz4tk9b2LAOhSOwwV2LD0b4feej8BSkRnwtkFxO8ByM
         EcHd1WOV1gAXRbVSyPua03snuxUXnYZ422yH0ifqMXXfPzBNRO4z424EjKud8Vkb+n1K
         8qzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788620695; x=1789225495;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=NM2S1Q42b15aXVJKX75peJvXAR4lZmt0uA+gclfAVgo=;
        b=jQT30cBRmwLsXZZ6J3Vvmz0Wh1Bay6bHb4RS7EMpTVUWJxFXXsW/Etnpys6HAG4MR8
         yaGLEQDY7nWbhhqFktL+WO9VwF5VRknkNfNFM0fjOdrVXzgzz/PO900H5Az2x7RvcAQs
         fFK6Qgid6DK7tG++fSVABFUR+ChhoQe20xPUg3xvEHqXZXm3nA4AIlgoBUzvVH2s4QxP
         FYUq/Qznhp3boAYTTVxr/kzuoiRu3xXqUSVCfs/3GMHa4QkT9bMn71sAhUE323qtWqDF
         W2z2DSHEEQXa+pf16UNfJxKIAExsmEJK2tuJzjQOWz1DucewdpiTTMAU6ZPrBd2w5rWs
         UmkA==
X-Forwarded-Encrypted: i=1; AKwUvByTGBlUnQa7hAaeEX9FG9neCY8Ra/JexRj6kXeAD76sTh4+KTXaPmTr42V4CiEAPx7PoodlHdbWP5hWwjTrog==@lists.infradead.org
X-Gm-Message-State: AFuF++nBSd/8MHbWeZUWAyw0pvQbmtdGg1VjTgfATaCjhIT1FJ6+CIvR
	vwotc/fxH6skqEK8fAY4h+s34SQERqy3oPZuwv3Ch8H9Tm8J2GPcAkyZ
X-Gm-Gg: AYBFou1iJFxdZx8i64qbn130A/7jJ2RNMItJc0ddzzvim8iPzSVTssmRdxcS4iJgdRG
	+DVKxLTM3Lim2uK9bXIZ8Zt6E5iLBKfQiKT2x43gFFY3J/N33tbm8gjWayOJECV8jkJWVJlAXk4
	of1n8cwbkt7YwIIReVmu+g8thvEMoYmBz56yA2AYmMQuOzD/zVEJhigmhrSENN4W/NcmZYTO7xe
	+rRGgGoCStBfHlC6ePr4g8kfPK6YyjrMSFUbG9gRqFVDbCAdxiC5fPX+9uILsrcriR4YEPq81ez
	gBhnShiahucJpr8/Jc6qp2CUSkgluhYaauOWMtr/3T69U/k1bdyt5bK2scHqskf01BcAet9fqUd
	oxK+/5FDQFgfbZbJgVtZig477jEsmcQRTWnjJ5S6M3P3RYQVU2svoVDZ+GRU3PezhOYnjFJz92b
	itqlEtVqMCu54YlquRnl/oK/xVnxCWE2i7jX3RFhmvPQnP7O2Cp8hpMHyIhu0HR17ut3N+xxdME
	zswg6eK+mUhmMESDaByryXI5ceXGgyIWGZVfj8KZS9Lf4QW8jpbpJJW1VEGY02yZhw=
X-Received: by 2002:a05:600c:34c5:b0:499:cef6:104c with SMTP id 5b1f17b1804b1-49cf823c012mr101940875e9.1.1788620695367;
        Sat, 05 Sep 2026 08:04:55 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B950E0061C002CD703C2CBB.dsl.pool.telekom.hu. [2001:4c4e:1b95:e00:61c0:2cd:703c:2cbb])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49cf75cd8d0sm142811705e9.2.2026.09.05.08.04.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:04:55 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Sidong Yang <sidong.yang@furiosa.ai>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>,
	stable@vger.kernel.org
Subject: [PATCH] accel/rocket: search every core slot when looking up a scheduler
Date: Sat,  5 Sep 2026 17:04:32 +0200
Message-ID: <20260905150432.7477-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_080457_593993_CC4692C5 
X-CRM114-Status: GOOD (  13.32  )
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

sched_to_core() walks rdev->cores[] up to rdev->num_cores, and
rocket_remove() decrements num_cores for every core it removes. Unbind a
core that is not the last one and the cores behind it fall outside the
search, so sched_to_core() returns NULL for a core that is still bound and
still running jobs. Neither caller checks the result:

  rocket_job_run():      rocket_fence_create(core), core->dev
  rocket_job_timedout(): dev_err(core->dev, "NPU job timed out")

Unbinding the middle core of the three on an RK3588 while three clients are
submitting to all of them faults twice, once from the surviving core's
job queue and once from its reset work:

  KASAN: null-ptr-deref in range [0x0000000000000220-0x0000000000000227]
  Workqueue: fdad0000.npu drm_sched_run_job_work [gpu_sched]
  pc : rocket_job_run+0x234/0x838 [rocket]
  Call trace:
   rocket_job_run+0x234/0x838 [rocket]
   drm_sched_run_job_work+0x2cc/0xad8 [gpu_sched]
   process_one_work+0x640/0x14f0

  KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
  Workqueue: rocket-reset-2 drm_sched_job_timedout [gpu_sched]
  pc : rocket_job_timedout+0xf0/0x1e0 [rocket]
  Call trace:
   rocket_job_timedout+0xf0/0x1e0 [rocket]
   drm_sched_job_timedout+0x188/0x6a0 [gpu_sched]

Both are the third core: the workqueue names are its device and its
core->index, and it was left at slot 2 while num_cores had dropped to 2.

Search all the slots that were allocated, the way find_core_for_dev() now
does. A core that is still bound is then found, and the two callers get
the pointer they already assume they have.

This does not make unbinding one core out of several safe. An open client
keeps an entity pointing at the scheduler of the core that went away:
drm_sched reports it as not ready for every job that lands on it, and the
client waits in dma_fence_default_wait for a fence that will never signal.
Stopping the NULL dereference is what belongs in a fix; the rest wants
more thought.

Reported-by: Sidong Yang <sidong.yang@furiosa.ai>
Closes: https://lore.kernel.org/dri-devel/apwUewaRnoTNXHCt@rock-5b-plus/
Fixes: 0810d5ad88a1 ("accel/rocket: Add job submission IOCTL")
Cc: stable@vger.kernel.org
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Assisted-by: LLM sparse checkpatch
---
 drivers/accel/rocket/rocket_job.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index 3141f210fcd1b..a6c24dfe0563a 100644
--- a/drivers/accel/rocket/rocket_job.c
+++ b/drivers/accel/rocket/rocket_job.c
@@ -283,7 +283,7 @@ static struct rocket_core *sched_to_core(struct rocket_device *rdev,
 {
 	unsigned int core;
 
-	for (core = 0; core < rdev->num_cores; core++) {
+	for (core = 0; core < rdev->max_cores; core++) {
 		if (&rdev->cores[core].sched == sched)
 			return &rdev->cores[core];
 	}

base-commit: a9f09b5ea0c3db1e2d4c0f8d3ebdd612d8aa0366
prerequisite-patch-id: 519bcdfdde80d902309c8346f749ebc4bb6b29c0
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
