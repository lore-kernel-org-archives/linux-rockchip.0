Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 31FD8C43334
	for <linux-rockchip@archiver.kernel.org>; Tue,  5 Jul 2022 13:04:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:To:Subject:From:
	MIME-Version:Date:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7Pz04jPAe+oosoR/HAlAvKFGep6DuWImuyUWBcAVhGo=; b=StxshuXxqqJKot
	fUwRD6R24JIg2n6Mn8+ZeNp7Bj/ds36lKhMh+xjuU/IicaWS2HQ1ABHCEM0qX+uFj4h2tcbNoTg/K
	fT/TKHFb5kDpJHv+VbB4QKYyeHH0nQOe5XUoKwXohp5JfwUwzr42zK4QMBTLUJkjog/CoKzXZZIqu
	TYIGPAdmZiuobSRDLN6q6jx8pNMj3fiMSUBZgmto7UWhVfN/dggMvyD26H0iD9SHqaOUh7GQRfpIE
	lPf7k3qz+ebL0/IbG1TsEXADLmXT5EB6TA2zqzN3HRHbmve8iAp9t/hnhFAQmKQ6mM4CjPByS7rzn
	fVG8Um2LofyfvjpDrauw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iE5-000LJe-Sw; Tue, 05 Jul 2022 13:04:25 +0000
