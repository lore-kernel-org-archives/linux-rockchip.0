Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4FA6C4332F
	for <linux-rockchip@archiver.kernel.org>; Fri,  8 Apr 2022 21:21:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t12FTutfE1IsQ/FHYA0rqJfgeADOaE8rRVlzWTvXSB8=; b=kOfXagszI4uVwa
	QI8KRiM5z3pVeZj3EWqICkI/qVHmatq5ZIiH5jvdQkSwjwJR7gQ1337AzzTYUUBUkm/hY3Niyedmt
	LBPrx90JMkl8g9ITFFMnymq8yzK3V5vu7YDyEMmpbU1tNSEAjqwYnbJ9PBSRIo3pF7FMq2N333Per
	KJ58gsdB8z8wjbTNR99bhY7P/4LHFN1M3La+0ZNH1vcNWsmdUl4VqzWddvEdj5t++WuN8zvMwkDZT
	CXT4oS0Snqr4IarEzGgowtJRjUYrBrImWXX85NTdtWP1W4iTMcEfh/iKCiN1WyaGnkHpRlA/7k7IF
	Xcaae0R8JKTZAJOp3Fvg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ncw2v-001IfG-P5; Fri, 08 Apr 2022 21:21:33 +0000
Received: from mail-ot1-x334.google.com ([2607:f8b0:4864:20::334])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1ncw2s-001IdX-5f
 for linux-rockchip@lists.infradead.org; Fri, 08 Apr 2022 21:21:31 +0000
Received: by mail-ot1-x334.google.com with SMTP id
 a17-20020a9d3e11000000b005cb483c500dso6946180otd.6
 for <linux-rockchip@lists.infradead.org>; Fri, 08 Apr 2022 14:21:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=eGxcFia+56uzVoruJ6OmLxji9P6kTMXtUnj8BikXIyE=;
 b=Q7Vv5WW09c8FEqZuN2An72z/4QAascsW19yjzbCaMpt1q8ed7s9UKx+RGBiiv8K+x4
 mmLGv1KYn1xUJhf/6jJJwc6QPvssCZ3GKZRDPfZpdYN43Hrsu55aY49dvTqW8gWUInwb
 q1qNiWxP0tRQy1PlbqLWnwPOTqnGwPJwl0mv3zA6xSjGMgZfX9lHhhenjSnjInUTlSwa
 DmcPGaC6FhQt1eDD0xCHJQ6c+AsKprMZgP1aK/hsUGi02ipyeBHdW65D4oKbDrQIxA2N
 SENY782dX/6ijrIBRQ9izBJ1z6pZJMGvHkRirhwwyePf8J4IoQkkoBeatyOHnz82GcUa
 yjIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eGxcFia+56uzVoruJ6OmLxji9P6kTMXtUnj8BikXIyE=;
 b=fCyZ3sfE24kJkzEuM5U7g88E7V5wzFhxhNkbZ397IE76aCgZwwUfBvFNCryL6HQZhL
 886Ut8jxHI0L2mfeShdNNm96ROCGc61D16YKOj9KC2V52TiKyKqgwBVqjVBV1K7UsBXi
 lcVCIy7ZHW0d9UV6Aq1TOnYyxECCYzjchiAzI1DwgJwIRVMkTDeU4fPx1bsaAlUU7iSL
 g7T6uQ18n5ovlpUJGTG8gYSuavgmKyZgBk4BkfFZGcI7hcu21zrBiIeO++j/8fJPPLsN
 vVJZ027oxSMkCXYT0RMqEEC121TqAxCTsvFZe+8Po9LSj0LFo/vZmnrqRdiQ9JQDfX8A
 oNyA==
X-Gm-Message-State: AOAM533omcFa/RDVZ6gsdmicQdJewvtqb34Y0ZMN6gFgIHq44D2NYm1E
 JgfobevG2jB/3YchL7/me8Y=
X-Google-Smtp-Source: ABdhPJzTSjRSbPFxWZCAVsxwG0JL374DakdcxV8ts9IqWuSRXwaB4wY09Zudvfugy8eDq6DuIsMiJw==
X-Received: by 2002:a9d:12ac:0:b0:5b2:3697:2fbf with SMTP id
 g41-20020a9d12ac000000b005b236972fbfmr7420586otg.356.1649452888940; 
 Fri, 08 Apr 2022 14:21:28 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com.
 [76.183.134.35]) by smtp.gmail.com with ESMTPSA id
 ep36-20020a056870a9a400b000de98fe4869sm9950375oab.35.2022.04.08.14.21.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 08 Apr 2022 14:21:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-pm@vger.kernel.org
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 zhangqing@rock-chips.com, zyw@rock-chips.com, maccraft123mc@gmail.com,
 jon.lin@rock-chips.com, sre@kernel.org, heiko@sntech.de,
 krzk+dt@kernel.org, robh+dt@kernel.org, lee.jones@linaro.org,
 Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/4 v6] mfd: Add Rockchip rk817 battery charger support
