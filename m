Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A409AC433EF
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:49:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=f7JQpLV/3jCjZ8bfag1XkeqX/QS+dKttSmr+V+DKh8A=; b=tHW6M1K4Rb5Ugn
	sK8KpJwOQOHHA0cxxUtCvnAKuGEhYsnDLNoeSa0/aXOz4NGaMM0ZCPtE6mEa25nx2lPNNMV3v9tq9
	+1FuGD3l6bnK+QCVuvtpgYiqTcvi1JtaHsQClFsyRo73PzKs+ZYdn4yBx747TLdavDzjxT0Rp5y+o
	UK7mqe6A5gx29yOLdCvUdyWTBH8pa/+hUHIYSC35D6FEGcE7bTt2uixSl90Bq/XJL1/W7ERo/z3hz
	rjTcxzolvdJmMQK5sNaFkrDzeM2w6IVzP+REE3tIaEHhOXoiy+ekWXeTw4Frqf8u0oCQk/ieYxbpg
	E2qAUB5gKKT4jiWcj7tg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWH-008xmj-1y; Sat, 09 Jul 2022 18:49:33 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWD-008xkq-8F
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:49:31 +0000
Received: by mail-ej1-x630.google.com with SMTP id h23so2653603ejj.12
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=gLBtJ22A/NNCsXdYxQabt2iYVUGQ/VXkOaEGp25Oo+c=;
        b=ljcUuyH7foT0Q2SMuohyW3DqfPXzUnhXg+olRWs3ic3EPWSBUhH11otREVEH8CGEmn
         Wa/RRavYGI7+atiY+Hh18UbfyJKwkank2OB+VotEd8LAFtfciXWR+E0rhj/FZ9Cg3Bpp
         0ygHDako72p5WISfWmJDpwktiBiKIxuVgixhGRHLx8yymGICtzOEKbdrakdBh22K9FlO
         JJeNRLp/E1octnuqd09rQ0wzYk724e1tP0xt2BvTQpZu462b+04QzgO3Y/KJdzED1K+A
         X6w4NQ0oYJaxLHdwT9+eAlX3RcRxaM+c0A1XTbSbR0H2Q56a0cNbyw1+IKLX24XQop89
         NHYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=gLBtJ22A/NNCsXdYxQabt2iYVUGQ/VXkOaEGp25Oo+c=;
        b=E3XFWMlxNfQd7ptWeW5+OJcP97Ibg8Y3RJpV1C5HYJsTrco2JRsqS/Sn1jlqzeFF1L
         oyDGVyWPYNh210Xskh360jywzLViPQ5yZ3Hjv8zNSMNURXkXs9mRopvLMxuEKyz5spG8
         0wri0IfguaYLYtX17L0FboWO/DH6VDoD0l3L+9z1T+AtP6O6+zdPzrXQU00HDTD97R7S
         odqKR1CHAsmGJU2y74fbdt3bAP07Ay0+LFdFit7js5NL9Fg5OmpUdSROhdmDdtzfaZxo
         i0DpEHlrlBFP+bR/5U/KG3AMz18AD0E67biNzrZ1WMqmbbbd+hypWH3U/RZ9/B5D8Ck+
         /fQg==
X-Gm-Message-State: AJIora+xYRVX4kUvNZaQzVHjoo5dme1zw6/HNMbdC/fdmSRt/AjQ+rBQ
	vVeCcdUiDhv/6pKR5XD/hIg=
X-Google-Smtp-Source: AGRyM1vrpHomyf8j8dNQSIph/cQ7iHCKpYsDJbOx/VHAjrWH64yP9TfYqtWD/5hFuVeIvn0gecYTMA==
X-Received: by 2002:a17:907:7da7:b0:728:1c89:129e with SMTP id oz39-20020a1709077da700b007281c89129emr10313674ejc.637.1657392568038;
        Sat, 09 Jul 2022 11:49:28 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id p5-20020a05640243c500b0043a7293a03dsm1381302edc.7.2022.07.09.11.49.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:49:27 -0700 (PDT)
Message-ID: <a19c091b-5cc6-6853-3888-d8ac6982cb9c@gmail.com>
Date: Sat, 9 Jul 2022 20:49:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 03/11] rockchip: idb: add IDB block device
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_114929_419761_2364A890 
X-CRM114-Status: GOOD (  19.67  )
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

The Rockchip SoCs with a NAND as boot device need
a special Rockchip IDB block device to transfer the data
from the rockusb gadget to the NAND driver.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm/mach-rockchip/rockchip_idb.c | 402 ++++++++++++++++++++++++++
 1 file changed, 402 insertions(+)