Received: from mail-ed1-x533.google.com ([2a00:1450:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o8iDz-000LHc-VB
	for linux-rockchip@lists.infradead.org; Tue, 05 Jul 2022 13:04:25 +0000
Received: by mail-ed1-x533.google.com with SMTP id r6so3770089edd.7
        for <linux-rockchip@lists.infradead.org>; Tue, 05 Jul 2022 06:04:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:references
         :content-language:in-reply-to:content-transfer-encoding;
        bh=a4eZWlG2G9SsD6rUjDx/7wTnsrkiZhmRWgAhzhVYz74=;
        b=qHvJXbgHVEsJAM3bJsC/REK5ARdqOBdSJCAw3e3RbZDdZ8cLdJi3qnpvp+UolySpKJ
         JJThzI1Y3gJHQQUoH1C8sN74iDsXMv8sYXeanTULFOhjz8wBvI7KcsHH8EjCSnfTh5BG
         Z7Tu7ZgoiGb9t9t/QkINE0K2bX2lR9mlk9Xmkr0feTH9HDixNff9qTE8tFDsxRzllU84
         04mxbY5qASDaSndQJm03XUjui6RjAwV3G7lmeZedYMJauYcbxAMDBcIbzfAlMpzbES/P
         SgFYy+uwy07R9sODS1PgqaamzApwmpXGQBbr43L3wIOPdny1mkbU46kSKtIwsK8Pnj1f
         qy3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=a4eZWlG2G9SsD6rUjDx/7wTnsrkiZhmRWgAhzhVYz74=;
        b=X3ncgBUPY/9xif13XFZU84Et8dxCF3QD1k4vDJl7eCKmcfqG118GvaPMfJypJUtcst
         jGUbA8f2O8WUoaZJ+Ogq0LIDECKLocYFe08UNM/GXGubJgqWoxXGPMPleaGB3/OiGcKl
         W1l0HhMQVB+M5FP8vom0R6WLZzL6VtityC1flKaHaFdXj0BbVccdGegv2pge1snkEBaV
         gSO++hTaJyLhCTrqaBHw3Jden1OQMV64zVbtSkMQOJq4wTnh+6QM9YlPhPGanOiNXpSZ
         rjbXvwmxcAldTfslfQgde30PXGW6Q/dHft5KiLPbFrq9BbAOEIsttZEHKpShcwoK9Xjb
         8uJQ==
X-Gm-Message-State: AJIora+h8TRhI9JGtvcUblJFtYJIKIGyDKMitKHPC63suoESyVKSkLrc
	fqbzLtUoNi+6cV3+oSD3/hE=
X-Google-Smtp-Source: AGRyM1vO71HFQyCKnRRI7u/gY6j56Ati0G5QnlGyHrzDezEJ414AopUr0Q+kqpBrLpMQD0lEAuptyA==
X-Received: by 2002:a05:6402:3047:b0:435:9af7:7af3 with SMTP id bs7-20020a056402304700b004359af77af3mr47680990edb.252.1657026257457;
        Tue, 05 Jul 2022 06:04:17 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id g8-20020aa7c848000000b0043a797ac206sm1293466edt.15.2022.07.05.06.04.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Jul 2022 06:04:17 -0700 (PDT)
Message-ID: <1816d342-1bd1-ff1e-efe6-af4595850946@gmail.com>
Date: Tue, 5 Jul 2022 15:04:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v1 1/6] rockchip: block: add Rockchip IDB block device
To: Kever Yang <kever.yang@rock-chips.com>, Simon Glass <sjg@chromium.org>,
 Philipp Tomsich <philipp.tomsich@vrull.eu>, xypron.glpk@gmx.de,
 U-Boot-Denx <u-boot@lists.denx.de>, Yifeng Zhao
 <yifeng.zhao@rock-chips.com>, jon.lin@rock-chips.com,
 "open list:ARM/Rockchip SoC support" <linux-rockchip@lists.infradead.org>,
 miquel.raynal@bootlin.com, michael@amarulasolutions.com,
 dario.binacchi@amarulasolutions.com
References: <20220701094304.1846-1-jbx6244@yandex.com>
Content-Language: en-US
In-Reply-To: <20220701094304.1846-1-jbx6244@yandex.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220705_060420_200521_5F37B37B 
X-CRM114-Status: GOOD (  16.91  )
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

The Rockchip SoCs with a NAND as boot device need
a special Rockchip IDB block device to transfer the data
from the rockusb gadget to the NAND driver.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/mach-rockchip/Kconfig        |   12 +
 arch/arm/mach-rockchip/Makefile       |    1 +
 arch/arm/mach-rockchip/rockchip_idb.c | 1694 +++++++++++++++++++++++++
 drivers/block/blk-uclass.c            |    2 +
 include/blk.h                         |    1 +
 include/dm/uclass-id.h                |    1 +
 include/efi_loader.h                  |    4 +
 lib/efi_loader/efi_device_path.c      |   30 +
 8 files changed, 1745 insertions(+)
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
index 00000000..6243131d
--- /dev/null
+++ b/arch/arm/mach-rockchip/rockchip_idb.c
@@ -0,0 +1,1694 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * Copyright (C) 2022 Johan Jonker <jbx6244@gmail.com>
+ */
+
+#include <blk.h>
+#include <clk.h>
+#include <command.h>
+#include <dm.h>
+#include <memalign.h>
+#include <part.h>
+#include <dm/device-internal.h>
+#include <dm/uclass-internal.h>
+#include <linux/iopoll.h>
+#include <u-boot/crc.h>
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
+#define BCD2INT(num)		(((((num) >> 12) & 0x0F) * 1000) + \
+				((((num) >> 8) & 0x0F) * 100) + \
+				((((num) >> 4) & 0x0F) * 10) + \
+				((num) & 0x0F))
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
+	u32 fwSig;
+	u8  reserved[4];
+	u32 ucRc4Flag;
+	u16 usBootCode1Offset;
+	u16 usBootCode2Offset;
+	u8  reserved1[490];
+	u16 usFlashDataSize;
+	u16 ucFlashBootSize;
+	u8  reserved2[2];
+} __packed;
+
+struct sector1 {
+	u16 usSysReservedBlock;
+	u16 usDisk0Size;
+	u16 usDisk1Size;
+	u16 usDisk2Size;
+	u16 usDisk3Size;
+	u32 uiChipTag;
+	u32 uiMachineId;
+	u16 usLoaderYear;
+	u16 usLoaderDate;
+	u16 usLoaderVer;
+	u8  reserved[72];
+	u16 usFlashDataOffset;
+	u16 usFlashDataLen;
+	u8  reserved2[384];
+	u32 uiFlashChipSize;
+	u8  reserved1;
+	u8  bAccessTime;
+	u16 usPhyBlockSize;
+	u8  bPhyPageSize;
+	u8  bECCBits;
+	u8  reserved3[8];
+	u16 usIdBlock0;
+	u16 usIdBlock1;
+	u16 usIdBlock2;
+	u16 usIdBlock3;
+	u16 usIdBlock4;
+} __packed;
+
+struct NandParaInfo {
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
+	struct NandParaInfo *info;
+	u32 boot_blks;
+	u32 boot_ecc;
+	u32 pages_per_blk;
+	u32 randomizer;
+	struct idb idblock[5];
+	u32 blk_counter;
+	u32 idb_need_write_back;
+	u32 sectors;
+	u16 page_table[512];
+	legacy_mbr *mbr;
+	gpt_header *gpt_h;
+	gpt_header *gpt_h2;
+	gpt_entry *gpt_e;
+	char *check;
+	char *idb;
+	char *str;
+	char uuid_part_str[UUID_STR_LEN + 1];
+	char uuid_disk_str[UUID_STR_LEN + 1];
+};
+
+u16 random_seed[] = {
+	0x576a, 0x05e8, 0x629d, 0x45a3,
+	0x649c, 0x4bf0, 0x2342, 0x272e,
+	0x7358, 0x4ff3, 0x73ec, 0x5f70,
+	0x7a60, 0x1ad8, 0x3472, 0x3612,
+	0x224f, 0x0454, 0x030e, 0x70a5,
+	0x7809, 0x2521, 0x48f4, 0x5a2d,
+	0x492a, 0x043d, 0x7f61, 0x3969,
+	0x517a, 0x3b42, 0x769d, 0x0647,
+	0x7e2a, 0x1383, 0x49d9, 0x07b8,
+	0x2578, 0x4eec, 0x4423, 0x352f,
+	0x5b22, 0x72b9, 0x367b, 0x24b6,
+	0x7e8e, 0x2318, 0x6bd0, 0x5519,
+	0x1783, 0x18a7, 0x7b6e, 0x7602,
+	0x4b7f, 0x3648, 0x2c53, 0x6b99,
+	0x0c23, 0x67cf, 0x7e0e, 0x4d8c,
+	0x5079, 0x209d, 0x244a, 0x747b,
+	0x350b, 0x0e4d, 0x7004, 0x6ac3,
+	0x7f3e, 0x21f5, 0x7a15, 0x2379,
+	0x1517, 0x1aba, 0x4e77, 0x15a1,
+	0x04fa, 0x2d61, 0x253a, 0x1302,
+	0x1f63, 0x5ab3, 0x049a, 0x5ae8,
+	0x1cd7, 0x4a00, 0x30c8, 0x3247,
+	0x729c, 0x5034, 0x2b0e, 0x57f2,
+	0x00e4, 0x575b, 0x6192, 0x38f8,
+	0x2f6a, 0x0c14, 0x45fc, 0x41df,
+	0x38da, 0x7ae1, 0x7322, 0x62df,
+	0x5e39, 0x0e64, 0x6d85, 0x5951,
+	0x5937, 0x6281, 0x33a1, 0x6a32,
+	0x3a5a, 0x2bac, 0x743a, 0x5e74,
+	0x3b2e, 0x7ec7, 0x4fd2, 0x5d28,
+	0x751f, 0x3ef8, 0x39b1, 0x4e49,
+	0x746b, 0x6ef6, 0x44be, 0x6db7,
+};
+
+struct NandParaInfo NandFlashParaTbl[] = {
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
+void rk_idb_P_RC4(u8 *buf, u32 len)
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
+
+	u32 seed = random_seed[page & 0x7F];
+
+	if (plat->randomizer) {
+		if (!(page < plat->pages_per_blk * plat->boot_blks))
+			seed |= 0xC0000000;
+	}
+
+	writel(seed, regs + plat->cfg->randmz_off);
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
+
+	u32 seed = random_seed[page & 0x7F];
+
+	if (plat->randomizer) {
+		if (!(page < plat->pages_per_blk * plat->boot_blks))
+			seed |= 0xC0000000;
+	}
+
+	writel(seed, regs + plat->cfg->randmz_off);
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
+				rk_idb_P_RC4((char *)data, 512);
+
+				struct sector0 *sec0 = (struct sector0 *)data;
+
+				if ((sec0->ucFlashBootSize -
+				     sec0->usFlashDataSize) != 1024) {
+					boot_size = sec0->ucFlashBootSize -
+						    sec0->usFlashDataSize;
+				} else {
+					boot_size = 0;
+				}
+
+				int sectors = sec0->usBootCode1Offset +
+					      sec0->usFlashDataSize +
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
+unsigned long rk_idb_read(struct udevice *dev,
+			  unsigned long start, lbaint_t blkcnt,
+			  void *buffer)
+{
+	struct rk_idb *plat = dev_get_plat(dev->parent);
+	struct blk_desc *block_dev = dev_get_uclass_plat(dev);
+	char *buf = buffer;
+	int i;
+
+	debug("start   : %lu blkcnt: %lu\n", start, blkcnt);
+
+	if (start > (block_dev->lba - 1) || (start + blkcnt) > block_dev->lba) {
+		debug("invalid block\n");
+		return -1;
+	}
+
+	memset(buffer, 0xff, blkcnt * block_dev->blksz);
+
+	for (i = start; i < (start + blkcnt); i++) {
+		if (i == 0)  {
+			debug("mbr     : %d\n", i);
+
+			memcpy(&buf[(i - start) * block_dev->blksz],
+			       plat->mbr, sizeof(legacy_mbr));
+		} else if (i == 1) {
+			debug("gpt_h   : %d\n", i);
+
+			memcpy(&buf[(i - start) * block_dev->blksz],
+			       plat->gpt_h, sizeof(gpt_header));
+		} else if (i == (block_dev->lba - 1)) {
+			debug("gpt_h2  : %d\n", i);
+
+			memcpy(&buf[(i - start) * block_dev->blksz],
+			       plat->gpt_h2, sizeof(gpt_header));
+		} else if (i == 2 || i == (block_dev->lba - 33)) {
+			debug("gpt_e   : %d\n", i);
+
+			memcpy(&buf[(i - start) * block_dev->blksz],
+			       plat->gpt_e, sizeof(gpt_entry));
+		} else if (i >= 64 && i < (block_dev->lba - 33)) {
+			debug("idb rd  : %d\n", i);
+
+			memcpy(&buf[(i - start) * block_dev->blksz],
+			       &plat->idb[(i - 64) * block_dev->blksz], block_dev->blksz);
+		}
+	}
+
+	return blkcnt;
+}
+
+unsigned long rk_idb_write(struct udevice *dev,
+			   unsigned long start, lbaint_t blkcnt,
+			   const void *buffer)
+{
+	struct rk_idb *plat = dev_get_plat(dev->parent);
+	struct blk_desc *block_dev = dev_get_uclass_plat(dev);
+	u32 data[512];
+	u32 spare[2];
+	int i, j;
+
+	if (start > (block_dev->lba - 1) || (start + blkcnt) > block_dev->lba) {
+		debug("invalid block\n");
+		return -1;
+	}
+
+	debug("start   : %lu blkcnt: %lu\n", start, blkcnt);
+
+	for (i = start; i < (start + blkcnt); i++) {
+		debug("idb wr  : %d\n", i);
+
+		if (i >= 64 && i < (block_dev->lba - 33)) {
+			if (i == 64) {
+				debug("first block\n");
+
+				plat->idb_need_write_back = 1;
+				memset(plat->idb, 0xff, 512 * 512);
+			}
+
+			if (plat->idb_need_write_back) {
+				char *buf = (char *)buffer;
+
+				memcpy(&plat->idb[(i - 64) * block_dev->blksz],
+				       &buf[(i - start) * block_dev->blksz],
+				       block_dev->blksz);
+
+				if (i == 64) {
+					memcpy(data, plat->idb, 512);
+
+					if (*data == RK_MAGIC) {
+						u32 boot_size;
+
+						rk_idb_P_RC4((char *)data, 512);
+
+						struct sector0 *sec0 = (struct sector0 *)data;
+
+						if ((sec0->ucFlashBootSize -
+						     sec0->usFlashDataSize) != 1024) {
+							boot_size = sec0->ucFlashBootSize -
+								    sec0->usFlashDataSize;
+						} else {
+							boot_size = 0;
+						}
+
+						plat->sectors = sec0->usBootCode1Offset +
+								sec0->usFlashDataSize +
+								boot_size;
+
+						if (plat->sectors > 512) {
+							debug("max sector limit\n");
+							plat->idb_need_write_back = 0;
+						}
+					} else {
+						debug("no IDB block found\n");
+						plat->idb_need_write_back = 0;
+					}
+				}
+
+				if (i == (64 + plat->sectors - 1)) {
+					debug("last block\n");
+
+					plat->idb_need_write_back = 0;
+
+					if (!plat->blk_counter) {
+						plat->idblock[0].blk = 2;
+						plat->idblock[0].ecc = plat->boot_ecc;
+						plat->idblock[1].blk = 3;
+						plat->idblock[1].ecc = plat->boot_ecc;
+						plat->idblock[2].blk = 4;
+						plat->idblock[2].ecc = plat->boot_ecc;
+						plat->idblock[3].blk = 5;
+						plat->idblock[3].ecc = plat->boot_ecc;
+						plat->idblock[4].blk = 6;
+						plat->idblock[4].ecc = plat->boot_ecc;
+						plat->blk_counter = 5;
+					}
+
+					for (j = 0; j < plat->blk_counter; j++) {
+						if (plat->idblock[j].blk < plat->boot_blks)
+							rk_idb_write_block(plat, j, plat->sectors,
+									   (u32 *)plat->idb, spare);
+					}
+
+					rk_idb_scan_block(plat, data, spare);
+
+					memset(plat->idb, 0xff, 512 * 512);
+
+					if (plat->blk_counter)
+						rk_idb_read_block(plat, 0, plat->idblock[0].sectors,
+								  (u32 *)plat->idb, spare);
+				}
+			}
+		} else if (plat->idb_need_write_back) {
+			plat->idb_need_write_back = 0;
+
+			memset(plat->idb, 0xff, 512 * 512);
+
+			if (plat->blk_counter)
+				rk_idb_read_block(plat, 0, plat->idblock[0].sectors,
+						  (u32 *)plat->idb, spare);
+		}
+	}
+
+	return blkcnt;
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
+static inline u32 efi_crc32(const void *buf, u32 len)
+{
+	return crc32(0, buf, len);
+}
+
+int rk_idb_init_plat(struct udevice *dev)
+{
+	static const efi_guid_t partition_basic_data_guid = PARTITION_BASIC_DATA_GUID;
+	struct rk_idb *plat = dev_get_plat(dev);
+	size_t efiname_len, dosname_len;
+	uchar name[] = "loader1";
+	u32 calc_crc32;
+	int k;
+
+	gen_rand_uuid_str(plat->uuid_disk_str, UUID_STR_FORMAT_GUID);
+	gen_rand_uuid_str(plat->uuid_part_str, UUID_STR_FORMAT_GUID);
+
+	debug("uuid_part_str          : %s\n", plat->uuid_part_str);
+	debug("uuid_disk_str          : %s\n", plat->uuid_disk_str);
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
+	plat->mbr = malloc_cache_aligned(sizeof(legacy_mbr));
+
+	if (!plat->mbr) {
+		debug("mbr malloc failed\n");
+		free(plat->idb);
+		free(plat->check);
+		return -1;
+	}
+
+	plat->gpt_e = malloc_cache_aligned(sizeof(gpt_entry));
+
+	if (!plat->gpt_e) {
+		debug("gpt_e malloc failed\n");
+		free(plat->idb);
+		free(plat->check);
+		free(plat->mbr);
+		return -1;
+	}
+
+	plat->gpt_h = malloc_cache_aligned(sizeof(gpt_header));
+
+	if (!plat->gpt_h) {
+		debug("gpt_h malloc failed\n");
+		free(plat->idb);
+		free(plat->check);
+		free(plat->mbr);
+		free(plat->gpt_e);
+		return -1;
+	}
+
+	plat->gpt_h2 = malloc_cache_aligned(sizeof(gpt_header));
+
+	if (!plat->gpt_h2) {
+		debug("gpt_h2 malloc failed\n");
+		free(plat->idb);
+		free(plat->check);
+		free(plat->mbr);
+		free(plat->gpt_e);
+		free(plat->gpt_h);
+		return -1;
+	}
+
+	/* Init idb */
+	memset(plat->idb, 0xff, 512 * 512);
+
+	/* Init mbr */
+	memset((char *)plat->mbr, 0, sizeof(legacy_mbr));
+
+	plat->mbr->signature = MSDOS_MBR_SIGNATURE;
+	plat->mbr->partition_record[0].sys_ind = EFI_PMBR_OSTYPE_EFI_GPT;
+	plat->mbr->partition_record[0].start_sect = 1;
+	plat->mbr->partition_record[0].nr_sects = LBA - 1;
+
+	/* Init gpt_e */
+	memset(plat->gpt_e, 0, sizeof(gpt_entry));
+
+	plat->gpt_e->starting_lba = cpu_to_le64(64);
+	plat->gpt_e->ending_lba = cpu_to_le64(LBA - 34);
+
+	debug("starting_lba           : %llu\n", le64_to_cpu(plat->gpt_e->starting_lba));
+	debug("ending_lba             : %llu\n", le64_to_cpu(plat->gpt_e->ending_lba));
+
+	memcpy(plat->gpt_e->partition_type_guid.b, &partition_basic_data_guid, 16);
+
+	uuid_str_to_bin(plat->uuid_part_str, plat->gpt_e->unique_partition_guid.b,
+			UUID_STR_FORMAT_GUID);
+
+	efiname_len = sizeof(plat->gpt_e->partition_name) / sizeof(efi_char16_t);
+	dosname_len = sizeof(name);
+
+	for (k = 0; k < min(dosname_len, efiname_len); k++)
+		plat->gpt_e->partition_name[k] = (efi_char16_t)(name[k]);
+
+	/* Init gpt_h */
+	memset(plat->gpt_h, 0, sizeof(gpt_header));
+
+	plat->gpt_h->signature = cpu_to_le64(GPT_HEADER_SIGNATURE_UBOOT);
+	plat->gpt_h->revision = cpu_to_le32(GPT_HEADER_REVISION_V1);
+	plat->gpt_h->header_size = cpu_to_le32(sizeof(gpt_header));
+	plat->gpt_h->first_usable_lba = cpu_to_le64(64);
+	plat->gpt_h->last_usable_lba = cpu_to_le64(LBA - 34);
+	plat->gpt_h->num_partition_entries = cpu_to_le32(1);
+	plat->gpt_h->sizeof_partition_entry = cpu_to_le32(sizeof(gpt_entry));
+
+	uuid_str_to_bin(plat->uuid_disk_str, plat->gpt_h->disk_guid.b,
+			UUID_STR_FORMAT_GUID);
+
+	plat->gpt_h->partition_entry_array_crc32 = 0;
+	calc_crc32 = efi_crc32((const unsigned char *)plat->gpt_e,
+			       le32_to_cpu(plat->gpt_h->num_partition_entries) *
+			       le32_to_cpu(plat->gpt_h->sizeof_partition_entry));
+	plat->gpt_h->partition_entry_array_crc32 = cpu_to_le32(calc_crc32);
+
+	debug("partition crc32        : 0x%08x\n", calc_crc32);
+
+	plat->gpt_h->my_lba = cpu_to_le64(1);
+	plat->gpt_h->partition_entry_lba = cpu_to_le64(2);
+	plat->gpt_h->alternate_lba = cpu_to_le64(LBA - 1);
+
+	plat->gpt_h->header_crc32 = 0;
+	calc_crc32 = efi_crc32((const unsigned char *)plat->gpt_h,
+			       le32_to_cpu(plat->gpt_h->header_size));
+	plat->gpt_h->header_crc32 = cpu_to_le32(calc_crc32);
+
+	debug("header h1 crc32        : 0x%08x\n", calc_crc32);
+
+	/* Init gpt_h2 */
+	memcpy(plat->gpt_h2, plat->gpt_h, sizeof(gpt_header));
+
+	plat->gpt_h2->my_lba = cpu_to_le64(LBA - 1);
+	plat->gpt_h2->partition_entry_lba =
+		cpu_to_le64(le64_to_cpu(plat->gpt_h2->last_usable_lba) + 1);
+	plat->gpt_h2->alternate_lba = cpu_to_le64(1);
+
+	plat->gpt_h2->header_crc32 = 0;
+	calc_crc32 = efi_crc32((const unsigned char *)plat->gpt_h2,
+			       le32_to_cpu(plat->gpt_h2->header_size));
+	plat->gpt_h2->header_crc32 = cpu_to_le32(calc_crc32);
+
+	debug("header h2 crc32        : 0x%08x\n", calc_crc32);
+
+	return 0;
+}
+
+int rk_idb_probe(struct udevice *dev)
+{
+	struct rk_idb *plat = dev_get_plat(dev);
+	const char *node_name;
+	ofnode subnode;
+	u32 data[512];
+	u32 spare[2];
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
+	int size = ARRAY_SIZE(NandFlashParaTbl);
+
+	for (i = 0; i < size; i++) {
+		plat->info = (struct NandParaInfo *)&NandFlashParaTbl[i];
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
+		debug("no NandParaInfo found\n");
+		return -ENODEV;
+	}
+
+	plat->randomizer = (plat->info->operation_opt >> 7) & 1;
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
+	rk_idb_scan_block(plat, data, spare);
+
+	if (plat->blk_counter)
+		rk_idb_read_block(plat, 0, plat->idblock[0].sectors, (u32 *)plat->idb, spare);
+
+	return 0;
+}
+
+static int rk_idb_blk_probe(struct udevice *udev)
+{
+	struct blk_desc *desc = dev_get_uclass_plat(udev);
+
+	desc->removable = true;
+	snprintf(desc->vendor, BLK_VEN_SIZE, "Rockchip");
+	snprintf(desc->product, BLK_PRD_SIZE, "IDB");
+	snprintf(desc->revision, BLK_REV_SIZE, "1.0");
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
+static const struct blk_ops rk_idb_ops = {
+	.read	= rk_idb_read,
+	.write	= rk_idb_write,
+};
+
+U_BOOT_DRIVER(idb_blk) = {
+	.name		= "idb_blk",
+	.id		= UCLASS_BLK,
+	.ops		= &rk_idb_ops,
+	.probe		= rk_idb_blk_probe,
+};
+
+UCLASS_DRIVER(idb) = {
+	.id		= UCLASS_RK_IDB,
+	.name		= "idb",
+	.flags		= DM_UC_FLAG_SEQ_ALIAS,
+};
+
+U_BOOT_DRIVER(rockchip_idb) = {
+	.name		= "rockchip_idb",
+	.id		= UCLASS_RK_IDB,
+	.of_match	= rk_idb_ids,
+	.probe		= rk_idb_probe,
+	.plat_auto	= sizeof(struct rk_idb),
+};
+
+int rk_idb_start(void)
+{
+	struct udevice *dev;
+	struct udevice *bdev;
+	int ret;
+
+	ret = uclass_get_device(UCLASS_RK_IDB, 0, &dev);
+	if (ret) {
+		printf("no IDB device found\n");
+		return CMD_RET_FAILURE;
+	}
+
+	ret = blk_get_device(IF_TYPE_RK_IDB, 0, &bdev);
+	if (ret) {
+		ret = blk_create_device(dev, "idb_blk", "blk",
+					IF_TYPE_RK_IDB, 0, 512,
+					LBA, &bdev);
+		if (ret)
+			return ret;
+
+		ret = blk_probe_or_unbind(bdev);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
+#if !defined(CONFIG_SPL_BUILD)
+
+int rk_idb_stop(void)
+{
+	struct udevice *bdev;
+	int ret;
+
+	ret = blk_find_device(IF_TYPE_RK_IDB, 0, &bdev);
+	if (ret) {
+		printf("no IDB blk device found\n");
+		return 0;
+	}
+
+	device_remove(bdev, DM_REMOVE_NORMAL);
+	device_unbind(bdev);
+
+	return 0;
+}
+
+void rk_idb_print_idb_data(u32 *data)
+{
+	struct sector1 *sec1 = (struct sector1 *)((u8 *)data + 512);
+	struct sector0 *sec0 = (struct sector0 *)data;
+
+	printf("\n");
+
+	printf("DATE    : %d-%d-%d\n",
+	       BCD2INT(sec1->usLoaderYear),
+	       BCD2INT(sec1->usLoaderDate >> 8),
+	       BCD2INT(sec1->usLoaderDate & 0xff));
+
+	printf("VERSION : %d.%d\n",
+	       BCD2INT(sec1->usLoaderVer >> 8),
+	       BCD2INT(sec1->usLoaderVer & 0xff));
+
+	printf("\n");
+
+	printf("fwSig            : %08x\n"
+	       "ucRc4Flag        : %08x\n"
+	       "usBootCode1Offset: %d\n"
+	       "usFlashDataSize  : %d\n"
+	       "ucFlashBootSize  : %d\n",
+	       sec0->fwSig,
+	       sec0->ucRc4Flag,
+	       sec0->usBootCode1Offset,
+	       sec0->usFlashDataSize,
+	       sec0->ucFlashBootSize);
+
+	printf("\n");
+}
+
+static int rk_idb_info(void)
+{
+	struct rk_idb *plat;
+	struct udevice *dev;
+	u32 data[512];
+	u32 spare[2];
+	int ret;
+	int i, j;
+
+	ret = uclass_find_device(UCLASS_RK_IDB, 0, &dev);
+	if (ret) {
+		printf("no IDB device found\n");
+		return CMD_RET_FAILURE;
+	}
+
+	if (!device_active(dev)) {
+		printf("IDB device present but not probed\n");
+		return CMD_RET_FAILURE;
+	}
+
+	plat = dev_get_plat(dev);
+
+	printf("\n##### HARDWARE #####\n");
+
+	printf("REG              : 0x%08x\n", (u32)plat->regs);
+
+	printf("FLASH ID         : %02x %02x %02x %02x %02x %02x\n",
+	       plat->info->nand_id[0],
+	       plat->info->nand_id[1],
+	       plat->info->nand_id[2],
+	       plat->info->nand_id[3],
+	       plat->info->nand_id[4],
+	       plat->info->nand_id[5]);
+
+	printf("page_per_blk     : %d\n", plat->info->page_per_blk);
+	printf("lsb_mode         : %d\n", plat->info->lsb_mode);
+	printf("randomizer       : %d\n", (plat->info->operation_opt >> 7) & 1);
+
+	printf("\n##### BLOCK DEVICE #####\n");
+
+	ret = blk_find_device(IF_TYPE_RK_IDB, 0, &dev);
+	if (ret) {
+		printf("no IDB blk device found\n");
+	} else {
+		struct blk_desc *blk_dev = dev_get_uclass_plat(dev);
+
+		printf("blocks           : %lu\n", (unsigned long)blk_dev->lba);
+	}
+
+	printf("uuid_part_str    : %s\n", plat->uuid_part_str);
+	printf("uuid_disk_str    : %s\n", plat->uuid_disk_str);
+
+	printf("\n##### IDB #####\n");
+	for (i = 0; i < plat->blk_counter; i++) {
+		rk_idb_read_block(plat, j, 4, data, spare);
+
+		for (j = 0; j < 4; j++) {
+			if (j != 1)
+				rk_idb_P_RC4((char *)data + j * 512, 512);
+		}
+
+		printf("\nblk     : %d\n", plat->idblock[i].blk);
+		printf("ecc     : %d\n", plat->idblock[i].ecc);
+		printf("sectors : %d\n", plat->idblock[i].sectors);
+
+		rk_idb_print_idb_data(data);
+	}
+
+	return 0;
+}
+
+static int rk_idb_do(struct cmd_tbl *cmdtp, int flag, int argc,
+		     char *const argv[])
+{
+	if (argc == 2) {
+		if (!strcmp(argv[1], "info"))
+			return rk_idb_info();
+
+		if (!strcmp(argv[1], "stop"))
+			return rk_idb_stop();
+
+		if (!strcmp(argv[1], "start"))
+			return rk_idb_start();
+	}
+
+	return CMD_RET_USAGE;
+}
+
+U_BOOT_CMD(
+	idb, 5, 1, rk_idb_do,
+	"Rockchip IDB block device",
+	"start - start IDB device\n"
+	"idb stop  - stop IDB blk device\n"
+	"idb info  - show IDB device info\n"
+);
+
+#endif
diff --git a/drivers/block/blk-uclass.c b/drivers/block/blk-uclass.c
index 21c5209b..0b5f219d 100644
--- a/drivers/block/blk-uclass.c
+++ b/drivers/block/blk-uclass.c
@@ -32,6 +32,7 @@ static const char *if_typename_str[IF_TYPE_COUNT] = {
 	[IF_TYPE_EFI_LOADER]	= "efiloader",
 	[IF_TYPE_VIRTIO]	= "virtio",
 	[IF_TYPE_PVBLOCK]	= "pvblock",
+	[IF_TYPE_RK_IDB]	= "idb",
 };
 
 static enum uclass_id if_type_uclass_id[IF_TYPE_COUNT] = {
@@ -49,6 +50,7 @@ static enum uclass_id if_type_uclass_id[IF_TYPE_COUNT] = {
 	[IF_TYPE_EFI_LOADER]	= UCLASS_EFI_LOADER,
 	[IF_TYPE_VIRTIO]	= UCLASS_VIRTIO,
 	[IF_TYPE_PVBLOCK]	= UCLASS_PVBLOCK,
+	[IF_TYPE_RK_IDB]	= UCLASS_RK_IDB,
 };
 
 static enum if_type if_typename_to_iftype(const char *if_typename)
diff --git a/include/blk.h b/include/blk.h
index 9503369d..a73cc577 100644
--- a/include/blk.h
+++ b/include/blk.h
@@ -38,6 +38,7 @@ enum if_type {
 	IF_TYPE_PVBLOCK,
 	IF_TYPE_VIRTIO,
 	IF_TYPE_EFI_MEDIA,
+	IF_TYPE_RK_IDB,
 
 	IF_TYPE_COUNT,			/* Number of interface types */
 };
diff --git a/include/dm/uclass-id.h b/include/dm/uclass-id.h
index 3ba69ad9..38a227f0 100644
--- a/include/dm/uclass-id.h
+++ b/include/dm/uclass-id.h
@@ -104,6 +104,7 @@ enum uclass_id {
 	UCLASS_REGULATOR,	/* Regulator device */
 	UCLASS_REMOTEPROC,	/* Remote Processor device */
 	UCLASS_RESET,		/* Reset controller device */
+	UCLASS_RK_IDB,		/* Rockchip IDB device */
 	UCLASS_RNG,		/* Random Number Generator */
 	UCLASS_RTC,		/* Real time clock device */
 	UCLASS_SCMI_AGENT,	/* Interface with an SCMI server */
diff --git a/include/efi_loader.h b/include/efi_loader.h
index c1e00eba..44d42603 100644
--- a/include/efi_loader.h
+++ b/include/efi_loader.h
@@ -141,6 +141,10 @@ static inline efi_status_t efi_launch_capsules(void)
 #define U_BOOT_VIRTIO_DEV_GUID \
 	EFI_GUID(0x63293792, 0xadf5, 0x9325, \
 		 0xb9, 0x9f, 0x4e, 0x0e, 0x45, 0x5c, 0x1b, 0x1e)
+/* GUID used as root for Rockchip IDB devices */
+#define U_BOOT_IDB_DEV_GUID \
+	EFI_GUID(0xadc021df, 0x5f24, 0x464f, \
+		 0x9a, 0x88, 0xdb, 0xee, 0x3f, 0x1d, 0x14, 0x0f)
 
 /* Use internal device tree when starting UEFI application */
 #define EFI_FDT_USE_INTERNAL NULL
diff --git a/lib/efi_loader/efi_device_path.c b/lib/efi_loader/efi_device_path.c
index 171661b8..b7535373 100644
--- a/lib/efi_loader/efi_device_path.c
+++ b/lib/efi_loader/efi_device_path.c
@@ -28,6 +28,9 @@ const efi_guid_t efi_guid_host_dev = U_BOOT_HOST_DEV_GUID;
 #ifdef CONFIG_VIRTIO_BLK
 const efi_guid_t efi_guid_virtio_dev = U_BOOT_VIRTIO_DEV_GUID;
 #endif
+#if CONFIG_IS_ENABLED(ROCKCHIP_IDB)
+const efi_guid_t efi_guid_idb_dev = U_BOOT_IDB_DEV_GUID;
+#endif
 
 /* template END node: */
 static const struct efi_device_path END = {
@@ -574,6 +577,16 @@ __maybe_unused static unsigned int dp_size(struct udevice *dev)
 			  */
 			return dp_size(dev->parent)
 				+ sizeof(struct efi_device_path_vendor) + 1;
+#endif
+#if CONFIG_IS_ENABLED(ROCKCHIP_IDB)
+		case UCLASS_RK_IDB:
+			 /*
+			  * Rockchip IDB device will be represented
+			  * as vendor device with extra one byte for
+			  * device number
+			  */
+			return dp_size(dev->parent)
+				+ sizeof(struct efi_device_path_vendor) + 1;
 #endif
 		default:
 			return dp_size(dev->parent);
@@ -667,6 +680,23 @@ __maybe_unused static void *dp_fill(void *buf, struct udevice *dev)
 			return &dp->vendor_data[1];
 			}
 #endif
+#if CONFIG_IS_ENABLED(ROCKCHIP_IDB)
+		case UCLASS_RK_IDB: {
+			struct efi_device_path_vendor *dp;
+			struct blk_desc *desc = dev_get_uclass_plat(dev);
+
+			dp_fill(buf, dev->parent);
+			dp = buf;
+			++dp;
+			dp->dp.type = DEVICE_PATH_TYPE_HARDWARE_DEVICE;
+			dp->dp.sub_type = DEVICE_PATH_SUB_TYPE_VENDOR;
+			dp->dp.length = sizeof(*dp) + 1;
+			memcpy(&dp->guid, &efi_guid_idb_dev,
+			       sizeof(efi_guid_t));
+			dp->vendor_data[0] = desc->devnum;
+			return &dp->vendor_data[1];
+			}
+#endif
 #ifdef CONFIG_IDE
 		case UCLASS_IDE: {
 			struct efi_device_path_atapi *dp =
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
