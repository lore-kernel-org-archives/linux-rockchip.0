Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2DA76ECAAD3
	for <linux-rockchip@archiver.kernel.org>; Sat, 17 Sep 2022 16:59:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4pEDhfVsnuH704je8EmbgPdFhqTgS2DKT295RgdX0qQ=; b=KeG6zuPefviOPQ
	1a9zSLmJtUyWS3B4EVa4ajX08R7aVC4L/ULOVdmHkRxUhBrAMmy+a7jt+MKusdI90IyG9ltb6vixb
	uVNHxGfugY3K4bmjW+uabk5lUcBXOO46xqXXHB0x3hgtuzCIqGjbXyaAisjiR1twg0VUwVK1Vmf/8
	99v38TlNatZlOt0toOx42EKXT1BBmtXo7F4WKTJJAiN5vaRlBNVprqFxoq1ghyDuesBGmQHF+n9Af
	630SGNXpEZ27dx6NxQ8mVnla0B5TrmJ9ay60uDdECX7jm74b8xWFkr8XrZA/uG8GLVFRXclTajcOg
	weTLv7tXtEMKZstiTPzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZb9g-007Oy3-EG; Sat, 17 Sep 2022 16:59:00 +0000
Received: from mail-lj1-x235.google.com ([2a00:1450:4864:20::235])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oZb9U-007OpN-51; Sat, 17 Sep 2022 16:58:49 +0000
Received: by mail-lj1-x235.google.com with SMTP id s10so28646824ljp.5;
        Sat, 17 Sep 2022 09:58:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=5sU1DzoWkYzmjgKF/V5C37vqq6ZltBq3DYbgZowqGdw=;
        b=WoH1wfJ6K2MCjgl9VG78vDz6DtVWU9igRepXzl1MBAmixRXZE4Awh8Mxeukgyh9Z+v
         iXOqzCGa1B77lQ7vI0+OO4rBFfj1lXkzuYS+EDbUJta1DnV616KkXrpRwiFGcakrNl2C
         fzcQLhKE2WlYwMFIniwQ5kmU4Z9hFE5G7JlT3vL2iMd8MgIyqJpP0V36EIeBC1HTIdwB
         utJX3Uf5fLe+MRItnw0aKs0ud3fD14vXBzCnIXitzLpn3Bozz18ztqEhMtiATBLBuSsV
         oyLYe9zlDxurvus0fGAzYiBE+0gelArwAJSgNzPV66LLEpz6cDu7RFNwnFhg2QmtQAdU
         lpBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=5sU1DzoWkYzmjgKF/V5C37vqq6ZltBq3DYbgZowqGdw=;
        b=hHoN/s3m3GmM4Yezps1m/eVwAf7JC2sC7sGnUwQQLnRBIn4qkfXdcRVdL7fwz4BJbY
         e2e2lHeluWvLLPnLKoYrUvZy1QAvyRxzSCRBZSjxZ+K8kiRFaiUsYHl11CSRqHvMqz7E
         3lWdIAkK9XLEfxGi1L2TrTTb0zn3oGOfLCVqud2LRoTl0mRJieTJwazej8VxwyI37SOW
         igI3cC2x19zELgEqN7YSxj+zhH8Ilr9YeTHyaZ///BM0xAOTR5vj7VYIbixtBInULJbJ
         SUadbBl4RYlKSSBGbpCTdlEUeDCAge24MwSgbMk16tU2sqv7Hq5l2sjgTMCIJzSU01Gi
         81pg==
X-Gm-Message-State: ACrzQf2EfyaD+vQt4m4Th0PHiHKw8Ta1dtBA3VvwQeuFMSFvk7uV+Xrb
	4HRQvfbJ4BKLTdz43xDQM+cxWyP+5zKLPg==
X-Google-Smtp-Source: AMsMyM4aopquTi1RaepOtrD0/af5Dq+LieY5BQnz7CHfQ7qBEQL+WfLwScML0PQUvY2k+I9C/muDAw==
X-Received: by 2002:a2e:92c4:0:b0:25d:9d30:5d61 with SMTP id k4-20020a2e92c4000000b0025d9d305d61mr3059918ljh.202.1663433924708;
        Sat, 17 Sep 2022 09:58:44 -0700 (PDT)
Received: from localhost (95-31-185-216.broadband.corbina.ru. [95.31.185.216])
        by smtp.gmail.com with ESMTPSA id x1-20020a056512078100b0049876c1bb24sm3832426lfr.225.2022.09.17.09.58.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Sep 2022 09:58:43 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: Kishon Vijay Abraham I <kishon@ti.com>,
	Vinod Koul <vkoul@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Peter Geis <pgwipeout@gmail.com>,
	Samuel Holland <samuel@sholland.org>
Cc: Mikhail Rudenko <mike.rudenko@gmail.com>,
	stable@vger.kernel.org,
	linux-phy@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] phy: rockchip-inno-usb2: Fix otg port initialization
Date: Sat, 17 Sep 2022 19:58:20 +0300
Message-Id: <20220917165820.2304306-1-mike.rudenko@gmail.com>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220917_095848_215610_E330BE64 
X-CRM114-Status: GOOD (  15.57  )
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

