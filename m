Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C1442C00140
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Aug 2022 04:29:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:From:References:Cc:To:Subject:
	MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Zap/75xbRuZJGjJV1yDbHOTAOXzAChl8PYMFwCIFL+U=; b=YVEVMWCtskglEA
	EQX69nuYa1zAvH120VYQvZFkCGVLmW/pbr/3REdVx5GuxUYolb2MWq2b2jxE7RR6yMfcqn+txFoSI
	OQmjv5cLKuC+P/9a0pZ9IRtxqasYxYmbFFdF1tCpyhj4T5CzgXNJHe1DG9eTjnm37f0DgZtTOUgtv
	bFTWit5ozELLaSGj+Ciz/wiPSdmT6h0ZMEiAh5aFAqhfc1Ki8niLtC1M0q2ybuC8CklXu2IfS8Q7o
	dwLGMAdZrZGpAF+ILxFQvu8xE0jFvIOVPuD+TKm5G8sRj03Rgsh5/nT8vZmys2wDXI6zMxB8n256Q
	6KTkHmGK9ys+JbJMVUUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNRj1-00BCr4-RS; Mon, 15 Aug 2022 04:29:15 +0000
Received: from mail-m11876.qiye.163.com ([115.236.118.76])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oNRix-00BCmk-1k
	for linux-rockchip@lists.infradead.org; Mon, 15 Aug 2022 04:29:13 +0000
Received: from [172.16.12.93] (unknown [58.22.7.114])
	by mail-m11876.qiye.163.com (Hmail) with ESMTPA id DD87B3C0560;
	Mon, 15 Aug 2022 12:29:01 +0800 (CST)
Message-ID: <61c26023-7503-4fe4-fa2b-b33b1dd055de@rock-chips.com>
Date: Mon, 15 Aug 2022 12:29:01 +0800
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 00/11] Add Rockchip IDB device
Content-Language: en-US
To: Johan Jonker <jbx6244@gmail.com>
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <a1458a7b-2043-6397-3107-2d1fdf08c8e1@gmail.com>
From: Kever Yang <kever.yang@rock-chips.com>
In-Reply-To: <a1458a7b-2043-6397-3107-2d1fdf08c8e1@gmail.com>
X-HM-Spam-Status: e1kfGhgUHx5ZQUtXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFJSktLSjdXWS1ZQUlXWQ8JGhUIEh9ZQVlCGR9MVh1CHUxOGBlNTUlDTVUTARMWGhIXJB
	QOD1lXWRgSC1lBWU5DVUlJVUxVSkpPWVdZFhoPEhUdFFlBWU9LSFVKSktISkxVS1kG
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6PTo6HCo*Az08FR8CQxIeAT0a
	NwwKCx5VSlVKTU1LTkhMTE9JTU9JVTMWGhIXVRAeDR4JVQIaFRw7CRQYEFYYExILCFUYFBZFWVdZ
	EgtZQVlOQ1VJSVVMVUpKT1lXWQgBWUFMQ0xJNwY+
X-HM-Tid: 0a829fc323822eb2kusndd87b3c0560
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220814_212911_458671_73750817 
X-CRM114-Status: GOOD (  32.83  )
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Hi Johan,

On 2022/7/10 02:48, Johan Jonker wrote:
> Add Rockchip IDB device for U-boot.


I'm sorry, there is no "Rockchip IDB device".

Rockchip BootRom need a boot structure date, we name it "IDB" data, 
which is common structure

for all the storage media including EMMC, SD, SPI, and NAND.

I think what you try to do is add the RKNAND controller driver in 
RK3066, and the IDB data implement

in rknand, just like there are some different in rksd and rkspi.

I think it's better to adapt RK NAND driver to MTD framwork instead of a 
new RKNAND type in block layer,

because even in rockchip, the rknand adapt to block driver has been 
superseded and deprecated to use in new code.


