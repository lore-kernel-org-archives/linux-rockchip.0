Return-Path: <SRS0=1ikY=LY=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,MAILING_LIST_MULTI,
	MENTIONS_GIT_HOSTING,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,USER_AGENT_GIT
	autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECFBC11F65
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:10 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 29620610FB
	for <linux-rockchip@archiver.kernel.org>; Wed, 30 Jun 2021 16:23:10 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 29620610FB
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=NNkoywfQDv6f2dABDQMHA8liGUykRo6qZe4ocdGw8PQ=; b=zg2F+8fhOk6xoj
	jkRUOEuYcm37BbVHREkwUcoCbejJnZ12bxXdDtbSHDWsiJshSsxCUs1qG6FfYCXb8EEa0+Q91IuIb
	0VcSiYykSXT8ghm0lsEtq7qX9OdFe8jPyAFt2bMTWDLhtJ1j+EEjz4ExoXs70VccEPYouA07xusm8
	seJjdmdhvudilz8oQbf0sTZidvTFThXgWVbcCYtl+qpPMfbPHlN5D8I+TvgdfsK7m3LY16OwOFkjK
	tL37R9XGcg8PHRJ7xW/bYNyzD4FPsuoptT4d6OXtJPm7z8eo7xodBqX0oRlc70X8OX8d1hQFDLvvd
	oXuKNJqRkPqutwVq5uIQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyczR-00EijN-Iz; Wed, 30 Jun 2021 16:23:05 +0000
