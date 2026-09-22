Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7ADB4C982FA
	for <linux-rockchip@archiver.kernel.org>; Tue, 22 Sep 2026 08:01:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=W3zQX5EwJfxJTmwjV9ISOxitR5hLToQVJV0cqBSelPw=; b=n058Q8S2XPcfaw
	Mn3jH0VEChN3GVnU0FalPs4eC0t1Q2z7Uj0MxnFXPltsY5YxIXHkeNaMfJULQDUH/HQX4SOqXijJB
	vfWFxka1Ccw8Bg5DI3A+0JVoeX8MC+8Yj5WYXHz182slJlo5TMa9JtRB0HntfqbikQDJLJV3lKe/e
	ZdNskx1B8EGgH+P3llT+1+OKuF0U83JLlrVy55ijgRWT38+p51/D48eCEAZAAbX/r+CfpI4w1uAy6
	J9T7M3IDf+EaQA2YGgYdDW1OrwPA0Ex4PK01AdnhUXGoFknilQmXWslEhF2uzYF8H/RK5tNCgSZXH
	aEjUyZMq0do9FLESSP8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRb-00000004aJE-3Drm;
	Tue, 22 Sep 2026 08:01:39 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8vRY-00000004aFu-3Zyq
	for linux-rockchip@bombadil.infradead.org;
	Tue, 22 Sep 2026 08:01:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=qmb5ZYsqks7WEIdeRWH6smgklDya3V2PeA5rJDQKGQU=; b=pKm2K3DgFiVdOqCJh1XsIJNUS6
	VYc6Pqze+MFf3raHN3qzrTAumbR17kEzu+0gCBxXH+HVHhztV7F32NKz0YNi2jEeEdp9P+FdM9pUM
	eKz1OQUy4MQOfR650lAq6qvzz4lOpWF48EXU4DeDTjhLJZlVwejZQti2KrOAAJBTw82y5V2WEcwdf
	FY5IxW1XYlYhPLqDgB2/O+wl7si+mM7xnlZON0b8HIltCWkBUskswAIXE5g/VrKfyRv/jlFeJbFxT
	OG2amHZiEwRb6p4r7G43rjpovzuwNKBDODWvqwZI7jz8O7ZjIEBTd1xC1i46hPp8of82SRVlMaJDk
	qcK2Ivvw==;
Received: from mail-wm2-x11.google.com ([2a00:1450:4864:31::11])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1x8vRR-0000000DEcw-3Dwn
	for linux-rockchip@lists.infradead.org;
	Tue, 22 Sep 2026 08:01:31 +0000
Received: by mail-wm2-x11.google.com with SMTP id 5b1f17b1804b1-49e82ea30faso2294745e9.1
        for <linux-rockchip@lists.infradead.org>; Tue, 22 Sep 2026 01:01:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1790064088; x=1790668888; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=qmb5ZYsqks7WEIdeRWH6smgklDya3V2PeA5rJDQKGQU=;
        b=QCIkHLVd5fo7ObokPMKPh0TPHfo4cwK/3znDcNNYsphNKAJFu0WxKhDwIIRjkSUZ2f
         7ZlumTYRtxq9ScNVT5E4BjyDrOrQ+zCij96l/ZxsSgmkgY8mXvkNkeUIMjSpwErXdjSY
         RQXrZu13vmAYuutsheqTIFUGmHJZC61kT2tK8x+F60MiJzIsuiCMYQyst6EBoDxMXEwe
         aJ5+UZ9VIf7xV1jGlI/JJt7W74nlUWRdAsdwjpf4q0tbz7nhzKmEQEMHHpQfADXKKMpj
         6b3DulTklKjGsGZN8aMWZ2bwLusY8re6pTqGGUVtYm8jFJraRl+Uh2PYPxlJ79fqNWol
         mxRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1790064088; x=1790668888;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=qmb5ZYsqks7WEIdeRWH6smgklDya3V2PeA5rJDQKGQU=;
        b=ke0lNMi98CYNmlLIf1G6DBEE1YJflmF3IrcxYjwgODAxR0TVpmV+TRDDQ5P4ilKhAZ
         qwOi4T38PCIu7mfxdVNNairldSSl+Trl9KDqmuSTSf3Z1yDT/Vi2FHas5wd5E6aiIsOy
         CWTFaR3QLR+jvYMdlknVWwSeGC4rMrk9u5p0g7ZqWdb2zGiwA18H8ybdYwKWBkX0QF0w
         tTCFQiNFE845VCa8hK69X6Pi3JkeQBpxKqEIqyTpVo8FSsw7vEDVULiA0iTtBjzD+5K8
         xpzEVNsCy+Ye4tG1P7tgelmAwagDCIo3q3Nw16+eaewyZed56dl36ZCeAKJrSezNYn+I
         +SuQ==
