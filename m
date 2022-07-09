Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 035D2C43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:49:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtr/Vag8JvoLAN0hJ639+kNDF97976qGZlTz2dDiFFE=; b=fKCfeLQajR9hkb
	CuKz2zSAztICR/ZcqzC76wHQJcQTQx4dhJukeFjym9P/Qvtby28S/PijNcbEGI1Q5hSDSIwpJ2IPS
	CrkCsr/SCcdVbMVJM2r7TF1t+GEBIPcU5os4tZzjCWGESQOH0idu+IAzfGOsV6ZsenXGrPG2AkYwQ
	h9dvsy/Kxl2uPgUqe5DANZXAs8SAHjYi63fBv1Logfx+ovSzyqJKhHgbwzf6KSnAK0byVtdT+S583
	F9e/H/gGLLBO5UzBb0eC8922yW6fo2BLd/bu+Dd01KLgKD/4Yx3hvZ97EIMzuKAF+xkn0iN4DlNrl
	/eyrdLj5e7sw5vQGQmnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWS-008xsc-Kl; Sat, 09 Jul 2022 18:49:44 +0000
Received: from mail-ej1-x62f.google.com ([2a00:1450:4864:20::62f])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWP-008xqc-Sm
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:49:43 +0000
Received: by mail-ej1-x62f.google.com with SMTP id mf4so1500785ejc.3
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:49:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=3rd+e4nUZ6JyLzoQC7mc+GhMjoWJuckeWaCvSa2775I=;
        b=USO7EkXaddlCzwQ0jfkGx8XYWY3vP8XDl7glEqkV3nhGIGqAlKxetznyE15I9zLDLn
         ElC09VhiG7nnO5tGfYkHAzpItdBSKVnK4STZb427vm2WV6fdNiczdy9as0+aYe86THP6
         flxmNogH+UCY91S9qtDMbzscYDZ/RRbAFp1b1NMI/RtMNXRKOkm37huIFNG8tzXqfK6l
         s3UxiJ+00tywzbSITa2D12N11h511U+yXvvBz2KjH+BM9y5YI8jBq8nn59c+7xfwIfKl
         liqLKbuisymyvZavMS5p+o/PMxuw6kUyUqRJvaROxMmYyJ41Q1GB1S3GRuRuK9PFFjaj
         CGJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=3rd+e4nUZ6JyLzoQC7mc+GhMjoWJuckeWaCvSa2775I=;
        b=02AWHojdXGm98fvqiL0dI87zR9t8dKc+kWXKEm/IpsF5MFLowlTHHiycG2axT+X9N1
         RuevOtEXJDzoGULJIOLfZoxZe65ZmLwgeeByGYfppd3Ux+f2j7X7fWrRoHcT3Xy6xYz4
         GLU5ZCKGZl6eI8C4pIqqw1d0Zhz+Lwy9tRaSJzIhok+DrOOYC4Xd0hEoZSlpEKkhQZhq
         rsEBB5r9MxnSvvKUgTdEV6K8Fx8xmraNQ9OnrqNEbZG4YJoFPRkYsJlg34Eiej3exiy/
         KWwVaxu3fErj0+82ip7tdRcyZWn4WDNYOaQGn82u/NCyJbpvqJgPZWLtpLwzk8ajtpMa
         wWdg==
X-Gm-Message-State: AJIora97pQrt+Z+99ydkhCBYL+bPv3heF0GOjCC3HluRtct3bptih5tx
	rtA4vWwizY6QZYDOogH0MUo=
X-Google-Smtp-Source: AGRyM1sGuDfHaXOpXOrvfwStmPQYWgKr3XliKHK4HPMLs7pHkirZsbgddRs5xOuSHJQAW8DCiWUp0g==
X-Received: by 2002:a17:907:7e9a:b0:726:34df:6d28 with SMTP id qb26-20020a1709077e9a00b0072634df6d28mr10249775ejc.387.1657392579826;
        Sat, 09 Jul 2022 11:49:39 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ku19-20020a170907789300b006fece722508sm834328ejc.135.2022.07.09.11.49.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:49:39 -0700 (PDT)
Message-ID: <4fc96b7f-ef3f-f1c3-68ed-e98454006786@gmail.com>
Date: Sat, 9 Jul 2022 20:49:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 04/11] rockchip: idb: add info and stop command
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_114941_963649_616AD396 
X-CRM114-Status: GOOD (  12.73  )
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

Add info and stop command to become aware of what goes on
inside the driver and to release some resources.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

optional
---
 arch/arm/mach-rockchip/rockchip_idb.c | 116 ++++++++++++++++++++++++++
 1 file changed, 116 insertions(+)

diff --git a/arch/arm/mach-rockchip/rockchip_idb.c b/arch/arm/mach-rockchip/rockchip_idb.c
index 832b3251..0692ce1a 100644
--- a/arch/arm/mach-rockchip/rockchip_idb.c
+++ b/arch/arm/mach-rockchip/rockchip_idb.c
@@ -1456,10 +1456,124 @@ int rk_idb_start(void)
 
 #if !defined(CONFIG_SPL_BUILD)
 
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
+	struct sector0 *sec0 = (struct sector0 *)data;
+
+	printf("\n");
+
+	printf("magic            : %08x\n"
+	       "rc4_flag         : %08x\n"
+	       "boot_code1_offset: %d\n"
+	       "flash_data_size  : %d\n"
+	       "flash_boot_size  : %d\n",
+	       sec0->magic,
+	       sec0->rc4_flag,
+	       sec0->boot_code1_offset,
+	       sec0->flash_data_size,
+	       sec0->flash_boot_size);
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
+				rk_idb_rc4((char *)data + j * 512, 512);
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
 static int rk_idb_do(struct cmd_tbl *cmdtp, int flag, int argc,
 		     char *const argv[])
 {
 	if (argc == 2) {
+		if (!strcmp(argv[1], "info"))
+			return rk_idb_info();
+
+		if (!strcmp(argv[1], "stop"))
+			return rk_idb_stop();
+
 		if (!strcmp(argv[1], "start"))
 			return rk_idb_start();
 	}
@@ -1471,6 +1585,8 @@ U_BOOT_CMD(
 	idb, 5, 1, rk_idb_do,
 	"Rockchip IDB block device",
 	"start - start IDB device\n"
+	"idb stop  - stop IDB blk device\n"
+	"idb info  - show IDB device info\n"
 );
 
 #endif
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
