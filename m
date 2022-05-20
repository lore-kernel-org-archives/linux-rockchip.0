Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D4C1FC433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 May 2022 18:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UEOr9fco/QEe/1urjFRNaxLkm+SjEDt7L+k0kaNtgQY=; b=sfRaiSRP6LUxmA
	60K0mgHr85YcEXjZ9ysob6XjxtM88gePYZG53TlEFLFfwj9PGzmCK+ubpA8bBS2gFZY34ENquqlqB
	4WhhFQ5PlyQGazMdmVugIVWa9E8nVtvb8LAJWIxYTdiIveBoXDUbId7LtozBMAVGy3UyZHzsBvN8H
	WAQtpK9TnYrW/JU2koHvVdHuzC05MPrlFBLGE3WVNOceWdsGkm0q37rs95U4hSm0POCwqbwVIu+wf
	wqecFWDe4nd1/sLms28VRCinJ6mbPAjGLWMxjSZwkwa3pVlkvtHJtZEGGWP/RO8vKRUj6JtrWvVrS
	k7FjfR0sttAmCtzOfpYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ns7QR-00EA6p-Os; Fri, 20 May 2022 18:32:35 +0000
Received: from mail-ot1-x32e.google.com ([2607:f8b0:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ns7Oo-00E9HS-Bn; Fri, 20 May 2022 18:30:57 +0000
Received: by mail-ot1-x32e.google.com with SMTP id
 30-20020a9d0121000000b0060ae97b9967so3024377otu.7; 
 Fri, 20 May 2022 11:30:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U5IbhIIo2Ex15+PJPCMxKef+LbGdFyZTyufuHty8qHo=;
 b=iq9/6y8GI/TnANp1RCAraEui+WiIgDl/46PyKF2k4/voiiysrmTm5qwem2BanLUGsZ
 v+kY1rEeCX8u92xfYlq7q1DYOqwJSOTsgKnY2N4MjHmnbBwhP7jtNWtFHxMCt2jG6wue
 Z6pNHGIZVLFG2BpQQdvoLKHuoLl7ziApc7pjmMNTh5GKkhk2KU7H237F7hnbyPYogH7v
 Ru7lde4tDF6iMYl9ZzQFfktw6Hj9fA5VlJnzhySo7/cq9wYSiTlVoUOfotB7YJVYu49d
 K1dgapC+aXcQkUaFmKB2nhLSG+s7OOj7UCVeQ8xRGuhVnf/v9iLV69I9A8IUz6S5KDtm
 SEng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=U5IbhIIo2Ex15+PJPCMxKef+LbGdFyZTyufuHty8qHo=;
 b=2YL+1cmBTy0RtV3O7oOrAb1Dh6kCDAAHC8Pc63cCRaPqXaRCHbKeUlJr/aEGMeSvIK
 X8tmxfbFRCnnqDsuXYSUbQj0lLc06S4Mk9DhcLiDh+d9LBLpc3u5GrHyEa9rB4gSq3g/
 avzq2nqYZnWWvh9eQqIaQXclUFGS5wUGRNUXQ9NSvsxo1gYJVL20wiDuM/EjlkH3Eiw9
 tUGiWZ0GDkdbk03urV5PjCaxFYWkSfwzklQjREtYZW7pi942gf6HjdRpiCjcybnbR3Ys
 F9xtJskhu4S1+uuSpOU5uKsHWKZOQ+GTXPxzDqbMcsTfAw4GQnSvbQlXbH+u7go+xhAr
 Itsg==
X-Gm-Message-State: AOAM532PrCxTS/8oH8d9VTtdikzlTnVWQhsFuGNKCpRlQRTsTjhImHbm
 xfujvViEkTkeRzjVGErUy/4=
X-Google-Smtp-Source: ABdhPJwzaUYgQUwCeSVbbocaJLwqMJOJvR+2bwzwy/QIN/IXIC0gDQB0P3pkZezbWrVsPgHmh03J3g==
X-Received: by 2002:a05:6830:9c2:b0:606:1e0a:cc8d with SMTP id
 y2-20020a05683009c200b006061e0acc8dmr4475147ott.265.1653071451235; 
 Fri, 20 May 2022 11:30:51 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 w12-20020a4ab6cc000000b0035eb4e5a6d0sm1339467ooo.38.2022.05.20.11.30.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 20 May 2022 11:30:50 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 lee.jones@linaro.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de, sre@kernel.org,
 jon.lin@rock-chips.com, zyw@rock-chips.com, zhangqing@rock-chips.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [RESEND 0/4 v7] power: supply: Add Support for RK817 Charger
Date: Fri, 20 May 2022 13:30:33 -0500
Message-Id: <20220520183037.2566-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220520_113054_521045_53ADDAB9 
X-CRM114-Status: GOOD (  16.53  )
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

Resending due to missing cc of DT mailing list.

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
