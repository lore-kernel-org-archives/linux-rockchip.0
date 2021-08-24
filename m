Return-Path: <SRS0=/gBD=NP=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-8.7 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT autolearn=unavailable
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3F2FAC4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 04:10:18 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id EE67E6125F
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Aug 2021 04:10:17 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org EE67E6125F
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=lBvG0R6xUWeBVMAHV3IWiR8S89KHQj8q4kJ0gJglJ3o=; b=fLwYNbpj2FIG3R
	cTYXU0smqGQFEsvqXIKQXe2FhcCtsM/hhHtPBl7g/ISXakPyNvIJvYJFYBtnexOOCh0mGdNXO/Hem
	ibC5hTa5nxDUyQrIxygDfkYyPPcVdwEtb12ONqrpmG12s06AGH5W+qBYLfCyRk1UDbHhiiA9b+R8H
	ia/aW5WruLFTlRe+gvWTM0+32wdmDm9mnEMwo151ZKwLnQWIvePrVFEUicUqDvC3HfcPxCHArBlyf
	puDT8ylpIfV4F5ANZKzKxk7cEbz8K26i9WaVfVxweMDz9Hi9Yi1CEvKCVacgwXf4tPyQbYtYLk1vk
	KmNsAJi9gXUaDOXzAdqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mINlL-001UeH-AA; Tue, 24 Aug 2021 04:10:11 +0000
Received: from mail-oo1-xc31.google.com ([2607:f8b0:4864:20::c31])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mINlI-001Ubt-CA; Tue, 24 Aug 2021 04:10:09 +0000
Received: by mail-oo1-xc31.google.com with SMTP id
 o17-20020a4a64110000b0290263e1ba7ff9so6089742ooc.2; 
 Mon, 23 Aug 2021 21:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v7s0jc31HPLAs0gXkmeRMnAPIKh72hl0mqHTuEnX+aY=;
 b=GGBV6KeWVbtgT6Mm6iQM27J2B036M/xQ9+GGgBC8Ru/8KZuIgTnoGtcmkUpZvpKDUk
 MY7xk5FDUfSWmdhgiCTKSFtVbK+UuvSV8wW3w7sIjYUK4YVRcZbli7PS4qIQzpXhNHFZ
 ZsXR0kXo6SVDk7Fqdb7kAw32MdGSe6MdoFBT47WCEvWd7v+7ajknW6q8P3vo5E7B0kqw
 r1huv6Te0ajpcW95LLyb0oBDyEd44jE4GKnOGWbXZNP/70d0DHxjXR6qHy0CzDImkST6
 SdwbQhYPvWu9WFLa4bLumCYJMboK9z3UmOKxbhl7j46GbibsPENkzb0P2HCyRa0Lz1oj
 G5Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=v7s0jc31HPLAs0gXkmeRMnAPIKh72hl0mqHTuEnX+aY=;
 b=h80BnNzTGSbprkrsbyiy7cxoF/Eu1Nk4UjURGWvvmYFu0qPKLBql3DhKKWOZ3fuUbi
 TpnVNsl8S/UsM3vjbc0q65EuyvrSNQxwtN3IM+P6/tLqvqM62+qEAG5St3KTDqIRxzfP
 2Iv2hg7EB0r4Vy70wh8cCfbQl2R+KTx9/VQaOunskTlQ3a8e56a3X3GaU8M7NrzrbOmC
 7VAl5yQ3/cy4/jXeBqzZBGCR+WnFHhjRNdmK4fREULJLDVJxqcSGTte/8HzHycK5YAyS
 pd0mpEu1PtyKPanNTf/V+KdChQINmnyGrYLOybuxxhUJTRWg3Cl63cNq/cGI4LPBhich
 pnEg==
X-Gm-Message-State: AOAM531ypcqv+g9oILxaRBi5hsvulIhQlA8Ao2DzXZMelbB7BPhbqJXj
 nEWNAkZa9LRz3A+bI4YzmDwUF7aaDiI=
X-Google-Smtp-Source: ABdhPJxDcvzCfgf6iqIMItm82HL8VmZJ9GdO4AcSWiZgXL4fvrSMaJlYxIM5/kSCe+gZgYmouKRVng==
X-Received: by 2002:a4a:4484:: with SMTP id o126mr5055737ooa.90.1629778202181; 
 Mon, 23 Aug 2021 21:10:02 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id i19sm3922818ooe.44.2021.08.23.21.10.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Aug 2021 21:10:01 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de, sre@kernel.org,
 maccraft123mc@gmail.com, devicetree@vger.kernel.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v4 0/4] power: supply: Add Support for RK817 Charger
Date: Mon, 23 Aug 2021 23:09:51 -0500
Message-Id: <20210824040955.29112-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210823_211008_467067_B428D534 
X-CRM114-Status: GOOD (  13.68  )
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

From: Chris Morgan <macromorgan@hotmail.com>

This series is to add support for the Rockchip rk817 battery charger
which is present in all Rockchip RK817 PMICs. The driver was written
as a joint effort by Maya Matuszczyk <maccraft123mc@gmail.com> and
myself Chris Morgan <macromorgan@hotmail.com>.

The driver requires some basic parameters be described about the
battery in the devicetree such as the maximum capacity, the minimum
and maximum voltage for the battery, the maximum charge current, the
maximum charge voltage, and the value of sample resistors and sleep
currents.

The hardware itself contains an ADC capable of measuring the voltage,
current, and temperature of the battery (though my implementation of an
Odroid Go Advance lacks a thermistor for temperature). It also contains
a columb counter, registers for tracking the measured voltage and
current at boot, and a few bytes of nvram for storing data.

Changes from V3:

 - Corrected issues in device tree documentation.
 - Added additional logic to battery to correct for columb counter
   drift when the device stays plugged in at a full charge state.

Changes from V2:

 - Updated devicetree bindings to use common property units.
 - Removed unneeded includes.
 - Updated rk817_chg_cur_to_reg to make more legible.
 - Simplified formula for displaying calibrated voltage.
 - Updated power supply type to POWER_SUPPLY_TYPE_USB.
 - Implemented get/put_unaligned macros for bulk reads and writes.
 - Changed numerous dev_err() to dev_err_probe().
 - Call power_supply_put_battery_info() at end of probe function.
 - Removed unneeded whitespace.

Changes from V1:

 - Fixed a CLANG warning regarding an uninitalized variable.
 - Fixed a CLANG warning regarding a pointer as a bool value always
   returning as true.
 - Added Maya Matuszczyk to the Signed-off-by.

Chris Morgan (4):
  dt-bindings: Add Rockchip rk817 battery charger support
  mfd: Add Rockchip rk817 battery charger support
  power: supply: Add charger driver for Rockchip RK817
  arm64: dts: rockchip: add rk817 charger to Odroid Go Advance

 .../devicetree/bindings/mfd/rk808.txt         |  38 +
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |  26 +
 drivers/mfd/rk808.c                           |  16 +-
 drivers/power/supply/Kconfig                  |   6 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/rk817_charger.c          | 959 ++++++++++++++++++
 include/linux/mfd/rk808.h                     |  87 ++
 7 files changed, 1132 insertions(+), 1 deletion(-)
 create mode 100644 drivers/power/supply/rk817_charger.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
