Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id E3884C433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uOzDM/bj80l1f3Vne50NFh93CySFtK3DNJdjEGoDx6Y=; b=aIPixUVOVWL5N2
	65raXYsC6tDL56rkEHlfNZQF76F5XThdtNy/3NysATWx1I4c/lPNvYG/iKCYaUyeIuzUdWeCXYwH1
	Ow1d+vNfRWnEJ581LfjnYsrc6fRfNIAZ8eYL+ciWueqB29/UYkxeOieaejdqzL5fluknSMAOFBOA7
	6DhHv6E3BGJ/1yTO3MbE1D4pNuAowfZFsi5qbD+wuG5rWWrcDgWBSPtmtiBAFobarbgPuwuMPLTu9
	wwM+W4/PdE4S4m1GNxsm2QFR1VILyivsW0aML9wVO6kHD1iIcxJWFNq2igpAEFufba97U0zmQwqcu
	yGVVpebth6U6xQAtXVKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFVW-008xRA-96; Sat, 09 Jul 2022 18:48:46 +0000
Received: from mail-ej1-x62a.google.com ([2a00:1450:4864:20::62a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFVU-008xP3-0z
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:48:45 +0000
Received: by mail-ej1-x62a.google.com with SMTP id dn9so2678363ejc.7
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:48:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :content-language:content-transfer-encoding;
        bh=Gt+hfrqCc3VEGBjaUNKjqIybU1cXKwEnJuj/4xYFvKs=;
        b=NseEJltERRCt/EUWgx8LA3/ncGXuEey/IFOpRICaCXam0mFw89bWIlPlqsw1ZPeY7O
         dVqYRhdmxmPbCJGSYojBnOtzY1TafWkUwa1JNjO52ZHdqd0drIuMhDoJ06rwselSJBzo
         TPMXFSRUpYEJO5OkhRha/0vv2j/D7k/3QBQg+hiVOa55UCIOhuyJ2Z2rp1Cz+alMMj1z
         JelH+AyViSsW9wNsyLqFB2GE8c3AYW6DwYe+9Mhhhv9kkN0wCB8K73RJSdEoMml/f6cV
         9VkV4WIB50naYLMhFm+pfEUfhZ4RYra/9V5f04DnGFLbxMU1ItvK4BS++l7fggLz0aYd
         K/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:content-language:content-transfer-encoding;
        bh=Gt+hfrqCc3VEGBjaUNKjqIybU1cXKwEnJuj/4xYFvKs=;
        b=zFakKF9Xtib1lFlgze1v3X0k+d99895rLzBKTYZfw8pyRpJcibL34qGaYBQeMV2Ous
         tT2t+jSecgrnGMsSK769VNtHBMBke6GEcP3nMBZZ856i2dOocJK0WV1SgV7XnkC0u5S7
         dNszv+/Qk4M7jnKjm1O6Z3oiiRa2oj5ZrIdBGof+/Ymj1Xo89Ou/6H5mlTBWnHAaXQpr
         KVyyyfOrOmJykZzegF9dC2ajBzAvy2GodRjL/vYlNB9Osf5BBT4NKh/qIxVsUCMIBRgh
         PJ7HYT+2L4ApSmZZS6/OaqrkGrOsBTgM6wchdqAwucNKDpH/4QEvS4uvUq1nWWQyUoOE
         cmBw==
X-Gm-Message-State: AJIora9G2euBg2xF3PTXgMwsRMllygx3TKdAOyYAviXXZ2mKgv2Nls1/
	tUs3cvnODuJmJhuww/fpNq0=
X-Google-Smtp-Source: AGRyM1tMHBur76vZi9yDHYyNrmjO1h0Uq9Bq2NpbodAd+tV4fMbpsTHLu8L9zYd2dS5Y+AuCVYVNXQ==
X-Received: by 2002:a17:907:58e:b0:726:9e67:e7cc with SMTP id vw14-20020a170907058e00b007269e67e7ccmr10106750ejb.740.1657392519167;
        Sat, 09 Jul 2022 11:48:39 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id gs5-20020a170906f18500b0072aa0d9ba93sm840412ejb.134.2022.07.09.11.48.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:48:38 -0700 (PDT)
Message-ID: <a1458a7b-2043-6397-3107-2d1fdf08c8e1@gmail.com>
Date: Sat, 9 Jul 2022 20:48:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 00/11] Add Rockchip IDB device
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_114844_120623_E779F359 
X-CRM114-Status: GOOD (  19.38  )
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
  This is placed in the mach-rockchip directory,
  so we can re-use/combine the source with a usbplug or RK NAND FTL driver
  with no MTD frame work bloatware ;) in a Makefile.

  IDB header V2

  Writing strategy improvement

  etc, etc

Changed V2:
  remove CamelCases
  split patch block driver
  split patch optinal stop and info cmd
  split patch optinal sector1 info
  split patch optinal randomizer

Johan Jonker (11):
  rockchip: idb: prepare IDB block device
  rockchip: idb: add basic functions
  rockchip: idb: add IDB block device
  rockchip: idb: add info and stop command
  rockchip: idb: add sector1 info
  rockchip: idb: add randomizer option
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
