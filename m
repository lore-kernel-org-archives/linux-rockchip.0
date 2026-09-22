Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7AD2FC982F1
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:01:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WlK/tBmJsLDKgwVDupr6hpP0EEpw26ECXth2i4N3Jfo=; b=RSGX/wDpnw76yr
	FIdb3OlLBdYW5txhsCzae5uOLTbwbEgv20bIeUvF49IkCHjJrw+BpabowgYveVI9/o3hTloymlvax
	O2tCLvDAEDxeAzrNrnDqZBC2h7JN9RG4beNJrm0B8sx3XkK0rHoNH5ylAjYeIueMF/ec3XeyqxFI7
	7HK3js3xNm5uMGzWkgiLQkv36UIf9Be/iBtb7TmmZWhKC4Jho0Dq7UoXhV7k0MVPSOsYBEu+6WZDl
	pFa/ycUyvpyEhRkcNQOEpCRtVFHYShJ9vag7yvNBGeQYimmbWobxNPjTsxRwYp8AVQnqY9jWEvHiD
	1qsRoSo2f6yVkGnpSAQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRa-00000004aH4-1F6v;
	Tue, 22 Sep 2026 08:01:38 +0000
Received: from mail-wr2-x29.google.com ([2a00:1450:4864:30::29])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRV-00000004aDY-0eYX
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:01:34 +0000
Received: by mail-wr2-x29.google.com with SMTP id ffacd0b85a97d-482e1b30c94so340717f8f.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:01:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064091; x=1790668891; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=uM6eJlIue+3ZnByR9U7PRXrgVvVnosyPWdGdGl87I7k=;
        b=ZWdBdHLYwz9Gw4GK3GXy+yzN+j+gd67XfIl+KbiCMhbS3uoXK82np6F0LAfizNwx/H
         CIvQK6LqcV28BPIig6ivfLYllpbvZYZU8IMNK5KHlRpFrjFc23e4YoTrZBKgiAYoIrjq
         lTlkw6Xj6loJM9gWSGoCHBbEhUzYvkw0YmSZwZUQrF3yFsRni9HEQFuWGUL6XBXteS7Q
         OQdmuDVb2+z6f7c/dpC/SoKTavA8WjCfL3e+6Kst+gSwjyLsEc3mDqDzgfy95PEOjTH7
         P/cDIg8EDs/eOfvaQL28L3oNcTCLkbLcKWo1XAh9uGnEHMfoF5KHpiM5creHSdf/7NiN
         hAKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064091; x=1790668891;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=uM6eJlIue+3ZnByR9U7PRXrgVvVnosyPWdGdGl87I7k=;
        b=dud9Uwsu1MdNZJLADmRBnlv5m8I6CVD+QM/zlG/22wWZYudtE6ShqrcfuDg25U2I7/
         HIgT3dE/VWnvLxMI2hMt9u2OLzp2HnbD3VvAxxUBy6x0e6oYuRf+2G/krxrpYcfj8X+Q
         tryVwrz54dkLmMBpwSKybcslhPt/vs3m5BlxENO33C7PeQHtrrMUUFOMIGVGQe6wPUEq
         l3DOUGwIg/Up+jCB6Wl+LAqY/ugpm0NsBZiezRDl20KoeRFz5WJwtWRl0w0Qs8LCXO92
         uE847KsBQHrVXeu4czBEXDim7oMebJXTo/Ln5Hd8FS2xD/dtFdmZzf+Ukb+0DIm63hw2
         hFlQ==
X-Forwarded-Encrypted: i=1; AKwUvBzrHowZq25CEn02U23Szu6wdxDSbxDj20caxgyrYDAboa8gAV7RK169SWT9Tf2FKsqIvNJKBPVXhEX2uowH6w==@lists.infradead.org
X-Gm-Message-State: AFuF++mRgSm3CVRXfzOnn4iDOCjmQPvJIRSMZ0W0NP4oiaHKNWdfiqt2
	HzSJBoQji2DGUmgNG6a2lruto46YnpgbbBsrjOApcnN1RXB3LVWkpGvO
X-Gm-Gg: AYBFou3r4lNCcb1chmcDBvxQjWezNLgAzmbOednb90T+vQOTdwIwObYW0p+sJOwzb1a
	3PIqTJ4ZAdodFrjqixQ8Czu1J17twiR2xHtzzvPl+WXuijDMkNf2uXP3LLETWc+N92ychaK6Slb
	z0+YaKAFUwDe7t0pp0iYhw+QbKT2vkLk8nk9CtWhPRGrXcM+omfHPhJXvaTX3UoqOzrzVfmgoF8
	2FV8PF0XlO2DhmJDHEld6cuiJ8jpnZG+gRXAwKm6L0xaoNFr6MEvM+h/5TwUDoEkIjYZgNdgujq
	me7VU4CFmcqui5FJyB06ivv80+QsecJ+8CXhC8d8EFErK5yni+2DT5Qf+8K4weEPfzT1B+U++cQ
	aI71C+PIyKdWodrP2txUfKDhxm6mc/8ulIw7zUsn03cpaQe7hZbQh2KBX1m6Vt6NEBVI827q4wl
	9XxH1GhRUhr7zBu5C3HI+dELCOjim/MJgv7UFyssItXOjxq4kN27KGrrFXE9Mc3lV8gUKsPnWbv
	5HSWdrltk2QLsjgssXvoU/UM+onSX6bVpXCm2/mlDc2xRMfA3qQQoQ3xrqRsdFupGN+otBWbaUA
	jqlC
X-Received: by 2002:a05:600c:1d1b:b0:49e:7cc6:ec88 with SMTP id 5b1f17b1804b1-49fc7e00555mr163235615e9.1.1790064089430;
        Tue, 22 Sep 2026 01:01:29 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdaaf97e2sm18248625e9.2.2026.09.22.01.01.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:01:29 -0700 (PDT)
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
Subject: [PATCH v2 03/11] accel/rocket: search every core slot when looking up a scheduler
Date: Tue, 22 Sep 2026 10:01:06 +0200
Message-ID: <20260922080114.44662-4-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922080114.44662-1-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_010133_225410_ED0FC014 
X-CRM114-Status: GOOD (  15.40  )
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
Assisted-by: LLM sparse checkpatch
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
---
Unchanged from the standalone posting, which this series supersedes:
https://lore.kernel.org/r/20260905150432.7477-1-royalnet026@gmail.com

 drivers/accel/rocket/rocket_job.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/accel/rocket/rocket_job.c b/drivers/accel/rocket/rocket_job.c
index f404355058185..4bc4f9c8ee403 100644
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
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
