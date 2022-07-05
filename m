Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6161DC43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 13:04:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2BA+E4dJl6XaoM9+NOr/16NjLcCHfmtRhnBD7kcCWiM=; b=RD+DcQjMQ8gktJ
	dHCpPNQcMzltq9CD+X6ElSLKttPgnp3fr3FUdq656RYK1zIK4ITBoLmTkKDq1xyT64P1WCkL7eRqL
	e1Hdf6jNBDjzq1iM4BGBQALeBhiQl/3icWXxyy14tYZNx7NpKKww2ygYlwPRnbvkeUUjZyxxugeqQ
	J+QM8a8Nt20XqOCQq7V1aQewJ6P91dVc1Lj9mUbtOro/xyOIERW9FFj/YXbpazYJQE6mwG+9R8PFw
	EFk+41xq3cYLpniQt17LOiVt6ho7EMTg4CMqsJOvEptzkcFAgxQO5awIrAruVOCroBuSOPnsjBBNo
	eADcPO0Nbw9kwY5E0cOw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iDu-000LGE-6x; Tue, 05 Jul 2022 13:04:14 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iDr-000LEq-B7
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 13:04:12 +0000
Received: by mail-ed1-x532.google.com with SMTP id y8so9441318eda.3
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 06:04:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to
         :content-language:content-transfer-encoding;
        bh=8Bwm1hw/LkBFmt7Z12S2YVjxEXk39f0TsvZj3/6jhdg=;
        b=GZM3SJlbHC5f0jp2gDEZ+MGhgOl7oS58+7P+NRjVYBRdsHOS8SR8aFZfxE54Icqs2U
         +jazhRiKOanx3izyn6q2cLqXumtUjCILJAAbs+OP2BSnRH0TUF/AZhJF1WbZ1y1aDj4U
         d+QbSt04stF2noWQF61iEm7YyDYUCW2Ia+/huoJlhG4zxXI/hD5Xb3UeZaIqfscc0Tk1
         UiUuMoX/6TG0D53rMnJ+80Mh21Fz3hfiqPQp6Ty2qglPq4aTZrvn+2DfD12rtFMCDWcR
         zinBdiRpWOrk4aEHhcjNonOwCrmBTXbJqgqmidilBxUcTaRINryAe4u79uZ6LxBmP3Y5
         eDCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:content-language:content-transfer-encoding;
        bh=8Bwm1hw/LkBFmt7Z12S2YVjxEXk39f0TsvZj3/6jhdg=;
        b=QEuPObx9HjztmyMmasKdWm7nk9hQyNvuGjhFneU9pFsi8gV1QIvY/af3FQlD0kY2iC
         14ErBs8vo9r958z1Gacf58hfgF3szcUnkSLCl2foVH8xLWUHOi5Y05Jk2Hn+1xuRzqhQ
         8tjjRWyN/uy9tIJFUKFkLW4SDVDSN+DpIdU7gASm2wqdIdo0Jer3ZdIq05bk4GYi6VJZ
         7w3bZmmR82WzuoXrvqjWB6XOGzQUfWGBzoX2wVUmBZMocdREso/Cj30hMHtCz/mO4Gqq
         po7ph1SiPr+tpwVPYbz0/TsHfgpKJY0XW7LRcP8G2y/eyk27D1luLhb5KljHx8CoHcVF
         ywWg==
X-Gm-Message-State: AJIora+Br2AM8iT9+RFbs/iKVrEMEEQreoKiuFqwZMofl2LLTiWG6Hs3
	bLt6j34INMSqEGNdgBRqtl0=
X-Google-Smtp-Source: AGRyM1vS5CU3IR3gqTp4D9BGRnEVg5LIz6Je/IzutDzP06Z11cxJJrfqL5jlyCA3RKghlzu33RrzFQ==
X-Received: by 2002:aa7:d955:0:b0:43a:7241:4cf9 with SMTP id l21-20020aa7d955000000b0043a72414cf9mr7303351eds.247.1657026248419;
        Tue, 05 Jul 2022 06:04:08 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id j5-20020a50ed05000000b0043a735add09sm2432794eds.21.2022.07.05.06.04.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 06:04:08 -0700 (PDT)
Message-ID: <1cf06b47-4f0d-2207-8135-3a48826520f0@gmail.com>
Date: Tue, 5 Jul 2022 15:04:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 0/6] Add Rockchip IDB device
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@vrull.eu>, xypron.glpk@gmx.de,
 U-Boot-Denx <u-boot@lists.denx.de>, Yifeng Zhao
 <yifeng.zhao@rock-chips.com>, jon.lin@rock-chips.com,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 miquel.raynal@bootlin.com, michael@amarulasolutions.com,
 dario.binacchi@amarulasolutions.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_060411_462167_47ED4491 
X-CRM114-Status: GOOD (  19.46  )
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

From: Johan Jonker <jbx6244@gmail.com>

Add Rockchip IDB device for U-boot.

On Rockchip SoCs with a NAND as boot device the information data base (IDB) loaded
by the boot ROM is stored at the beginning of several erase blocks.
Rewriting NAND blocks makes them wear out, so some spare blocks and a writing strategy
are required. A closed source usbplug uses block: 2,3,4,5,6 for example.
Block 0 and 1 is in use for other data.
For compatible reasons this device follows this approach in line with other
Rockchip products and modules for now.