There are two issues in rockchip_usb2phy_otg_port_init(): (1) even if
devm_extcon_register_notifier() returns error, the code proceeds to
the next if statement and (2) if no extcon is defined in of_node, the
return value of property_enabled() is reused as the return value of
the whole function. If the return value of property_enable() is
nonzero, (2) results in an unexpected probe failure and kernel panic
in delayed work:

    Unable to handle kernel NULL pointer dereference at virtual address 00000000
    Mem abort info:
      ESR = 0x0000000086000006
      EC = 0x21: IABT (current EL), IL = 32 bits
      SET = 0, FnV = 0
      EA = 0, S1PTW = 0
      FSC = 0x06: level 2 translation fault
    user pgtable: 4k pages, 48-bit VAs, pgdp=00000000019dc000
    [0000000000000000] pgd=080000000131a003, p4d=080000000131a003, pud=080000000
    Internal error: Oops: 86000006 [#1] PREEMPT SMP
    Modules linked in: ipv6
    CPU: 1 PID: 0 Comm: swapper/1 Not tainted 6.0.0-rc5 #114
    Hardware name: FriendlyElec NanoPi M4 (DT)
    pstate: 20000005 (nzCv daif -PAN -UAO -TCO -DIT -SSBS BTYPE=--)
    pc : 0x0
    lr : call_timer_fn.constprop.0+0x24/0x80
    sp : ffff80000a40ba40
    x29: ffff80000a40ba40 x28: 0000000000000000 x27: ffff80000a40baf0
    x26: ffff800009e779c0 x25: ffff00007fb28070 x24: ffff00007fb28028
    x23: ffff80000a40baf0 x22: 0000000000000000 x21: 0000000000000101
    x20: ffff0000006ad880 x19: 0000000000000000 x18: 0000000000000006
    x17: ffff8000761af000 x16: ffff80000800c000 x15: 0000000000004000
    x14: ffff0000006ad880 x13: 000000000000030a x12: 0000000000000000
    x11: ffff8000761af000 x10: ffff80000800bf40 x9 : ffff00007fb2d038
    x8 : 0000000000000001 x7 : 0000000000000009 x6 : 0000000000000240
    x5 : 0000000000000000 x4 : 0000000000000000 x3 : 0000000000000200
    x2 : 000000003fffffff x1 : 0000000000000000 x0 : ffff0000016c9710
    Call trace:
     0x0
     __run_timers+0x220/0x264
     run_timer_softirq+0x20/0x40
     __do_softirq+0x10c/0x298
     __irq_exit_rcu+0xec/0xf4
     irq_exit_rcu+0x10/0x1c
     el1_interrupt+0x38/0x70
     el1h_64_irq_handler+0x18/0x24
     el1h_64_irq+0x64/0x68
     cpuidle_enter_state+0x130/0x2fc
     cpuidle_enter+0x38/0x50
     do_idle+0x22c/0x2c0
     cpu_startup_entry+0x24/0x30
     secondary_start_kernel+0x130/0x14c
     __secondary_switched+0xb0/0xb4
    Code: bad PC value
    ---[ end trace 0000000000000000 ]---
    Kernel panic - not syncing: Oops: Fatal exception in interrupt
    SMP: stopping secondary CPUs
    Kernel Offset: disabled
    CPU features: 0x4000,0820b021,00001086
    Memory Limit: none
    ---[ end Kernel panic - not syncing: Oops: Fatal exception in interrupt ]---

Refactor the control flow to avoid both issues. Since the code below
out: label does no cleanup, return error codes immediately instead of
using gotos and return success at the end of the function.

Cc: stable@vger.kernel.org
Fixes: 8dc60f8da22f ("phy: rockchip-inno-usb2: Sync initial otg state")
Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index 0b1e9337ee8e..d31b35d55927 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -1144,8 +1144,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 	rport->mode = of_usb_get_dr_mode_by_phy(child_np, -1);
 	if (rport->mode == USB_DR_MODE_HOST ||
 	    rport->mode == USB_DR_MODE_UNKNOWN) {
-		ret = 0;
-		goto out;
+		return 0;
 	}
 
 	INIT_DELAYED_WORK(&rport->chg_work, rockchip_chg_detect_work);
@@ -1154,7 +1153,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 	ret = rockchip_usb2phy_port_irq_init(rphy, rport, child_np);
 	if (ret) {
 		dev_err(rphy->dev, "failed to init irq for host port\n");
-		goto out;
+		return ret;
 	}
 
 	if (!IS_ERR(rphy->edev)) {
@@ -1162,8 +1161,10 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 
 		ret = devm_extcon_register_notifier(rphy->dev, rphy->edev,
 					EXTCON_USB_HOST, &rport->event_nb);
-		if (ret)
+		if (ret) {
 			dev_err(rphy->dev, "register USB HOST notifier failed\n");
+			return ret;
+		}
 
 		if (!of_property_read_bool(rphy->dev->of_node, "extcon")) {
 			/* do initial sync of usb state */
@@ -1172,8 +1173,7 @@ static int rockchip_usb2phy_otg_port_init(struct rockchip_usb2phy *rphy,
 		}
 	}
 
-out:
-	return ret;
+	return 0;
 }
 
 static int rockchip_usb2phy_probe(struct platform_device *pdev)
-- 
2.37.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
