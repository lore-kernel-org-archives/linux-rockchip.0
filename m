Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A4B1DEE0AE0
	for <linux-rockchip@archiver.kernel.org>; Sat,  7 Feb 2026 13:03:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bpa5/IcIap08iQyNlJZ/tT/g4Lg0R3id20B94zo84zs=; b=X2QCP0Cf3wjBMl
	7kYaaBomZay7jJ8ERYEYNzYLselIwWWusuI/avo4MB7o970jj4+PONJMQw1e9Fk3a86OZAEF38Z3w
	nlBgrKhQiTpeYJ+Fph53zDIoZ99Luaj7yl+EZxnBCtWU0UAQUuK8ZWQgKtAVKGcyiR/xwbsuhQRoH
	BPKGLZH6F8CkjUxB7OCtGJEdBfUSZAXWClkG/Cj7glQDuL8gpxpT3Cc81kWuRKu/AqzvZgG7gLUWA
	/K7+N+fvugzgA/jTdDZnnCVs/BAD40oIprBZ94OKRUuOMuq4KbDjZWn5np7AQ2giq2F/FxiELp3Tk
	dTN+/wol94Hm3jU9m3uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vohxs-0000000CSFK-1Vmo;
	Sat, 07 Feb 2026 13:03:08 +0000
Received: from mail-yw1-x1132.google.com ([2607:f8b0:4864:20::1132])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vohxq-0000000CSEw-0Sgl
	for linux-rockchip@lists.infradead.org;
	Sat, 07 Feb 2026 13:03:07 +0000
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-79627af6349so11158707b3.0
        for <linux-rockchip@lists.infradead.org>; Sat, 07 Feb 2026 05:03:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770469385; x=1771074185; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2dOCLlAugUKogIyuSKW55Yg+tIx5l5apaOsAfQPJFJU=;
        b=WAoSgR475fvUkgwJIgbl9Khm0/YyRxmRsDbi4Ygi3BSdGgFoDkEkjSDh8YhwE3UcfT
         nKoAu6lQE47MJqWAkPrXt9SSDdrPZzZpU1PU+yAMKtq7r8QbD5Pi88CUsm5/2Qvb9IxX
         mNdy5phJ7F0eWIGOWeKT1kBFJd4GvJ5/buKnsUlihNI1iGaDHeYAb6AWCEoFtEVY8puw
         wVtiK5yGCYSzwxcNoM+aRu612weRtppdcpw292p3+utxoF0ejDnbFmoTI9RXQ5EbZsz5
         YayJnOiU1CC7P/Klm9J3vHhYpxXNHmGcqxpair6zMnP6Djkn/YHdNJ9ZSayBroAUHB92
         j5qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770469385; x=1771074185;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2dOCLlAugUKogIyuSKW55Yg+tIx5l5apaOsAfQPJFJU=;
        b=Dw8afqsvcABEWZEKk52gQTBzihKb5EjKruAWDVHqMeLJQTKUqlu8cEE6DOeDYL2Np/
         DchbyvsJcCPs5LqFkNWZcOxyEHs4+Gv4xNmuz7IWjhQIwAXC+0iLJNI5y/f3DIdKvG3I
         EFR4qoBdDgXaxtaZXD3FSU9SgM0nWJwVB/OPiaA7He6IHDjvLldolKyVVAbUdcLdQTLQ
         HgFhzRaP9V2FyL0IVwAGx1wJxWqFl9ohZGja/nUguY4oD1UkyP4mWONsXy9ejvZIAxkZ
         2OSYVWGZriV4HmW0jLTYahFgMo7EBVNQhdNxQMDATnwR0CTxT4meAL7uifNw4VNQddMG
         UudQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZ5KEzpAxRTT9sAtS0/yzlqAG8kJE3NW7Ef+RTX38/3v1TFdCgY6j23YSkTdnNM5UJi8Va8ozZbQM+EGRZjQ==@lists.infradead.org
X-Gm-Message-State: AOJu0YwDAQR1fakII8J2O66/McTb+2Ko045giRiAHeYJn0E+6ljFA8HH
	/hEOBhNys8WyUlMhartDPBdcHTns+LKO7vdbeJSGyzYTHFy5nP7mE3mh
