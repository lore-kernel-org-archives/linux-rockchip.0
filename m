Return-Path: <SRS0=5mPC=KV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4481C47088
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 17:33:53 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 59983613B9
	for <linux-rockchip@archiver.kernel.org>; Wed, 26 May 2021 17:33:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 59983613B9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=heitbaum.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=edHVDH509B6Dn6NTAf/SWe42pHMdOeNCnaNutZ4xroM=; b=YF8JsOxHJCyktb
	g3BANQiQfjo/CdYzCKsIsP9tu4V8aR5AkRB4wNpce3h2iZNZpDNQ1mLvDUrrHnDmgaGKJ/KYXHxl/
	XzwrhI5ryHkRTo36d4KxoWBatRXv4mQkV7pP2dHBX9qcsv4mK0OKu7Xj1DcA11P0UUFLoLzyiKQfU
	ispMLyxDDVcEjFDkB5yEAvrTGyIU2IXwUURGW1aiBH9QAh6wlBA+kd3IxtL3+9f3zcgosXscIh3Cf
	22fZYhWx7lWKEdDS/NrvtuQakFFrjobpuJMfwiqRUKxt0kpZKvPsESbFSkHJUPnmTyHImhDi5WyeN
	uUhwMRlD6RD2F6vJRGcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llxPc-00G9Lr-16; Wed, 26 May 2021 17:33:44 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llwK3-00FhqD-GF
 for linux-rockchip@lists.infradead.org; Wed, 26 May 2021 16:23:56 +0000
Received: by mail-pg1-x533.google.com with SMTP id j12so1368229pgh.7
 for <linux-rockchip@lists.infradead.org>; Wed, 26 May 2021 09:23:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heitbaum.com; s=google;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=3gA9VrOSMoB8ARTOwNzx/FAC2RRzo+UnWgujJ7sE+Vg=;
 b=hw1o6LyKi/Tf03o7XXHTA0hWOc4hDYNPWAW/Qc9380ERy8w49LTljmKfxoB0gWHwzx
 PLa/V3YzSdTLK9MBsm5cNpaqGoraOfte5yuqBcO1qVewABciVG1V86NIsoyOg8d+HRNy
 /iAVcoyyjmEkcsYyYkIpXYiAmeLpWWvW7c1Os=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=3gA9VrOSMoB8ARTOwNzx/FAC2RRzo+UnWgujJ7sE+Vg=;
 b=VacLksgAhJ8Sj+p5vFjYf0xqc/GVRXg29doIpa/FwpGC7Cw9ftj3RMGQYZltqTTayJ
 INhz75rLB6fsYBDmIoyZsH4w+6HFfO31hakONK5erTH7oPgffSTW+yb6H7JkXcJp0VDv
 heZza3+CV//U63S9odONhDZXDs//vMiWw1WpuUGtMTTy2mkvQkAPBBwYv9+UPA3VFuDp
 zykI/N0gYxdmG0Tc0vXBLgaQte7rAMmOwkBqLP5SbiIMa0zGckwKe3hV85sZlswCxuGd
 NIlE7ao4058Ty6Fpnxkx6obGAXajxtN33MOFKoSRYYzfXIdY/HdXNjd1hV3rdLA6UXWB
 +YNw==
X-Gm-Message-State: AOAM530xuQ8GshhvliyHJQ6cRHZIuXFNSMjBqBvr1XxryrPbf+FgjyWY
 uFx/j5Bty0pOfvqVjp3KmgnN/g==
X-Google-Smtp-Source: ABdhPJzFZsOE0KGR4DZBTYb44yP9Xh1LSUaSN1gP1C1igJXhUr+iYyvOxYhrBdP+DIoKni43oJxwJw==
X-Received: by 2002:a63:185c:: with SMTP id 28mr25928416pgy.158.1622046232752; 
 Wed, 26 May 2021 09:23:52 -0700 (PDT)
Received: from 8bbba9ba63a4 (110-175-118-133.tpgi.com.au. [110.175.118.133])
 by smtp.gmail.com with ESMTPSA id h6sm1046433pjs.15.2021.05.26.09.23.49
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 26 May 2021 09:23:52 -0700 (PDT)
Date: Wed, 26 May 2021 16:23:46 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, ezequiel@collabora.com, chenjh@rock-chips.com,
 pgwipeout@gmail.com
Subject: [PATCH] regulator: fan53555: add back tcs4526
Message-ID: <20210526162342.GA20@8bbba9ba63a4>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210526_092355_634190_0CD4EF1D 
X-CRM114-Status: GOOD (  12.66  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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


For rk3399pro boards the tcs4526 regulator supports the vdd_gpu
regulator. The tcs4526 regulator has a chip id of <0>.
Add the compatibile tcs,tcs4526  

without this patch, the dmesg output is:
  fan53555-regulator 0-0010: Chip ID 0 not supported!
  fan53555-regulator 0-0010: Failed to setup device!
  fan53555-regulator: probe of 0-0010 failed with error -22
with this patch, the dmesg output is:
  vdd_gpu: supplied by vcc5v0_sys

The regulators are described as:
- Dedicated power management IC TCS4525
- Lithium battery protection chip TCS4526

This has been tested with a Radxa Rock Pi N10.

Fixes: f9028dcdf589 ("regulator: fan53555: only bind tcs4525 to correct chip id")
Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
---
 drivers/regulator/fan53555.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index 2695be617373..ddab9359ea20 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -90,6 +90,7 @@ enum {
 };
 
 enum {
+	TCS4525_CHIP_ID_00 = 0,
 	TCS4525_CHIP_ID_12 = 12,
 };
 
@@ -373,6 +374,7 @@ static int fan53555_voltages_setup_silergy(struct fan53555_device_info *di)
 static int fan53526_voltages_setup_tcs(struct fan53555_device_info *di)
 {
 	switch (di->chip_id) {
+	case TCS4525_CHIP_ID_00:
 	case TCS4525_CHIP_ID_12:
 		di->slew_reg = TCS4525_TIME;
 		di->slew_mask = TCS_SLEW_MASK;
@@ -564,6 +566,9 @@ static const struct of_device_id __maybe_unused fan53555_dt_ids[] = {
 	}, {
 		.compatible = "tcs,tcs4525",
 		.data = (void *)FAN53526_VENDOR_TCS
+	}, {
+		.compatible = "tcs,tcs4526",
+		.data = (void *)FAN53526_VENDOR_TCS
 	},
 	{ }
 };
@@ -672,6 +677,9 @@ static const struct i2c_device_id fan53555_id[] = {
 	}, {
 		.name = "tcs4525",
 		.driver_data = FAN53526_VENDOR_TCS
+	}, {
+		.name = "tcs4526",
+		.driver_data = FAN53526_VENDOR_TCS
 	},
 	{ },
 };
-- 
2.29.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
