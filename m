Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 9CD34D41D44
	for <linux-rockchip@archiver.kernel.org>; Tue, 12 Nov 2024 01:59:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6TPygjQFUMz3o1KqKQHKYyzadjA6ExzIqixWLimRoJ8=; b=F6YVZyleDa3FuX
	q+o3O8wkapp4KJPZo2f6rZBf7JWNqoFVsdqKIkgM/H8XstHShmo36elslNnUUtEey3lVia1vist1i
	z83ANtVeKjPIWDosNPIREN0t3An/hKFU3ohc3sa0YnDYLXLR6fyMiICcYRgBXG+B2d52NTwD+aza6
	ssCaCWSCcLPPRXiLNef4pE99nii9hG30w5mrkuSp834NJKY92kskmolsJ3wQeomvE31n6dXWKYiDh
	587jCCg6Kf+a+AiCIdDCeYx9luzY0o30GdzqXXQlMTFkO/eVcBZLlImdU0Pqusy2hk6XOhgf2oa6b
	tSMpQYWqwsNDMYFF383A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tAgC3-00000001vBU-1mbk;
	Tue, 12 Nov 2024 01:59:47 +0000
Received: from mail-m60108.netease.com ([210.79.60.108])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tAg6m-00000001ubb-3YJg;
	Tue, 12 Nov 2024 01:54:22 +0000
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTP id 275d3f2e;
	Tue, 12 Nov 2024 09:54:16 +0800 (GMT+08:00)
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
	elaine.zhang@rock-chips.com,
	Sebastian Reichel <sebastian.reichel@collabora.com>
Subject: [PATCH v5 3/4] gpio: rockchip: support new version GPIO
Date: Tue, 12 Nov 2024 09:54:07 +0800
Message-Id: <20241112015408.3139996-4-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20241112015408.3139996-1-ye.zhang@rock-chips.com>
References: <20241112015408.3139996-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGU4fTVZKTkpCGR9LS00eHh5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a931e14225209d8kunm275d3f2e
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NAw6GCo*CzIvPBorLzVJSSkK
	DwtPCj9VSlVKTEhKSExNT05MQ09OVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSkpLQjcG
DKIM-Signature: a=rsa-sha256;
	b=fu2EHIOxhvP7wViWjo2YWfrsP9JuePzfDSPnG2LygmO3peRTME+AGx8WyAuLoKE6O6Fjzl/R5Gw97G+cJob66OkJe/KTTZRECzxPwv82N6HoyhpyuHy0Lg4gvdwkPSCXFTH/U+jqSClzdEVK7/2i9OJAUmC6M9TsWHp6/A1Vfbo=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=KJVrsNmQEFDEWaKv1z6mIltDd6uza/zB/f3D7dwvf3A=;
	h=date:mime-version:subject:message-id:from;
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241111_175421_119314_2F17A31D 
X-CRM114-Status: UNSURE (   8.68  )
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

Support the next version GPIO controller on SoCs like rk3576.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
Reviewed-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Reviewed-by: Sebastian Reichel <sebastian.reichel@collabora.com>
---
 drivers/gpio/gpio-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 49eaefeed8fa..c090cac694bf 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -35,6 +35,7 @@
 #define GPIO_TYPE_V1		(0)           /* GPIO Version ID reserved */
 #define GPIO_TYPE_V2		(0x01000C2B)
 #define GPIO_TYPE_V2_1		(0x0101157C)
+#define GPIO_TYPE_V2_2		(0x010219C8)
 
 static const struct rockchip_gpio_regs gpio_regs_v1 = {
 	.port_dr = 0x00,
@@ -670,6 +671,7 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 	switch (id) {
 	case GPIO_TYPE_V2:
 	case GPIO_TYPE_V2_1:
+	case GPIO_TYPE_V2_2:
 		bank->gpio_regs = &gpio_regs_v2;
 		bank->gpio_type = GPIO_TYPE_V2;
 		bank->db_clk = of_clk_get(bank->of_node, 1);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