Date: Fri,  8 Apr 2022 16:21:19 -0500
Message-Id: <20220408212121.9368-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220408212121.9368-1-macroalpha82@gmail.com>
References: <20220408212121.9368-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220408_142130_254281_E86D69FC 
X-CRM114-Status: GOOD (  12.27  )
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

Add rk817 charger support cell to rk808 mfd driver.

Acked-for-mfd-by: Lee Jones <lee.jones@linaro.org>
Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
---
 drivers/mfd/rk808.c       | 16 ++++++-
 include/linux/mfd/rk808.h | 91 +++++++++++++++++++++++++++++++++++++++
 2 files changed, 106 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 4142b638e5fa..283a65b64d2c 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -67,6 +67,10 @@ static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
 	case RK817_SECONDS_REG ... RK817_WEEKS_REG:
 	case RK817_RTC_STATUS_REG:
 	case RK817_CODEC_DTOP_LPT_SRST:
+	case RK817_GAS_GAUGE_ADC_CONFIG0 ... RK817_GAS_GAUGE_CUR_ADC_K0:
+	case RK817_PMIC_CHRG_STS:
+	case RK817_PMIC_CHRG_OUT:
+	case RK817_PMIC_CHRG_IN:
 	case RK817_INT_STS_REG0:
 	case RK817_INT_STS_REG1:
 	case RK817_INT_STS_REG2:
@@ -74,7 +78,7 @@ static bool rk817_is_volatile_reg(struct device *dev, unsigned int reg)
 		return true;
 	}
 
