Return-Path: <SRS0=pBh/=JS=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=unavailable autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B8E2C433ED
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:59:34 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id A213561426
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Apr 2021 17:59:33 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org A213561426
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oDdo1wKA0Q6bmVZjfAItG7faiEsGWqH1mMRBNOE0FgU=; b=gQqhSeqG6GxfopPE51Hq+UtIny
	o1oZBmeN+Abhud2MkyfJDlGF3LdSuxZftlq8Fp5IpdcBkXDVwj68QiewsDMEMRy5jaMg2dZEeDJUS
	CC4xQwmeEhLj2osvXTyv4RTlwlS782hPojJmMOniPFyO23DTGF95ftA0ZOp8bo069uqEVpNnz2xFO
	FIoCf8xOilKxOkHIp9CAtBma1vt8pY6Y1eqRzih2cqUkjs1XlaKZ/4j/Rwz9oX/AS+m56WqslzGcL
	8lTf0E8SYRF6G7W7t1v4jzd4GvLF1Zt+Kze3njjzJsBUt858Z8cn8g71sBgxPTZIHauxbe3OGJFMM
	aikxM2bg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lZH8J-00EvgZ-Gf; Wed, 21 Apr 2021 17:59:27 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZH8I-00EvgJ-EC
 for linux-rockchip@desiato.infradead.org; Wed, 21 Apr 2021 17:59:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
 Content-ID:Content-Description:In-Reply-To:References;
 bh=kZdB3HopA6OoSJ+j0+5pjn+wh5XHHbqxGCRwBrO7f60=; b=f/CpFbcX+mTBkB7/eEBtl/J4nc
 iUk1O1mDaISnGxvsdtacfLK+rjOrjl3ylguZxEzvEaSw/KF8AQO6W3gSx6TWWMJOWif84/EQfmiRF
 UgSQpZ4/wxzPmljZi9IN5H8DYM1Myn+UapUNNBVId+8cD0quX4wik1CqLdnnhhtxU+wiLrp5EzDBv
 cSvWwMzIB8zvEG4zKiVs99WPnXcCJUVCMm+Gb18ShHbLLBAfHRgM1dDmH46JpbDd2GSSrLR1Ja/dT
 e0IxuBC/8BXCfVmw7fKdJ3cL75eDj+U+QMiw993eS0nCq5VBwORnATvIkHKiplc45axfDvVXGrAT6
 du7ew/Tw==;
Received: from mail-oi1-x229.google.com ([2607:f8b0:4864:20::229])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lZH8F-00D5L3-A1
 for linux-rockchip@lists.infradead.org; Wed, 21 Apr 2021 17:59:25 +0000
Received: by mail-oi1-x229.google.com with SMTP id i81so43242577oif.6
 for <linux-rockchip@lists.infradead.org>; Wed, 21 Apr 2021 10:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kZdB3HopA6OoSJ+j0+5pjn+wh5XHHbqxGCRwBrO7f60=;
 b=aow7NcZ/GyxcSPKZaCRIC4gk0yVfmH53L6INJJ4pikrN4madaQJ1mxLLVsZ1eL+bTM
 Io4Ohx+JRvSAgthgSaJPRwpY2/WOVAfqGOUYGE1Y/+JY38ur0vw1VraAH9k8aAh3Zogr
 V06GSMkbtLJqRvPPPf3+uBM9Zxf0/lgbSiZYU6X5/BubT7Vhu0s8kQi2hgxjnmdGPpos
 eWmVwCGlmuuoYfuxnzG08ntP0EpdSWXYyyhKy47iPXLtEoAVvOT0wne6T0AQ/1lIfnsG
 fSGySuDmau//wIiS4WEfEE3hOf6k4s7bl8VOxuxyi6YEtjfvb9RYzUOmjNlfn9se5dfG
 TtpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=kZdB3HopA6OoSJ+j0+5pjn+wh5XHHbqxGCRwBrO7f60=;
 b=ZXJCAMdZaj5f0Gxl0z7ButfUO648HknUJ7RS5viMqWStSRgaJKySRql4cCZxOQbiz+
 EatAkyghubhcxJvBNwF9pFKu6Og5sIGvTmEHhF+Z178qjHz9xs2Fyv7I8TIyj+yn3zIP
 JXXaeAp6pwvQn9qNV2uO1RVw+56twakGCjsQCV36L7OwemCpf8g9tupF5Caqae9YwhJ2
 hUtus7KxWMjpgcvNLm2n7WBZibGzePmU+D69nCeJkxek1W0IghZYlgsZpllXp2NL0XEB
 sSuSp63DP7gYR0iHFI+gsu8P0Grf9iWKunoYMelbPrPyukZ10CZGu2f/E3yxwqpbKc9l
 2zDA==