X-Gm-Gg: AZuq6aK2wpEkwVs5UnwqM1RyNhfx/BjLtMbKqBFfZZVEMy+Bmp8o6mymH+1PHspFjCW
	LeoCSqECdhtHAcE2ZGMeUT/xuefzhZr9iDwCgkXwZIaLQLii46L8Ov3puYhEl2jdyGdQtqNHSHp
	WekZfO8AEBdDS4XULV1y4uxfRcR7KRrm64GLlI9UA5BnOyXmRgOM7JFxtPrf77BNF/k8wBHR1VC
	NojihzQxKh9xcss4CpDhHzFF6e66OAi0rE+jWwgSHEvtXlWGjTWoyJspioLFyjEhT4VGP5mvJOW
	DCzq5ElPYf4+Pv+Q53ddkw5WYJcn73jtmytmPQ1F8+Tkyedg2JiW5YuzTzYg1kY4G4oH/hqsUND
	Uy37vwaNpzYOtr3zRdPng65lAPvVo5xuDg9YclBOEM6DbUTj7lRhBW0Fp1OV/2kbPkqJfRppkaV
	Yck9TVSc0TA3K2h0IEYOHtIEio
X-Received: by 2002:a05:690c:498f:b0:796:3124:6565 with SMTP id 00721157ae682-796312469e8mr27333117b3.1.1770469384611;
        Sat, 07 Feb 2026 05:03:04 -0800 (PST)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:b1ab:5cb0:a2f8:764b])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-7952a1e525dsm45939667b3.29.2026.02.07.05.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Feb 2026 05:03:04 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: sboyd@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	jonas@kwiboo.se,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v2 1/2] dt-bindings: clock: rockchip: Add RV1103B CRU support
Date: Sat,  7 Feb 2026 10:02:55 -0300
Message-Id: <20260207130256.2832815-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260207_050306_189249_6E137C17 
X-CRM114-Status: GOOD (  12.91  )
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

From: Fabio Estevam <festevam@nabladev.com>

Add support for the Rockchip RV1103B Clock and Reset Unit (CRU).

The RV1103B CRU is compatible with the existing RV1126B binding.
Add the compatible string to the schema and introduce the
corresponding clock ID definitions.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
Changes since v1:
- Make it a separate series.
- Start the clock index from zero and without gaps.
- Remove the reset definitions as there is no consumer for them yet.
- Squash yaml and dt-bindings.

 .../bindings/clock/rockchip,rv1126b-cru.yaml  |   1 +
 .../dt-bindings/clock/rockchip,rv1103b-cru.h  | 220 ++++++++++++++++++
 2 files changed, 221 insertions(+)
 create mode 100644 include/dt-bindings/clock/rockchip,rv1103b-cru.h

diff --git a/Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml b/Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
index 04b0a5c51e4e..b6d3a04be8f1 100644
--- a/Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
+++ b/Documentation/devicetree/bindings/clock/rockchip,rv1126b-cru.yaml
@@ -17,6 +17,7 @@ description:
 properties:
   compatible:
     enum:
+      - rockchip,rv1103b-cru
       - rockchip,rv1126b-cru
 
   reg:
