Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 07D42C433EF
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Jul 2022 09:00:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gBODX610Cc8ZJXr/3pNyQnz+l56X0SZwcC6h6G3Wuw0=; b=06BBVXLlAevLPx
	wh+yQbyb7UqlC3gbasH1myHqCtjypxlARx1g6OD+o1YKjzIShWjO/6ISKwrU5NpCrc1gIGn4qivFZ
	ATipsZrqCaKzB5sDxhOzqX2q1TYwIcyjQJLG+bTi4zmxTaBLoJQ2UROkGh5MMd7p9UxZ1W4lz80Lq
	ecthOm02jM6i05VHozVaYTNT2JEbVULu7zLOeCAsyCjngaiTBvSMk3AuMZxEwhyIHU3qAjknyb4Y8
	oiguf1Gj9TDxOasnZtgoZJYFW7awOhIIhWejJXqQV3nniupQdmlU12Vv51Fl9MZvex+x58MV1HHeV
	a4iEQZp6tLiO2bL0iXUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9jqa-002jQE-7H; Fri, 08 Jul 2022 09:00:24 +0000
Received: from mail-pf1-x429.google.com ([2607:f8b0:4864:20::429])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o9jpH-002itR-93
	for linux-rockchip@lists.infradead.org; Fri, 08 Jul 2022 08:59:05 +0000
Received: by mail-pf1-x429.google.com with SMTP id y9so8791871pff.12
        for <linux-rockchip@lists.infradead.org>; Fri, 08 Jul 2022 01:59:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rpBIPZoEOcdI5wCWlLWqGXg56NDDPjrDi01arW3/rrA=;
        b=PDVNridy/FVQHJjoxp3EXy/miBQ6yThN3u+Xjh9V8ag9TiQ12D0VwTyB3aBwauMx2I
         AG+Gwasnbbp08iRgF5aMqtR940L4g2i6OAq11SezwF5hw73vrcuZS7GXx8KvHRZLHUCD
         DVZ2xrjM7J8d9JAV2hQv/VC+/wOA4wBBGCQmc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rpBIPZoEOcdI5wCWlLWqGXg56NDDPjrDi01arW3/rrA=;
        b=tnVcVmxtKsXr7F+gtUm0WSCXGdBruOOcepQPIJNqwyoFUereEan4E4Q84Dz7bwyBr7
         wVuKvUy6r7xUTtnzD2QqqlBwYDqQtYBDuBFJTaJY4pHHIS4DIaN5pZi537ffmY5cwe55
         2qH922A8q3I1EsU3BiHledcoDpAXgJrGw+RNs/51LvYe9SYbN8Ap4DDe0aOxDXNLI9Vv
         xtgADQZyZ9VirFMJCACWJ4zCrgdullvyNjx5FQ0clpHAASF6WKx4xd/NaLsLTuQ4UOZm
         U7NObkDAoHGHpjQWhwsFLcOZ8bG34EEduRmRtOTyugyN10hU59hFRDs2r4JpbYqIPcJg
         U9Sg==
X-Gm-Message-State: AJIora+jp66sck2+AtEcpniOm0NyQ5oaG/VdM2rXjxRbD9vHEdXNK/gW
	0K8X09uu5SsYHdhTSFpZ+PWUtOc+XX7O7+iOXDlD0g==
X-Google-Smtp-Source: AGRyM1sQytUht2yJLJ7J+cYr8NzXL6L5CGUjxBU9VdfkGYywSTCydJtiD1eDQD7nCAYjNvOgibtJxg/J9mWvKSWpo0w=
X-Received: by 2002:a05:6a00:2407:b0:528:5bbc:aa0d with SMTP id
 z7-20020a056a00240700b005285bbcaa0dmr2880732pfh.40.1657270740765; Fri, 08 Jul
 2022 01:59:00 -0700 (PDT)
MIME-Version: 1.0
References: <1cf06b47-4f0d-2207-8135-3a48826520f0@gmail.com>
In-Reply-To: <1cf06b47-4f0d-2207-8135-3a48826520f0@gmail.com>
From: Michael Nazzareno Trimarchi <michael@amarulasolutions.com>
Date: Fri, 8 Jul 2022 10:58:49 +0200
Message-ID: <CAOf5uwkUmAUeMt8+Y_ExojBigT7Vt6ju+E0vx4o-tNyUZ8B3UA@mail.gmail.com>
Subject: Re: [PATCH v1 0/6] Add Rockchip IDB device
To: Johan Jonker <jbx6244@gmail.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>, 
	Philipp Tomsich <philipp.tomsich@vrull.eu>, xypron.glpk@gmx.de, 
	U-Boot-Denx <u-boot@lists.denx.de>, Yifeng Zhao <yifeng.zhao@rock-chips.com>, 
	jon.lin@rock-chips.com, 
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>, miquel.raynal@bootlin.com, 
	dario.binacchi@amarulasolutions.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220708_015903_408380_DA9888FA 
