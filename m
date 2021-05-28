Return-Path: <SRS0=NyFe=KX=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_SANE_1
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 26C37C47087
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 11:16:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id AE73B613C9
	for <linux-rockchip@archiver.kernel.org>; Fri, 28 May 2021 11:16:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org AE73B613C9
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=heitbaum.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fqcLo5qPYsiGV/rTO7rbuV0h+UWJeoQxWZyeqDTtm8=; b=cApZcdr/8EWapy
	9xF11KMjrQzAHx2uY7ZKx7mLacbR5t0G+XFS2OVyqV1/m32ifxFduKxxuz+V6Y2TWeRGY6+pNnzMV
	WZW/LHwZKKBRAmwFXJF1x4+vbUP2a9VDkeUTDemFY6iU8lkXnq4N/tf7btuEeTnf7dIZo7CzzwBbH
	B2Qmqp4f6blY6lHSARK9gTBF8ViksMtYxkkPDcezNgJRPOgn4W3jJuuT5niTkYiMSSCioYbaHaNzK
	tUt/Z4A3uCSEUGzSBXARn4xr9rIfWLO3P/Df3IZNyRqzXzvUEnI/YFjHQ6WuToTsgyFcBNLwZ0Qlr
	IADcSQgy7Y/iHtLnUv9w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lmaTK-00EjR5-D4; Fri, 28 May 2021 11:16:10 +0000
Received: from mail-pj1-x1031.google.com ([2607:f8b0:4864:20::1031])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lmZaw-00EKEw-Tt
 for linux-rockchip@lists.infradead.org; Fri, 28 May 2021 10:20:01 +0000
Received: by mail-pj1-x1031.google.com with SMTP id
 mp9-20020a17090b1909b029015fd1e3ad5aso4195048pjb.3
 for <linux-rockchip@lists.infradead.org>; Fri, 28 May 2021 03:19:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heitbaum.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s9ut0Q0wZ8z+hzL9g91MMtw0Pf9H9Qkn8s5w5ouk4Co=;
 b=bVwvDp8MI5Bsa87/BZlORuZ57LNsXo6lrcNekT17GRjXXkBFxPEb95FqL71pnVHYch
 A0W8KEgMHB6L6YEeygYgr0yfm0QR+95TEe97ReaqfyJko8b/PflKbz0M7CTTQD7MYmTF
 Xjo34UaUnY7J9ROKjbAqftZ+OTn5dhvH1Ekc8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s9ut0Q0wZ8z+hzL9g91MMtw0Pf9H9Qkn8s5w5ouk4Co=;
 b=uVhhRPr4zmzVMagUuZi5YgO9QUdzTkw35PTpwoMSdz/gv/7eARpSsNY5VZcjTA7ReD
 LK7ruUuAt28vaHjYajSHnVlgBSYH23Dh+y4cBV7m7OeR4aPd9nVGCvv4Vr/ByL4jtuxC
 2dRsSTG8AR+7n3JAdhVEq3wUkbT8SUe+qU2gItRuwBE6kv6yRv6Ckz6nml+s87pAYACw
 tIkbWa40Io6IZI65gVHi8tnzrXAGy1RyElace0L1bfXkhnQeCmz56EQJGOWbWknNo2zO
 T/QqDDXVud2Tm74Y5Y7jCGA2s6UZqg+jusg079X7PMp4/AFuqFNb3qzosHGnWZsV1C/S
 vPsg==
X-Gm-Message-State: AOAM532rVFZDUs1u0Tn5umBIT6RQNE9AZbFP71LusHm0qYt9T2DJry4B
 DQO/LyE8VFoaQ9vNg42uPVL0NA==
X-Google-Smtp-Source: ABdhPJx0XBIqXipi4VP2x1mHrVD3VHC/t8RpJhO4DusSyfuXOvGtF/jS0MNxbfwBKODs3HsHT7T2Cw==
X-Received: by 2002:a17:90a:a08c:: with SMTP id
 r12mr3644781pjp.204.1622197197057; 
 Fri, 28 May 2021 03:19:57 -0700 (PDT)
Received: from 96e513df87d1 ([124.170.34.40])
 by smtp.gmail.com with ESMTPSA id w26sm4255796pgl.50.2021.05.28.03.19.53
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 28 May 2021 03:19:56 -0700 (PDT)
Date: Fri, 28 May 2021 10:19:50 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, ezequiel@collabora.com, chenjh@rock-chips.com,
 pgwipeout@gmail.com
Subject: [PATCH v2] regulator: fan53555: add tcs4526
Message-ID: <20210528101946.GA418765@96e513df87d1>
References: <20210526162342.GA20@8bbba9ba63a4>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210526162342.GA20@8bbba9ba63a4>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210528_031959_848068_100BDF4E 
X-CRM114-Status: GOOD (  13.09  )
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

Signed-off-by: Rudi Heitbaum <rudi@heitbaum.com>
---
 drivers/regulator/fan53555.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/drivers/regulator/fan53555.c b/drivers/regulator/fan53555.c
index 2695be617373..ddab9359ea20 100644
--- a/drivers/regulator/fan53555.c
+++ b/drivers/regulator/fan53555.c
@@ -93,6 +93,10 @@ enum {
 	TCS4525_CHIP_ID_12 = 12,
 };
 
+enum {
+	TCS4526_CHIP_ID_00 = 0,
+};
+
 /* IC mask revision */
 enum {
 	FAN53555_CHIP_REV_00 = 0x3,
@@ -374,6 +375,7 @@ static int fan53555_voltages_setup_silergy(struct fan53555_device_info *di)
 {
 	switch (di->chip_id) {
 	case TCS4525_CHIP_ID_12:
+	case TCS4526_CHIP_ID_00:
 		di->slew_reg = TCS4525_TIME;
 		di->slew_mask = TCS_SLEW_MASK;
 		di->slew_shift = TCS_SLEW_MASK;
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
