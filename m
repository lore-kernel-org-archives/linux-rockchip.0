Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26AD7C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Apr 2022 21:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=UpX+mWrJRkXBMFptV39Q9NGgIItO309gDWfpH+sOCC8=; b=jKHmUsGasVA5xt
	00eAfuzW2b3BEXe1boLXA6MVX5QOD65DbwxcZ2d6kX4VcfWSrK27jAsLVlyZsZ7fpbctzjdhGAfNM
	Jrp49bsFvFNDDh8QyzygnfINADdrlRUyWr5JmFr5KLxRHTUCqpwuSvsjJfjZYBIJnIl6qQY96TaJ/
	fyCKmZLKBMd1+JX8fFiZZh5jCNGCDJNiT8O0onhd8vBX0K023G9WoX93Q2Fsu/aM7P3RMYai17QIi
	cepBunYurUFYGj4n5JZ4zZkPTEBWhcguuNVlZU+d2FfeFJN2Hoo/zJig6q6k1Xaj4zYppLzDe/HkX
	Nza/ARC3xqSv+2HGyiaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nbUi9-00GVbf-6C; Mon, 04 Apr 2022 21:58:09 +0000
Received: from mail-ot1-x32c.google.com ([2607:f8b0:4864:20::32c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nbUi6-00GVak-9Q
 for linux-rockchip@lists.infradead.org; Mon, 04 Apr 2022 21:58:07 +0000
Received: by mail-ot1-x32c.google.com with SMTP id
 88-20020a9d0ee1000000b005d0ae4e126fso6156268otj.5
 for <linux-rockchip@lists.infradead.org>; Mon, 04 Apr 2022 14:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+425n+823c6MPZV7nk0SKDFGg4SE61xIiVxspYwInXE=;
 b=oGKcuZA32wussQCmvJJTxirZwwAwPMk1TWARCef+uIw0puFG4UC8BHrHIX2OCuLjrt
 4ZyJdoqn5d8GYSxvViac/z+6EgoBDInT2sBfEy37UXMXTXAhH4PE3MMe/FUXas3V3cZY
 6qPvKtvYta42co/ZFgKTyfbhZakOhWOR8FLtumw4O96k/E5C4ZLBUYzOtakw6vPpCzHU
 FXexdd21cZEN0SwDUAQFuIX0mMlvm2dH76T/oFKWegybg+DoHWkOsp1lG64yNmc8Yn0P
 YGidriX6cKmL7y9+drLq39S250Csge6e4UVLY51O/3QRXWPQYxWolNEmOOxkqPmCAcHR
 d+Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=+425n+823c6MPZV7nk0SKDFGg4SE61xIiVxspYwInXE=;
 b=w57ODjfYGdYkpyPCz9RSwypRDsVaFMlS3ONuegjANk0oazbMHrcN6N2eemS8dwEf5E
 wMZ2YqbtyVizhubPj/kvAV7yZjg1fyhwQ05XiPI4xAgITCA6g/sb5x57ElL5a7LIDua9
 fQR1g+9HqVMKbhOKB/1yAoNGfdI4atOV4SnEvLMqaPI+dxSPZ4crvFjds9BY4rltLqvo
 Vedynt6TkFvPZRNOP59pGClFCy4xor1b8uSx5sQ3c2/+y8dUstSPBGvqkfxDAyl/s6Ya
 hqdFxlkBNPTY2pHul7xiEUn+IIjQzIf3MBpnwAHpmLEEXDO1Onoxo//MV0ADz0RNN/1c
 A5CA==
X-Gm-Message-State: AOAM531FnkOlsvEc20Mu7HFeXsLYU1az/nuYKAbklyXTFUtTfEe0wCLS
 Py909qfNB/ivUVztLKMaaUA=
X-Google-Smtp-Source: ABdhPJwumvcXkxofJekXw/aZRO2NgDQHAf4uX5R/O6ZrJAsHIOpc9jrXlcuPcVPVwf+upE/bI+Crog==
X-Received: by 2002:a05:6830:1681:b0:5cd:b61f:aff3 with SMTP id
 k1-20020a056830168100b005cdb61faff3mr140035otr.228.1649109484168; 
 Mon, 04 Apr 2022 14:58:04 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 r3-20020aca4403000000b002ecf4d70c83sm4646402oia.27.2022.04.04.14.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Apr 2022 14:58:03 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, jon.lin@rock-chips.com,
 maccraft123mc@gmail.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 0/4 v5] power: supply: Add Support for RK817 Charger
Date: Mon,  4 Apr 2022 16:57:50 -0500
Message-Id: <20220404215754.30126-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220404_145806_377161_D2383491 
X-CRM114-Status: GOOD (  14.74  )
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
