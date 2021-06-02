Return-Path: <SRS0=F5E9=K4=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-15.6 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_SANE_1 autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13BBEC4708F
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 11:58:04 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id B5694613BA
	for <linux-rockchip@archiver.kernel.org>; Wed,  2 Jun 2021 11:58:03 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org B5694613BA
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=heitbaum.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+fqcLo5qPYsiGV/rTO7rbuV0h+UWJeoQxWZyeqDTtm8=; b=j3VMijAT902EDh
	5lpK0cjpIbpFwQg5hAmPrttBGEA0M0Flo1Vulwh0lByUUB8/1X8TlywBN7w5th7e1R74ODOKQLfkC
	g+wwD7bn74snSYasRoF0vWfzWsyZrNBZvntf53B+EZq7TQAbVwg4m3zXoe2jNQ3UBnAG3pA6GVWop
	J3AnsvEDpWubEmCfizwut8H5jZDlbtKbmAbiVr9BWml6THIP7+5VaPElETOttB+A1lr6Gs3H4tfCG
	zPmQ/L1cmq/1f9rH3o5jeZFebLW5HDgr1bnMo5nb/3Tc4dkONZCYo9yBwAKuBOQ4d0VKnttwhTovd
	JK7hnoAqhygnA2HJmN4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loPVX-003rUq-5e; Wed, 02 Jun 2021 11:57:59 +0000
Received: from mail-pj1-x1034.google.com ([2607:f8b0:4864:20::1034])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loP4M-003kYk-97
 for linux-rockchip@lists.infradead.org; Wed, 02 Jun 2021 11:29:58 +0000
Received: by mail-pj1-x1034.google.com with SMTP id
 l23-20020a17090a0717b029016ae774f973so941972pjl.1
 for <linux-rockchip@lists.infradead.org>; Wed, 02 Jun 2021 04:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=heitbaum.com; s=google;
 h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=s9ut0Q0wZ8z+hzL9g91MMtw0Pf9H9Qkn8s5w5ouk4Co=;
 b=HbqMhFoDB9o5ql6A94HCPeFWNEzFAaio81BcgTmSk5yu3kWBWsCpNElWsglMyc+8WH
 FVKqPfyDWUEth9hSxW+8vYySSvftQPHXBOMMPkgFk9BNb3J7TeiWEwJtH1qOTaq5BNWy
 uSvls9K0LJURCCRfbuutuNKDwIH8AFzhzZASg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=s9ut0Q0wZ8z+hzL9g91MMtw0Pf9H9Qkn8s5w5ouk4Co=;
 b=QbYAbUx8+ac7mE5+AJp4jFrDynGuMtetq0U7CoSADe5cu+ffa8CeShwY6CnByv/YnC
 HTvPNM5J8rU40vaSi4P2t06d1aytx2L2oX0ZMrd/79geYfAHJ9KH9+2CdMiPch79Xbn5
 v5pb0mjx1afaAMrjPUmQl1RBofa9jbR6YXEmey3xnIyD+esDDzRlJkBXoos0AQLAoFqx
 hOtAhyXD4iTcfmlNiudYsILaayusmT42rIkYjCQ7UMi2t6K8Zx2ckk0EbPiMM7ZKVOT2
 QzOPZEzyXqvWdcH19F0RrTXxUEG+I4u40UaWIeo+hExA/Cz3XpYtN3bPL7QI+bppwjW5
 k5Lw==
X-Gm-Message-State: AOAM531mFZiOSj5C3eyyHEXtnmYqMnFLv8XMDeO8D5MqVdZmX9LoJ21j
 s+gdfc5PK9FI9IXfMsyUMIIqYg==
X-Google-Smtp-Source: ABdhPJy5LratcIzMM1/wtvTH7ZK1dsqsXfEOTHho4XhCDhLPd4uo+to8MvlYmGO1Bn7vjmlNM5S5pg==
X-Received: by 2002:a17:902:8c91:b029:ef:aa9a:af35 with SMTP id
 t17-20020a1709028c91b02900efaa9aaf35mr30543421plo.24.1622633392911; 
 Wed, 02 Jun 2021 04:29:52 -0700 (PDT)
Received: from 5f9be87369f8 ([124.170.34.40])
 by smtp.gmail.com with ESMTPSA id w26sm17660269pgl.50.2021.06.02.04.29.50
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 02 Jun 2021 04:29:52 -0700 (PDT)
Date: Wed, 2 Jun 2021 11:29:47 +0000
From: Rudi Heitbaum <rudi@heitbaum.com>
To: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org
Cc: broonie@kernel.org, ezequiel@collabora.com, chenjh@rock-chips.com,
 pgwipeout@gmail.com
Subject: [PATCH 2/2 v2] regulator: fan53555: add tcs4526
Message-ID: <20210602112943.GA119@5f9be87369f8>
References: <20210602112452.GA98@5f9be87369f8>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20210602112452.GA98@5f9be87369f8>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_042954_383347_7E8EBD62 
X-CRM114-Status: GOOD (  13.52  )
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
Reply-To: 20210602112452.GA98@5f9be87369f8
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