X-Gm-Message-State: AOAM532qNbafzrmzWeRVQBwHIKJg8b0VlNt33WUISSUGAAD1sY652v6S
 xSHW5Xvw3zQGZUJb7Y8KDnbKR66y2NE=
X-Google-Smtp-Source: ABdhPJxh2gXvL1qHZ8uakUo4F29PeYBA8iKNQCSAZJTsaejXR8d+PuUSveOkhRiIKvqNC+QYIhrHsQ==
X-Received: by 2002:aca:ea06:: with SMTP id i6mr7736852oih.82.1619027961708;
 Wed, 21 Apr 2021 10:59:21 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35])
 by smtp.gmail.com with ESMTPSA id l62sm13662oih.2.2021.04.21.10.59.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 21 Apr 2021 10:59:20 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: alsa-devel@alsa-project.org
Cc: broonie@kernel.org, lgirdwood@gmail.com,
 pierre-louis.bossart@linux.intel.com, tiwai@suse.com, heiko@sntech.de,
 lee.jones@linaro.org, robh+dt@kernel.org, perex@perex.cz,
 jbx6244@gmail.com, devicetree@vger.kernel.org,
 linux-rockchip@lists.infradead.org, maccraft123mc@gmail.com,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [v8 1/4] mfd: Add Rockchip rk817 audio CODEC support
