Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2B700C433EF
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 14:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5AyOeFYaek410fZAPZnBk7m1yK4DIILCIja9a+Dx0kY=; b=rQ38SKG8PC4dw2
	2LytkIQ2ibA3lLz5DvBQIS7tPJu23jIBetUbVdzHhvCWNmgxdtjoCK01TR7vgneo2ansk6O4atiAx
	+6JNv2wAP3CQ/Lp7eBy0K0K6/UXJEHEEqBS1r8cXlakz35+fye41Gat1dIYiH57eW+lxCBS+h1wvq
	1OkO/InsaRW32ZX8QzeM2xG23pxhUr1kzl+h27sR2o2Ase0uoHzKUV2hVWBaa3lX6CcW/4FYbKtFe
	ApYKqO+zVOHz5SFt7g0hiJRlSOen6z+x8GKMF1c2sgcQDT28GnWmLFj4CX7XN62AYN+5VgYL4F3KD
	jij88wNMkOj5l8QP0xsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8jNT-000lbr-SK; Tue, 05 Jul 2022 14:18:11 +0000
Received: from mx1.tinet.org ([195.77.216.146] helo=mx1.tinet.cat)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8jNQ-000lD8-Oc
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 14:18:10 +0000
X-ASG-Debug-ID: 1657030634-163e7b70c832ede0001-fBy1Pp
Received: from smtp01.tinet.cat (smtp01.tinet.org [195.77.216.131]) by mx1.tinet.cat with ESMTP id QAyDqerT5jCUwhmM; Tue, 05 Jul 2022 16:17:14 +0200 (CEST)
X-Barracuda-Envelope-From: xdrudis@tinet.cat
X-Barracuda-Effective-Source-IP: smtp01.tinet.org[195.77.216.131]
X-Barracuda-Apparent-Source-IP: 195.77.216.131
Received: from begut (99.red-79-152-185.dynamicip.rima-tde.net [79.152.185.99])
	by smtp01.tinet.cat (Postfix) with ESMTPSA id 16BD5605E0C1;
	Tue,  5 Jul 2022 16:17:14 +0200 (CEST)
Date: Tue, 5 Jul 2022 16:17:12 +0200
From: Xavier Drudis Ferran <xdrudis@tinet.cat>
To: Johan Jonker <jbx6244@gmail.com>
Cc: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
	Philipp Tomsich <philipp.tomsich@vrull.eu>, xypron.glpk@gmx.de,
	U-Boot-Denx <u-boot@lists.denx.de>,
	Yifeng Zhao <yifeng.zhao@rock-chips.com>, jon.lin@rock-chips.com,
	"open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
	miquel.raynal@bootlin.com, michael@amarulasolutions.com,
	dario.binacchi@amarulasolutions.com
Subject: Re: [PATCH v1 1/6] rockchip: block: add Rockchip IDB block device
Message-ID: <20220705141712.GB2037@begut>
X-ASG-Orig-Subj: Re: [PATCH v1 1/6] rockchip: block: add Rockchip IDB block device
References: <20220701094304.1846-1-jbx6244@yandex.com>
 <1816d342-1bd1-ff1e-efe6-af4595850946@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1816d342-1bd1-ff1e-efe6-af4595850946@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Barracuda-Connect: smtp01.tinet.org[195.77.216.131]
X-Barracuda-Start-Time: 1657030634
X-Barracuda-URL: https://webmail.tinet.cat:443/cgi-mod/mark.cgi
X-Virus-Scanned: by bsmtpd at tinet.cat
X-Barracuda-Scan-Msg-Size: 3188
X-Barracuda-BRTS-Status: 1
X-Barracuda-Bayes: SPAM GLOBAL 0.9025 1.0000 3.2524
X-Barracuda-Spam-Score: 3.25
X-Barracuda-Spam-Status: No, SCORE=3.25 using global scores of TAG_LEVEL=1000.0 QUARANTINE_LEVEL=6.0 KILL_LEVEL=8.0 tests=MAILTO_TO_SPAM_ADDR
X-Barracuda-Spam-Report: Code version 3.2, rules version 3.2.3.99173
	Rule breakdown below
	 pts rule name              description
	---- ---------------------- --------------------------------------------------
	0.00 MAILTO_TO_SPAM_ADDR    Includes a link to a likely spammer email
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_071808_996384_6FBB42DD 
X-CRM114-Status: GOOD (  19.66  )
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


