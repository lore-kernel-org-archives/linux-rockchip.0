Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 56F89C433FE
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 21:21:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J9RoW7WLc7RLZr6xqAYqOiv+uqEx5MskYdatl63dUbA=; b=3DtgKv283PyVSE
	YWxvYVsotbDVsXJh4IoC9ZfA/paom7pBstzzSkVVOSVsUphLcoXi0T4nV5x0dK26Y4kSN5v9/flrq
	XtcWOBcuZ9+KRFatiQaVjWxF/otItVk7Qj5kB2SLwMRrdRvM9y87eQwbhxuvuEkR1ddJE/e6q/rJi
	aEvBD06C8JSS/Xp5aba+K9aDKTGFhN1FR7fkEIe00xqFd5hc4OZHOsfYdoTtWvrmZyAXdpU8M9bEo
	JwEbqyFKtR1Sfycd9bhkEpivACKcHvs0DhKzyN2CtpbM2/opykbstaVt1M91yol3irIcjilIlSpJi
	19GmG2deECk1jFpXsm/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncw2s-001Idq-Po; Fri, 08 Apr 2022 21:21:30 +0000
Received: from mail-oi1-x235.google.com ([2607:f8b0:4864:20::235])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncw2q-001Icw-D4
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 21:21:29 +0000
Received: by mail-oi1-x235.google.com with SMTP id b188so10089747oia.13
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Apr 2022 14:21:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gltze0pCc/NirzNp1/FXUGTqmLgu6B0jDaqvD1I8iMY=;
 b=Dsp8rPtvWcwrYbvDl/IpmrpoN6QIEmTRWEdXakNertRl/mfpix0mxJmKdY973AoJN1
 Vps6htKjHnXZbVnEO/634VisrzpKBlF57npnLMl6h0DpZZytdeAOpZHolf++InLrk3Sx
 3iysc65T1mZFE+XQN+Ktkx0kfPXnfgeoM9vvHVXLT2CB6RZGx3oC+AbdnKBqUIEvonQV
 nX4XaWfk7Q9qGFuAgWJ9QiI1CFD1/grR2wJpLjFQbhbol0dCwMVSDyuLAwrT6cVw5Hu1
 8VzYXn41ON275bPG9JttAeqofU3jfU0hkKWm7x4ip1kFxY9ydGSvL3E+pvLRluE1h+le
 /xnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=Gltze0pCc/NirzNp1/FXUGTqmLgu6B0jDaqvD1I8iMY=;
 b=eWLC7/z/jsqRusy/iK+UaNpMd1d5+T2ud0VrA24/7AVvRYvpCZhYrU3+zGQsCDgYwR
 4fuffZ13dSiQUAsyGEYeKp8+24f+c6EEOd+JVsm/L4I1s0xBVN08/BXB0ijtDsxUX6qa
 HyYZP7eW13ncddPU483N1WJXtpDlAeEdrhqyDCLMNAvKkFL2dp9OE67vy1CRcLWhA0YP
 2VbDsDdceQPmEIM4ngs2Fv35rS4V0Hhz94KpodPyQfc5lNiXm7ChMJfZloRSUR8sj4E8
 u91OcvsI2ENbICWnYzkDonky0KuM7xeoqTYE+Sa+LGpeS+QT6kkYYmknSjDvgeiFQ9Av
 KOng==
X-Gm-Message-State: AOAM53223kjWqnhC/0gZITfvQY3b0XM75iffod/qqnGI6j10PIkrmZz8
 DYtgzVYCJCTPuvwQhvmpEwBEa24xamI=
X-Google-Smtp-Source: ABdhPJxlGkyBIkvgx6uUXbRueFBanliWUvsag8uFhEt41803os3z3qj2sveWxbvG1DJo8cegwv+pRw==
X-Received: by 2002:a05:6808:f11:b0:2ef:1a43:177c with SMTP id
 m17-20020a0568080f1100b002ef1a43177cmr793769oiw.73.1649452886552; 
 Fri, 08 Apr 2022 14:21:26 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 ep36-20020a056870a9a400b000de98fe4869sm9950375oab.35.2022.04.08.14.21.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 14:21:25 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, maccraft123mc@gmail.com,
 jon.lin@rock-chips.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4 v6] power: supply: Add Support for RK817 Charger
Date: Fri,  8 Apr 2022 16:21:17 -0500
Message-Id: <20220408212121.9368-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_142128_484933_E2E65C8C 
X-CRM114-Status: GOOD (  14.98  )
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