Thanks,
- Kever
>
> On Rockchip SoCs with a NAND as boot device the information data base (IDB) loaded
> by the boot ROM is stored at the beginning of several erase blocks.
> Rewriting NAND blocks makes them wear out, so some spare blocks and a writing strategy
> are required. A closed source usbplug uses block: 2,3,4,5,6 for example.
> Block 0 and 1 is in use for other data.
> For compatible reasons this device follows this approach in line with other
> Rockchip products and modules for now.
>
> The Rockchip boot ROM requires a particular file format for booting from NAND:
>
>    It starts with 512-byte (IDB sector 0), RC4 encoded header and is aligned to NAND page size.
>    Rockchip fills sector 1,2 and 3 here with more data structures, but that is not required
>    by the boot ROM. It just makes it easier to identify the IDB date and version.
>
>    Then 2KB pieces (4 x 512 byte sectors) of spl and tpl data aligned to the NAND page size in a
>    fixed pattern with empty pages.
>
> Size of spl and tpl must be aligned to 2KB.
> Empty NAND pages/sectors not in use should fill with 0xFF padding to increase NAND durability.
>
> Create a IDB image for the flash tools below with:
>
> #### For RK30 with NAND only ####
>
> printf "RK30" > tplspl.bin
> dd if=u-boot-tpl.bin >> tplspl.bin
> truncate -s %2048 tplspl.bin
> truncate -s %2048 u-boot-spl.bin
> ./mkimage -v -n rk3066 -T rksd -d ./tplspl.bin:./u-boot-spl.bin out
>
> #### For other Rockchip SoCs with NAND ####
>
> ./mkimage -v -n rk3188 -T rksd -d ./u-boot-tpl.bin:./u-boot-spl.bin out
>
> or if more data structures for IDB sector 1, 2 (RC4) and 3 (RC4) are needed then use a custom
> image tool as mainline only has basic support for IDB sector 0.
>
> In order to transfer data from a host (PC) via USB existing methods are used.
> This driver creates an GPT EFI block driver to work with the
> U-boot commands "rockusb" and "ums".
> IDB data is inserted 'on the fly' as if it were a normal disk in blocks with 512 byte.
> Changing disk parameters is not allowed.
>
> The IDB device driver looks for block driver sector 64 to start with and calculates the IDB size.
> When the last sector is received it erases a NAND block and writes IDB sectors to NAND in a pattern.
> Written data is verified. If not identical that NAND erase block is freed.
> As last thing the remaining IDB blocks are scanned and made available for reading.
>
> Normal U-boot operation contains 2 steps:
>
> 1 - start IDB device
> 2 - start USB gadget (rockusb or ums)
>
> U-boot IDB commands:
>
> idb start - start IDB device
> idb stop  - stop IDB blk device
> idb info  - show IDB device info
>
> Host (PC) tool commands combinations that work:
>
> U-boot					linux
> rockusb 0 idb 0
> 					upgrade_tool pl
> 					upgrade_tool wl 64 upgrade_tool_wl_64.bin
> 					upgrade_tool rl 64 512 upgrade_tool_rl_64_512.bin
> 					upgrade_tool rd
>
> 					rkdeveloptool ppt
> 					rkdeveloptool wlx loader1 rkdeveloptool_wlx_loader1.bin
> 					rkdeveloptool wl 64 rkdeveloptool_wl_64.bin
> 					rkdeveloptool rl 64 512 rkdeveloptool_rl_64_512.bin
> 					rkdeveloptool rd
>
> 					rkflashtool w 64 512 < rkflashtool_w_64_512.bin
> 					rkflashtool r 64 512 > rkflashtool_r_64_512.bin
>
> ums 0 idb 0
> 					dd if=ums_0_idb_0_wr.bin of=/dev/sda1
> 					dd if=/dev/sda1 of=ums_0_idb_0_rd.bin
>
> Tested with:
>    MK808 rk3066
>
> Not tested:
>    nfc type V8, V9
>
> TODO:
>    This is placed in the mach-rockchip directory,
>    so we can re-use/combine the source with a usbplug or RK NAND FTL driver
>    with no MTD frame work bloatware ;) in a Makefile.
>
>    IDB header V2
>
>    Writing strategy improvement
>
>    etc, etc
>
> Changed V2:
>    remove CamelCases
>    split patch block driver
>    split patch optinal stop and info cmd
>    split patch optinal sector1 info
>    split patch optinal randomizer
>
> Johan Jonker (11):
>    rockchip: idb: prepare IDB block device
>    rockchip: idb: add basic functions
>    rockchip: idb: add IDB block device
>    rockchip: idb: add info and stop command
>    rockchip: idb: add sector1 info
>    rockchip: idb: add randomizer option
>    rockchip: spl: allow more boot devices
>    rockchip: rk3066: add Rockchip IDB block device as boot action
>    arm: dts: rockchip: sync rk3066/rk3188 DT files from Linux
>    arm: dts: rockchip: enable nfc node in spl for rk3066 mk808
>    rockchip: configs: mk808: add idb configs
>
>   arch/arm/dts/rk3066a-mk808-u-boot.dtsi |    8 +
>   arch/arm/dts/rk3066a-mk808.dts         |   18 +
>   arch/arm/dts/rk3066a.dtsi              |    3 +-
>   arch/arm/dts/rk3188-radxarock.dts      |    3 +-
>   arch/arm/dts/rk3188.dtsi               |   24 +-
>   arch/arm/dts/rk3xxx-u-boot.dtsi        |    4 +
>   arch/arm/mach-rockchip/Kconfig         |   12 +
>   arch/arm/mach-rockchip/Makefile        |    1 +
>   arch/arm/mach-rockchip/rk3066/rk3066.c |   11 +
>   arch/arm/mach-rockchip/rockchip_idb.c  | 1694 ++++++++++++++++++++++++
>   arch/arm/mach-rockchip/spl.c           |    5 +-
>   configs/mk808_defconfig                |    4 +
>   drivers/block/blk-uclass.c             |    2 +
>   include/blk.h                          |    1 +
>   include/dm/uclass-id.h                 |    1 +
>   include/efi_loader.h                   |    4 +
>   lib/efi_loader/efi_device_path.c       |   30 +
>   17 files changed, 1812 insertions(+), 13 deletions(-)
>   create mode 100644 arch/arm/mach-rockchip/rockchip_idb.c
>

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
