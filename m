Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7E5CBC43334
	for <linux-rockchip@archiver.kernel.org>; Thu, 21 Jul 2022 16:17:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8W+9QIqXQVr2puh/UXOoyDq9eTGge8wxecu2NM3S5QQ=; b=NCn2/hrU2CHLuP
	wdppsHkZ5kGcFFs9kX43YENiRn7VDLbj8W+7EhfwbT0y9aZtNqtrErocvwNax0VBFemuovJAthij7
	2IG7qoVQfki3uL09Uyx9iK4aGMKIZE9ez8KzvWPV4hElWDF0cvksNhAw2bJzwicGOVuTSMcyFNdiG
	RT3Z4CJv9feEpaplam5F0BdaIes5UyWb1naAxlig1vjZ7KIYTwaUoryLowff6FGH7Sobb2eVu4aTH
	Vm502LxsEnx0jGJinoI2CjYQaJUF29kmmPo8xudkTkuiRmCdHzdOK2IOyJzS+KicI+sd2ENwbhUKz
	1rXK8BlLUxhMAyva07Iw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEYrp-009o6g-J0; Thu, 21 Jul 2022 16:17:37 +0000
Received: from mail-oi1-x22b.google.com ([2607:f8b0:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oEYrm-009ntG-1x; Thu, 21 Jul 2022 16:17:35 +0000
Received: by mail-oi1-x22b.google.com with SMTP id j70so2550998oih.10;
        Thu, 21 Jul 2022 09:17:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CrienpmK/JKb5On59DyVnzISjRJ+QMGVIPqHV8+Bi4Q=;
        b=dYF9wX2oQ+ldXB4tLLYM//Lkd5iPcHecBMElWfyevCQdOvjwUaBC9Kmx0UbGQ6xhp9
         1cwRiNGqNlKoEI23LvoT0cFoTWauMidgaMdYpo/eGAoK9trl9OXXIAE3Dut4YgFRDHZI
         juicmpduQTgt+SA6DZT2+y6lqMiGjCp8tH/bDBIdDW0y+WbQx3tkTMCdhXgr059E2LPd
         oBtuw0KDNxopqaWi76N9i+7kQ9tuh1zYYnnT6ygSO/naAbmksw3a529vI8Pzk1v5NG8f
         QKENjDWch5XhUMoqwQJmNJXkgw8oXSQOeMHZ5vcW3lrbNujcb3TmvURXiasTxtDyXMWq
         wK5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=CrienpmK/JKb5On59DyVnzISjRJ+QMGVIPqHV8+Bi4Q=;
        b=2H6+AreAetXYiXW41VT+dOhm1VTBrGZqSNB5/4ljLJfdhXX4yJYsL4nUOKKBsqq+D0
         mxSGEnsp1pd/JA1uGWvVOfqMQB6C2cBRmrYL/vATmt75twnW2PFLNZb3bs6zbkpl6y7r
         jYvn9SEA9CZe1yjkg/smyXn8YtYPgVLWuP2TsWEbsXk8BcDYdAEi5o7d+CC9FA13vTsh
         w4srwUg0TfTXkyzpbeBRtB13FeR+0re5DGmNUgng3SddZN6pF2SJGMTEOdLdxrzz+HkY
         MDA0H+Vz8KATVMiPzlu/7f/02g1F5R2Wi0lmmqxfpOq7JWJ+DZJm4il9f9wBzHnra7GD
         1g2A==
X-Gm-Message-State: AJIora9i8Ut71bz84dKT4RxHMYf8aLHpXU8+zWs05h2AwMrxAu97gAw6
	BGKHEHQgCXbf8FufFGqLf2+ZRW78NKM=
X-Google-Smtp-Source: AGRyM1tHbJ4+ofYcRKxSdc0KNBOCFnPuletJT8RsffzqLtINpk0XtbpgjU74DFe2TWs1gpeHLHw9vg==
X-Received: by 2002:a05:6808:18a2:b0:33a:afa5:9f71 with SMTP id bi34-20020a05680818a200b0033aafa59f71mr1134393oib.45.1658420252341;
        Thu, 21 Jul 2022 09:17:32 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id cy18-20020a056830699200b0061cc06a886csm951732otb.9.2022.07.21.09.17.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 09:17:31 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee.jones@linaro.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [RESEND 0/4 v7] power: supply: Add Support for RK817 Charger
Date: Thu, 21 Jul 2022 11:17:14 -0500
Message-Id: <20220721161718.29800-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220721_091734_144607_0A08DA3F 
X-CRM114-Status: GOOD (  16.16  )
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

From: Chris Morgan <macromorgan@hotmail.com>

Resending as remaining prerequisite patches are now mainlined.

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