X-CRM114-Status: GOOD (  33.18  )
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

Hi Johan

On Tue, Jul 5, 2022 at 3:04 PM Johan Jonker <jbx6244@gmail.com> wrote:
>
> From: Johan Jonker <jbx6244@gmail.com>
>
> Add Rockchip IDB device for U-boot.
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
>   It starts with 512-byte (IDB sector 0), RC4 encoded header and is aligned to NAND page size.
>   Rockchip fills sector 1,2 and 3 here with more data structures, but that is not required

I suggest starting to split on what is mandatory and what is optional
here. If possible remove CamelCase
definition of variables. Try to split the first patches in small chunk
so it's easy to discuss a bit more

>   by the boot ROM. It just makes it easier to identify the IDB date and version.
>

Looks like this is rockchip specific. As far as I understand, all the
exposed information can be written from rockchip closed/source
tools. I don't have a rockchip board with Nand to test. Rather prefer
to go with some initial an minimalistic approach and see how look like

In nxp we have only a small tool in uboot able to program the nand. Do
you think that same approach is possible in rockchip?

Michael


>   Then 2KB pieces (4 x 512 byte sectors) of spl and tpl data aligned to the NAND page size in a
>   fixed pattern with empty pages.
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
> U-boot                                  linux
> rockusb 0 idb 0
>                                         upgrade_tool pl
>                                         upgrade_tool wl 64 upgrade_tool_wl_64.bin
>                                         upgrade_tool rl 64 512 upgrade_tool_rl_64_512.bin
>                                         upgrade_tool rd
>
>                                         rkdeveloptool ppt
>                                         rkdeveloptool wlx loader1 rkdeveloptool_wlx_loader1.bin
>                                         rkdeveloptool wl 64 rkdeveloptool_wl_64.bin
>                                         rkdeveloptool rl 64 512 rkdeveloptool_rl_64_512.bin
>                                         rkdeveloptool rd
>
>                                         rkflashtool w 64 512 < rkflashtool_w_64_512.bin
>                                         rkflashtool r 64 512 > rkflashtool_r_64_512.bin
>
> ums 0 idb 0
>                                         dd if=ums_0_idb_0_wr.bin of=/dev/sda1
>                                         dd if=/dev/sda1 of=ums_0_idb_0_rd.bin
>
> Tested with:
>   MK808 rk3066
>
> Not tested:
>   nfc type V8, V9
>
> TODO:
>   Looking for advice on what needs to be done to make it fit for mainline. Thanks!
>
>   This is placed in the mach-rockchip directory,
>   so we can re-use/combine the source with a usbplug or RK NAND FTL driver
>   with no MTD frame work bloatware ;) in a Makefile.
>
>   IDB header V2
>
>   Writing strategy improvement
>
>   etc, etc
>
> Johan Jonker (6):
>   rockchip: block: add Rockchip IDB block device
>   rockchip: spl: allow more boot devices
>   rockchip: rk3066: add Rockchip IDB block device as boot action
>   arm: dts: rockchip: sync rk3066/rk3188 DT files from Linux
>   arm: dts: rockchip: enable nfc node in spl for rk3066 mk808
>   rockchip: configs: mk808: add idb configs
>
>  arch/arm/dts/rk3066a-mk808-u-boot.dtsi |    8 +
>  arch/arm/dts/rk3066a-mk808.dts         |   18 +
>  arch/arm/dts/rk3066a.dtsi              |    3 +-
>  arch/arm/dts/rk3188-radxarock.dts      |    3 +-
>  arch/arm/dts/rk3188.dtsi               |   24 +-
>  arch/arm/dts/rk3xxx-u-boot.dtsi        |    4 +
>  arch/arm/mach-rockchip/Kconfig         |   12 +
>  arch/arm/mach-rockchip/Makefile        |    1 +
>  arch/arm/mach-rockchip/rk3066/rk3066.c |   11 +
>  arch/arm/mach-rockchip/rockchip_idb.c  | 1694 ++++++++++++++++++++++++
>  arch/arm/mach-rockchip/spl.c           |    5 +-
>  configs/mk808_defconfig                |    4 +
>  drivers/block/blk-uclass.c             |    2 +
>  include/blk.h                          |    1 +
>  include/dm/uclass-id.h                 |    1 +
>  include/efi_loader.h                   |    4 +
>  lib/efi_loader/efi_device_path.c       |   30 +
>  17 files changed, 1812 insertions(+), 13 deletions(-)
>  create mode 100644 arch/arm/mach-rockchip/rockchip_idb.c
>
> --
> 2.20.1
>


--
Michael Nazzareno Trimarchi
Co-Founder & Chief Executive Officer
M. +39 347 913 2170
michael@amarulasolutions.com
__________________________________

Amarula Solutions BV
Joop Geesinkweg 125, 1114 AB, Amsterdam, NL
T. +31 (0)85 111 9172
info@amarulasolutions.com
www.amarulasolutions.com

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