X-Forwarded-Encrypted: i=1; AKwUvBzIeDAXdpC3DPrx2Dkx0mv0fLaMHbAtNsPpoi1SH7aOkOC+yLhdGhTEDIg2ehzTDgQMNHoOrhTWA+cU75NGKg==@lists.infradead.org
X-Gm-Message-State: AFuF++nlQBGhRrFGvuLykHagQBwllbbvXPRSHCKBsMebxns+qCw8/4eY
	6j+fIF+qS6ePQ1o0RIWBjmYFRh61pGOJ1sFnr3PJYrImQFE3MiL/snYQ
X-Gm-Gg: AYBFou2vUw9d5eiDZkxAFYI9sRm4r9poKKH29QhEsCOUsoq19iegBGYHLjdEsz/8Jlj
	GYLnPtTQpqvE2D2IYMid7TEPd2U+PyC22vMVeFhYdxU/femnW7GK/WFMGVwWVEVPALDIJyKuG+4
	0dXpah/+F20rlz3Cnclj+6ZzNPqZ30AxA1lAHQQAwrFZMwkhKeA4fpsO8SV8IIUUgTO4X1r9MHC
	nk/M6pY+rNKAgoPKFmwBhHF5V1fLGO1CC9lGRzD5tazjHosRTyWAnvCHD2vIPNFZDMb85PG7cUT
	exBDeWnuUPeEAQAojd82IFLr1oGzRYs2IfXO4dK1FCpO/TOjZLp87M1LU5A8Qml2TbM9snhmZKs
	LHukuDgJBLpzQqRboIes7+TUEhr8h9cJIUrQuFVSQUgwbHeHuX66vgWnysRNhnODsdGapip9KxK
	A6uiA7pNqumb6pvnWVR2qR6un+tjCJTbVtxJXzTQaHGKL80iGSRqc9fqzwthIkYH0mWQ9Jmx9b5
	qMRDza9OxnrehnV4fosQAovThTCwekXKrtPfzB4gjAUtWTSkLx3UdXinF08dWep/nFX8UuABFpk
	tes=
X-Received: by 2002:a05:600c:354e:b0:49e:479b:c13b with SMTP id 5b1f17b1804b1-49fc7dff668mr165624765e9.1.1790064085766;
        Tue, 22 Sep 2026 01:01:25 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B80530056971C6280202175.dsl.pool.telekom.hu. [2001:4c4e:1b80:5300:5697:1c62:8020:2175])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49fdaaf97e2sm18248625e9.2.2026.09.22.01.01.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Sep 2026 01:01:25 -0700 (PDT)
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
Subject: [PATCH v2 01/11] accel/rocket: search every core slot when a core is removed
Date: Tue, 22 Sep 2026 10:01:04 +0200
Message-ID: <20260922080114.44662-2-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260922080114.44662-1-royalnet026@gmail.com>
References: <20260922080114.44662-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_090129_888924_CB582808 
X-CRM114-Status: GOOD (  26.03  )
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

This does not make unbinding a single core out of several work: probe
still takes num_cores as the slot to fill, and rocket_open() still
reaches for cores[0] whether or not anything is there. The fourth patch
takes care of both.

Found by unbinding and rebinding all three cores on an Orange Pi 5 Plus.
With this applied the cores land in slots 0, 1 and 2 every time, whichever
order they are bound in, and the shared supply goes back to a single user
after each round.

Fixes: ed98261b4168 ("accel/rocket: Add a new driver for Rockchip's NPU")
Cc: stable@vger.kernel.org
Assisted-by: LLM sparse checkpatch
Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Tested-by: Jiaxing Hu <gahing@gahingwoo.com> # RK3576, two cores
Tested-by: Sidong Yang <sidong.yang@furiosa.ai> # RK3588, 3 cores
---
Two paragraphs changed from the standalone posting, which this series
supersedes: the one on unbinding a single core now points at patch 4
instead of saying what is left, and the round counts are dropped from
the last one. Posting:
https://lore.kernel.org/r/20260904125936.26234-1-royalnet026@gmail.com
The two Tested-by tags are from that thread. The round counts were
taken on a kernel that carried the use-after-free fixed in 8/11; they
were re-measured with the whole series applied, see the notes on patch
4 and the cover letter. The single-core unbind and rocket_open() cases
in that paragraph are 2/2 of the lifecycle series, now rebased into
this one as patch 4:
https://lore.kernel.org/r/20260731064933.12548-3-royalnet026@gmail.com

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
