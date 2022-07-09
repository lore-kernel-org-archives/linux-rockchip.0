Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 85AB1C43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:49:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qx3uZbGY1zEJhGP+oyhNmyo+B2I3wRzwDpba7BN6N1c=; b=K85E2rNtXpCd4r
	i0rMQFQvxzpjPYMsMJcKPpWITNH1AsKRqmjZJQGHsEuBB/G0+Q3z/pnJv2d+FS4p7gpjfTYrs1eU2
	kjlczf3ECukbnmUfHnGNuEqQ12x2Mle5dCRAithXs/odlrXFQPy2wJuOVpp3MYGQlWieer+UhoYRP
	qIRS/ciDf0BfD3hrcZ8giZsjyy7Vsyo18vK8VvS6Mp0D/TH+z9i/V2JvcASG1PXua9PPS1ow/2ijD
	UM9L0cfaFtvFhdR+AdQsf3uwyPCACKJOTcD1hGJb1f4++lIAUVLuAeBEqq/JiINngunX4SpRH0t/9
	8lMDpfD+9aHGfLmmiOiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFVx-008xcz-8U; Sat, 09 Jul 2022 18:49:13 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFVs-008xZe-CX
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:49:12 +0000
Received: by mail-ed1-x532.google.com with SMTP id eq6so2005900edb.6
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:49:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=fws5YE4zulMO62ium/fOx3BGiXPNv+pKXPVf/SjC02U=;
        b=CSg5M05NKNdhxgjjGsR5tHjr4aaaZ4rkWXBSZLzA7hGaYosF7jupFztqZX3x2BK24E
         0Y0TAjKTEiX5/XLV72NwJp8AOwIhlkgH6XB8zUrksBG18eSxJU8K2lu64SpxCr/t+XxA
         EEgkXIQYn3Uqy0iE1Qcmv0RJmYC/rjxC4kVwXHCA13l8R/RY/I68nsS+TmmlrxTedMmJ
         LD9olfkEJZUhPdv41I12sh5DnokEj7S8E5qwbB3b1gdDQBxNZ4v95tTpxwute2/szJQM
         oeW1wiIYRuaAk+Md0x+oFdORr546KXLMHrmwsP1bf6mwOUxpma+9AOAETydE/wLeIcNp
         FVrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=fws5YE4zulMO62ium/fOx3BGiXPNv+pKXPVf/SjC02U=;
        b=7Hfyqo/tHnWcwd7dB/Uz0pjdUQOFCYypimstXWEMYAbG7Fj6jmYzx04mfOzB0BcoqS
         LUrvGcU/Eq///t3bxCGdN1nvOBuKqVo7RH3Obagj6vLN3lk8Tby6mVGpysC4YAimKUuo
         qFRogFyWJX5O5dtwjbM0bzRMtLYZ6pDI6FfjAzlmrj//rTjYNB6HSOqJvyEoQtIiaDBr
         AVth52y+iiVuTj4XfjC6GZ9lR3SskAZb+D0axdsmMY92eS2WY5YfUEvT4F7fNTPqrKf7
         w7z4r4R6V2JnrDsgWc5D36/yWmyT/kshC3zR5ejO6X/5ey9aM5whWaE4+kkQldlATs2q
         oTig==
X-Gm-Message-State: AJIora/VviV21Z165fiLSW2VeAqgQP3Fr/kZZ33SwLcUxL6c1/MCodlf
	+QTNBAedJ9Jy70TT8jWZDSYJMwnXGA+thg==
X-Google-Smtp-Source: AGRyM1sBIC9/di7qfrilLsM6phDDkGtcpwFIcM07v5u2Wgy9CJgCClQ42T8JtKf9bqYVSCbwDNdR7w==
X-Received: by 2002:a50:fd08:0:b0:43a:7890:9c54 with SMTP id i8-20020a50fd08000000b0043a78909c54mr13311497eds.52.1657392546088;
        Sat, 09 Jul 2022 11:49:06 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id l11-20020a1709066b8b00b0072b3182368fsm846937ejr.77.2022.07.09.11.49.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:49:05 -0700 (PDT)
Message-ID: <b0982687-4680-9bbd-d087-42266012d835@gmail.com>
Date: Sat, 9 Jul 2022 20:49:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 02/11] rockchip: idb: add basic functions
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_114908_485297_33983363 
X-CRM114-Status: GOOD (  16.65  )
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

On Rockchip SoCs with a NAND as boot device the
information data base (IDB) loaded by the boot ROM
is stored at the beginning of several erase blocks.
Add basic functions for reading and writing.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

Changed V2:
  remove CamelCases
  remove randomizer
  remove sector1 info
  remove stop and info cmd
  remove block driver
---
 arch/arm/mach-rockchip/Kconfig        |   12 +
 arch/arm/mach-rockchip/Makefile       |    1 +
 arch/arm/mach-rockchip/rockchip_idb.c | 1074 +++++++++++++++++++++++++
 3 files changed, 1087 insertions(+)
 create mode 100644 arch/arm/mach-rockchip/rockchip_idb.c

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 18aff548..0f464f1b 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -425,6 +425,18 @@ config ROCKCHIP_SPI_IMAGE
 config LNX_KRNL_IMG_TEXT_OFFSET_BASE
 	default SYS_TEXT_BASE
 
+config ROCKCHIP_IDB
+	bool "Use Rockchip IDB block device"
+	depends on BLK
+	help
+	  This option enables the Rockchip IDB block device
+
+config SPL_ROCKCHIP_IDB
+	bool "Use rockchip IDB block device in SPL"
+	depends on SPL_BLK
+	help
+	  This option enables the Rockchip IDB block device in SPL
+
 source "arch/arm/mach-rockchip/px30/Kconfig"
 source "arch/arm/mach-rockchip/rk3036/Kconfig"
 source "arch/arm/mach-rockchip/rk3066/Kconfig"
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index ebe0afa2..36c33ba4 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -29,6 +29,7 @@ obj-$(CONFIG_ROCKCHIP_COMMON_BOARD) += board.o
 
 ifeq ($(CONFIG_TPL_BUILD),)
 obj-$(CONFIG_DISPLAY_CPUINFO) += cpu-info.o
+obj-$(CONFIG_$(SPL_)ROCKCHIP_IDB) += rockchip_idb.o
 endif
 
 obj-$(CONFIG_$(SPL_TPL_)RAM) += sdram.o
