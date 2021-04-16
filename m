Return-Path: <SRS0=xf8t=JN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0B860C433B4
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:43:42 +0000 (UTC)
Received: from desiato.infradead.org (desiato.infradead.org [90.155.92.199])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 7BBF161152
	for <linux-rockchip@archiver.kernel.org>; Fri, 16 Apr 2021 08:43:41 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 7BBF161152
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:MIME-Version:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:Cc:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=SyBNXb2r6CSjixmp2q0Vr/A1MIXB4S9n6riuhD6trRM=; b=A+cGQfAdhQIPf8/AOWyO4Sgljx
	+ZdjhhCdnDCi42/SRjoH0E+muI5cIZbdGG0ESoYhhR2aYkvScg7/A+whMEfTY9JJI+XkcNbz6GZZm
	pWfsJ4NvjGV6hWG3FKhKyLaXwnZI7LNogqaPJGEUkobtJrrEmVYQClJhwB6+dIFtm0dfZ6KM7te6e
	kqbVIQdbDs8SGTP7qAxFMI8Bpwe/7mUVNWuMbcV5o34UmUK4izIpmcpRW3F/MqAmgRQfBrE6dqQDH
	mwwdjPrMphieU460qlS0Xt3PeqNC9Wqwo4PXOoUDqJGhycPe+Ijzzogj3io7h55/R7pfgh2KNt4Vn
	xGVQsMfg==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXK4b-001Pb7-UR; Fri, 16 Apr 2021 08:43:34 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJVt-001Hef-Hb; Fri, 16 Apr 2021 08:08:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=References:In-Reply-To:Message-Id:
 Date:Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=TRa3Sz1jxpiHgGK3l0+BR6ViiX/+KtB8X1pc8tNr5BA=; b=PYL7ulAHJyA48LMIiZ+Axevu+Q
 Xqpyf81mJOw8oSTBnldls+w2TfqBQVtfL/oa/x09dF6v18fZnJAKoiLHf78OO/iOcyV/SfEjpbB4w
 0Ia2F8BSHosdHIpvzFDOEpBEcF27I5p2HcJonn8QrJQB7DDtPEQ5Zlp+52fmx/B41GmS4+4/e/h1i
 KYE8ofJdOupC8xNnugTXDkHwqJw7W7D3q7Y5KJp5YrsQiMqLiM3WBeLf6C/HJUnH1c6ElczuskaP0
 bWNiXonL5VVxp2KP41NklVj+HsXzqIaHOiIfIKPPiEV7icYh+yAozBM2FOdyNO8o8HJItXs1E2RKc
 G/AH1UDg==;
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXJVr-009Azb-3q; Fri, 16 Apr 2021 08:07:40 +0000
Received: by mail-ej1-x62b.google.com with SMTP id e14so40795061ejz.11;
 Fri, 16 Apr 2021 01:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=TRa3Sz1jxpiHgGK3l0+BR6ViiX/+KtB8X1pc8tNr5BA=;
 b=hSxVTde4hzUJJ3kqcnitKIF5zKYI33+A1jwelnwAaGliSykDLhXD+MeIB0DjvkbYL5
 EHzzzpCSOCRqsGAdyNwnCxiXccSH5sWKkudvESxPUEDoiukverRspuXgthCBpsnEHXcH
 0Flk0FssVtyEDCvZvrbHNJ3AeF/w1qopkjXNY8vmGLTpbp0pkG8Cc3dqxarksPYOIg8y
 gGDsPhe7bQQS0WUsHK0T7Myzi94eHJaKSqkshFRkDRgPMi4ipYraCDaFKxdkRdPotW6T
 GCPtqWhXNfhcJz5fB4SLeuzX7ymzwB7Fjf0aL/0igVykGKZhZAZXi8aQdqcGT6+t0c5U
 4LCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=TRa3Sz1jxpiHgGK3l0+BR6ViiX/+KtB8X1pc8tNr5BA=;
 b=desI1eqUPMXQgp3Tg3MSp7FVsFI6K85z6VKrOJ/9ZXlFvbSoY20GyKrWobVKaeO4Zc
 flnFWaBRQav/4kf3EXGxstKzKbQ5oKMxYp6T1UkdF4WWF7t/eqbEKxLlJvprSBSa7fe6
 AolqWgym4VvoUJ+N4CQp/MxAZjPic7ww9sdbjTDu5HemOUFztdx/eANc2dzrrQPVKUTh
 ZmtNukyLV5GaYhVHyO5udU6ifje8yF/XRCLMfMq7qyIj8ikzEV1wARbNdGcXi5z7mRjZ
 jbGikCjx6YvcSp9IGaFiJom0LLbkYQDZvYMNYhAokMVb+AzTJUWg/I1QKmMqs8ZH/zP6
 gqqQ==
X-Gm-Message-State: AOAM531VK9c+IeNOEbe8PJwP07Bim5jPg7sJgq31jljfk1fS25ibiH/F
 tDzq1XEn1pj5V7PTkxqp1no=
X-Google-Smtp-Source: ABdhPJwhQ9LYeaZP6fmhFtVDMudfv2gmkOGfFAQeKASDeImv5GzK+2otJvjyXH1knh6loPNP467/xg==
X-Received: by 2002:a17:906:f56:: with SMTP id
 h22mr7419568ejj.494.1618560457694; 
 Fri, 16 Apr 2021 01:07:37 -0700 (PDT)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id q16sm4672303edv.61.2021.04.16.01.07.33
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 16 Apr 2021 01:07:37 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Cc: robh+dt@kernel.org, zhangqing@rock-chips.com, enric.balletbo@collabora.com,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v8 10/15] dt-bindings: add power-domain header for RK3568 SoCs
Date: Fri, 16 Apr 2021 10:03:37 +0200
Message-Id: <20210416080342.18614-11-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210416080342.18614-1-jbx6244@gmail.com>
References: <20210416080342.18614-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210416_010739_177337_9CD656C1 
X-CRM114-Status: GOOD (  12.98  )
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

From: Elaine Zhang <zhangqing@rock-chips.com>

According to a description from TRM, add all the power domains

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Reviewed-by: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Signed-off-by: Johan Jonker <jbx6244@gmail.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 include/dt-bindings/power/rk3568-power.h | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 include/dt-bindings/power/rk3568-power.h

diff --git a/include/dt-bindings/power/rk3568-power.h b/include/dt-bindings/power/rk3568-power.h
new file mode 100644
index 000000000..6cc1af1a9
--- /dev/null
+++ b/include/dt-bindings/power/rk3568-power.h
@@ -0,0 +1,32 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __DT_BINDINGS_POWER_RK3568_POWER_H__
+#define __DT_BINDINGS_POWER_RK3568_POWER_H__
+
+/* VD_CORE */
+#define RK3568_PD_CPU_0		0
+#define RK3568_PD_CPU_1		1
+#define RK3568_PD_CPU_2		2
+#define RK3568_PD_CPU_3		3
+#define RK3568_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RK3568_PD_PMU		5
+
+/* VD_NPU */
+#define RK3568_PD_NPU		6
+
+/* VD_GPU */
+#define RK3568_PD_GPU		7
+
+/* VD_LOGIC */
+#define RK3568_PD_VI		8
+#define RK3568_PD_VO		9
+#define RK3568_PD_RGA		10
+#define RK3568_PD_VPU		11
+#define RK3568_PD_CENTER	12
+#define RK3568_PD_RKVDEC	13
+#define RK3568_PD_RKVENC	14
+#define RK3568_PD_PIPE		15
+#define RK3568_PD_LOGIC_ALIVE	16
+
+#endif
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
