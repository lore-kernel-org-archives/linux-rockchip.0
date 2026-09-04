Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 39720C624D3
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 13:00:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=z4we4fx4pXuhaGqHYyPPPaTtuUf+5HUb/2v/xFQo0dA=; b=okExqj1/sLsWLx
	/G7e9cwRVfOd3fMut9SDXBGkdTtey6Lq4TRUsieHq+oHL9l0HwZ6YZPFDV4Sp0lHwAc6GCdh+Zx1a
	J2HCBJZm1MszrTU8V8e0va+CVn8qI2TnAiC6wQDIMw50mAw4N2egIKY/F4UtMcwzR80Q6VZrpJAm9
	pBPJdJIrQgNwffqvjnr8MH8uegV5LYTvK9aFhWbbOnzAXY1P/dgBbSmDk0InQhf6vnDkul57J6DM2
	5UtbRUUQ39vGO0TDhOujOaAY7gplYRKrDfJuJvAmyWtdMtVPo7P5cwpFItnYNdfGeXwG0bX9q7JMX
	yYINMo+nBTPbBQ2MFoZA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TWU-000000025TP-1gyn;
	Fri, 04 Sep 2026 13:00:02 +0000
Received: from mail-wm2-x10.google.com ([2a00:1450:4864:31::10])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2TWR-000000025SD-3atR
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 13:00:01 +0000
Received: by mail-wm2-x10.google.com with SMTP id 5b1f17b1804b1-499db1740f2so296135e9.3
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 05:59:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788526798; x=1789131598; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=G/WcwZhKQetLuVj0VCLbzfxuQncGS/yqg6oOZ6MnNyQ=;
        b=Ex4HWJXvOodnnHHBq/PZgveM4LTWwBxi49x12l9tTxFLSmiDnAWYYBbeXLv3LqzwLy
         01U/446HkBUAJ4WflRAdYNZMtj7q2M/a0hGFdOvBojaQlZmh2UXQ3XyATEA+X6XBAQLl
         oBJHpJAMPbvvE9XdoeTskwOwIuSNB9dlMH9ns4jaNF7XShgrGmUNvg0JTsriUjQxWM4y
         Ps2K1ZgK01KoalXMJYVXP+QrGZp6sicjKWjx6iQ6m92WuNKPzp5R/pds5xhZhjSswqaO
         WqgX4tk2WI8xf4OHIoirzl2TcZPa4VZMY6iQyqkGMXQwP70aw0/aL8hpuEqEkYAX7onM
         YMAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788526798; x=1789131598;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=G/WcwZhKQetLuVj0VCLbzfxuQncGS/yqg6oOZ6MnNyQ=;
        b=fbSRVk5W/uGNguAVbmaSfn3UfFyFW8uNh7uIvLTxkafQHKHmSfd6rEUKKdH2U32NeF
         a2hQN6ze0JTtCid2yRjupNDV2D7DUd2DQm/eUpfBxTjIaDWyGY4RNe2uvK/xupJSjUoF
         GqpWYZY/qwTc6ikxryB4kfXACowcQ+gG/edqRk8k2Qv5yb7C23cEzqPJlh6f2MXXI92D
         7YYHOkib/24K8jEzBhJ/AAToMoYWGg+q3KBL7yYqQI6qVDzLFqFL7z+4qVwzpxmmo+W/
         ePxPnjKOX648E46G1JMwdHG0WeGskMxDArnK2MDCsfxuzh2CJcHvrZvG7iZZJkTMxY73
         /ruQ==
X-Forwarded-Encrypted: i=1; AKwUvBzSr9REnhUY8eyLdzPwphJnIbM6XTs8xTRWw0kO9fwv+cx2kXE3VEV7yekHswKBz27MFSP3arb01smJ+CaJbQ==@lists.infradead.org
X-Gm-Message-State: AFuF++mXlFDMwfVpOZM7VcsbbR6/YslngN/7Buh2PHHq0h6xYfxgzwBM
	ilddtv4xJScQfVM8R050yJDiRNlmk278GY2cxj2bdQ2vk6cph4tFSnDU
X-Gm-Gg: AYBFou014Rq0UoD3MvTdcj+wK8bfVujaQBSxe8H017JsM+i98GX4H4ghxBlfH5G3cMH
	vspRDiXZNnZ2U4G/t7kbdWvRZrpVma9MIZ45oPgN8G1EV3uaOmM2Ij0YHIVTnzD5rK6OD8B19NJ
	7Mth8uW8zC7dfGqrQQ6tWUsyaoKYq6s6MvhieodzoWFNpqIDdrO3xRnEPpTG+icc4sInoMGChyo
	NHKO95hU4svWzKY8TDq/xGR7R7V+N9R7TaccvTfusN3bS+TCHK361LgSdG/cYCpsrdiNPJht0ZK
	RZOUhbMMn4rdixZcW80QnA8SCPZw4lrKRVdEIcn/Rlf+Vr30zuwcBS+7UwChpB2oxbPM2iaWavE
	hdBRTz2ZouuWIZbu4gNr7R88kXSiwrZAFgLEjYDHA9EuUDN0SXTcUQ+1Ze3xvC4lah+ssnHRdoG
	HuCQLwx0TOxYdj6+JC0pa7g32ln5aHQXdO1eicjxmjg4F23xBpXZG55rBNQMBdMIGAKphEu0MVd
	yGvywqBGC2VApJtiCgmuJNMOtYXkYunWdwls1cwA1T+OBt7xkkhife9jTLuGozfcxuIiKG8W/zY
	5J1MmJfC6yCb/SU=