Received: from mail-ed1-x52e.google.com ([2a00:1450:4864:20::52e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyczP-00EiiN-Dw
 for linux-rockchip@lists.infradead.org; Wed, 30 Jun 2021 16:23:05 +0000
Received: by mail-ed1-x52e.google.com with SMTP id n25so4066752edw.9
 for <linux-rockchip@lists.infradead.org>; Wed, 30 Jun 2021 09:23:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=uqGgS2QL3wpR0Vy9MePMxgmj325pYlVdrc+Mb32iKow=;
 b=R3d+kyfzSCimMsHxb1oeNPlZvlj26AgHcyisl1uMfYhii31QTlThmLGfPCmxX7r7t9
 F8JIHgqcVpDrc2KIJQ/lapgXNOngGoI9XDhH144JKSvt5iqOh/LZMr64u0mfOA+vANtq
 LZgD/klWZn3pJhR4s1O07VZYQ/dUBWJL6T+bDV4OdkM1Ppk1c8vvGaRfvT1tEfqTxFCo
 Y9MPtWrWb4GUZ3/kMKPpC27BnBv64w4YqmrzQbuqEQUZZYPnntLreuLE4if3iCIUcvzQ
 ZISb3IGSBmgvI4O45YPB5I+Oj8B0Bu9Rb0FcKgCdgvdWrurkJPgthojfLzq6DVngHbTT
 kS4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=uqGgS2QL3wpR0Vy9MePMxgmj325pYlVdrc+Mb32iKow=;
 b=nv9qLmz5Flz7J1lpPzjMAWIn6P3wwyU3iy+PWcUwFF6VmGor3nkMSGtBoqqKtH+SVd
 OosbRpaLkqhRzv0jVhhtCcvMWCH60W/Mx8f2mxGbhcE/5e66CGZwZzHq+h45JUaD0HWW
 MOh2iM6FRSNLQeNygWUiBUc0UABAXvYA5FdKjQK3lA8xfCFFz0Sb9cihTBxDOIHvPrRs
 KH0L/B1+fLdKabXdVYNpANj99zD5G4Zxv3Fiu4K6q0+D+9u/ZHFmilDQS26poa7LKWb1
 18hKFVYTnqzNun0/Mfxn5kEx5GdpTHLWqHDGfmtu3rg7StNoHOTzzfG5NuRhz4WAWCqW
 DEBQ==
X-Gm-Message-State: AOAM533yqMtN7kLXE0Bjm/FbHU2wRZWJQmiNNjAUz4v0fFtmYr78aDwQ
 Tj3KiXbwvNmKD28lvRKjDsg=
X-Google-Smtp-Source: ABdhPJz829zP/NgjyQA6Tws2vuO7JSUupHIpOlJtUCMRHoqgflJEwr8ZI7y/l+7mLwqABRTH0T0kVQ==
X-Received: by 2002:a50:ee13:: with SMTP id g19mr47577132eds.147.1625070180866; 
 Wed, 30 Jun 2021 09:23:00 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id u17sm13091168edt.67.2021.06.30.09.22.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 30 Jun 2021 09:23:00 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, heiko@sntech.de,
 mail@david-bauer.net, ldevulder@suse.com, wens@csie.org,
 banglang.huang@foxmail.com, matwey.kornilov@gmail.com,
 u-boot@lists.denx.de, linux-rockchip@lists.infradead.org
Subject: [RFC PATCH v1 0/6] add rk3318 A95X Z2 board
Date: Wed, 30 Jun 2021 18:22:45 +0200
Message-Id: <20210630162251.7378-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210630_092303_526280_74DC38A4 
X-CRM114-Status: GOOD (  13.73  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

With a new board from a recent Linux DT the U-boot rk3328.dtsi
is in need for an update.

Please advise what to do with usb3 regulators, aliases and
other stuff that has to change.

Also some of the U-boot board files could use some
dtbs_check for bogus properties and restyling... ;)

rk3328 USB2 and USB3 only roughly tested.

===

Howto use:

Compile bl31.elf:

git clone --depth 1 https://github.com/ARM-software/arm-trusted-firmware.git
cd arm-trusted-firmware
make realclean
make CROSS_COMPILE=aarch64-linux-gnu- PLAT=rk3328

export BL31=/<path-to>/arm-trusted-firmware/build/rk3328/release/bl31/bl31.elf
cd ..

Compile U-boot:

git clone --depth 1 https://github.com/u-boot/u-boot.git uboot
cd uboot
make CROSS_COMPILE=aarch64-linux-gnu- a95x-z2-rk3318_defconfig all

===

Use U-boot to create a GPT on a SD card,
because of partition GUID and sizes.

mmc dev 0
mmc info
gpt write mmc 0 $partitions
mmc part

===

Write to SD card:

export DISK=/dev/mmcblk0
sudo dd if=./idbloader.img of=${DISK} seek=64
sudo dd if=./u-boot.itb of=${DISK} seek=16384
sync

===

Format boot partition with fat16.
Add /Image and /rk3318-a95x-z2.dtb
Add extlinux dir with extlinux.conf

label kernel
    kernel /Image
    fdt /rk3318-a95x-z2.dtb
    append root=/dev/mmcblk0p5 rw console=tty0 console=ttyS2,1500000n8 earlycon=uart8250,mmio32,0xff130000,keep $

===

Use fastboot:

Hit any key to stop autoboot:
usb start
usb dev 1
fastboot usb 1
=
sudo fastboot devices -l
sudo fastboot erase loader1
sudo fastboot erase loader2
sudo fastboot flash loader1 idbloader.img
sudo fastboot flash loader2 u-boot.itb
=
ctrl-c
reset

===

Johan Jonker (6):
  arm: dts: rockchip: update rk3328.dtsi
  arm: dts: rockchip: remove usb_host0_xhci node from rk3328-u-boot.dtsi
  arm: dts: rockchip: move mmc aliases to board files
  arm: dts: rockchip: move spi0 u-boot,dm-pre-reloc and alias to rk3328
    board files
  rockchip: rk3318: add a95x-z2-rk3318_defconfig file
  arm: dts: rockchip: add rk3318 A95X Z2 board

 arch/arm/dts/Makefile                      |   1 +
 arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi    |  59 +++++
 arch/arm/dts/rk3318-a95x-z2.dts            | 384 +++++++++++++++++++++++++++++
 arch/arm/dts/rk3328-evb-u-boot.dtsi        |   2 +-
 arch/arm/dts/rk3328-evb.dts                |   8 +-
 arch/arm/dts/rk3328-nanopi-r2s-u-boot.dtsi |   2 +-
 arch/arm/dts/rk3328-nanopi-r2s.dts         |   6 +-
 arch/arm/dts/rk3328-roc-cc-u-boot.dtsi     |   4 +-
 arch/arm/dts/rk3328-roc-cc.dts             |   7 +-
 arch/arm/dts/rk3328-rock-pi-e-u-boot.dtsi  |   4 +-
 arch/arm/dts/rk3328-rock-pi-e.dts          |   7 +-
 arch/arm/dts/rk3328-rock64-u-boot.dtsi     |  10 +-
 arch/arm/dts/rk3328-rock64.dts             |   7 +-
 arch/arm/dts/rk3328-u-boot.dtsi            |  21 --
 arch/arm/dts/rk3328.dtsi                   | 109 ++++----
 board/rockchip/evb_rk3328/MAINTAINERS      |   6 +
 configs/a95x-z2-rk3318_defconfig           | 102 ++++++++
 doc/board/rockchip/rockchip.rst            |   2 +
 18 files changed, 661 insertions(+), 80 deletions(-)
 create mode 100644 arch/arm/dts/rk3318-a95x-z2-u-boot.dtsi
 create mode 100644 arch/arm/dts/rk3318-a95x-z2.dts
 create mode 100644 configs/a95x-z2-rk3318_defconfig

-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