diff --git a/include/dt-bindings/clock/rockchip,rv1103b-cru.h b/include/dt-bindings/clock/rockchip,rv1103b-cru.h
new file mode 100644
index 000000000000..35afdee7e961
--- /dev/null
+++ b/include/dt-bindings/clock/rockchip,rv1103b-cru.h
@@ -0,0 +1,220 @@
+/* SPDX-License-Identifier: (GPL-2.0-only OR MIT) */
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co. Ltd.
+ * Author: Elaine Zhang <zhangqing@rock-chips.com>
+ */
+
+#ifndef _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
+#define _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
+
+#define PLL_GPLL		0
+#define ARMCLK			1
+#define PLL_DPLL		2
+#define XIN_OSC0_HALF		3
+#define CLK_GPLL_DIV24		4
+#define CLK_GPLL_DIV12		5
+#define CLK_GPLL_DIV6		6
+#define CLK_GPLL_DIV4		7
+#define CLK_GPLL_DIV3		8
+#define CLK_GPLL_DIV2P5		9
+#define CLK_GPLL_DIV2		10
+#define CLK_UART0_SRC		11
+#define CLK_UART1_SRC		12
+#define CLK_UART2_SRC		13
+#define CLK_UART0_FRAC		14
+#define CLK_UART1_FRAC		15
+#define CLK_UART2_FRAC		16
+#define CLK_SAI_SRC		17
+#define CLK_SAI_FRAC		18
+#define LSCLK_NPU_SRC		19
+#define CLK_NPU_SRC		20
+#define ACLK_VEPU_SRC		21
+#define CLK_VEPU_SRC		22
+#define ACLK_VI_SRC		23
+#define CLK_ISP_SRC		24
+#define DCLK_VICAP		25
+#define CCLK_EMMC		26
+#define CCLK_SDMMC0		27
+#define SCLK_SFC_2X		28
+#define LSCLK_PERI_SRC		29
+#define ACLK_PERI_SRC		30
+#define HCLK_HPMCU		31
+#define SCLK_UART0		32
+#define SCLK_UART1		33
+#define SCLK_UART2		34
+#define CLK_I2C_PMU		35
+#define CLK_I2C_PERI		36
+#define CLK_SPI0		37
+#define CLK_PWM0_SRC		38
+#define CLK_PWM1		39
+#define CLK_PWM2		40
+#define DCLK_DECOM_SRC		41
+#define CCLK_SDMMC1		42
+#define CLK_CORE_CRYPTO		43
+#define CLK_PKA_CRYPTO		44
+#define CLK_CORE_RGA		45
+#define MCLK_SAI_SRC		46
+#define CLK_FREQ_PWM0_SRC	47
+#define CLK_COUNTER_PWM0_SRC	48
+#define PCLK_TOP_ROOT		49
+#define CLK_REF_MIPI0		50
+#define CLK_MIPI0_OUT2IO	51
+#define CLK_REF_MIPI1		52
+#define CLK_MIPI1_OUT2IO	53
+#define MCLK_SAI_OUT2IO		54
+#define ACLK_NPU_ROOT		55
+#define HCLK_RKNN		56
+#define ACLK_RKNN		57
+#define LSCLK_VEPU_ROOT		58
+#define HCLK_VEPU		59
+#define ACLK_VEPU		60
+#define CLK_CORE_VEPU		61
+#define PCLK_IOC_VCCIO3		62
+#define PCLK_ACODEC		63
+#define PCLK_USBPHY		64
+#define LSCLK_VI_100M		65
+#define LSCLK_VI_ROOT		66
+#define HCLK_ISP		67
+#define ACLK_ISP		68
+#define CLK_CORE_ISP		69
+#define ACLK_VICAP		70
+#define HCLK_VICAP		71
+#define ISP0CLK_VICAP		72
+#define PCLK_CSI2HOST0		73
+#define PCLK_CSI2HOST1		74
+#define HCLK_EMMC		75
+#define HCLK_SFC		76
+#define HCLK_SFC_XIP		77
+#define HCLK_SDMMC0		78
+#define PCLK_CSIPHY		79
+#define PCLK_GPIO1		80
+#define DBCLK_GPIO1		81
+#define PCLK_IOC_VCCIO47	82
+#define LSCLK_DDR_ROOT		83
+#define CLK_TIMER_DDRMON	84
+#define LSCLK_PMU_ROOT		85
+#define PCLK_PMU		86
+#define XIN_RC_DIV		87
+#define CLK_32K			88
+#define PCLK_PMU_GPIO0		89
+#define DBCLK_PMU_GPIO0		90
+#define CLK_DDR_FAIL_SAFE	91
+#define PCLK_PMU_HP_TIMER	92
+#define CLK_PMU_32K_HP_TIMER	93
+#define PCLK_PWM0		94
+#define CLK_PWM0		95
+#define CLK_OSC_PWM0		96
+#define CLK_RC_PWM0		97
+#define CLK_FREQ_PWM0		98
+#define CLK_COUNTER_PWM0	99
+#define PCLK_I2C0		100
+#define CLK_I2C0		101
+#define PCLK_UART0		102
+#define PCLK_IOC_PMUIO0		103
+#define CLK_REFOUT		104
+#define CLK_PREROLL		105
+#define CLK_PREROLL_32K		106
+#define CLK_LPMCU_PMU		107
+#define PCLK_SPI2AHB		108
+#define HCLK_SPI2AHB		109
+#define SCLK_SPI2AHB		110
+#define PCLK_WDT_LPMCU		111
+#define TCLK_WDT_LPMCU		112
+#define HCLK_SFC_PMU1		113
+#define HCLK_SFC_XIP_PMU1	114
+#define SCLK_SFC_2X_PMU1	115
+#define CLK_LPMCU		116
+#define CLK_LPMCU_RTC		117
+#define PCLK_LPMCU_MAILBOX	118
+#define PCLK_IOC_PMUIO1		119
+#define PCLK_CRU_PMU1		120
+#define PCLK_PERI_ROOT		121
+#define PCLK_RTC_ROOT		122
+#define CLK_TIMER_ROOT		123
+#define PCLK_TIMER		124
+#define CLK_TIMER0		125
+#define CLK_TIMER1		126
+#define CLK_TIMER2		127
+#define CLK_TIMER3		128
+#define CLK_TIMER4		129
+#define CLK_TIMER5		130
+#define PCLK_STIMER		131
+#define CLK_STIMER0		132
+#define CLK_STIMER1		133
+#define PCLK_WDT_NS		134
+#define TCLK_WDT_NS		135
+#define PCLK_WDT_S		136
+#define TCLK_WDT_S		137
+#define PCLK_WDT_HPMCU		138
+#define TCLK_WDT_HPMCU		139
+#define PCLK_I2C1		140
+#define CLK_I2C1		141
+#define PCLK_I2C2		142
+#define CLK_I2C2		143
+#define PCLK_I2C3		144
+#define CLK_I2C3		145
+#define PCLK_I2C4		146
+#define CLK_I2C4		147
+#define PCLK_SPI0		148
+#define PCLK_PWM1		149
+#define CLK_OSC_PWM1		150
+#define PCLK_PWM2		151
+#define CLK_OSC_PWM2		152
+#define PCLK_UART2		153
+#define PCLK_UART1		154
+#define ACLK_RKDMA		155
+#define PCLK_TSADC		156
+#define CLK_TSADC		157
+#define CLK_TSADC_TSEN		158
+#define PCLK_SARADC		159
+#define CLK_SARADC		160
+#define PCLK_GPIO2		161
+#define DBCLK_GPIO2		162
+#define PCLK_IOC_VCCIO6		163
+#define ACLK_USBOTG		164
+#define CLK_REF_USBOTG		165
+#define HCLK_SDMMC1		166
+#define HCLK_SAI		167
+#define MCLK_SAI		168
+#define ACLK_CRYPTO		169
+#define HCLK_CRYPTO		170
+#define HCLK_RK_RNG_NS		171
+#define HCLK_RK_RNG_S		172
+#define PCLK_OTPC_NS		173
+#define CLK_OTPC_ROOT_NS	174
+#define CLK_SBPI_OTPC_NS	175
+#define CLK_USER_OTPC_NS	176
+#define PCLK_OTPC_S		177
+#define CLK_OTPC_ROOT_S		178
+#define CLK_SBPI_OTPC_S		179
+#define CLK_USER_OTPC_S		180
+#define CLK_OTPC_ARB		181
+#define PCLK_OTP_MASK		182
+#define HCLK_RGA		183
+#define ACLK_RGA		184
+#define ACLK_MAC		185
+#define PCLK_MAC		186
+#define CLK_MACPHY		187
+#define ACLK_SPINLOCK		188
+#define HCLK_CACHE		189
+#define PCLK_HPMCU_MAILBOX	190
+#define PCLK_HPMCU_INTMUX	191
+#define CLK_HPMCU		192
+#define CLK_HPMCU_RTC		193
+#define DCLK_DECOM		194
+#define ACLK_DECOM		195
+#define PCLK_DECOM		196
+#define ACLK_SYS_SRAM		197
+#define PCLK_DMA2DDR		198
+#define ACLK_DMA2DDR		199
+#define PCLK_DCF		200
+#define ACLK_DCF		201
+#define MCLK_ACODEC_TX		202
+#define SCLK_UART0_SRC		203
+#define SCLK_UART1_SRC		204
+#define SCLK_UART2_SRC		205
+#define XIN_RC_SRC		206
+#define CLK_UTMI_USBOTG		207
+#define CLK_REF_USBPHY		208
+
+#endif // _DT_BINDINGS_CLK_ROCKCHIP_RV1103B_H
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
