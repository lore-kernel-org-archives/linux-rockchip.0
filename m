Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 71D13C00140
	for <linux-rockchip@archiver.kernel.org>; Sun, 31 Jul 2022 17:48:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2k1sjl0cjgfxrsBUu2ijjom6P01ULOPipqC88XL3g10=; b=e84tgvIvk/fg1y
	wQXku/RDuxEeUHSTkF2SDWOEB01kF+l0PPpXK/iINuUa/JvaHySz+PkGs5eyiIExXhnMi4JiyKdAK
	utyZD8dgStRbkq+qxFt1z7rHHJcEoBTk29PaZW8+Hbc2kJyb/+Rg8ckRcJdD6EN8KAzGIJGkMBOlL
	JEbUlGDmIUE85cXyXw5ouGE8G66Yu76Z9UFTWp48Hvux1Q4+3GTFP0fQ5uiGCfPXIkZOL6JCVrLJx
	FJQQsq1/3Pcz4zc5zAlXR4X/6ThFNd4/hoJFQBiyGAvRE1qvcuZvReNBp8n/3pkAKkz1DKOzDlcEb
	gs3KWXZhM3nBU+zqnhMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID3Y-00Eeaa-9T; Sun, 31 Jul 2022 17:48:48 +0000
Received: from mail-pg1-x535.google.com ([2607:f8b0:4864:20::535])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oID2Z-00Ee2D-C7
	for linux-rockchip@lists.infradead.org; Sun, 31 Jul 2022 17:47:48 +0000
Received: by mail-pg1-x535.google.com with SMTP id 23so7815930pgc.8
        for <linux-rockchip@lists.infradead.org>; Sun, 31 Jul 2022 10:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=hNp+zXQtih6SV1d7Y3TwxaTJ8vdr23qkoBd9YNJH1oQ=;
        b=zIkygsKa/ie+N46RVweKCsJfT/QlkqGUQWBSEK085Xglo4851t93ARMH9s1q9gXtzF
         mnsHKCSNC99qpKxTykBxHA+Vcx3Yw8mHFSAW+32o0nixVHWR/czTCjvoXDTAGdPNxonH
         SBvIhLeZJKtJRlGGnvLoA8PHQjg/S7h0fJ0Y8TgO18oouG5VotA1NkzrdnhurAXArb+9
         A6X2LxxREIzOAwmxfSqza1Juz7XVwUdc7SA10dxPw3X9fFgGUjSF2sBZ16ncrDwSFXmd
         IyVGnIRBceuNf9WEg448FYpugkP2J7w3iz8NLzFvxKd/HcgnHhRgI2X4EbaCz5XZOvac
         uqAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=hNp+zXQtih6SV1d7Y3TwxaTJ8vdr23qkoBd9YNJH1oQ=;
        b=u1skhJDXIVV2HfS7vHMSTelLdzIXcnfWYa0x+FuOjPrsqoI/+06/mDOlHNh00jr/m9
         i5gOxWvYXb7w4ZI2zUsAP78IFIf3egJ1ehVM2X1J/PnjmyAj/LtSoPtrwCiTrqBtZnAJ
         yWXddbFt+5BWhcCSi61DcIwFAMzuEMO0bvnEYxlTlpelDcC8dEhquAO6wpgakp2kHLN0
         /Qcf9lO6/0HaRt4eS1BSRoW4xU7kUUgCvFSPpt9HWIOYC22Jdn1VSvoFCToALT+TiVR7
         BekOuk1wRgpH/DMaqGmqsPQIycpUq7/hAd5DpBIZeh9hug1iWFsREHJOA0PcHdMsjKmk
         26Tg==
X-Gm-Message-State: AJIora+H/alNI4o5W+CSEEAGcN8ZHaK/F0tbTB85H1I0cLHz6F2vZlsi
	pkIIDtZP9mp8IIrnimKMH+AqXw==
X-Google-Smtp-Source: AGRyM1uxj4Y4o4w0/ySjDNkP99FefLttWtVg7uFLpnxnoH5UbFra+6aJcfga6ZFZPTCrgQ6Gr9KiMw==
X-Received: by 2002:a05:6a00:24d6:b0:52b:ee89:ecb2 with SMTP id d22-20020a056a0024d600b0052bee89ecb2mr12967794pfv.15.1659289666321;
        Sun, 31 Jul 2022 10:47:46 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.47.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:47:46 -0700 (PDT)
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
Subject: [PATCH v2 02/20] dt-bindings: power: Add power-domain header for RV1126
Date: Sun, 31 Jul 2022 23:17:08 +0530
Message-Id: <20220731174726.72631-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220731_104747_424460_1F10B77F 
X-CRM114-Status: GOOD (  11.35  )
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
Changes for v2:
- add blank line

 include/dt-bindings/power/rv1126-power.h | 35 ++++++++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 include/dt-bindings/power/rv1126-power.h

diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
new file mode 100644
index 000000000000..38a68e000d38
--- /dev/null
+++ b/include/dt-bindings/power/rv1126-power.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
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
