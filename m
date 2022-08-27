Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0A0B0ECAAD4
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Aug 2022 02:16:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=JXLOo1Hhd4+KLAL01Tx5ssRLH0Cm4ykP0aet7Bw/TCg=; b=VoJstuVIIX0hdu
	7B8iK0eZOuH21dmz2Xyh2pljieq2SEExfvp2R2XXPGVvVIszYahS1Hy6mwfCDRdsJBSsAg0Nlj6S6
	+gBTWXs1F1sXYfP7OCfy9jQobuO/wyg+zB4m2qNBlOa/OGkm5rUMNR1A/qUO+LVfCJemrAuH/aMvq
	UMwjR9bCHLYFgPRF/JctSlZ8poRwMH0Dkc5j2ZZjKZLIlWMLwTc2yMjQD38syVqcGplxQiIu3pQe0
	EqgIex/vlSGGiNBlglyl3nfMGI9wIlRN4j7zelXrHBaaZUl7v+zpItpYZ2DR32sFrFoB8emUfmAvZ
	Hnzj9VBnRAE2/K0Ohn2A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRlNF-000NUo-VP; Sat, 27 Aug 2022 02:16:37 +0000
Received: from mail-oi1-x22c.google.com ([2607:f8b0:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oRlNC-000NT6-PM
	for linux-rockchip@lists.infradead.org; Sat, 27 Aug 2022 02:16:36 +0000
Received: by mail-oi1-x22c.google.com with SMTP id s199so4145539oie.3
        for <linux-rockchip@lists.infradead.org>; Fri, 26 Aug 2022 19:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=uCjhCul81Cqo/4TLKT7kgAedULjOyk61ASUhuZAyenU=;
        b=EMZPeiH/04z82Sz/VFDuBELHlTzkmPIgINT2ff17YAKSHrTvlXZ+QU99sboKZxhi57
         MQZkkFCPSVer4BI1MbgrLvzQ+0bJBsAQzodr96aWcSmYi2pkzeeiuGF3jocZtHRPYOKO
         SmrERCdXgHcK4RobplfnOWFuu7trXi9n3PRYBGzRFjJh8APKRUGVVj3jaNTjM/gA28LB
         dTg4HWqPchapi4vAkSY/+FFHGe3aIzkKMhGSxrQJyuFgaTo7/nsQ3Z9uDK8+xcLsVUvY
         vOLyLcKZW+YN7Z7y+cPooE19Ol6LsVABnSvJeSES+vYbhxDQKglbLuR1uEmcBTyNXW6s
         uV4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=uCjhCul81Cqo/4TLKT7kgAedULjOyk61ASUhuZAyenU=;
        b=CeW4ZT2S5+P/3MRG/+3jFDFCKaaK/Ih8inXONOuGTjysknDDWX9w/m06zPD37uptAg
         81R6N+s4PJ/GfPE/JELirKDy1DwewM+Cl4K7IjAld2iOdlRycj05CfxxiQlJ6w3BxUq3
         KFtoennqPmcsz8LruHWLjbNkGkx/q/X/Syj6jcWdq4R95hsiwC20oNh7VNRF8lluzQXn
         Re5nNTcfjfT8JHBlOJ5tKgxnk10KlWpkFDYgwv6e6OAA2ikZA4EV5r0oSGfejDejkXoW
         2qnHw8WWK4smyOTpk+k4PT6s+/7j4+sOETyQjc+YxduAV48Olo8qj62nbHeFbabMuQHy
         JxmA==
X-Gm-Message-State: ACgBeo1B2l7PhIDwA9X1urLcdjXcaqbiaW5t/ZN2ZX3+CvJA7R1++3eS
	CI+H4ckrSwZn2GzXkxJTB4K9ztC4pmY=
X-Google-Smtp-Source: AA6agR7+Q8vvl4O9bkoz/4+31jc8T2hEg+ElJGoMDJGBlVLSM7QSIHxcJTiAp7kfnXNEEIoN2sdklw==
X-Received: by 2002:a54:4e82:0:b0:345:47df:9224 with SMTP id c2-20020a544e82000000b0034547df9224mr2858650oiy.222.1661566593065;
        Fri, 26 Aug 2022 19:16:33 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id q4-20020a9d7c84000000b0061cd208fadesm1925752otn.71.2022.08.26.19.16.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Aug 2022 19:16:32 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org,
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
	philip@pscan.uk,
	mazziesaccount@gmail.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V10 0/4] power: supply: Add Support for RK817 Charger
Date: Fri, 26 Aug 2022 21:16:19 -0500
Message-Id: <20220827021623.23829-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220826_191634_871538_60ED6A6B 
X-CRM114-Status: GOOD (  20.74  )
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

Changes from V9:
 - Corrected devicetree documentation to note that there are no
   additional properties for the charger than what is listed.
 - Fixed error handling on invalid parameters from the monitored
   battery node. Previously was checking for non zero values which
   could miss some error conditions. Now check for values equal to
   or less than zero.
 - After investigating an issue first identified by Philip Christian
   <philip@pscan.uk> I changed the behavior for storing the rsoc value
   to nvram. It actually looks like the BSP kernel and U-Boot stores
   the remaining charge in mAh, not remaining capacity. I also added
   additional sanity checking on reading nvram values before they are
   used to prevent further issues.

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

 .../bindings/mfd/rockchip,rk817.yaml          |   50 +
 .../boot/dts/rockchip/rk3326-odroid-go2.dts   |   26 +
 drivers/mfd/rk808.c                           |   16 +-
 drivers/power/supply/Kconfig                  |    6 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/rk817_charger.c          | 1211 +++++++++++++++++
 include/linux/mfd/rk808.h                     |   91 ++
 7 files changed, 1400 insertions(+), 1 deletion(-)
 create mode 100644 drivers/power/supply/rk817_charger.c

-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