-	return true;
+	return false;
 }
 
 static const struct regmap_config rk818_regmap_config = {
@@ -127,6 +131,11 @@ static const struct resource rk817_pwrkey_resources[] = {
 	DEFINE_RES_IRQ(RK817_IRQ_PWRON_FALL),
 };
 
+static const struct resource rk817_charger_resources[] = {
+	DEFINE_RES_IRQ(RK817_IRQ_PLUG_IN),
+	DEFINE_RES_IRQ(RK817_IRQ_PLUG_OUT),
+};
+
 static const struct mfd_cell rk805s[] = {
 	{ .name = "rk808-clkout", },
 	{ .name = "rk808-regulator", },
@@ -166,6 +175,11 @@ static const struct mfd_cell rk817s[] = {
 		.resources = &rk817_rtc_resources[0],
 	},
 	{ .name = "rk817-codec",},
+	{
+		.name = "rk817-charger",
+		.num_resources = ARRAY_SIZE(rk817_charger_resources),
+		.resources = &rk817_charger_resources[0],
+	},
 };
 
 static const struct mfd_cell rk818s[] = {
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index 58602032e642..9af1f3105f80 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -519,6 +519,77 @@ enum rk809_reg_id {
 #define MIC_DIFF_DIS			(0x0 << 7)
 #define MIC_DIFF_EN			(0x1 << 7)
 
+/* RK817 Battery Registers */
+#define RK817_GAS_GAUGE_ADC_CONFIG0	0x50
+#define RK817_GG_EN			(0x1 << 7)
+#define RK817_SYS_VOL_ADC_EN		(0x1 << 6)
+#define RK817_TS_ADC_EN			(0x1 << 5)
+#define RK817_USB_VOL_ADC_EN		(0x1 << 4)
+#define RK817_BAT_VOL_ADC_EN		(0x1 << 3)
+#define RK817_BAT_CUR_ADC_EN		(0x1 << 2)
+
+#define RK817_GAS_GAUGE_ADC_CONFIG1	0x55
+
+#define RK817_VOL_CUR_CALIB_UPD		BIT(7)
+
+#define RK817_GAS_GAUGE_GG_CON		0x56
+#define RK817_GAS_GAUGE_GG_STS		0x57
+
+#define RK817_BAT_CON			(0x1 << 4)
+#define RK817_RELAX_VOL_UPD		(0x3 << 2)
+#define RK817_RELAX_STS			(0x1 << 1)
+
+#define RK817_GAS_GAUGE_RELAX_THRE_H	0x58
+#define RK817_GAS_GAUGE_RELAX_THRE_L	0x59
+#define RK817_GAS_GAUGE_OCV_THRE_VOL	0x62
+#define RK817_GAS_GAUGE_OCV_VOL_H	0x63
+#define RK817_GAS_GAUGE_OCV_VOL_L	0x64
+#define RK817_GAS_GAUGE_PWRON_VOL_H	0x6b
+#define RK817_GAS_GAUGE_PWRON_VOL_L	0x6c
+#define RK817_GAS_GAUGE_PWRON_CUR_H	0x6d
+#define RK817_GAS_GAUGE_PWRON_CUR_L	0x6e
+#define RK817_GAS_GAUGE_OFF_CNT		0x6f
+#define RK817_GAS_GAUGE_Q_INIT_H3	0x70
+#define RK817_GAS_GAUGE_Q_INIT_H2	0x71
+#define RK817_GAS_GAUGE_Q_INIT_L1	0x72
+#define RK817_GAS_GAUGE_Q_INIT_L0	0x73
+#define RK817_GAS_GAUGE_Q_PRES_H3	0x74
+#define RK817_GAS_GAUGE_Q_PRES_H2	0x75
+#define RK817_GAS_GAUGE_Q_PRES_L1	0x76
+#define RK817_GAS_GAUGE_Q_PRES_L0	0x77
+#define RK817_GAS_GAUGE_BAT_VOL_H	0x78
+#define RK817_GAS_GAUGE_BAT_VOL_L	0x79
+#define RK817_GAS_GAUGE_BAT_CUR_H	0x7a
+#define RK817_GAS_GAUGE_BAT_CUR_L	0x7b
+#define RK817_GAS_GAUGE_USB_VOL_H	0x7e
+#define RK817_GAS_GAUGE_USB_VOL_L	0x7f
+#define RK817_GAS_GAUGE_SYS_VOL_H	0x80
+#define RK817_GAS_GAUGE_SYS_VOL_L	0x81
+#define RK817_GAS_GAUGE_Q_MAX_H3	0x82
+#define RK817_GAS_GAUGE_Q_MAX_H2	0x83
+#define RK817_GAS_GAUGE_Q_MAX_L1	0x84
+#define RK817_GAS_GAUGE_Q_MAX_L0	0x85
+#define RK817_GAS_GAUGE_SLEEP_CON_SAMP_CUR_H	0x8f
+#define RK817_GAS_GAUGE_SLEEP_CON_SAMP_CUR_L	0x90
+#define RK817_GAS_GAUGE_CAL_OFFSET_H	0x91
+#define RK817_GAS_GAUGE_CAL_OFFSET_L	0x92
+#define RK817_GAS_GAUGE_VCALIB0_H	0x93
+#define RK817_GAS_GAUGE_VCALIB0_L	0x94
+#define RK817_GAS_GAUGE_VCALIB1_H	0x95
+#define RK817_GAS_GAUGE_VCALIB1_L	0x96
+#define RK817_GAS_GAUGE_IOFFSET_H	0x97
+#define RK817_GAS_GAUGE_IOFFSET_L	0x98
+#define RK817_GAS_GAUGE_BAT_R1		0x9a
+#define RK817_GAS_GAUGE_BAT_R2		0x9b
+#define RK817_GAS_GAUGE_BAT_R3		0x9c
+#define RK817_GAS_GAUGE_DATA0		0x9d
+#define RK817_GAS_GAUGE_DATA1		0x9e
+#define RK817_GAS_GAUGE_DATA2		0x9f
+#define RK817_GAS_GAUGE_DATA3		0xa0
+#define RK817_GAS_GAUGE_DATA4		0xa1
+#define RK817_GAS_GAUGE_DATA5		0xa2
+#define RK817_GAS_GAUGE_CUR_ADC_K0	0xb0
+
 #define RK817_POWER_EN_REG(i)		(0xb1 + (i))
 #define RK817_POWER_SLP_EN_REG(i)	(0xb5 + (i))
 
@@ -544,10 +615,30 @@ enum rk809_reg_id {
 #define RK817_LDO_ON_VSEL_REG(idx)	(0xcc + (idx) * 2)
 #define RK817_BOOST_OTG_CFG		(0xde)
 
+#define RK817_PMIC_CHRG_OUT		0xe4
+#define RK817_CHRG_VOL_SEL		(0x07 << 4)
+#define RK817_CHRG_CUR_SEL		(0x07 << 0)
+
+#define RK817_PMIC_CHRG_IN		0xe5
+#define RK817_USB_VLIM_EN		(0x01 << 7)
+#define RK817_USB_VLIM_SEL		(0x07 << 4)
+#define RK817_USB_ILIM_EN		(0x01 << 3)
+#define RK817_USB_ILIM_SEL		(0x07 << 0)
+#define RK817_PMIC_CHRG_TERM		0xe6
+#define RK817_CHRG_TERM_ANA_DIG		(0x01 << 2)
+#define RK817_CHRG_TERM_ANA_SEL		(0x03 << 0)
+#define RK817_CHRG_EN			(0x01 << 6)
+
+#define RK817_PMIC_CHRG_STS		0xeb
+#define RK817_BAT_EXS			BIT(7)
+#define RK817_CHG_STS			(0x07 << 4)
+
 #define RK817_ID_MSB			0xed
 #define RK817_ID_LSB			0xee
 
 #define RK817_SYS_STS			0xf0
+#define RK817_PLUG_IN_STS		(0x1 << 6)
+
 #define RK817_SYS_CFG(i)		(0xf1 + (i))
 
 #define RK817_ON_SOURCE_REG		0xf5
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
