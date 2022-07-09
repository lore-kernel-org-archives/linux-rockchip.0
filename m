Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B2D1EC43334
	for <linux-rockchip@archiver.kernel.org>; Sat,  9 Jul 2022 18:50:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:References:Cc:To:Subject:
	From:MIME-Version:Date:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZeS4gV1WO7L3yLJ0jrbbMA6sfRv6N5p18SZNBMEXfaI=; b=No8JRnkduHyOlj
	Pub8zzj6ECHdbrpMsH9d5+x5+ROEGCDAhVnWUxn0FfW4cD5sZ4fvPD7d/V4mD9tv1TxHs6f8QLjXq
	DIhdK0REEBaXvG7JRqzLf3AXrS74B9lfbhv5nop9QJFSlSMB3gLK8SKKzF+5Fr5tnus6coUFs5U72
	Klbjcle9ju8YWENmvYmk4gl97cHrlriPWYu/sKAjPyUWrmbWRae0rx/Lhl/cXuv6h7ggzxBEXcwf+
	SHjaC2XXZU5Ud9FUdQPChd7epiRka3MAJT3IbtqSKFWioXdcb8MojO+JOcHMqseOrxjmcekSUfaDu
	wWIPI6z2XdKmFk2Ey32g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWd-008xxn-0p; Sat, 09 Jul 2022 18:49:55 +0000
Received: from mail-ed1-x534.google.com ([2a00:1450:4864:20::534])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oAFWX-008xun-Vd
	for linux-rockchip@lists.infradead.org; Sat, 09 Jul 2022 18:49:53 +0000
Received: by mail-ed1-x534.google.com with SMTP id fd6so2005016edb.5
        for <linux-rockchip@lists.infradead.org>; Sat, 09 Jul 2022 11:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:from:subject:to:cc
         :references:content-language:in-reply-to:content-transfer-encoding;
        bh=YR3frPdRSPo3hIcmGCM2c1lXJ1BHIrJIA8CdUl7B5YU=;
        b=GJRPDSW0ooOrsm6u4LEdOXNBBR+TlTfC03WoXm6bB7i+ye7yi6yvrBYktuFSwG6laQ
         i0hV2u/AnzpLnLdvnbxcQ/2kE85XFU2ldYaIqVT5N3UJii+GQLklJ5SZuc3nXIrD6zTm
         eAo2oa9j8DmLiLH8QjsGaPTVw4Xesogj2KF1ivv6ugcOzXLwKGX/ne8LoYTtAYBXE5sP
         d82s1oGIirMCBQr7GFgSCE3TaEC8COWXhIY+J09c0Oz4ucPWaj+GkuCBXrl3L3PdOugk
         SJ5vgbKkRJQD2s7Ws38RWRm4WMYSLrRnb2jG2c71xL9jrCWPIk8ies6xh/5OafI4VyOk
         nN5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:from
         :subject:to:cc:references:content-language:in-reply-to
         :content-transfer-encoding;
        bh=YR3frPdRSPo3hIcmGCM2c1lXJ1BHIrJIA8CdUl7B5YU=;
        b=OsGAsB+DZse13gQLl9kJVaXtphMrNRephSQUsD675+83u+VVBYEplkrfW13tgbdg4+
         4CB5RBS9wB5qc20RO90ZI5aTdhTPyi8QQtzqujgTI8meHPr3u7zfGIxz47eL+KZPt9iq
         0mxgF0tHb7J9r+3X6oUlSIiAj/U1lH6r8kzjW/3ym/CAq5rG6qAu7+r0cIQtrbRY7baW
         Hume4Smsmox4HVmXiU7BUsFYysa4EX3vlAOLwMN/sz2cBKEPm4CiaMKgqyvRalR9lbeD
         YK25bbVhe5H8hA1prKfLk9O3wE/gRtBznK7AFeDDDmiGpxmVjfD5oL27K5sWP8hszkG8
         pJXw==
X-Gm-Message-State: AJIora/q6vwIjAs84XNl4AN7ZgeFcDwR+wKzAkptM6q84KYZnz+ne/ZH
	+l3l3Bvgc+EoWaCbZz22ue4=
X-Google-Smtp-Source: AGRyM1vy1n9NLpSFoY+u8rZkCsp6eiOMEJ1Q7h9jVT2gW78CuEswQaRN6vyi7260GJAvs8CEGagjsw==
X-Received: by 2002:a05:6402:3553:b0:434:ef34:664f with SMTP id f19-20020a056402355300b00434ef34664fmr13567040edd.236.1657392588213;
        Sat, 09 Jul 2022 11:49:48 -0700 (PDT)
