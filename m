Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id C38FCC43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bayDYZsdq+fAcEOpxp3RjIsrPH+DqUxS/0KwVdUdjW8=; b=k0XuJZvfEuvUpU
	+uF7W+2SSp+ci8OprlxsYEs09xywDEHYRf0BnkslFWu+0SlTkUV9N/7232Y6WZRWQ6XxgJ27FK+YJ
	/ik+oPptDBhxkNB8ad4r/Tlo+8OPsIdJhXiIPSFMPFi0W6ZHWRSNOI/hfD0ka4ul5sxpOTpD71nx0
	A4N8ijDVETTFj7SiqRMKPM2I0wQt4A/T8AKe0Tc9UlsCkE3vYOhUx8Wb94MJrAw2wTvgjadB82A01
	+UleFUtMrO56G718HqiYpcyLjhto4xW/K63a8rmMeM42hWv2rwKNRjcqKOuwj8fW/HiaLhNvVqtQv
	MtbP0yavTxUZL108syfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWl-008y3X-Jg; Sat, 09 Jul 2022 18:50:03 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWi-008y0y-Ao
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:50:02 +0000
Received: by mail-ed1-x534.google.com with SMTP id r18so1989932edb.9
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=iJNA9MzvA9qkiQ1DvHiLr2KAmysJKGLzCReiw6NRtCY=;
        b=oTgGnZLJ7GtN/LifZ+RstWe+kFA9n3TYNmWxBdDI9QhU0NHEHp8Yz3qJSecYeb/uAN
         fbUqjS3y31kJ//ZkqGFPi0jDPYTTVsTwNaRAyD+l1D9PNmOI2UBriJ4rwepBj3ceooyn
         BrEQ2WFN6C8gM6w61LYSBLaTEhV1VQRxzUNBOWznQy2cS/Bprc4QuTa+QUeRBFy5FTk0
         b1eomZ2eiIdhx4UWg6jj4uzbRi4mYl1JpfXfINDcycESEGHFNmSLEBy68BHugPfzOUA6
         28LdgB1yyxrPTn7t34zW6QsDRtW4AGId2vEo8N6mDxp65E+2bUD5XFTCFgK2ufWEN+rF
         Jxig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=iJNA9MzvA9qkiQ1DvHiLr2KAmysJKGLzCReiw6NRtCY=;
        b=WyCKCmW+mZ366XN1MZ1tQ2c5e21dP8FaETvivKhq6jkjUqqm1MQL5JhvaUMZDTXJ70
         lhM5+iWJJlqdUtY78hUzJ2C8UQAjZXfjdxX94vwATeY+atoRqxDdHg7MN9/fq4b56+44
         Mfe3gg7z/Q1hcosVryd4sjclu2htecAlbF+iyOocC6ApTruq5RHO5cyYicZ1+iS2cp8F
         tqzfGm1MHWLoAJqBgjw1Q/PAelDwhbz+WKtR1qBRv7PHqNiXZKgm8Byp0M7qeUPw/TKt
         D/k7XlWU5eKyPJYRE8n5ZrGpoMiQGeOjITEa8RHbtfyfC1hlfOCViSIS0/Mb/YpFvgOp
         wsgQ==
X-Gm-Message-State: AJIora/tBaH6Ezw+Af6yH9dDQTUmGLKSUixTLX2DyYYiau9JO9OSh88U
	Lb4Zf/RC8wXUvmJ7u7roi6Y=
X-Google-Smtp-Source: AGRyM1vydPS/rQHGWbhv8h7zfXO6ei8tdsk3PSXnDy75zZNU8NOTuu/6vPZQqU4fWDisUHVcJK9PSQ==
X-Received: by 2002:a05:6402:388b:b0:42b:5f20:c616 with SMTP id fd11-20020a056402388b00b0042b5f20c616mr13275268edb.50.1657392599189;
        Sat, 09 Jul 2022 11:49:59 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id rp28-20020a170906d97c00b0072b1cc543fasm849555ejb.130.2022.07.09.11.49.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:49:58 -0700 (PDT)
Message-ID: <0b295d0e-53d6-b35a-3058-861e203b4d83@gmail.com>
Date: Sat, 9 Jul 2022 20:49:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 06/11] rockchip: idb: add randomizer option
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_115000_403843_B4D9AC1B 
X-CRM114-Status: GOOD (  10.44  )
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

Add randomizer option as on some NAND chip all data writen by
Rockchip tools after the IDB blocks is scrambled.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

optional
---
 arch/arm/mach-rockchip/rockchip_idb.c | 56 +++++++++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm/mach-rockchip/rockchip_idb.c b/arch/arm/mach-rockchip/rockchip_idb.c
index 37fe6ff2..39eb458a 100644
--- a/arch/arm/mach-rockchip/rockchip_idb.c
+++ b/arch/arm/mach-rockchip/rockchip_idb.c
@@ -190,6 +190,7 @@ struct rk_idb {
 	u32 boot_blks;
 	u32 boot_ecc;
 	u32 pages_per_blk;
+	u32 randomizer;
 	struct idb idblock[5];
 	u32 blk_counter;
 	u32 idb_need_write_back;
@@ -206,6 +207,41 @@ struct rk_idb {
 	char uuid_disk_str[UUID_STR_LEN + 1];
 };
 
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
 struct nand_para_info nand_para_tbl[] = {
 	{6, {0x2c, 0x64, 0x44, 0x4b, 0xa9, 0x00}, 4, 1, 16,  256, 2, 2, 2048, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
 	{6, {0x2c, 0x44, 0x44, 0x4b, 0xa9, 0x00}, 4, 1, 16,  256, 2, 2, 1064, 0x01df,  3, 17, 40, 32, 1, 0, 1, 0, 0, {0, 0, 0, 0, 0}},
@@ -640,6 +676,15 @@ void rk_idb_read_page_op(struct rk_idb *plat, int page, int col)
 	writeb(page >> 8, bank_base + BANK_ADDR);
 	writeb(page >> 16, bank_base + BANK_ADDR);
 	writeb(NAND_CMD_READSTART, bank_base + BANK_CMD);
+
+	u32 seed = random_seed[page & 0x7F];
+
+	if (plat->randomizer) {
+		if (!(page < plat->pages_per_blk * plat->boot_blks))
+			seed |= 0xC0000000;
+	}
+
+	writel(seed, regs + plat->cfg->randmz_off);
 }
 
 void rk_idb_write_page_op_begin(struct rk_idb *plat, int page, int col)
@@ -653,6 +698,15 @@ void rk_idb_write_page_op_begin(struct rk_idb *plat, int page, int col)
 	writeb(page, bank_base + BANK_ADDR);
 	writeb(page >> 8, bank_base + BANK_ADDR);
 	writeb(page >> 16, bank_base + BANK_ADDR);
+
+	u32 seed = random_seed[page & 0x7F];
+
+	if (plat->randomizer) {
+		if (!(page < plat->pages_per_blk * plat->boot_blks))
+			seed |= 0xC0000000;
+	}
+
+	writel(seed, regs + plat->cfg->randmz_off);
 }
 
 void rk_idb_write_page_op_end(struct rk_idb *plat)
@@ -1277,6 +1331,8 @@ int rk_idb_probe(struct udevice *dev)
 		return -ENODEV;
 	}
 
+	plat->randomizer = (plat->info->operation_opt >> 7) & 1;
+
 	rk_idb_block_align(plat, plat->info->page_per_blk);
 
 	rk_idb_build_page_table(plat, plat->info->lsb_mode);
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