Thanks for your work. 

El Tue, Jul 05, 2022 at 03:04:15PM +0200, Johan Jonker deia:
> From: Johan Jonker <jbx6244@gmail.com>
> 
> The Rockchip SoCs with a NAND as boot device need
> a special Rockchip IDB block device to transfer the data
> from the rockusb gadget to the NAND driver.
>

Sorry for the fast browsing, lack of experience and possibly wrong and
noisy comment (I'm no U-Boot expert), but if you have patience for my
curiosity... This isn't a review, I haven't read it all, just some
small parts.

> diff --git a/arch/arm/mach-rockchip/rockchip_idb.c b/arch/arm/mach-rockchip/rockchip_idb.c
> new file mode 100644
> index 00000000..6243131d
> --- /dev/null
> +++ b/arch/arm/mach-rockchip/rockchip_idb.c
[...]
> +struct NandParaInfo {
> +	u8 id_bytes;
> +	u8 nand_id[6];
> +	u8 vendor;
> +	u8 die_per_chip;
> +	u8 sec_per_page;
> +	u16 page_per_blk;
> +	u8 cell;
> +	u8 plane_per_die;
> +	u16 blk_per_plane;
> +	u16 operation_opt;
> +	u8 lsb_mode;
> +	u8 read_retry_mode;
> +	u8 ecc_bits;
> +	u8 access_freq;
> +	u8 opt_mode;
> +	u8 die_gap;
> +	u8 bad_block_mode;
> +	u8 multi_plane_mode;
> +	u8 slc_mode;
> +	u8 reserved[5];
> +};
> +

Is part of this info already represented in 
nand_flash_dev in include/linux/mtd/rawnand.h ?

And is it worth merging somehow ? Or should 
this be synced to something external and the 
.h file I mentioned be synced to linux, so merging
would be more trouble than it is worth ? 

> +
> +u16 random_seed[] = {
> +	0x576a, 0x05e8, 0x629d, 0x45a3,
> +	0x649c, 0x4bf0, 0x2342, 0x272e,
> +	0x7358, 0x4ff3, 0x73ec, 0x5f70,
[...]
> +	0x3b2e, 0x7ec7, 0x4fd2, 0x5d28,
> +	0x751f, 0x3ef8, 0x39b1, 0x4e49,
> +	0x746b, 0x6ef6, 0x44be, 0x6db7,
> +};

Where does this come from ? Is it copyrightable ? If so, is it
licensed ?  fair use ? Does it need to be synced every so often with
some external source ?

> +
> +struct NandParaInfo NandFlashParaTbl[] = {
> +	{6, {0x2c, 0x64, 0x44, 0x4b, 0xa9, 0x00}, 4, 1, 16,  256, 2, 2, 2048, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
> +	{6, {0x2c, 0x44, 0x44, 0x4b, 0xa9, 0x00}, 4, 1, 16,  256, 2, 2, 1064, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
> +	{6, {0x2c, 0x68, 0x04, 0x4a, 0xa9, 0x00}, 4, 1,  8,  256, 2, 2, 2048, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
[...]
> +	{6, {0x98, 0xde, 0x94, 0x82, 0x76, 0x56}, 1, 1, 16,  256, 2, 2, 2062, 0x05d1,  1, 33, 40, 32, 2, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
[...]
> +	{6, {0xec, 0xd5, 0x94, 0x76, 0x54, 0x43}, 0, 1, 16,  128, 2, 2, 1038, 0x0119,  2,  0, 24, 36, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
> +	{6, {0xec, 0xd7, 0x14, 0x76, 0x54, 0xc2}, 0, 1, 16,  128, 2, 2, 2076, 0x0491,  2,  0, 24, 40, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
> +	{6, {0xec, 0xde, 0x94, 0xc3, 0xa4, 0xca}, 0, 1, 32,  792, 2, 1,  688, 0x04c1, 11, 50, 40, 32, 3, 1, 1, 0, 1, {0, 0, 0, 0, 0}},
> +};
> +

Is this info partially duplicated in drivers/mtd/nand/raw/nand_ids.c ?
Should it be merged and this added there somehow ?  It seems to have
more data, but I don't know if some items are deductible from others.
Could some constants be used to make it easier to read ?

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
