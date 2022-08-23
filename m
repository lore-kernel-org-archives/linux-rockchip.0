Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 57B52C32789
	for <linux-rockchip@archiver.kernel.org>; Tue, 23 Aug 2022 19:30:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yz1LRfHSbBHiu8uV3rztccaJ4GyLBBNS3ud70N2+JOU=; b=A3QyfRd8Rm/cpZ
	dOEHHobuQC2i2vHBQhcPaRXZ46N7oAdH6MnjHI1o69GocmFSMDIEoKgScmViqjwbUD7KSEI1y9X9L
	UE+wnHyD57ob1O4ZHf2e/ZIib+T9LkCPRY1G7F0vutkmFlICs0PnEEV2VBhI2iu26YtKk4wGDBdww
	UmKF6y0UmldkQ7JmxRXZnbbXT5JecYOm9kSoilPrMFMeiac5dF1sig4O0UngkPgSe/dBapzUtOoqu
	32TCJJEBL52yaCpfZwtZ757MorMmb+D4O2jKqSEwSzN3CCRiTCBfCI3nkL1zCSROhKUcTWZyq4/hO
	IDeAs/vGkwV6RelBF2hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQZbU-008aoz-A3; Tue, 23 Aug 2022 19:30:24 +0000
Received: from mail-ot1-x336.google.com ([2607:f8b0:4864:20::336])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oQZbR-008anw-LZ
	for linux-rockchip@lists.infradead.org; Tue, 23 Aug 2022 19:30:23 +0000
Received: by mail-ot1-x336.google.com with SMTP id 92-20020a9d0be5000000b0063946111607so1129674oth.10
        for <linux-rockchip@lists.infradead.org>; Tue, 23 Aug 2022 12:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=EKugTN3Kgin3cEbbvkgL1cX5qdU5yshSaKzBh9bfce4=;
        b=NkXPFG7GqlLUaoIuid2nLkc/iAg8Grc8gNbkaxBg1esX9hI9+Zov6ugtHFvHcY5TKr
         yS2zPgEuQegOEq5l0nX01RmjcIEHxexzGGKchbDVMWKmpBodAnEJMv5PlEyETT7GePS0
         oEHS1fpuPnBvhiHqDC8VC6m3ZsezjSMVICWXWShXBUJkvpltURYB1RRsktms5mQSDESR
         ejd5BM8QHA4xnQgSEgjWOuKNOZfwScTlHM3nqfK/dvRnC4jQqCy8eAJv0L03U/QUnqS9
         yC1zowlsSdXY6I5WIu3JNVdrr8WLCv2Ra//aJkm1f9OpYJLsNxbADxVWjB6EkdEzRnqM
         WK7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=EKugTN3Kgin3cEbbvkgL1cX5qdU5yshSaKzBh9bfce4=;
        b=deVTbPL12hb7slvOLsbDLta0pbAYVOKVTLLQjsMueLH1UD6nyQbkRWnvDR/t6QRl7X
         XDzoQheJJo6Nlrt/BLdUqmyq0zwt7MNQwmdtkiDRcGbKXWAxd2Eh4INY9tqgYvEKTgI7
         wpHTJvFSJPiIFIROkINpJSoIsI/LzRejcc+Tkb///DzOkOD5hsibM17iW8VsGl96Kw89
         T90Gym/rqiamxu/eO1vFTIRD8aYBHlJ8QuDLK/FoMCpO3zKFTJxSPRLD9EmFFj48bTLi
         Nm9Kh06uguR0vACelbn6jt9CtGFW4HFnk4lcm9AS97wA+EWHjWneIyulmzE7BwawWXGE
         plbA==
X-Gm-Message-State: ACgBeo3v2/Qkbax8yW34cqY6VtFzXEzn4hqmzI7X+MQfzyypxP2NhVl3
	dvonWRuZvAxATzWucz8Vfk/zfuU18aQ=
X-Google-Smtp-Source: AA6agR5rMWimknJ6mMd5f6g7a9XsVC+kNeOa1YgDM7DbPb5CP72kjxLsZiVs6SRKbXRrUhF0WRAccA==
X-Received: by 2002:a9d:f43:0:b0:638:c3c4:73ee with SMTP id 61-20020a9d0f43000000b00638c3c473eemr9471672ott.186.1661283018864;
        Tue, 23 Aug 2022 12:30:18 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id f36-20020a056871072400b0011382da43aesm4070372oap.16.2022.08.23.12.30.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 12:30:18 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-pm@vger.kernel.org,
	devicetree@vger.kernel.org,
	zhangqing@rock-chips.com,
	zyw@rock-chips.com,
	jon.lin@rock-chips.com,
	maccraft123mc@gmail.com,
	sre@kernel.org,
	heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	lee@kernel.org,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V9 0/4] power: supply: Add Support for RK817 Charger
Date: Tue, 23 Aug 2022 14:30:11 -0500
Message-Id: <20220823193015.10229-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220823_123021_753026_53A66D36 
X-CRM114-Status: GOOD (  17.40  )
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

Changes from V8:
 - Updated copyright notice.
 - Replaced linux/of_gpio.h header with of.h.
 - Changed to use devm_delayed_work_autocancel to manage work queue.

Changes from V7:
 - Fix error reported by kernel test robot <lkp@intel.com> in patch v7.
   Problem appeared to be related to incomplete removal of fields I
   used previously in debugging.

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