Received: from [192.168.2.1] (81-204-249-205.fixed.kpn.net. [81.204.249.205])
        by smtp.gmail.com with ESMTPSA id ky6-20020a170907778600b0072b11cb485asm833787ejc.208.2022.07.09.11.49.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 09 Jul 2022 11:49:47 -0700 (PDT)
Message-ID: <97371b48-62a5-5095-70ec-96c0e817c865@gmail.com>
Date: Sat, 9 Jul 2022 20:49:46 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.0
From: Johan Jonker <jbx6244@gmail.com>
Subject: [PATCH v2 05/11] rockchip: idb: add sector1 info
To: kever.yang@rock-chips.com
Cc: sjg@chromium.org, philipp.tomsich@vrull.eu, xypron.glpk@gmx.de,
 yifeng.zhao@rock-chips.com, jon.lin@rock-chips.com, u-boot@lists.denx.de,
 linux-rockchip@lists.infradead.org, miquel.raynal@bootlin.com,
 michael@amarulasolutions.com, dario.binacchi@amarulasolutions.com
References: <20220709183130.8039-1-jbx6244@gmail.com>
Content-Language: en-US
In-Reply-To: <20220709183130.8039-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220709_114950_051318_6D0DB21D 
X-CRM114-Status: GOOD (  10.61  )
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

Add Rockchip IDB sector1 info to make it easier to identify the
IDB date and version. Sector1 data is currently not added by U-boot
tools, but is generated by external tools that have support for it.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---

optional
---
 arch/arm/mach-rockchip/rockchip_idb.c | 46 +++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/arch/arm/mach-rockchip/rockchip_idb.c b/arch/arm/mach-rockchip/rockchip_idb.c
index 0692ce1a..37fe6ff2 100644
--- a/arch/arm/mach-rockchip/rockchip_idb.c
+++ b/arch/arm/mach-rockchip/rockchip_idb.c
@@ -59,6 +59,11 @@
 #define NAND_CMD_ERASE2		0xd0
 #define NAND_CMD_RESET		0xff
 
+#define BCD2INT(num)		(((((num) >> 12) & 0x0F) * 1000) + \
+				((((num) >> 8) & 0x0F) * 100) + \
+				((((num) >> 4) & 0x0F) * 10) + \
+				((num) & 0x0F))
+
 #define DATA_STEP		1024
 #define OOB_STEP		4
 #define LBA			64 + 512 + 33
@@ -80,6 +85,35 @@ struct sector0 {
 	u8  reserved2[2];
 } __packed;
 
+struct sector1 {
+	u16 sys_reserved_block;
+	u16 disk0_size;
+	u16 disk1_size;
+	u16 disk2_size;
+	u16 disk3_size;
+	u32 chip_tag;
+	u32 machine_id;
+	u16 loader_year;
+	u16 loader_date;
+	u16 loader_ver;
+	u8  reserved[72];
+	u16 flash_data_offset;
+	u16 flash_data_len;
+	u8  reserved2[384];
+	u32 flash_chip_size;
+	u8  reserved1;
+	u8  access_time;
+	u16 phy_block_size;
+	u8  phy_page_size;
+	u8  ecc_bits;
+	u8  reserved3[8];
+	u16 id_block0;
+	u16 id_block1;
+	u16 id_block2;
+	u16 id_block3;
+	u16 id_block4;
+} __packed;
+
 struct nand_para_info {
 	u8 id_bytes;
 	u8 nand_id[6];
@@ -1475,10 +1509,22 @@ int rk_idb_stop(void)
 
 void rk_idb_print_idb_data(u32 *data)
 {
+	struct sector1 *sec1 = (struct sector1 *)((u8 *)data + 512);
 	struct sector0 *sec0 = (struct sector0 *)data;
 
 	printf("\n");
 
+	printf("DATE    : %d-%d-%d\n",
+	       BCD2INT(sec1->loader_year),
+	       BCD2INT(sec1->loader_date >> 8),
+	       BCD2INT(sec1->loader_date & 0xff));
+
+	printf("VERSION : %d.%d\n",
+	       BCD2INT(sec1->loader_ver >> 8),
+	       BCD2INT(sec1->loader_ver & 0xff));
+
+	printf("\n");
+
 	printf("magic            : %08x\n"
 	       "rc4_flag         : %08x\n"
 	       "boot_code1_offset: %d\n"
-- 
2.20.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
