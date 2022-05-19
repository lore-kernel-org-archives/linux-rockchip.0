Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 210ECC433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 16:46:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qQI5YS4YXFxkABYHhEtFVLLX9gkwnIr+EMKNN56ubp4=; b=SYoi+FN61LYqvE
	Rq/GCqjCQjYUg5mp/B6u3d7SAPDIkfbwcPS/sWeWyvsQXgU0UOi/FMd9GNBRPARjiTFHontsSkZ8u
	rdtPFN/Yu2NCACRnxoxoaN8XxS4WQGd9IiD8ouayNCSMdP70ore4OOIs2Zwkgy0htgjbjzblBIEDC
	DRhhwQyLMICL6otpjuzmQzrCzEVM5whgfrVJBXZdKlj+KqBbqOf7kJzD2DZsQqvBWaX6nfF72LEOT
	h3R1kWfJFpll9LC+UDbrf1XSdrJu2q9HLvlnMblkcPavJ1bvNSAVY2a7dLYynXwSlQzilSaS3u98Q
	VRaNziJ58WBVmvd77I2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrjHX-008SlM-7q; Thu, 19 May 2022 16:45:47 +0000
Received: from mail-oi1-x231.google.com ([2607:f8b0:4864:20::231])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrjHT-008SjU-Oe
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 16:45:45 +0000
Received: by mail-oi1-x231.google.com with SMTP id e189so7126597oia.8
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 09:45:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E3vPikjMrJ/sOxGD67uc6AI/57xp+LEL2ERbhK7XXUA=;
 b=qGdA6buGE7he5OAvsFwc9+qzJWFYexwGF5N1CS+dhRpoci7jYQsQ5GVUDiyq3B4iUE
 ig+LkclsIaSCkgNUaGAF2v16PEkkGdX0eZbIkerk0w62jk+E4qc5OgTUYRwOCiMYciUh
 WF8VhG0X2J2kOCKQEXCGPgG8LUfYf+LbfF1bbMlcDgjqhWX8x9Z2AgtMVqkQjUdDyzVN
 oSt0RisIkZ8gObHNB0e1iC9c6ef1G8t4S4BHvefTwM4VrqhzgEb6qWUaucZX7n/hrFz5
 BrWh7ipqLBLCJINsrNEy0dRWAlA8iVWBojZ0TaCiUGIS9ltDfp01+VThDxyczs1HiPAr
 Shfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=E3vPikjMrJ/sOxGD67uc6AI/57xp+LEL2ERbhK7XXUA=;
 b=UmHKD0CJrkuexebXweGr4iQATGF0QkOfINEhA6xd1qK3OdQedY2j8wbiYHN7m1Rkvi
 zoaV/Uvyg7f6iDDWIolM9vsjiYHQEog+IPz0WFmdJCqhcLX3OVCBmpMbjwQs1rtjN3MI
 AFXpvgARQEraCkleC0QhVUsF7pvYT7eu7XfRIGThFw8vtI3s4kIxH7CqAeoh7VcoqFvE
 mk5JC3emf6Z4jBSmDhEveCNT5Zb4JGV6gS4dEq/y99tPZLG69rjQHPV05jJOTchVtKFg
 vVobbBA+lU4DcZMhdYqoE2AIibq9bAaOhlcEzg1BET+FmVYPYIZww4K2FUKG0UYo7lHb
 iW4g==
X-Gm-Message-State: AOAM530FE+mU2Om72fzKMeP6yGGHWVSNDn+f8JHysKdB791ubAxA2Yd5
 I/Zs/m0QFeHcQufRmtwSstG4HsgIAN7Ozw==
X-Google-Smtp-Source: ABdhPJy1+PyYfk/d1jWWt3rldvPYaJPRzGumQAEyDKvEBFiAqv2WwRd7oKZEpHxWHaa2ZJCvYkIrBA==
X-Received: by 2002:a05:6808:1250:b0:2da:39df:1f92 with SMTP id
 o16-20020a056808125000b002da39df1f92mr3265027oiv.27.1652978741858; 
 Thu, 19 May 2022 09:45:41 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 i20-20020a9d6114000000b0060ae5f10973sm575601otj.15.2022.05.19.09.45.40
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 09:45:41 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, lee.jones@linaro.org,
 robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
 sre@kernel.org, jon.lin@rock-chips.com, zyw@rock-chips.com,
 zhangqing@rock-chips.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4 v7] power: supply: Add Support for RK817 Charger
Date: Thu, 19 May 2022 11:45:29 -0500
Message-Id: <20220519164533.1961-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_094543_877335_3F996515 
X-CRM114-Status: GOOD (  16.10  )
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

Changes from V6:
 - Updated devicetree binding patch to reference the required
   prerequisite patch in the correct manner (relocated it below the ---
   and pointed it to lore.kernel.org).

Changes from V5:
 - Renamed mfd-cell from "battery" to "charger".
 - Added note for devicetree binding documentation that it requires
   application of an additional pending patch (to convert documentation
   to yaml).

Changes from V4:
 - Massively redesigned the battery driver to improve measurement
   accuracy and reliability. Driver now checks values every 8
   seconds (mimicking BSP driver behavior), or whenever a plug event
   is detected.
 - Removed OCV, boot voltage, and boot current as values were found
   to be unreliable.
 - Updated first-boot behavior to perform a "best guess" at capacity.
 - Added ability to calibrate columb counter to full state of charge
   when charger reports full, and added ability calibrate full charge
   capacity when battery discharges from full charge to minimum
   voltage.
 - Expose state of charge as capacity (in percents).
 - Updated storing of values to nvram to preserve compatibility with
   BSP kernel.

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
  arm64: dts: rockchip: add rk817 chg to Odroid Go Advance

 .../bindings/mfd/rockchip,rk817.yaml          |   48 +
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |   26 +
 drivers/mfd/rk808.c                           |   16 +-
 drivers/power/supply/Kconfig                  |    6 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/rk817_charger.c          | 1157 +++++++++++++++++
 include/linux/mfd/rk808.h                     |   91 ++
 7 files changed, 1344 insertions(+), 1 deletion(-)
 create mode 100644 drivers/power/supply/rk817_charger.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
