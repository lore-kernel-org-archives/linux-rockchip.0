Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 3BAFDC624DB
	for <linux-rockchip@archiver.kernel.org>; Sat,  5 Sep 2026 15:11:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FECtM8V4pNeSJiSNqs4B13qd1z8YrUlz74JN25qbDzY=; b=eqiTz9KCnz/HO3
	+YdKHXR0QJC1g2AaTsW3OnFMYjHqJ78fVw+Hl2oRM1oVjnPE7Cs6KJ7pc4/kpQhT4kyKvUK2Y8ZNt
	zc8ydioeBznDOf26p1HI/sQzaPgYdAKbLI/CverN2UvBLtbqTGN3k3WsilmmIWNcvcBsXQ0SCwLpB
	G4cJYgz9Iukq50o2xKMbfRqHV6sZLO+2csHlm8djABhPnV2Q6M8/LQjJIBuykUQKXq44Y8OF7CjEy
	d9xK9lz2Fat5MczvaIUGBO5Fm4duWu+Pi+txUeudJsJ0/XUi7aJZm/7PTTPy/Z1qkoC//1sZ9n+He
	D/C1Tm9gvhaUqXo0+GsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2s3O-00000004B7R-0Z5S;
	Sat, 05 Sep 2026 15:11:38 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2s3L-00000004B6m-0zSG
	for linux-rockchip@lists.infradead.org;
	Sat, 05 Sep 2026 15:11:36 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-49c5a927a1fso317865e9.2
        for <linux-rockchip@lists.infradead.org>; Sat, 05 Sep 2026 08:11:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788621093; x=1789225893; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=V6Tg/R56zXVR2Nup96RdAYV8c+PyuQeFJYrSPcXGgxo=;
        b=aVKwqXo/RC9WHHtzZSK/EB0rvT6vlYI78Wd6ArJ6efIzOezcPriih2HUe9lIrrWcyt
         tW52aSul9t/+SMtXhXqqxiT7CxjSxNEn8ygzVRV1aCFZBhApg/THB/esKWXtfW9qS7n2
         rlS0rbB+SiFaCwO8URnOkSLuL9SwYoYrFASR28tTXETPls/r5gFqSla3bL/4HUnKLxsp
         M8NxK1X9IGgYSiSkxGAvFG+qCfooN7n3HA+EHgrn9GB7xu9AnwHw6HGrpVTTho70oiN0
         d1G2aqrUoOeohsgqSJn26LS/sZhQD0D22nIK3M0hAvePE0HpTXfaxJkDpseS0c3UmjbE
         tHSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788621093; x=1789225893;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=V6Tg/R56zXVR2Nup96RdAYV8c+PyuQeFJYrSPcXGgxo=;
        b=X4hthYlfKmbx7WQxUsEIwEl/y+0oHBOe4NpKixgFKtUeb47TtExMmVD8GSH3DQk501
         KtZHL66c/FdcqgxLhAgpNkTOKiKq30HGYF63Ggu/CtGKjZPUGCqer70W9yZIQOTyz9Oh
         qpHL+B+gn2NjzhCAu9NvqfRHyBJrO77nps3y/6+oMigFz7B+x95zapUYawfrV29YUftU
         t17ZDjjSpoRyVzXumrJSM3GtpXmuytVJQMse0ORhQE9Qyehh2Fe6pN3yMIQQrtGYma3v
         obRweZNzE9Mkf+Miyq79H65b/a2Jtf5u4+LJafdi5Lw4hwWRFC9S3Um5LMLhmbf5NDNZ
         gW9w==
X-Forwarded-Encrypted: i=1; AKwUvBwmvARG+MZoQDjtQLPPcOg83jHIJGZATBbesLEUewubSFvQCGC8ugOw12l8GFRscCER0b5lzHH3E/YfhD/zdw==@lists.infradead.org
X-Gm-Message-State: AFuF++kMUrAcFfxO51Wp1QmGeaetXCQlygv9OF0tF+8WH9oJO+fb/L4z
	PpxBN0wGXabHRDgoDgw+tTmrHY8YSOChv/opCau789wIPP4CI58g1dcO