diff --git a/arch/arm/mach-rockchip/rockchip_idb.c b/arch/arm/mach-rockchip/rockchip_idb.c
index 6a2af329..832b3251 100644
--- a/arch/arm/mach-rockchip/rockchip_idb.c
+++ b/arch/arm/mach-rockchip/rockchip_idb.c
@@ -3,10 +3,16 @@
  * Copyright (C) 2022 Johan Jonker <jbx6244@gmail.com>
  */
 
+#include <blk.h>
 #include <clk.h>
+#include <command.h>
 #include <dm.h>
 #include <memalign.h>
+#include <part.h>
+#include <dm/device-internal.h>
+#include <dm/uclass-internal.h>
 #include <linux/iopoll.h>
+#include <u-boot/crc.h>
 
 #define NFC_DEF_TIMEOUT		20000
 #define NFC_ECC_MAX_MODES	4
@@ -152,10 +158,18 @@ struct rk_idb {
 	u32 pages_per_blk;
 	struct idb idblock[5];
 	u32 blk_counter;
+	u32 idb_need_write_back;
 	u32 sectors;
 	u16 page_table[512];
+	legacy_mbr *mbr;
+	gpt_header *gpt_h;
+	gpt_header *gpt_h2;
+	gpt_entry *gpt_e;
 	char *check;
 	char *idb;
+	char *str;
+	char uuid_part_str[UUID_STR_LEN + 1];
+	char uuid_disk_str[UUID_STR_LEN + 1];
 };
 
 struct nand_para_info nand_para_tbl[] = {
@@ -816,6 +830,171 @@ void rk_idb_write_block(struct rk_idb *plat, u32 idb, u32 sectors, u32 *data, u3
 	}
 }
 
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
+						rk_idb_rc4((char *)data, 512);
+
+						struct sector0 *sec0 = (struct sector0 *)data;
+
+						if ((sec0->flash_boot_size -
+						     sec0->flash_data_size) != 1024) {
+							boot_size = sec0->flash_boot_size -
+								    sec0->flash_data_size;
+						} else {
+							boot_size = 0;
+						}
+
+						plat->sectors = sec0->boot_code1_offset +
+								sec0->flash_data_size +
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
 void rk_idb_block_align(struct rk_idb *plat, u32 pages_per_blk)
 {
 	plat->pages_per_blk = pages_per_blk;
@@ -827,9 +1006,25 @@ void rk_idb_block_align(struct rk_idb *plat, u32 pages_per_blk)
 		plat->pages_per_blk = 256;
 }
 
+static inline u32 efi_crc32(const void *buf, u32 len)
+{
+	return crc32(0, buf, len);
+}
+
 int rk_idb_init_plat(struct udevice *dev)
 {
+	static const efi_guid_t partition_basic_data_guid = PARTITION_BASIC_DATA_GUID;
 	struct rk_idb *plat = dev_get_plat(dev);
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
 
 	plat->idb = malloc_cache_aligned(512 * 512);
 
@@ -845,6 +1040,127 @@ int rk_idb_init_plat(struct udevice *dev)
 		return -1;
 	}
 
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
 	return 0;
 }
 
@@ -853,6 +1169,8 @@ int rk_idb_probe(struct udevice *dev)
 	struct rk_idb *plat = dev_get_plat(dev);
 	const char *node_name;
 	ofnode subnode;
+	u32 data[512];
+	u32 spare[2];
 	u8 id[8];
 	int ret;
 	int i;
@@ -935,6 +1253,23 @@ int rk_idb_probe(struct udevice *dev)
 		return -ENOENT;
 	}
 
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
 	return 0;
 }
 
@@ -1065,6 +1400,24 @@ static const struct udevice_id rk_idb_ids[] = {
 	{ /* sentinel */ }
 };
 
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
 U_BOOT_DRIVER(rockchip_idb) = {
 	.name		= "rockchip_idb",
 	.id		= UCLASS_RK_IDB,
@@ -1072,3 +1425,52 @@ U_BOOT_DRIVER(rockchip_idb) = {
 	.probe		= rk_idb_probe,
 	.plat_auto	= sizeof(struct rk_idb),
 };
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
+static int rk_idb_do(struct cmd_tbl *cmdtp, int flag, int argc,
+		     char *const argv[])
+{
+	if (argc == 2) {
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
+);
+
+#endif
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