The Rockchip boot ROM requires a particular file format for booting from NAND:

  It starts with 512-byte (IDB sector 0), RC4 encoded header and is aligned to NAND page size.
  Rockchip fills sector 1,2 and 3 here with more data structures, but that is not required
  by the boot ROM. It just makes it easier to identify the IDB date and version.

  Then 2KB pieces (4 x 512 byte sectors) of spl and tpl data aligned to the NAND page size in a
  fixed pattern with empty pages.

Size of spl and tpl must be aligned to 2KB.
Empty NAND pages/sectors not in use should fill with 0xFF padding to increase NAND durability.

Create a IDB image for the flash tools below with:

#### For RK30 with NAND only ####

printf "RK30" > tplspl.bin
dd if=u-boot-tpl.bin >> tplspl.bin
truncate -s %2048 tplspl.bin
truncate -s %2048 u-boot-spl.bin
./mkimage -v -n rk3066 -T rksd -d ./tplspl.bin:./u-boot-spl.bin out

#### For other Rockchip SoCs with NAND ####

./mkimage -v -n rk3188 -T rksd -d ./u-boot-tpl.bin:./u-boot-spl.bin out

or if more data structures for IDB sector 1, 2 (RC4) and 3 (RC4) are needed then use a custom
image tool as mainline only has basic support for IDB sector 0.

In order to transfer data from a host (PC) via USB existing methods are used.
This driver creates an GPT EFI block driver to work with the
U-boot commands "rockusb" and "ums".
IDB data is inserted 'on the fly' as if it were a normal disk in blocks with 512 byte.
Changing disk parameters is not allowed.

The IDB device driver looks for block driver sector 64 to start with and calculates the IDB size.
When the last sector is received it erases a NAND block and writes IDB sectors to NAND in a pattern.
Written data is verified. If not identical that NAND erase block is freed.
As last thing the remaining IDB blocks are scanned and made available for reading.

Normal U-boot operation contains 2 steps:

1 - start IDB device
2 - start USB gadget (rockusb or ums)

U-boot IDB commands:

idb start - start IDB device
idb stop  - stop IDB blk device
idb info  - show IDB device info

Host (PC) tool commands combinations that work:

U-boot					linux
rockusb 0 idb 0
					upgrade_tool pl
					upgrade_tool wl 64 upgrade_tool_wl_64.bin
					upgrade_tool rl 64 512 upgrade_tool_rl_64_512.bin
					upgrade_tool rd

					rkdeveloptool ppt
					rkdeveloptool wlx loader1 rkdeveloptool_wlx_loader1.bin
					rkdeveloptool wl 64 rkdeveloptool_wl_64.bin
					rkdeveloptool rl 64 512 rkdeveloptool_rl_64_512.bin
					rkdeveloptool rd

					rkflashtool w 64 512 < rkflashtool_w_64_512.bin
					rkflashtool r 64 512 > rkflashtool_r_64_512.bin

ums 0 idb 0
					dd if=ums_0_idb_0_wr.bin of=/dev/sda1
					dd if=/dev/sda1 of=ums_0_idb_0_rd.bin

Tested with:
  MK808 rk3066

Not tested:
  nfc type V8, V9

TODO:
  Looking for advice on what needs to be done to make it fit for mainline. Thanks!

  This is placed in the mach-rockchip directory,
  so we can re-use/combine the source with a usbplug or RK NAND FTL driver
  with no MTD frame work bloatware ;) in a Makefile.

  IDB header V2

  Writing strategy improvement

  etc, etc

Johan Jonker (6):
  rockchip: block: add Rockchip IDB block device
  rockchip: spl: allow more boot devices
  rockchip: rk3066: add Rockchip IDB block device as boot action
  arm: dts: rockchip: sync rk3066/rk3188 DT files from Linux
  arm: dts: rockchip: enable nfc node in spl for rk3066 mk808
  rockchip: configs: mk808: add idb configs

 arch/arm/dts/rk3066a-mk808-u-boot.dtsi |    8 +
 arch/arm/dts/rk3066a-mk808.dts         |   18 +
 arch/arm/dts/rk3066a.dtsi              |    3 +-
 arch/arm/dts/rk3188-radxarock.dts      |    3 +-
 arch/arm/dts/rk3188.dtsi               |   24 +-
 arch/arm/dts/rk3xxx-u-boot.dtsi        |    4 +
 arch/arm/mach-rockchip/Kconfig         |   12 +
 arch/arm/mach-rockchip/Makefile        |    1 +
 arch/arm/mach-rockchip/rk3066/rk3066.c |   11 +
 arch/arm/mach-rockchip/rockchip_idb.c  | 1694 ++++++++++++++++++++++++
 arch/arm/mach-rockchip/spl.c           |    5 +-
 configs/mk808_defconfig                |    4 +
 drivers/block/blk-uclass.c             |    2 +
 include/blk.h                          |    1 +
 include/dm/uclass-id.h                 |    1 +
 include/efi_loader.h                   |    4 +
 lib/efi_loader/efi_device_path.c       |   30 +
 17 files changed, 1812 insertions(+), 13 deletions(-)
 create mode 100644 arch/arm/mach-rockchip/rockchip_idb.c

-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