X-Gm-Gg: AYBFou0Yh8+/M+Zycw7lYgyAoylSFMgy+JDLUXzj1CN/pBO1zpmYBddxw/O6yk1xI32
	dGZBc7Lb4oKVrcLGi0S+TmUQc4fylnhaNK08d2Ba8WTs8ME2YK6/tI/HLGnfJ1b0y+jKKQPjF3c
	GO8Hfhq2YOg6KiT5XKwxLAbcTMxg5Gn92Hj4vq5Z13/wvb34lRpC/zC9/xKpqogeFJ+VpHnvVqB
	jnkJV6ja9+clRAyyE+i7D+200SDPO4B1AfHR3tRAXbvTtsTQCUb5Jia6v8F0o/YR15bFKb1AjoY
	HzmmwJyT3GKdG1S9LDboHAAs9vKoLl0vrr0kVrWilrUQOLGZ3DqW3/UsMAxoIjoZCfEC8n+zBnW
	uDB7SY+aPM7kJGzu5mRn99stP42hBfFSxlTzVsyKwpwVHQv/BvJgFKPJumceE+B/1zi+nUnhGpw
	s1e6Q2NWOZElOdvOfgQsRn0zRJm2jxUbe+0aRgAoMnL67K6MQnLsHlImn1axWDNJBEvPJswYQeu
	3/BwLDpQl5DkkItri80Ybm+LWRfgVMutCvsDfya27o+xNxMXrcvzTw9KyjkLZ0SFw==
X-Received: by 2002:a05:600c:860b:b0:49c:f9b8:bae0 with SMTP id 5b1f17b1804b1-49d01dd6b62mr41625625e9.2.1788621092762;
        Sat, 05 Sep 2026 08:11:32 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B950E0061C002CD703C2CBB.dsl.pool.telekom.hu. [2001:4c4e:1b95:e00:61c0:2cd:703c:2cbb])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-48588135600sm11955662f8f.2.2026.09.05.08.11.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Sep 2026 08:11:32 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Sidong Yang <sidong.yang@furiosa.ai>
Cc: Igor Paunovic <royalnet026@gmail.com>,
	Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] accel/rocket: search every core slot when a core is removed
Date: Sat,  5 Sep 2026 17:11:06 +0200
Message-ID: <20260905151112.8752-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <apwUewaRnoTNXHCt@rock-5b-plus>
References: <20260904125936.26234-1-royalnet026@gmail.com> <apwUewaRnoTNXHCt@rock-5b-plus>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260905_081135_313561_D581BF8D 
X-CRM114-Status: GOOD (  16.28  )
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

Hi Sidong,

> I've tested this patch in Radxa Rock 5 B+ and it works.

Thank you. That is the first test of it on an RK3588 that is not mine, and
b4 collects your tag with the comment attached.

> It seems that there is other issue about num_core. For example,
> sched_to_core() finds core for sched with num_core and it could make
> same error like find_core_for_dev().

You were right, and it is worse than a failed lookup: neither caller checks
what sched_to_core() returns.

I built a KASAN kernel and unbound the middle of the three cores while three
clients were submitting to all of them. It faults twice, once from the
surviving core's job queue and once from its reset work:

  KASAN: null-ptr-deref in range [0x0000000000000220-0x0000000000000227]
  Workqueue: fdad0000.npu drm_sched_run_job_work [gpu_sched]
  pc : rocket_job_run+0x234/0x838 [rocket]

  KASAN: null-ptr-deref in range [0x0000000000000000-0x0000000000000007]
  Workqueue: rocket-reset-2 drm_sched_job_timedout [gpu_sched]
  pc : rocket_job_timedout+0xf0/0x1e0 [rocket]

Both are the third core. The workqueue names are its device and its
core->index, and it had been left at slot 2 while num_cores was down to 2.

The fix is one word, and it carries your Reported-by:

  https://lore.kernel.org/dri-devel/20260905150432.7477-1-royalnet026@gmail.com/

Same test on a kernel with it applied: no faults, journal clean. It applies
on top of the patch you tested, since max_cores comes from that one.

What it does not fix, and the patch says so: an open client keeps an entity
pointing at the scheduler of the core that went away. drm_sched then logs
"not ready, skipping" for every job that lands on it - 25006 of them in my
run - and the client waits in dma_fence_default_wait for a fence that will
never signal. The board stays up and the client hangs. Making one core of
several safe to unbind while a client is open needs more than a fix, and I
did not want to hide that behind a patch that only stops the oops.

Thanks for reading it closely enough to spot the second one.

Igor

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
