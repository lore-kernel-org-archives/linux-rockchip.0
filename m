Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1C745CCA489
	for <linux-rockchip@archiver.kernel.org>; Sat, 23 Jul 2022 20:44:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q0JPTQVrvqKDyJ5VLVmBazX2AEwbm19u7g8sdfbQ0oQ=; b=iM11oBUJBinvtf
	4E4aznjBi53P/p8gMgTHFNahGee1Q5n1mQ+//djqyQ4101GtEgJgF1w0kKmpkI3/Yxmu39nghL2PB
	OvMFKJqG+sLq9eTpGUGm+ROhgMbAHCST/9tGdc+eKp7DI2YIx8Ief5+oHqN0deJR6vYhXVUA/KLG5
	8rccLhUwBuWF3kysTuUpIGIiPMgMCsVxnA8wCUxrFjrY/emXNBP8BiZZHwY8saR+Ln0yROlbEQqk4
	zopqSo6hvzuYbEsgjduVe+AICqmW2eboyTX8yFVOiIGXq20QFXnpGWkEdY4nWGlIvZWKNrybmFsFg
	U6tipMxz9xOQnTuCqe3w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLzD-0078R9-Mi; Sat, 23 Jul 2022 20:44:31 +0000
Received: from mail-pf1-x435.google.com ([2607:f8b0:4864:20::435])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oFLyl-0078CB-D9
	for linux-rockchip@lists.infradead.org; Sat, 23 Jul 2022 20:44:05 +0000
Received: by mail-pf1-x435.google.com with SMTP id g12so7187385pfb.3
        for <linux-rockchip@lists.infradead.org>; Sat, 23 Jul 2022 13:44:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vB+I6BxD+Jwr/k8aRPXzLnldCWKUnGQ0atxweJpCqZU=;
        b=6ABnWfq4+K2LxGoEtIFy1UgqKTe4SL2RfAjETWzktSwuBqUKPWSvKUXtIM3oEIf44g
         BTy1GJN80I0ViPogEu7mmVdlHVvsmHl8/fQzJ13hegFRt3g0fiO649u9NlzNnnykQl9k
         9Dofaeoq5p7wU/uhvJB/JK8G5TrCWMNzr7BCVmJy/89+yrtoTTiBhhpXTioDvrEHyxWO
         NX/NYYca2SYqTslJjttol8tD26rEUoS8Bh+3um+0EAABCR+MU6HtLJOp5I2L+Yyxh9UI
         fOV9myFgY8A+tH3R7s2NPJDk6ufFmTlFdlPymOwZxybfgIYnbXz4iqgp33BBtpfHKyB0
         Vz+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vB+I6BxD+Jwr/k8aRPXzLnldCWKUnGQ0atxweJpCqZU=;
        b=bjGM7k+nY3jpIbxzI6ufQff6mp2gKL4BzUWer2yssIN4wkspZXpP3i23HWA0IAIX7B
         dO61PwtutPH2LjaqBe78eDKzvN94M4ebHrPx/8//GZqN8+D208khHl5rwPusTrMjsCN9
         GK2l586O0e5Lkkv+kbdiRiv+GbKZtp6xUJKDYHecI7SGMylFaWvcUAKOmbfIwdT9H9Vf
         O8ce/5tEUk37ipLeT5dYfsaPPp0qKUQflXbw09usFbdK5vaFRc1LiltPCrVe+ywmB3pi
         yjP6jtXYdCSEaJFKm8+iK4HRNrBk+3EzuJnlMiEluc552wxiesGZCFBHMEQHoFq5ToNT
         bECw==
X-Gm-Message-State: AJIora9n06wcsPzrBCvnfJjmoAun5sf93Nmw/d8BW8CAGxQCp5aHczrU
	PDEtM6WISCHvHNAtU0EurSBMIg==
X-Google-Smtp-Source: AGRyM1uJfAOg6nRIK+mHmimZmx0pFsofV7bJDb7DNc9W8obw6UEBnyHJVcrjvOiohvrcC7I0RDsAwg==
X-Received: by 2002:aa7:9afa:0:b0:528:bbf7:e444 with SMTP id y26-20020aa79afa000000b00528bbf7e444mr6116410pfp.71.1658609042364;
        Sat, 23 Jul 2022 13:44:02 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:a406:cc30:f4ec:f10a])
        by smtp.gmail.com with ESMTPSA id u14-20020a170902e80e00b0016a6caacaefsm6187950plg.103.2022.07.23.13.43.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 23 Jul 2022 13:44:01 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Kever Yang <kever.yang@rock-chips.com>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Jagan Teki <jagan@edgeble.ai>,
	Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH 02/22] dt-bindings: power: Add power-domain header for RV1126
Date: Sun, 24 Jul 2022 02:13:15 +0530
Message-Id: <20220723204335.750095-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220723204335.750095-1-jagan@edgeble.ai>
References: <20220723204335.750095-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220723_134404_046350_E42D6BBB 
X-CRM114-Status: GOOD (  10.99  )
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

Add power-domain header for RV1126 SoC from description in TRM.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 include/dt-bindings/power/rv1126-power.h

diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
new file mode 100644
index 000000000000..f15930ff06f7
--- /dev/null
+++ b/include/dt-bindings/power/rv1126-power.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_POWER_RV1126_POWER_H__
+#define __DT_BINDINGS_POWER_RV1126_POWER_H__
+
+/* VD_CORE */
+#define RV1126_PD_CPU_0		0
+#define RV1126_PD_CPU_1		1
+#define RV1126_PD_CPU_2		2
+#define RV1126_PD_CPU_3		3
+#define RV1126_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RV1126_PD_PMU		5
+#define RV1126_PD_PMU_ALIVE	6
+
+/* VD_NPU */
+#define RV1126_PD_NPU		7
+
+/* VD_VEPU */
+#define RV1126_PD_VEPU		8
+
+/* VD_LOGIC */
+#define RV1126_PD_VI		9
+#define RV1126_PD_VO		10
+#define RV1126_PD_ISPP		11
+#define RV1126_PD_VDPU		12
+#define RV1126_PD_CRYPTO	13
+#define RV1126_PD_DDR		14
+#define RV1126_PD_NVM		15
+#define RV1126_PD_SDIO		16
+#define RV1126_PD_USB		17
+#define RV1126_PD_LOGIC_ALIVE	18
+
+#endif
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