Date: Wed, 21 Apr 2021 12:59:03 -0500
Message-Id: <20210421175906.31977-1-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210421_105923_380579_395B4D8B 
X-CRM114-Status: GOOD (  14.74  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

From: Chris Morgan <macromorgan@hotmail.com>

Add rk817 codec support cell to rk808 mfd driver.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
Changes in v8:
 - Added additional documentation for missing properties of #sound-dai-cells,
   interrupt-parent, and wakeup-source for mfd documentation.
 - Corrected order of elements descriptions in device tree documentation.
 - Changed name of "mic-in-differential" to "rockchip,mic-in-differential".
 - Changed name of sound card from "rockchip,rk817-codec" to "Analog".
 - Removed unused resets and reset-names from the i2s1_2ch node.
Changes in v7:
 - Removed ifdef around register definitions for MFD.
 - Replaced codec documentation with updates to MFD documentation.
 - Reordered elements in example to comply with upstream rules.
 - Added binding update back for Odroid Go Advance as requested.
 - Submitting patches from gmail now.
Changes in v6:
 - Included additional project maintainers for correct subsystems.
 - Removed unneeded compatible from DT documentation.
 - Removed binding update for Odroid Go Advance (will do in seperate series).
Changes in v5:
 - Move register definitions from rk817_codec.h to main rk808.h register
   definitions.
 - Add volatile register for codec bits.
 - Add default values for codec bits.
 - Removed of_compatible from mtd driver (not necessary).
 - Switched to using parent regmap instead of private regmap for codec.
Changes in v4:
 - Created set_pll() call.
 - Created user visible gain control in mic.
 - Check for return value of clk_prepare_enable().
 - Removed duplicate clk_prepare_enable().
 - Split DT documentation to separate commit.
Changes in v3:
 - Use DAPM macros to set audio path.
 - Updated devicetree binding (as every rk817 has this codec chip).
 - Changed documentation to yaml format.
 - Split MFD changes to separate commit.
Changes in v2:
 - Fixed audio path registers to solve some bugs.

 drivers/mfd/rk808.c       | 85 +++++++++++++++++++++++++++++++++++++++
 include/linux/mfd/rk808.h | 81 +++++++++++++++++++++++++++++++++++++
 2 files changed, 166 insertions(+)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index ad923dd4e007..9231209184e0 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -65,6 +65,7 @@ static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
 	switch (reg) {
 	case RK817_SECONDS_REG ... RK817_WEEKS_REG:
 	case RK817_RTC_STATUS_REG:
+	case RK817_CODEC_DTOP_LPT_SRST:
 	case RK817_INT_STS_REG0:
 	case RK817_INT_STS_REG1:
 	case RK817_INT_STS_REG2:
@@ -163,6 +164,11 @@ static const struct mfd_cell rk817s[] = {
 		.num_resources = ARRAY_SIZE(rk817_rtc_resources),
 		.resources = &rk817_rtc_resources[0],
 	},
+#ifdef CONFIG_SND_SOC_RK817
+	{
+		.name = "rk817-codec",
+	},
+#endif
 };
 
 static const struct mfd_cell rk818s[] = {
@@ -201,6 +207,85 @@ static const struct rk808_reg_data rk808_pre_init_reg[] = {
 
 static const struct rk808_reg_data rk817_pre_init_reg[] = {
 	{RK817_RTC_CTRL_REG, RTC_STOP, RTC_STOP},
+	/* Codec specific registers */
+	{ RK817_CODEC_DTOP_VUCTL, MASK_ALL, 0x03 },
+	{ RK817_CODEC_DTOP_VUCTIME, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DTOP_LPT_SRST, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DTOP_DIGEN_CLKE, MASK_ALL, 0x00 },
+	/* from vendor driver, CODEC_AREF_RTCFG0 not defined in data sheet */
+	{ RK817_CODEC_AREF_RTCFG0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_AREF_RTCFG1, MASK_ALL, 0x06 },
+	{ RK817_CODEC_AADC_CFG0, MASK_ALL, 0xc8 },
+	/* from vendor driver, CODEC_AADC_CFG1 not defined in data sheet */
+	{ RK817_CODEC_AADC_CFG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_VOLL, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_VOLR, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_SR_ACL0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_ALC1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_ALC2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_NG, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_HPF, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DADC_RVOLL, MASK_ALL, 0xff },
+	{ RK817_CODEC_DADC_RVOLR, MASK_ALL, 0xff },
+	{ RK817_CODEC_AMIC_CFG0, MASK_ALL, 0x70 },
+	{ RK817_CODEC_AMIC_CFG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_PGA_GAIN, MASK_ALL, 0x66 },
+	{ RK817_CODEC_DMIC_LMT1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_LMT2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_NG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_NG2, MASK_ALL, 0x00 },
+	/* from vendor driver, CODEC_ADAC_CFG0 not defined in data sheet */
+	{ RK817_CODEC_ADAC_CFG0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_ADAC_CFG1, MASK_ALL, 0x07 },
+	{ RK817_CODEC_DDAC_POPD_DACST, MASK_ALL, 0x82 },
+	{ RK817_CODEC_DDAC_VOLL, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_VOLR, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_SR_LMT0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_LMT1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_LMT2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_MUTE_MIXCTL, MASK_ALL, 0xa0 },
+	{ RK817_CODEC_DDAC_RVOLL, MASK_ALL, 0xff },
+	{ RK817_CODEC_DADC_RVOLR, MASK_ALL, 0xff },
+	{ RK817_CODEC_AMIC_CFG0, MASK_ALL, 0x70 },
+	{ RK817_CODEC_AMIC_CFG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_PGA_GAIN, MASK_ALL, 0x66 },
+	{ RK817_CODEC_DMIC_LMT1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_LMT2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_NG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DMIC_NG2, MASK_ALL, 0x00 },
+	/* from vendor driver, CODEC_ADAC_CFG0 not defined in data sheet */
+	{ RK817_CODEC_ADAC_CFG0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_ADAC_CFG1, MASK_ALL, 0x07 },
+	{ RK817_CODEC_DDAC_POPD_DACST, MASK_ALL, 0x82 },
+	{ RK817_CODEC_DDAC_VOLL, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_VOLR, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_SR_LMT0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_LMT1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_LMT2, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DDAC_MUTE_MIXCTL, MASK_ALL, 0xa0 },
+	{ RK817_CODEC_DDAC_RVOLL, MASK_ALL, 0xff },
+	{ RK817_CODEC_DDAC_RVOLR, MASK_ALL, 0xff },
+	{ RK817_CODEC_AHP_ANTI0, MASK_ALL, 0x00 },
+	{ RK817_CODEC_AHP_ANTI1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_AHP_CFG0, MASK_ALL, 0xe0 },
+	{ RK817_CODEC_AHP_CFG1, MASK_ALL, 0x1f },
+	{ RK817_CODEC_AHP_CP, MASK_ALL, 0x09 },
+	{ RK817_CODEC_ACLASSD_CFG1, MASK_ALL, 0x69 },
+	{ RK817_CODEC_ACLASSD_CFG2, MASK_ALL, 0x44 },
+	{ RK817_CODEC_APLL_CFG0, MASK_ALL, 0x04 },
+	{ RK817_CODEC_APLL_CFG1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_APLL_CFG2, MASK_ALL, 0x30 },
+	{ RK817_CODEC_APLL_CFG3, MASK_ALL, 0x19 },
+	{ RK817_CODEC_APLL_CFG4, MASK_ALL, 0x65 },
+	{ RK817_CODEC_APLL_CFG5, MASK_ALL, 0x01 },
+	{ RK817_CODEC_DI2S_CKM, MASK_ALL, 0x01 },
+	{ RK817_CODEC_DI2S_RSD, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DI2S_RXCR1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DI2S_RXCR2, MASK_ALL, 0x17 },
+	{ RK817_CODEC_DI2S_RXCMD_TSD, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DI2S_TXCR1, MASK_ALL, 0x00 },
+	{ RK817_CODEC_DI2S_TXCR2, MASK_ALL, 0x17 },
+	{ RK817_CODEC_DI2S_TXCR3_TXCMD, MASK_ALL, 0x00 },
 	{RK817_GPIO_INT_CFG, RK817_INT_POL_MSK, RK817_INT_POL_L},
 	{RK817_SYS_CFG(1), RK817_HOTDIE_TEMP_MSK | RK817_TSD_TEMP_MSK,
 					   RK817_HOTDIE_105 | RK817_TSD_140},
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index e07f6e61cd38..a96e6d43ca06 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -437,6 +437,87 @@ enum rk809_reg_id {
 #define RK817_RTC_COMP_LSB_REG		0x10
 #define RK817_RTC_COMP_MSB_REG		0x11
 
+/* RK817 Codec Registers */
+#define RK817_CODEC_DTOP_VUCTL		0x12
+#define RK817_CODEC_DTOP_VUCTIME	0x13
+#define RK817_CODEC_DTOP_LPT_SRST	0x14
+#define RK817_CODEC_DTOP_DIGEN_CLKE	0x15
+#define RK817_CODEC_AREF_RTCFG0		0x16
+#define RK817_CODEC_AREF_RTCFG1		0x17
+#define RK817_CODEC_AADC_CFG0		0x18
+#define RK817_CODEC_AADC_CFG1		0x19
+#define RK817_CODEC_DADC_VOLL		0x1a
+#define RK817_CODEC_DADC_VOLR		0x1b
+#define RK817_CODEC_DADC_SR_ACL0	0x1e
+#define RK817_CODEC_DADC_ALC1		0x1f
+#define RK817_CODEC_DADC_ALC2		0x20
+#define RK817_CODEC_DADC_NG		0x21
+#define RK817_CODEC_DADC_HPF		0x22
+#define RK817_CODEC_DADC_RVOLL		0x23
+#define RK817_CODEC_DADC_RVOLR		0x24
+#define RK817_CODEC_AMIC_CFG0		0x27
+#define RK817_CODEC_AMIC_CFG1		0x28
+#define RK817_CODEC_DMIC_PGA_GAIN	0x29
+#define RK817_CODEC_DMIC_LMT1		0x2a
+#define RK817_CODEC_DMIC_LMT2		0x2b
+#define RK817_CODEC_DMIC_NG1		0x2c
+#define RK817_CODEC_DMIC_NG2		0x2d
+#define RK817_CODEC_ADAC_CFG0		0x2e
+#define RK817_CODEC_ADAC_CFG1		0x2f
+#define RK817_CODEC_DDAC_POPD_DACST	0x30
+#define RK817_CODEC_DDAC_VOLL		0x31
+#define RK817_CODEC_DDAC_VOLR		0x32
+#define RK817_CODEC_DDAC_SR_LMT0	0x35
+#define RK817_CODEC_DDAC_LMT1		0x36
+#define RK817_CODEC_DDAC_LMT2		0x37
+#define RK817_CODEC_DDAC_MUTE_MIXCTL	0x38
+#define RK817_CODEC_DDAC_RVOLL		0x39
+#define RK817_CODEC_DDAC_RVOLR		0x3a
+#define RK817_CODEC_AHP_ANTI0		0x3b
+#define RK817_CODEC_AHP_ANTI1		0x3c
+#define RK817_CODEC_AHP_CFG0		0x3d
+#define RK817_CODEC_AHP_CFG1		0x3e
+#define RK817_CODEC_AHP_CP		0x3f
+#define RK817_CODEC_ACLASSD_CFG1	0x40
+#define RK817_CODEC_ACLASSD_CFG2	0x41
+#define RK817_CODEC_APLL_CFG0		0x42
+#define RK817_CODEC_APLL_CFG1		0x43
+#define RK817_CODEC_APLL_CFG2		0x44
+#define RK817_CODEC_APLL_CFG3		0x45
+#define RK817_CODEC_APLL_CFG4		0x46
+#define RK817_CODEC_APLL_CFG5		0x47
+#define RK817_CODEC_DI2S_CKM		0x48
+#define RK817_CODEC_DI2S_RSD		0x49
+#define RK817_CODEC_DI2S_RXCR1		0x4a
+#define RK817_CODEC_DI2S_RXCR2		0x4b
+#define RK817_CODEC_DI2S_RXCMD_TSD	0x4c
+#define RK817_CODEC_DI2S_TXCR1		0x4d
+#define RK817_CODEC_DI2S_TXCR2		0x4e
+#define RK817_CODEC_DI2S_TXCR3_TXCMD	0x4f
+
+/* RK817_CODEC_DI2S_CKM */
+#define RK817_I2S_MODE_MASK		(0x1 << 0)
+#define RK817_I2S_MODE_MST		(0x1 << 0)
+#define RK817_I2S_MODE_SLV		(0x0 << 0)
+
+/* RK817_CODEC_DDAC_MUTE_MIXCTL */
+#define DACMT_MASK			(0x1 << 0)
+#define DACMT_ENABLE			(0x1 << 0)
+#define DACMT_DISABLE			(0x0 << 0)
+
+/* RK817_CODEC_DI2S_RXCR2 */
+#define VDW_RX_24BITS			(0x17)
+#define VDW_RX_16BITS			(0x0f)
+
+/* RK817_CODEC_DI2S_TXCR2 */
+#define VDW_TX_24BITS			(0x17)
+#define VDW_TX_16BITS			(0x0f)
+
+/* RK817_CODEC_AMIC_CFG0 */
+#define MIC_DIFF_MASK			(0x1 << 7)
+#define MIC_DIFF_DIS			(0x0 << 7)
+#define MIC_DIFF_EN			(0x1 << 7)
+
 #define RK817_POWER_EN_REG(i)		(0xb1 + (i))
 #define RK817_POWER_SLP_EN_REG(i)	(0xb5 + (i))
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
