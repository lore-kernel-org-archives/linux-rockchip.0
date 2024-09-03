Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 4B7A5CD342F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:45:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Fq9wcTuyxld+gxqK/LiJfjbHwNbqwhPxmBBMxABCE7c=; b=iDR4Qsvy5hrhV5
	ZdRZyvRzypX+0uP+ziJwF0+dv3iqguxUjnLThO48TDvo7p13qZvU7kDyYOvOw/DltOMHI+Qg75T4u
	C7ohN9LjA7M3yAVSWFuJGToRWijkqHjNYUlWZ3BAXk5I7oFk9D1lMn2NN5Oi7uQq5yV3c6YveEy5M
	h+dWXjjZCM+8TlckCvy26WxeBnc6WyDjP+o8WZgEJkL1eqkVRfhWOOzdDXAMTlkqcre99GHBBsksC
	RNP9e6xtE3tDi/DBio3+Jx/dYbk2RCT52F3lQwehBARG6IwVZrMmZsTzz59ImsxTj+HGMa834Jh/M
	JKpTULwRplZCoQ4DcBmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOEA-0000000Gk37-1KKS;
	Tue, 03 Sep 2024 07:45:26 +0000
Received: from mail-m49237.qiye.163.com ([45.254.49.237])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6R-0000000GiMa-3RHj;
	Tue, 03 Sep 2024 07:37:31 +0000
DKIM-Signature: a=rsa-sha256;
	b=fdJxs/RD6w9KtJuqvJJCxbAHwT4Kwppi4tvayV5svYfh8Olp2z3Uv7eiQLNGeMY4rb+PQkamZ7X6OshAtuxDGMqIUSd2HfeF2NlATlaMND/PvHyJeV035OfPu+he0rmgRIHnBoBpXKM6ye8KZum4eRxdiAuQieO+L3KtnQ1js/M=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=W9W3b1cC6JwIHwdDAYaUZzjm26fmoNzaEXMwpd0X3Lc=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id E54487E0574;
	Tue,  3 Sep 2024 15:37:12 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: Ye Zhang <ye.zhang@rock-chips.com>,
	linus.walleij@linaro.org,
	brgl@bgdev.pl,
	heiko@sntech.de,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	mika.westerberg@linux.intel.com,
	andriy.shevchenko@linux.intel.com,
	tao.huang@rock-chips.com,
	finley.xiao@rock-chips.com,
	tim.chen@rock-chips.com,
	elaine.zhang@rock-chips.com
Subject: [PATCH v3 08/12] gpio: rockchip: explan the format of the GPIO version ID
Date: Tue,  3 Sep 2024 15:36:45 +0800
Message-Id: <20240903073649.237362-9-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGkoYT1ZDTU8eTxoZHR0dTENWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d0f6a209cfkunme54487e0574
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NRA6Lww*MDI3EklKLBI#FQ8q
	FRQaFBVVSlVKTElOSE9CS0hPSk1LVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU1ITjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003728_068084_C5D4F155 
X-CRM114-Status: UNSURE (   8.75  )
X-CRM114-Notice: Please train this message.
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

Remove redundant comments and provide a detailed explanation of the
GPIO version ID.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 83df1632112d..04a24f1d77eb 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -27,9 +27,15 @@
 #include "../pinctrl/core.h"
 #include "../pinctrl/pinctrl-rockchip.h"
 
+/*
+ * Version ID Register
+ * Bits [31:24] - Major Version
+ * Bits [23:16] - Minor Version
+ * Bits [15:0]  - SVN Number
+ */
 #define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
-#define GPIO_TYPE_V2		(0x01000C2B)  /* GPIO Version ID 0x01000C2B */
-#define GPIO_TYPE_V2_1		(0x0101157C)  /* GPIO Version ID 0x0101157C */
+#define GPIO_TYPE_V2		(0x01000C2B)
+#define GPIO_TYPE_V2_1		(0x0101157C)
 
 static const struct rockchip_gpio_regs gpio_regs_v1 = {
 	.port_dr = 0x00,
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