diff --git a/arch/arm/mach-rockchip/rockchip_idb.c b/arch/arm/mach-rockchip/rockchip_idb.c
new file mode 100644
index 00000000..6a2af329
--- /dev/null
+++ b/arch/arm/mach-rockchip/rockchip_idb.c
@@ -0,0 +1,1074 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2022 Johan Jonker <jbx6244@gmail.com>
+ */
+
+#include <clk.h>
+#include <dm.h>
+#include <memalign.h>
+#include <linux/iopoll.h>
+
+#define NFC_DEF_TIMEOUT		20000
+#define NFC_ECC_MAX_MODES	4
+#define NFC_READ		0
+#define NFC_WRITE		1
+
+#define NFC_FMCTL		0x00
+#define  FMCTL_WP		BIT(8)
+#define  FMCTRL_CE_SEL_M	0xFF
+#define  FMCTL_RDY		BIT(9)
+
+#define NFC_FMWAIT		0x04
+
+#define  FLCTL_RST		BIT(0)
+#define  FLCTL_WR		0x1
+#define  FLCTL_XFER_ST		BIT(2)
+#define  FLCTL_XFER_EN		BIT(3)
+#define  FLCTL_ST_BUF_S		0x4
+#define  FLCTL_XFER_COUNT	BIT(5)
+#define  FLCTL_ACORRECT		BIT(10)
+#define  FLCTL_XFER_READY	BIT(20)
+
+#define  BCHCTL_BANK_M		(7 << 5)
+#define  BCHCTL_BANK		(5)
+
+#define ECC_ERR_CNT(x, e)	((((x) >> (e).low) & (e).low_mask) | \
+				(((x) >> (e).high) & (e).high_mask) << (e).low_bn)
+
+#define NFC_BANK		0x800
+#define NFC_BANK_STEP		0x100
+#define  BANK_DATA		0x00
+#define  BANK_ADDR		0x04
+#define  BANK_CMD		0x08
+
+#define NFC_SRAM0		0x1000
+#define NFC_SRAM_SIZE		0x400
+
+#define NAND_CMD_READ0		0
+#define NAND_CMD_PAGEPROG	0x10
+#define NAND_CMD_READSTART	0x30
+#define NAND_CMD_ERASE1		0x60
+#define NAND_CMD_SEQIN		0x80
+#define NAND_CMD_READID		0x90
+#define NAND_CMD_ERASE2		0xd0
+#define NAND_CMD_RESET		0xff
+
+#define DATA_STEP		1024
+#define OOB_STEP		4
+#define LBA			64 + 512 + 33
+
+#define DEFAULT_BLKS		8
+#define DEFAULT_STRENGTH	24
+
+#define RK_MAGIC		0xFCDC8C3B
+
+struct sector0 {
+	u32 magic;
+	u8  reserved[4];
+	u32 rc4_flag;
+	u16 boot_code1_offset;
+	u16 boot_code2_offset;
+	u8  reserved1[490];
+	u16 flash_data_size;
+	u16 flash_boot_size;
+	u8  reserved2[2];
+} __packed;
+
+struct nand_para_info {
+	u8 id_bytes;
+	u8 nand_id[6];
+	u8 vendor;
+	u8 die_per_chip;
+	u8 sec_per_page;
+	u16 page_per_blk;
+	u8 cell;
+	u8 plane_per_die;
+	u16 blk_per_plane;
+	u16 operation_opt;
+	u8 lsb_mode;
+	u8 read_retry_mode;
+	u8 ecc_bits;
+	u8 access_freq;
+	u8 opt_mode;
+	u8 die_gap;
+	u8 bad_block_mode;
+	u8 multi_plane_mode;
+	u8 slc_mode;
+	u8 reserved[5];
+};
+
+struct idb {
+	int blk;
+	int ecc;
+	int sectors;
+};
+
+enum nfc_type {
+	NFC_V6,
+	NFC_V8,
+	NFC_V9,
+};
+
+struct ecc_cnt_status {
+	u8 err_flag_bit;
+	u8 low;
+	u8 low_mask;
+	u8 low_bn;
+	u8 high;
+	u8 high_mask;
+};
+
+struct nfc_cfg {
+	enum nfc_type type;
+	u8 ecc_strengths[NFC_ECC_MAX_MODES];
+	u32 ecc_cfgs[NFC_ECC_MAX_MODES];
+	u32 flctl_off;
+	u32 bchctl_off;
+	u32 dma_cfg_off;
+	u32 dma_data_buf_off;
+	u32 dma_oob_buf_off;
+	u32 dma_st_off;
+	u32 bch_st_off;
+	u32 randmz_off;
+	u32 int_en_off;
+	u32 int_clr_off;
+	u32 int_st_off;
+	u32 oob0_off;
+	u32 oob1_off;
+	struct ecc_cnt_status ecc0;
+	struct ecc_cnt_status ecc1;
+};
+
+struct rk_idb {
+	void __iomem *regs;
+	struct clk nfc_clk;
+	struct clk ahb_clk;
+	const struct nfc_cfg *cfg;
+	int selected_bank;
+	u32 bank_offset;
+	struct nand_para_info *info;
+	u32 boot_blks;
+	u32 boot_ecc;
+	u32 pages_per_blk;
+	struct idb idblock[5];
+	u32 blk_counter;
+	u32 sectors;
+	u16 page_table[512];
+	char *check;
+	char *idb;
+};
+
+struct nand_para_info nand_para_tbl[] = {
+	{6, {0x2c, 0x64, 0x44, 0x4b, 0xa9, 0x00}, 4, 1, 16,  256, 2, 2, 2048, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x44, 0x44, 0x4b, 0xa9, 0x00}, 4, 1, 16,  256, 2, 2, 1064, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x68, 0x04, 0x4a, 0xa9, 0x00}, 4, 1,  8,  256, 2, 2, 2048, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x88, 0x04, 0x4b, 0xa9, 0x00}, 4, 1, 16,  256, 2, 2, 2048, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0xa8, 0x05, 0xcb, 0xa9, 0x00}, 4, 2, 16,  256, 2, 2, 2048, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x68, 0x04, 0x46, 0x89, 0x00}, 4, 1,  8,  256, 2, 2, 2048, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x48, 0x04, 0x4a, 0xa5, 0x00}, 4, 1,  8,  256, 2, 2, 1024, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x84, 0x64, 0x3c, 0xa5, 0x00}, 4, 1, 32,  512, 2, 2, 1024, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x84, 0x64, 0x54, 0xa9, 0x00}, 4, 1, 32,  512, 2, 2, 1024, 0x01df,  4, 18, 60, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0xd7, 0x94, 0x3e, 0x84, 0x00}, 4, 1,  8,  128, 2, 2, 4096, 0x0117,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x48, 0x04, 0x46, 0x85, 0x00}, 4, 1,  8,  256, 2, 2, 1024, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x88, 0x05, 0xc6, 0x89, 0x00}, 4, 2,  8,  256, 2, 2, 2048, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x88, 0x24, 0x4b, 0xa9, 0x00}, 4, 1, 16,  256, 2, 2, 2048, 0x011f,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x68, 0x00, 0x27, 0xa9, 0x00}, 4, 1, 16,  128, 1, 2, 2048, 0x011f,  0,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x64, 0x64, 0x56, 0xa5, 0x00}, 4, 1, 24,  512, 2, 2,  700, 0x01df,  4, 18, 60, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0x84, 0xc5, 0x4b, 0xa9, 0x00}, 4, 2, 16,  256, 2, 2, 2048, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0xd5, 0xd1, 0xa6, 0x68, 0x00}, 4, 2,  8,   64, 1, 2, 2048, 0x0117,  0,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0xdc, 0x90, 0xa6, 0x54, 0x00}, 4, 1,  8,   64, 1, 2, 1024, 0x0117,  0,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x64, 0x64, 0x54, 0xa4, 0x00}, 4, 1, 32,  512, 2, 1, 1024, 0x01df,  4, 18, 60, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x84, 0x44, 0x32, 0xaa, 0x00}, 4, 1, 32,  512, 2, 1, 2184, 0x05c7,  5, 19, 60, 32, 1, 0, 1, 0, 1, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x64, 0x44, 0x32, 0xa5, 0x00}, 4, 1, 32,  512, 2, 1, 1048, 0x05c7,  5, 19, 60, 32, 1, 0, 1, 0, 1, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x64, 0x64, 0x3c, 0xa5, 0x00}, 4, 1, 32,  512, 2, 1, 1044, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x84, 0x44, 0x32, 0xaa, 0x00}, 4, 1, 32,  512, 2, 1, 2184, 0x05c7,  5, 19, 60, 32, 1, 0, 4, 0, 1, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x84, 0x44, 0x34, 0xaa, 0x00}, 4, 1, 32,  512, 2, 1, 2184, 0x05c7,  5, 19, 60, 32, 1, 0, 4, 0, 1, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x84, 0xc4, 0x34, 0xaa, 0x00}, 4, 1, 32,  512, 2, 1, 2184, 0x05c7,  5, 19, 60, 32, 1, 0, 1, 0, 1, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x84, 0x44, 0x34, 0xa4, 0x00}, 4, 1, 32,  512, 2, 1, 2184, 0x05c7,  5, 19, 60, 32, 1, 0, 1, 0, 1, {0, 0, 0, 0, 0}},
+	{5, {0x2c, 0x84, 0x64, 0x3c, 0xa9, 0x00}, 4, 1, 32,  512, 2, 2, 1024, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x2c, 0xa4, 0x64, 0x32, 0xaa, 0x04}, 4, 1, 32, 1024, 2, 1, 2192, 0x05c7, 10, 19, 60, 32, 1, 0, 4, 0, 1, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xde, 0x94, 0xd2, 0x04, 0x43}, 2, 1, 16,  256, 2, 2, 2048, 0x01d9,  1,  1, 24, 32, 4, 0, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xd7, 0x94, 0xda, 0x74, 0xc3}, 2, 1, 16,  256, 2, 2, 1024, 0x01d9,  1,  2, 40, 32, 4, 0, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xd7, 0x94, 0x91, 0x60, 0x44}, 2, 1, 16,  256, 2, 2, 1046, 0x01d9,  1,  3, 40, 32, 4, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xde, 0x94, 0xda, 0x74, 0xc4}, 2, 1, 16,  256, 2, 2, 2090, 0x01d9,  1,  4, 40, 32, 4, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xde, 0x94, 0xeb, 0x74, 0x44}, 2, 1, 32,  256, 2, 2, 1066, 0x01d9,  1,  7, 40, 32, 4, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xd5, 0x94, 0xda, 0x74, 0xc4}, 2, 1, 16,  256, 2, 2,  530, 0x01d9,  1,  3, 40, 32, 4, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xd7, 0x94, 0x9a, 0x74, 0x42}, 2, 1, 16,  256, 2, 2, 1024, 0x0119,  1,  0, 24, 32, 4, 0, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xde, 0x14, 0xa7, 0x42, 0x4a}, 2, 1, 32,  256, 2, 2, 1060, 0x01d9,  2,  5, 40, 32, 4, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xd7, 0x14, 0x9e, 0x34, 0x4a}, 2, 1, 16,  256, 2, 2, 1056, 0x01d9,  2,  5, 40, 32, 4, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xde, 0x94, 0xa7, 0x42, 0x48}, 2, 1, 32,  256, 2, 2, 1060, 0x01d9,  2,  5, 40, 32, 4, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xde, 0x14, 0xab, 0x42, 0x4a}, 2, 1, 32,  256, 2, 2, 1056, 0x01d9,  2,  6, 40, 32, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0x3a, 0x14, 0xab, 0x42, 0x4a}, 2, 1, 32,  256, 2, 2, 2092, 0x01d9,  2,  5, 40, 32, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0xd5, 0x94, 0x9a, 0x74, 0x42}, 2, 1, 16,  256, 2, 1, 1024, 0x0111,  1,  0, 24, 32, 4, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xad, 0x3a, 0x14, 0x03, 0x08, 0x50}, 2, 1, 32,  388, 2, 2, 1362, 0x01d9,  9,  8, 40, 32, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x89, 0x64, 0x44, 0x4b, 0xa9, 0x00}, 7, 1, 16,  256, 2, 2, 2048, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x89, 0x88, 0x24, 0x4b, 0xa9, 0x84}, 7, 1, 16,  256, 2, 2, 2048, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x89, 0x88, 0x24, 0x4b, 0xa9, 0x00}, 7, 1, 16,  256, 2, 2, 2048, 0x0117,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x89, 0x68, 0x24, 0x4a, 0xa9, 0x00}, 7, 1,  8,  256, 2, 2, 2048, 0x0117,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x89, 0x68, 0x04, 0x4a, 0xa9, 0x00}, 7, 1,  8,  256, 2, 2, 2048, 0x0117,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x89, 0xd7, 0x94, 0x3e, 0x84, 0x00}, 7, 1,  8,  256, 2, 2, 2048, 0x0117,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x89, 0x68, 0x04, 0x46, 0xa9, 0x00}, 7, 1,  8,  256, 2, 2, 2048, 0x0117,  1,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x89, 0x64, 0x64, 0x3c, 0xa1, 0x00}, 7, 1, 32,  512, 2, 1, 1024, 0x01c7,  4, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0x89, 0x84, 0x64, 0x3c, 0xa5, 0x00}, 7, 1, 32,  512, 2, 2, 1024, 0x01c7,  4, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x89, 0x88, 0x24, 0x3b, 0xa9, 0x00}, 7, 1, 16,  192, 2, 2, 2048, 0x0117, 12,  0, 24, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xd7, 0x84, 0x93, 0x72, 0x57}, 1, 1, 32,  256, 2, 1, 1060, 0x05c1,  2, 33, 40, 32, 2, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xde, 0x84, 0x93, 0x72, 0x57}, 1, 1, 32,  256, 2, 1, 2092, 0x05c1,  2, 33, 40, 32, 2, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0x3a, 0x85, 0x93, 0x76, 0x57}, 1, 2, 32,  256, 2, 1, 2092, 0x05e1,  2, 33, 40, 32, 2, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xd5, 0x84, 0x32, 0x72, 0x56}, 1, 1, 16,  128, 2, 1, 2056, 0x05c1,  2, 33, 40, 32, 2, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xd7, 0x94, 0x32, 0x76, 0x56}, 1, 1, 16,  128, 2, 2, 2058, 0x05d1,  2, 33, 40, 32, 2, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xde, 0x94, 0x82, 0x76, 0x56}, 1, 1, 16,  256, 2, 2, 2062, 0x05d1,  1, 33, 40, 32, 2, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xde, 0x94, 0x93, 0x76, 0x50}, 1, 1, 32,  256, 2, 2, 1066, 0x05d9,  2, 34, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0x3a, 0x95, 0x93, 0x7a, 0x50}, 1, 2, 32,  256, 2, 2, 1066, 0x05d9,  2, 34, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xd7, 0x94, 0x32, 0x76, 0x55}, 1, 1, 16,  128, 2, 2, 2050, 0x0191,  2,  0, 24, 32, 1, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xde, 0x94, 0x93, 0x76, 0x57}, 1, 1, 32,  256, 2, 2, 1058, 0x05d9,  2, 33, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xd7, 0x84, 0x93, 0x72, 0x50}, 1, 1, 32,  256, 2, 1, 1060, 0x05c1,  2, 34, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xde, 0x94, 0x93, 0x76, 0x51}, 1, 1, 32,  256, 2, 2, 1074, 0x05d9,  2, 35, 40, 32, 3, 1, 4, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0x3a, 0x94, 0x93, 0x76, 0x51}, 1, 1, 32,  256, 2, 2, 2106, 0x05d9,  2, 35, 40, 32, 3, 1, 4, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xd7, 0x84, 0x93, 0x72, 0x51}, 1, 1, 32,  256, 2, 1, 1056, 0x05d9,  2, 35, 40, 32, 3, 1, 4, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x98, 0xde, 0x94, 0x93, 0x76, 0xd1}, 1, 1, 32,  256, 2, 2, 1074, 0x05d9,  2, 35, 40, 32, 3, 1, 4, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xde, 0x94, 0x93, 0x76, 0x57}, 8, 1, 32,  256, 2, 2, 1058, 0x05d9,  2, 66, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xd7, 0x84, 0x93, 0x72, 0x57}, 8, 1, 32,  256, 2, 1, 1060, 0x05c1,  2, 66, 40, 32, 2, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xde, 0xa4, 0x82, 0x76, 0x56}, 8, 1, 16,  256, 2, 2, 2082, 0x01d9,  1, 65, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xde, 0x94, 0x93, 0x76, 0x50}, 8, 1, 32,  256, 2, 2, 1066, 0x05d9,  2, 67, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xd7, 0x84, 0x93, 0x72, 0x50}, 8, 1, 32,  256, 2, 1, 1060, 0x05c1,  2, 67, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xde, 0xa4, 0x82, 0x76, 0xd7}, 8, 1, 16,  256, 2, 2, 2090, 0x04d9,  1, 66, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xde, 0x84, 0x93, 0x72, 0x57}, 8, 1, 32,  256, 2, 1, 2092, 0x05c1,  2, 66, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0x3a, 0x94, 0x93, 0x76, 0x51}, 8, 1, 32,  256, 2, 2, 2106, 0x01d9,  2, 68, 40, 32, 3, 1, 4, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xde, 0x94, 0x93, 0x76, 0x51}, 8, 1, 32,  256, 2, 2, 1074, 0x01d9,  2, 68, 40, 32, 3, 1, 4, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0x3a, 0xa4, 0x93, 0x7a, 0x50}, 8, 1, 32,  256, 2, 2, 2138, 0x05d9,  2,  0, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xde, 0x94, 0x82, 0x76, 0x56}, 8, 1, 16,  256, 2, 2, 2062, 0x01d9,  1,  0, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0x45, 0xde, 0x94, 0x93, 0x76, 0xd7}, 8, 1, 32,  256, 2, 2, 1058, 0x05d9,  2, 66, 40, 32, 3, 1, 1, 0, 0, {0, 0, 0, 0, 0}},
+	{5, {0xec, 0xd7, 0x94, 0x7e, 0x64, 0x44}, 0, 1, 16,  128, 2, 2, 2048, 0x01d9,  2, 49, 60, 36, 3, 0, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xec, 0xde, 0xd5, 0x7e, 0x68, 0x44}, 0, 2, 16,  128, 2, 2, 2048, 0x01f9,  2, 49, 60, 36, 3, 0, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xec, 0xd7, 0x94, 0x7a, 0x54, 0x43}, 0, 1, 16,  128, 2, 2, 2076, 0x0199,  2,  0, 40, 36, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xec, 0xde, 0xd5, 0x7a, 0x58, 0x43}, 0, 2, 16,  128, 2, 2, 2076, 0x01b9,  2,  0, 40, 36, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xec, 0xd5, 0x94, 0x76, 0x54, 0x43}, 0, 1, 16,  128, 2, 2, 1038, 0x0119,  2,  0, 24, 36, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xec, 0xd7, 0x14, 0x76, 0x54, 0xc2}, 0, 1, 16,  128, 2, 2, 2076, 0x0491,  2,  0, 24, 40, 3, 1, 3, 0, 0, {0, 0, 0, 0, 0}},
+	{6, {0xec, 0xde, 0x94, 0xc3, 0xa4, 0xca}, 0, 1, 32,  792, 2, 1,  688, 0x04c1, 11, 50, 40, 32, 3, 1, 1, 0, 1, {0, 0, 0, 0, 0}},
+};
+
+void rk_idb_build_page_table(struct rk_idb *plat, u32 lsb_mode)
+{
+	u32 counter;
+	u32 counter2;
+
+	switch (lsb_mode) {
+	case 0:
+		counter = 0;
+		do {
+			u16 val = counter;
+
+			plat->page_table[counter++] = val;
+		} while (counter != 512);
+		break;
+	case 1:
+		counter = 0;
+		do {
+			u16 val = counter;
+
+			if (counter > 3) {
+				u16 offset;
+
+				if (counter & 1)
+					offset = 3;
+				else
+					offset = 2;
+				val = 2 * counter - offset;
+			}
+			plat->page_table[counter++] = val;
+		} while (counter != 512);
+		break;
+	case 2:
+		counter = 0;
+		do {
+			u16 val = counter;
+
+			if (counter > 1)
+				val = 2 * counter - 1;
+			plat->page_table[counter++] = val;
+		} while (counter != 512);
+		break;
+	case 3:
+		counter = 0;
+		do {
+			u16 val = counter;
+
+			if (counter > 5) {
+				u16 offset;
+
+				if (counter & 1)
+					offset = 5;
+				else
+					offset = 4;
+				val = 2 * counter - offset;
+			}
+			plat->page_table[counter++] = val;
+		} while (counter != 512);
+		break;
+	case 4:
+		counter = 8;
+		plat->page_table[0] = 0;
+		plat->page_table[1] = 1;
+		plat->page_table[2] = 2;
+		plat->page_table[3] = 3;
+		plat->page_table[4] = 4;
+		plat->page_table[5] = 5;
+		plat->page_table[6] = 7;
+		plat->page_table[7] = 8;
+		do {
+			u32 offset;
+			u32 val;
+
+			if (counter & 1)
+				offset = 7;
+			else
+				offset = 6;
+			val = 2 * counter - offset;
+			plat->page_table[counter++] = val;
+		} while (counter != 512);
+		break;
+	case 5:
+		counter = 0;
+		counter2 = 16;
+		do {
+			u16 val = counter;
+
+			plat->page_table[counter++] = val;
+		} while (counter != 16);
+		do {
+			plat->page_table[counter++] = counter2;
+			counter2 = counter2 + 2;
+		} while (counter != 512);
+		break;
+	case 6:
+		counter = 0;
+		counter2 = 0;
+		do {
+			u16 val = counter;
+
+			if (counter > 5) {
+				u16 offset;
+
+				if (counter & 1)
+					offset = 12;
+				else
+					offset = 10;
+				val = counter2 - offset;
+			}
+			plat->page_table[counter++] = val;
+			counter2 = counter2 + 3;
+		} while (counter != 512);
+		break;
+	case 9:
+		counter = 3;
+		counter2 = 3;
+		plat->page_table[0] = 0;
+		plat->page_table[1] = 1;
+		plat->page_table[2] = 2;
+		do {
+			plat->page_table[counter++] = counter2;
+			counter2 = counter2 + 2;
+		} while (counter != 512);
+		break;
+	case 10:
+		counter = 0;
+		counter2 = 63;
+		do {
+			u16 val = counter;
+
+			plat->page_table[counter++] = val;
+		} while (counter != 63);
+		do {
+			plat->page_table[counter++] = counter2;
+			counter2 = counter2 + 2;
+		} while (counter != 512);
+		break;
+	case 11:
+		counter = 0;
+		do {
+			u16 val = counter;
+
+			plat->page_table[counter++] = val;
+		} while (counter != 8);
+		do {
+			u32 offset;
+			u32 val;
+
+			if (counter & 1)
+				offset = 7;
+			else
+				offset = 6;
+			val = 2 * counter - offset;
+			plat->page_table[counter++] = val;
+		} while (counter != 512);
+		break;
+	case 12:
+		counter = 4;
+		plat->page_table[0] = 0;
+		plat->page_table[1] = 1;
+		plat->page_table[2] = 2;
+		plat->page_table[3] = 3;
+		do {
+			u32 val = counter - 1 + (counter >> 1);
+
+			plat->page_table[counter++] = val;
+		} while (counter != 512);
+		break;
+	}
+}
+
+void rk_idb_rc4(u8 *buf, u32 len)
+{
+	u8 S[256], K[256], temp;
+	u32 i, j, t, x;
+	u8 key[16] = { 124, 78, 3, 4, 85, 5, 9, 7, 45, 44, 123, 56, 23, 13, 23, 17};
+
+	j = 0;
+	for (i = 0; i < 256; i++) {
+		S[i] = (u8)i;
+		j &= 0x0f;
+		K[i] = key[j];
+		j++;
+	}
+
+	j = 0;
+	for (i = 0; i < 256; i++) {
+		j = (j + S[i] + K[i]) % 256;
+		temp = S[i];
+		S[i] = S[j];
+		S[j] = temp;
+	}
+
+	i = 0;
+	j = 0;
+	for (x = 0; x < len; x++) {
+		i = (i + 1) % 256;
+		j = (j + S[i]) % 256;
+		temp = S[i];
+		S[i] = S[j];
+		S[j] = temp;
+		t = (S[i] + (S[j] % 256)) % 256;
+		buf[x] = buf[x] ^ S[t];
+	}
+}
+
+void rk_idb_wait_dev_ready(struct rk_idb *plat)
+{
+	void __iomem *regs = plat->regs;
+	u32 reg;
+
+	readl_poll_sleep_timeout(regs + NFC_FMCTL,
+				 reg,
+				 reg & FMCTL_RDY,
+				 1,
+				 NFC_DEF_TIMEOUT);
+}
+
+int rk_idb_wait_pio_xfer_done(struct rk_idb *plat)
+{
+	void __iomem *regs = plat->regs;
+	u32 reg;
+
+	return readl_poll_sleep_timeout(regs + plat->cfg->flctl_off,
+					reg,
+					reg & FLCTL_XFER_READY,
+					1,
+					NFC_DEF_TIMEOUT);
+}
+
+int rk_idb_hw_ecc_setup(struct rk_idb *plat, u32 strength)
+{
+	void __iomem *regs = plat->regs;
+	u32 reg, i;
+
+	for (i = 0; i < NFC_ECC_MAX_MODES; i++) {
+		if (strength == plat->cfg->ecc_strengths[i]) {
+			reg = plat->cfg->ecc_cfgs[i];
+			break;
+		}
+	}
+
+	if (i >= NFC_ECC_MAX_MODES)
+		return -EINVAL;
+
+	writel(reg, regs + plat->cfg->bchctl_off);
+
+	return 0;
+}
+
+void rk_idb_select_chip(struct rk_idb *plat, int chipnr)
+{
+	void __iomem *regs = plat->regs;
+	u32 reg;
+
+	if (chipnr < 0) {
+		plat->selected_bank = -1;
+	} else {
+		plat->selected_bank = chipnr;
+		plat->bank_offset = NFC_BANK + plat->selected_bank * NFC_BANK_STEP;
+	}
+
+	reg = readl(regs + NFC_FMCTL);
+	reg &= ~FMCTRL_CE_SEL_M;
+	if (plat->selected_bank != -1)
+		reg |= 1 << plat->selected_bank;
+	writel(reg, regs + NFC_FMCTL);
+}
+
+void rk_idb_pio_xfer_start(struct rk_idb *plat, u8 dir, u8 st_buf)
+{
+	void __iomem *regs = plat->regs;
+	u32 reg;
+
+	if (plat->cfg->type == NFC_V6 || plat->cfg->type == NFC_V8) {
+		reg = readl(regs + plat->cfg->bchctl_off);
+		reg = (reg & (~(BCHCTL_BANK_M))) |
+		      (plat->selected_bank << BCHCTL_BANK);
+		writel(reg, regs + plat->cfg->bchctl_off);
+	}
+
+	reg = (dir << FLCTL_WR) | (st_buf << FLCTL_ST_BUF_S) |
+	      FLCTL_XFER_EN | FLCTL_XFER_COUNT |
+	      FLCTL_ACORRECT;
+	writel(reg, regs + plat->cfg->flctl_off);
+
+	reg |= FLCTL_XFER_ST;
+	writel(reg, regs + plat->cfg->flctl_off);
+}
+
+void rk_idb_init(struct rk_idb *plat)
+{
+	void __iomem *regs = plat->regs;
+
+	writel(FMCTL_WP, regs + NFC_FMCTL);
+	/* Config default timing 40ns at 150 Mhz NFC clock. */
+	writel(0x1081, regs + NFC_FMWAIT);
+	writel(0, regs + plat->cfg->randmz_off);
+	writel(0, regs + plat->cfg->dma_cfg_off);
+	writeb(NAND_CMD_RESET, regs + NFC_BANK + BANK_CMD);
+	rk_idb_wait_dev_ready(plat);
+}
+
+void rk_idb_read_id(struct rk_idb *plat, u8 *id, int len)
+{
+	void __iomem *regs = plat->regs;
+	void __iomem *bank_base = regs + plat->bank_offset;
+
+	writeb(NAND_CMD_READID, bank_base + BANK_CMD);
+	writeb(0x0, bank_base + BANK_ADDR);
+	udelay(1);
+
+	debug("FLASH ID               :");
+
+	for (int i = 0; i < len; i++) {
+		id[i] = readb(bank_base);
+		debug(" %x", id[i]);
+	}
+
+	debug("\n");
+}
+
+void rk_idb_erase_op(struct rk_idb *plat, int page)
+{
+	void __iomem *regs = plat->regs;
+	void __iomem *bank_base = regs + plat->bank_offset;
+
+	writeb(NAND_CMD_ERASE1, bank_base + BANK_CMD);
+	writeb(page, bank_base + BANK_ADDR);
+	writeb(page >> 8, bank_base + BANK_ADDR);
+	writeb(page >> 16, bank_base + BANK_ADDR);
+	writeb(NAND_CMD_ERASE2, bank_base + BANK_CMD);
+}
+
+void rk_idb_read_page_op(struct rk_idb *plat, int page, int col)
+{
+	void __iomem *regs = plat->regs;
+	void __iomem *bank_base = regs + plat->bank_offset;
+
+	writeb(NAND_CMD_READ0, bank_base + BANK_CMD);
+	writeb(col, bank_base + BANK_ADDR);
+	writeb(col >> 8, bank_base + BANK_ADDR);
+	writeb(page, bank_base + BANK_ADDR);
+	writeb(page >> 8, bank_base + BANK_ADDR);
+	writeb(page >> 16, bank_base + BANK_ADDR);
+	writeb(NAND_CMD_READSTART, bank_base + BANK_CMD);
+}
+
+void rk_idb_write_page_op_begin(struct rk_idb *plat, int page, int col)
+{
+	void __iomem *regs = plat->regs;
+	void __iomem *bank_base = regs + plat->bank_offset;
+
+	writeb(NAND_CMD_SEQIN, bank_base + BANK_CMD);
+	writeb(col, bank_base + BANK_ADDR);
+	writeb(col >> 8, bank_base + BANK_ADDR);
+	writeb(page, bank_base + BANK_ADDR);
+	writeb(page >> 8, bank_base + BANK_ADDR);
+	writeb(page >> 16, bank_base + BANK_ADDR);
+}
+
+void rk_idb_write_page_op_end(struct rk_idb *plat)
+{
+	void __iomem *regs = plat->regs;
+	void __iomem *bank_base = regs + plat->bank_offset;
+
+	writeb(NAND_CMD_PAGEPROG, bank_base + BANK_CMD);
+}
+
+int rk_idb_read_page(struct rk_idb *plat, unsigned int page, u8 *buf, u8 *spare, u8 steps)
+{
+	void __iomem *regs = plat->regs;
+	void __iomem *sram_base = regs + NFC_SRAM0;
+	unsigned int max_bitflips = 0;
+	int bch_st;
+	int ret;
+
+	rk_idb_read_page_op(plat, page, 0);
+	rk_idb_wait_dev_ready(plat);
+	rk_idb_pio_xfer_start(plat, NFC_READ, 0);
+
+	for (int step = 0; step < steps / 2; step++) {
+		u8 *data = buf + step * DATA_STEP;
+		u8 *oob = spare + step * OOB_STEP;
+
+		ret = rk_idb_wait_pio_xfer_done(plat);
+		if (ret) {
+			debug("read timeout\n");
+			max_bitflips = -1;
+			break;
+		}
+
+		bch_st = readl(regs + plat->cfg->bch_st_off);
+
+		if (bch_st & BIT(plat->cfg->ecc0.err_flag_bit)) {
+			max_bitflips = -1;
+			break;
+		} else {
+			ret = ECC_ERR_CNT(bch_st, plat->cfg->ecc0);
+			max_bitflips = max_t(unsigned int, max_bitflips, ret);
+		}
+
+		if ((step + 1) < steps / 2)
+			rk_idb_pio_xfer_start(plat, NFC_READ, (step + 1) & 0x1);
+
+		memcpy_fromio(data, sram_base + NFC_SRAM_SIZE * (step & 0x1), DATA_STEP);
+
+		if (step & 1)
+			memcpy_fromio(oob, regs + plat->cfg->oob1_off, OOB_STEP);
+		else
+			memcpy_fromio(oob, regs + plat->cfg->oob0_off, OOB_STEP);
+	}
+
+	u32 *p_spare = (u32 *)spare;
+
+	debug("read_page page_addr: %d spare[0]:%d\n", page, *p_spare);
+
+	return max_bitflips;
+}
+
+int rk_idb_write_page(struct rk_idb *plat, unsigned int page, u8 *buf, u8 *spare, u8 steps)
+{
+	void __iomem *regs = plat->regs;
+	void __iomem *sram_base = regs + NFC_SRAM0;
+	int ret = 0;
+
+	u32 *p_spare = (u32 *)spare;
+
+	debug("write_page page_addr: %d spare[0]:%d\n", page, *p_spare);
+
+	rk_idb_write_page_op_begin(plat, page, 0);
+
+	memcpy_toio(sram_base, buf, DATA_STEP);
+	memcpy_toio(regs + plat->cfg->oob0_off, spare, OOB_STEP);
+
+	for (int step = 1; step <= steps / 2; step++) {
+		rk_idb_pio_xfer_start(plat, NFC_WRITE, (step - 1) & 0x1);
+
+		u8 *data = buf + step * DATA_STEP;
+		u8 *oob = spare + step * OOB_STEP;
+
+		if (step < steps / 2) {
+			memcpy_toio(sram_base + NFC_SRAM_SIZE * (step & 1), data, DATA_STEP);
+
+			if (step & 1)
+				memcpy_fromio(regs + plat->cfg->oob1_off, oob, OOB_STEP);
+			else
+				memcpy_fromio(regs + plat->cfg->oob0_off, oob, OOB_STEP);
+		}
+
+		ret = rk_idb_wait_pio_xfer_done(plat);
+		if (ret) {
+			debug("write timeout\n");
+			ret = -1;
+			break;
+		}
+	}
+
+	rk_idb_write_page_op_end(plat);
+	rk_idb_wait_dev_ready(plat);
+
+	return ret;
+}
+
+void rk_idb_scan_block(struct rk_idb *plat, u32 *data, u32 *spare)
+{
+	u32 blk;
+	u32 bch_counter;
+	int status;
+
+	plat->blk_counter = 0;
+
+	for (blk = 0; blk < plat->boot_blks; blk++) {
+		for (bch_counter = 0; bch_counter < NFC_ECC_MAX_MODES; bch_counter++) {
+			rk_idb_hw_ecc_setup(plat, plat->cfg->ecc_strengths[bch_counter]);
+
+			status = rk_idb_read_page(plat, blk * plat->pages_per_blk,
+						  (u8 *)data, (u8 *)spare, 4);
+			if (status != -1 && *data == RK_MAGIC) {
+				u32 boot_size;
+
+				rk_idb_rc4((char *)data, 512);
+
+				struct sector0 *sec0 = (struct sector0 *)data;
+
+				if ((sec0->flash_boot_size -
+				     sec0->flash_data_size) != 1024) {
+					boot_size = sec0->flash_boot_size -
+						    sec0->flash_data_size;
+				} else {
+					boot_size = 0;
+				}
+
+				int sectors = sec0->boot_code1_offset +
+					      sec0->flash_data_size +
+					      boot_size;
+
+				plat->idblock[plat->blk_counter].blk = blk;
+				plat->idblock[plat->blk_counter].ecc =
+					plat->cfg->ecc_strengths[bch_counter];
+				plat->idblock[plat->blk_counter].sectors = sectors;
+
+				debug("\nblk     : %d\n", plat->idblock[plat->blk_counter].blk);
+				debug("ecc     : %d\n", plat->idblock[plat->blk_counter].ecc);
+				debug("sectors : %d\n", plat->idblock[plat->blk_counter].sectors);
+
+				plat->blk_counter += 1;
+
+				if (plat->blk_counter >= ARRAY_SIZE(plat->idblock))
+					return;
+				break;
+			}
+		}
+	}
+}
+
+void rk_idb_read_block(struct rk_idb *plat, u32 idb, u32 sectors, u32 *data, u32 *spare)
+{
+	int page = plat->idblock[idb].blk * plat->pages_per_blk;
+	int j;
+
+	rk_idb_hw_ecc_setup(plat, plat->idblock[idb].ecc);
+
+	for (j = 0; j < sectors / 4; j++) {
+		rk_idb_read_page(plat, page + plat->page_table[j],
+				 (u8 *)data + j * 512 * 4, (u8 *)spare, 4);
+	}
+}
+
+void rk_idb_write_block(struct rk_idb *plat, u32 idb, u32 sectors, u32 *data, u32 *spare)
+{
+	int page = plat->idblock[idb].blk * plat->pages_per_blk;
+	int j;
+
+	plat->idblock[idb].sectors = sectors;
+
+	rk_idb_hw_ecc_setup(plat, plat->idblock[idb].ecc);
+	rk_idb_erase_op(plat, page);
+	rk_idb_wait_dev_ready(plat);
+
+	for (j = 0; j < sectors / 4; j++) {
+		spare[0] = (plat->page_table[j + 1] - 1) * 4;
+		spare[1] = 0xFFFFFFFF;
+		rk_idb_write_page(plat, page + plat->page_table[j],
+				  (u8 *)data + j * 512 * 4, (u8 *)spare, 4);
+	}
+
+	for (j = 0; j < sectors / 4; j++) {
+		rk_idb_read_page(plat, page + plat->page_table[j],
+				 (u8 *)plat->check + j * 512 * 4, (u8 *)spare, 4);
+	}
+
+	for (j = 0; j < (sectors * 512); j++) {
+		int w = *((u8 *)data + j);
+		int r = *((u8 *)plat->check + j);
+
+		if (r != w) {
+			debug("write and check error:%d r=%x w=%x\n", j, r, w);
+
+			memset((u8 *)plat->check, 0, 4 * 512);
+			spare[0] = 0xFFFFFFFF;
+			spare[1] = 0xFFFFFFFF;
+			rk_idb_write_page(plat, page, (u8 *)plat->check, (u8 *)spare, 4);
+
+			plat->idblock[idb].sectors = 0;
+			break;
+		}
+	}
+}
+
+void rk_idb_block_align(struct rk_idb *plat, u32 pages_per_blk)
+{
+	plat->pages_per_blk = pages_per_blk;
+	if (pages_per_blk > 512)
+		plat->pages_per_blk = 1024;
+	else if (pages_per_blk > 256)
+		plat->pages_per_blk = 512;
+	else if (pages_per_blk > 128)
+		plat->pages_per_blk = 256;
+}
+
+int rk_idb_init_plat(struct udevice *dev)
+{
+	struct rk_idb *plat = dev_get_plat(dev);
+
+	plat->idb = malloc_cache_aligned(512 * 512);
+
+	if (!plat->idb) {
+		debug("idb malloc failed\n");
+		return -1;
+	}
+
+	plat->check = malloc_cache_aligned(512 * 512);
+
+	if (!plat->check) {
+		debug("check malloc failed\n");
+		return -1;
+	}
+
+	return 0;
+}
+
+int rk_idb_probe(struct udevice *dev)
+{
+	struct rk_idb *plat = dev_get_plat(dev);
+	const char *node_name;
+	ofnode subnode;
+	u8 id[8];
+	int ret;
+	int i;
+
+	plat->cfg = (void *)dev_get_driver_data(dev);
+
+	plat->regs = (void *)dev_read_addr(dev);
+
+	ofnode_for_each_subnode(subnode, dev_ofnode(dev)) {
+		node_name = ofnode_get_name(subnode);
+
+		if (ofnode_read_bool(subnode, "nand-is-boot-medium"))
+			break;
+	}
+
+	if (!ofnode_valid(subnode))
+		return -ENODEV;
+
+	plat->boot_blks = ofnode_read_u32_default(subnode, "rockchip,boot-blks",
+						  DEFAULT_BLKS);
+	plat->boot_ecc = ofnode_read_u32_default(subnode, "rockchip,boot-ecc-strength",
+						 DEFAULT_STRENGTH);
+
+	ret = clk_get_by_index(dev, 0, &plat->ahb_clk);
+	if (ret < 0) {
+		debug("no ahb clk\n");
+		return -ENODEV;
+	}
+
+	ret = clk_prepare_enable(&plat->ahb_clk);
+	if (ret) {
+		debug("failed to enable ahb clk\n");
+		return -ENODEV;
+	}
+
+	ret = clk_get_by_index(dev, 1, &plat->nfc_clk);
+	if (ret < 0) {
+		debug("no nfc clk\n");
+		/* Some earlier models, such as rk3066, have no nfc clk. */
+	} else {
+		ret = clk_prepare_enable(&plat->nfc_clk);
+		if (ret) {
+			debug("failed to enable nfc clk\n");
+			clk_disable_unprepare(&plat->ahb_clk);
+			return -ENODEV;
+		}
+	}
+
+	rk_idb_init(plat);
+
+	rk_idb_select_chip(plat, 0);
+
+	rk_idb_read_id(plat, id, 8);
+
+	int size = ARRAY_SIZE(nand_para_tbl);
+
+	for (i = 0; i < size; i++) {
+		plat->info = (struct nand_para_info *)&nand_para_tbl[i];
+		if (plat->info->nand_id[0] == id[0] &&
+		    plat->info->nand_id[1] == id[1] &&
+		    plat->info->nand_id[2] == id[2] &&
+		    plat->info->nand_id[3] == id[3] &&
+		    plat->info->nand_id[4] == id[4] &&
+		    plat->info->nand_id[5] == id[5])
+			break;
+	}
+
+	if (i == size) {
+		debug("no nand_para_info found\n");
+		return -ENODEV;
+	}
+
+	rk_idb_block_align(plat, plat->info->page_per_blk);
+
+	rk_idb_build_page_table(plat, plat->info->lsb_mode);
+
+	ret = rk_idb_init_plat(dev);
+	if (ret) {
+		debug("rk_idb_init_plat failed\n");
+		return -ENOENT;
+	}
+
+	return 0;
+}
+
+static struct nfc_cfg nfc_v6_cfg = {
+	.type			= NFC_V6,
+	.ecc_strengths		= {60, 40, 24, 16},
+	.ecc_cfgs		= {
+		0x00040011, 0x00040001, 0x00000011, 0x00000001,
+	},
+	.flctl_off		= 0x08,
+	.bchctl_off		= 0x0C,
+	.dma_cfg_off		= 0x10,
+	.dma_data_buf_off	= 0x14,
+	.dma_oob_buf_off	= 0x18,
+	.dma_st_off		= 0x1C,
+	.bch_st_off		= 0x20,
+	.randmz_off		= 0x150,
+	.int_en_off		= 0x16C,
+	.int_clr_off		= 0x170,
+	.int_st_off		= 0x174,
+	.oob0_off		= 0x200,
+	.oob1_off		= 0x230,
+	.ecc0			= {
+		.err_flag_bit	= 2,
+		.low		= 3,
+		.low_mask	= 0x1F,
+		.low_bn		= 5,
+		.high		= 27,
+		.high_mask	= 0x1,
+	},
+	.ecc1			= {
+		.err_flag_bit	= 15,
+		.low		= 16,
+		.low_mask	= 0x1F,
+		.low_bn		= 5,
+		.high		= 29,
+		.high_mask	= 0x1,
+	},
+};
+
+static struct nfc_cfg nfc_v8_cfg = {
+	.type			= NFC_V8,
+	.ecc_strengths		= {16, 16, 16, 16},
+	.ecc_cfgs		= {
+		0x00000001, 0x00000001, 0x00000001, 0x00000001,
+	},
+	.flctl_off		= 0x08,
+	.bchctl_off		= 0x0C,
+	.dma_cfg_off		= 0x10,
+	.dma_data_buf_off	= 0x14,
+	.dma_oob_buf_off	= 0x18,
+	.dma_st_off		= 0x1C,
+	.bch_st_off		= 0x20,
+	.randmz_off		= 0x150,
+	.int_en_off		= 0x16C,
+	.int_clr_off		= 0x170,
+	.int_st_off		= 0x174,
+	.oob0_off		= 0x200,
+	.oob1_off		= 0x230,
+	.ecc0			= {
+		.err_flag_bit	= 2,
+		.low		= 3,
+		.low_mask	= 0x1F,
+		.low_bn		= 5,
+		.high		= 27,
+		.high_mask	= 0x1,
+	},
+	.ecc1			= {
+		.err_flag_bit	= 15,
+		.low		= 16,
+		.low_mask	= 0x1F,
+		.low_bn		= 5,
+		.high		= 29,
+		.high_mask	= 0x1,
+	},
+};
+
+static struct nfc_cfg nfc_v9_cfg = {
+	.type			= NFC_V9,
+	.ecc_strengths		= {70, 60, 40, 16},
+	.ecc_cfgs		= {
+		0x00000001, 0x06000001, 0x04000001, 0x02000001,
+	},
+	.flctl_off		= 0x10,
+	.bchctl_off		= 0x20,
+	.dma_cfg_off		= 0x30,
+	.dma_data_buf_off	= 0x34,
+	.dma_oob_buf_off	= 0x38,
+	.dma_st_off		= 0x3C,
+	.bch_st_off		= 0x150,
+	.randmz_off		= 0x208,
+	.int_en_off		= 0x120,
+	.int_clr_off		= 0x124,
+	.int_st_off		= 0x128,
+	.oob0_off		= 0x200,
+	.oob1_off		= 0x204,
+	.ecc0			= {
+		.err_flag_bit	= 2,
+		.low		= 3,
+		.low_mask	= 0x7F,
+		.low_bn		= 7,
+		.high		= 0,
+		.high_mask	= 0x0,
+	},
+	.ecc1			= {
+		.err_flag_bit	= 18,
+		.low		= 19,
+		.low_mask	= 0x7F,
+		.low_bn		= 7,
+		.high		= 0,
+		.high_mask	= 0x0,
+	},
+};
+
+static const struct udevice_id rk_idb_ids[] = {
+	{
+		.compatible = "rockchip,px30-nfc",
+		.data = (unsigned long)&nfc_v9_cfg
+	},
+	{
+		.compatible = "rockchip,rk2928-nfc",
+		.data = (unsigned long)&nfc_v6_cfg
+	},
+	{
+		.compatible = "rockchip,rv1108-nfc",
+		.data = (unsigned long)&nfc_v8_cfg
+	},
+	{ /* sentinel */ }
+};
+
+U_BOOT_DRIVER(rockchip_idb) = {
+	.name		= "rockchip_idb",
+	.id		= UCLASS_RK_IDB,
+	.of_match	= rk_idb_ids,
+	.probe		= rk_idb_probe,
+	.plat_auto	= sizeof(struct rk_idb),
+};
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
