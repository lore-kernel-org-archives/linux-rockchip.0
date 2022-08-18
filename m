Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1ABDC00140
	for <linux-rockchip@archiver.kernel.org>; Thu, 18 Aug 2022 13:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4j9Gxj8XJiSEz9qPXOjLxq4mA6SrtHEb2c+3PqXuaYM=; b=xTiA0YOAXflhNz
	LVLvwf+FLgt8dDKsg+JRnGAlmhsM+KsxZWUHzh0Yd9W4eIM7YpnJyfC1Bj/qHl/MLWLG+i6JPnVVW
	zo9BbGgYwemEYm+jqblqkR5/gjvULHCo3B0+gdxx6vgSFl75FB7qB0iCFwpjElNYKXqDbsJjJHdoN
	8CION3nBWhcIPdyd94xiSMOjPDCfDhc3LWEDk4Jt95YmlByhpLRMa/htpHkuEPW8370R0EdTJH7DT
	5b695o83ytmPPqNYvVUcuvn6KFA+03j2pRsZ0eepqtumJeOoCzfH8NLuHXmAHSwIxJANm+gtj2lG8
	NvSYAHhENxEhAck2MbcA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOf7h-004xmU-Qm; Thu, 18 Aug 2022 12:59:45 +0000
Received: from mail-pl1-x62d.google.com ([2607:f8b0:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oOeqI-004jgb-GH
	for linux-rockchip@lists.infradead.org; Thu, 18 Aug 2022 12:41:48 +0000
Received: by mail-pl1-x62d.google.com with SMTP id 2so1436989pll.0
        for <linux-rockchip@lists.infradead.org>; Thu, 18 Aug 2022 05:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=KS/0D379Yt/MxTWkSlpI7Yl6aGrINZAstEPe80DtsmY=;
        b=nRAVg5pBUodD6SIKXXj4VD0TQM3UPFG+sRCc9Lt/jAgjNw9PnhzR8uEyJ5cLtzO9mM
         jdsMCe57Ef7y6TXIAKukPn4rLwtSzleyOP/Rg/olqT40zOGJM2LloVPTgpeCxbAsU2GK
         l86It6+nB5fhijboNnrxXyNgsZGYYlqT3VtT8EKWWEPS9g7ioMrKTfIapuJo907kfFfB
         WZqtzmNyBgxaFV1DlI6ofh/JzqqD8mCMbpft63y6iNGAHoj73OIm4l9kbj8XHRmT9lxH
         cSVT80r97tBJO4mROxEWXdZ+/sx3qPZlWVT7CAaORaGsBkisktWN84btQ0ZqwS9camk9
         lupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=KS/0D379Yt/MxTWkSlpI7Yl6aGrINZAstEPe80DtsmY=;
        b=OMqCpKdkr8M0G4i8iIaJFzvpSSf5DXW59bf0HgsYVWvQyPDvOuH+Vf6a0eXfdwCa86
         meSE2tnTN44Xsibz10tyCxhUn/rqV6ZDjUvMMzt2Pl9Aiz7iTewIXyX6OXhAzCTn8hKa
         MKQPKtwrg6E1ZSp01KSBQgq7x/sS/wASew0D0Dyz7qrD9oARJA/xuv/0T5RH6fmX7MNE
         R8UKh4RoQ3BHayIDNAHD/tcU0/+T8/lS0NFoaWkGkU0oyOJLjIbY2g5UcRCEO1OD/9y5
         VE99mR8OcMsZMv6dZfHuLOYG26wwCslcIrbeY3IfVz+n/LpgW3ZDoKmsfyYwqDK4CNjU
         Pi3w==
X-Gm-Message-State: ACgBeo3qzjRTn2f/N6++QrXyi17BPYAWnFTt+B/yCVvKsvBP2fM/QLR4
	dhq/WUIh/sda0HwshcCrXi3QpA==
X-Google-Smtp-Source: AA6agR4Zl0b4mQCBObDz95VG2jMXcVY1lAON/ST3Emo+KJuxPfHHwohE/z9N91K9na8PZckfPbOfTQ==
X-Received: by 2002:a17:902:8b87:b0:172:9650:494b with SMTP id ay7-20020a1709028b8700b001729650494bmr2452983plb.94.1660826503131;
        Thu, 18 Aug 2022 05:41:43 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:42 -0700 (PDT)
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
Subject: [PATCH v3 01/19] dt-bindings: power: Add power-domain header for RV1126
Date: Thu, 18 Aug 2022 18:11:14 +0530
Message-Id: <20220818124132.125304-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220818_054146_602133_DA37282D 
X-CRM114-Status: GOOD (  11.07  )
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
Changes for v3:
- rename the header 
Changes for v2:
- add blank line

 .../dt-bindings/power/rockchip,rv1126-power.h | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 include/dt-bindings/power/rockchip,rv1126-power.h

diff --git a/include/dt-bindings/power/rockchip,rv1126-power.h b/include/dt-bindings/power/rockchip,rv1126-power.h
new file mode 100644
index 000000000000..38a68e000d38
--- /dev/null
+++ b/include/dt-bindings/power/rockchip,rv1126-power.h
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