X-Received: by 2002:a05:600c:34c5:b0:499:cef6:104c with SMTP id 5b1f17b1804b1-49cf823c012mr40540685e9.1.1788526797556;
        Fri, 04 Sep 2026 05:59:57 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B871500CB6EF488A18F9C42.dsl.pool.telekom.hu. [2001:4c4e:1b87:1500:cb6e:f488:a18f:9c42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce554d52esm135287435e9.3.2026.09.04.05.59.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 05:59:56 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>
Cc: Heiko Stuebner <heiko@sntech.de>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	stable@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH] accel/rocket: search every core slot when a core is removed
Date: Fri,  4 Sep 2026 14:59:36 +0200
Message-ID: <20260904125936.26234-1-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_055959_948128_C4454E6F 
X-CRM114-Status: GOOD (  21.88  )
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

rocket_remove() decrements rdev->num_cores for each core it removes,
while find_core_for_dev() searches slots 0 to num_cores - 1. Unbinding
the cores in the order they were bound therefore loses the last one: by
the time it is removed the search range has already shrunk past its
slot, so find_core_for_dev() returns -1 and rocket_remove() gives up
without doing anything.

num_cores never reaches zero, rocket_device_fini() never runs, and the
file-scoped rdev keeps pointing at a device that is going away. Binding
the cores again starts from that stale count, because rocket_probe()
takes rdev->num_cores as the slot to fill. On an RK3588, which describes
three cores, the second round lands on slots 1, 2 and 3 while rdev->cores
was allocated with room for three:

  rocket fdab0000.npu: Rockchip NPU core 1 version: 1179210309
  rocket fdac0000.npu: Rockchip NPU core 2 version: 1179210309
  rocket fdad0000.npu: Rockchip NPU core 3 version: 1179210309

The write to rdev->cores[3] is past the end of the array.

Nothing in tree reads the core array often enough to notice, so the
overrun is silent today. It turned up while testing a devfreq series on
top of this, where a worker walks every core a few times a second, and
UBSAN caught the first bool it read out of the overrun entry:

  UBSAN: invalid-load in drivers/accel/rocket/rocket_devfreq.c:47:10
  load of value 5 is not a valid value for type '_Bool'
  Workqueue: devfreq_wq devfreq_monitor

Record how many slots were allocated and search all of them. Every core
is then found on removal, num_cores reaches zero, the device is torn down
and a later bind starts from a clean rdev.

This does not make unbinding a single core out of several work. probe
still takes num_cores as the slot to fill, so rebinding one core while
its siblings stay bound would write over a slot that is already in use,
and rocket_open() still reaches for cores[0] whether or not anything is
there. Both of those want more thought than a fix should carry.

Found by unbinding and rebinding all three cores on an Orange Pi 5 Plus.
With this applied, 25 unbind/rebind rounds and 5 module unload/reload
rounds run clean there: the cores land in slots 0, 1 and 2 every time,
whichever order they are bound in, and the shared supply goes back to a
single user after each round.

Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
Cc: stable@vger.kernel.org
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Assisted-by: LLM sparse checkpatch
---
 drivers/accel/rocket/rocket_device.c | 2 ++
 drivers/accel/rocket/rocket_device.h | 1 +
 drivers/accel/rocket/rocket_drv.c    | 2 +-
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/accel/rocket/rocket_device.c b/drivers/accel/rocket/rocket_device.c
index 46e6ee1e72c5f..efd004194c1af 100644
--- a/drivers/accel/rocket/rocket_device.c
+++ b/drivers/accel/rocket/rocket_device.c
@@ -31,6 +31,8 @@ struct rocket_device *rocket_device_init(struct platform_device *pdev,
 		if (of_device_is_available(core_node))
 			num_cores++;
 
+	rdev->max_cores = num_cores;
+
 	rdev->cores = devm_kcalloc(dev, num_cores, sizeof(*rdev->cores), GFP_KERNEL);
 	if (!rdev->cores)
 		return ERR_PTR(-ENOMEM);
diff --git a/drivers/accel/rocket/rocket_device.h b/drivers/accel/rocket/rocket_device.h
index ce662abc01d3d..c62d567010696 100644
--- a/drivers/accel/rocket/rocket_device.h
+++ b/drivers/accel/rocket/rocket_device.h
@@ -19,6 +19,7 @@ struct rocket_device {
 
 	struct rocket_core *cores;
 	unsigned int num_cores;
+	unsigned int max_cores;
 };
 
 struct rocket_device *rocket_device_init(struct platform_device *pdev,
diff --git a/drivers/accel/rocket/rocket_drv.c b/drivers/accel/rocket/rocket_drv.c
index 8bbbce594883e..2bcfe4ab3c68f 100644
--- a/drivers/accel/rocket/rocket_drv.c
+++ b/drivers/accel/rocket/rocket_drv.c
@@ -223,7 +223,7 @@ static int find_core_for_dev(struct device *dev)
 {
 	struct rocket_device *rdev = dev_get_drvdata(dev);
 
-	for (unsigned int core = 0; core < rdev->num_cores; core++) {
+	for (unsigned int core = 0; core < rdev->max_cores; core++) {
 		if (dev == rdev->cores[core].dev)
 			return core;
 	}
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
