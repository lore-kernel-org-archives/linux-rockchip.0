Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 16E8ECD342F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:40:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kDqUJ+EE/miWy40EUvWUVnYJfA6cShNZEF3rhiFN8Aw=; b=oAtWIQvi41HDgM
	r8qKX/5IfU6+cZOovn4xQkEagf/42qiZDnVuN3si4DfZ/331X1nV7Xf6ICXRtXnrkHiHt6PHlJbyP
	DoqQyYGTO58nlWh9m/SehYBvxfIFuTP76A2mgdzBV9foHXyKB6kvvbW6+4zmTKEPZrACEwJcHw4NE
	fzZbaVBhIm2VEQlRVyR0fB6ZAQhgdo90ghuPX/jmh7oTnpDLKpmI0bhijuj1eCFE6lxRGwFYYavCa
	8nC+yncVlsYI79lzQCyAnfwG0hxNr7yTeLzJGPqMwibhOOyhLLg6Vw8sEeDdc3gQV0ArL9ivc6e3v
	Cb4ob2ADkQB2r4ERpJrw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO9n-0000000Gj6X-3mLH;
	Tue, 03 Sep 2024 07:40:55 +0000
Received: from mail-m49251.qiye.163.com ([45.254.49.251])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6R-0000000GiN7-1jcK;
	Tue, 03 Sep 2024 07:37:30 +0000
DKIM-Signature: a=rsa-sha256;
	b=To3Vw5zwDTrHkUlidzc1QbyWCgNJMuMTi0h7dyi+1imDW5AcuFSUMZlSXmM/F0LHjf3w1Mop8cvPi4z5O4N5fj5/eaSg2VGdSSJLJ595pu7IhDgYr2U1G1RE2l0Z6i3R7dRlGZ9tCbgIxNWNKXnuF8nMyUXSFjJkoGuO1I9b6hY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=YHgiyOsxvY6K4cw4rtUovbYtN4FFCAToL86cwycTCM4=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 41FA27E0380;
	Tue,  3 Sep 2024 15:37:14 +0800 (CST)
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
Subject: [PATCH v3 09/12] gpio: rockchip: change the GPIO version judgment logic
Date: Tue,  3 Sep 2024 15:36:46 +0800
Message-Id: <20240903073649.237362-10-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQxpJH1ZCTx0ZGR4dSk5JT09WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d0fbdb09cfkunm41fa27e0380
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OCI6DDo*AzI6OEk3PBxPFQgT
	MjAKFDdVSlVKTElOSE9CS0hOTkpIVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUxOSzcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003727_665774_60AE02B6 
X-CRM114-Status: GOOD (  10.59  )
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

Have a list of valid V1 IDs and default to -ENODEV.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 17 ++++++++++++-----
 1 file changed, 12 insertions(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 04a24f1d77eb..579701ad3c6f 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -658,13 +658,20 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 
 	id = readl(bank->reg_base + gpio_regs_v2.version_id);
 
-	/* If not gpio v2, that is default to v1. */
-	if (id == GPIO_TYPE_V2 || id == GPIO_TYPE_V2_1) {
-		bank->gpio_regs = &gpio_regs_v2;
-		bank->gpio_type = GPIO_TYPE_V2;
-	} else {
+	/* The GPIO version ID is incrementing. */
+	switch (id) {
+	case GPIO_TYPE_V1:
 		bank->gpio_regs = &gpio_regs_v1;
 		bank->gpio_type = GPIO_TYPE_V1;
+		break;
+	case GPIO_TYPE_V2:
+	case GPIO_TYPE_V2_1:
+		bank->gpio_regs = &gpio_regs_v2;
+		bank->gpio_type = GPIO_TYPE_V2;
+		break;
+	default:
+		dev_err(bank->dev, "cannot get the version ID\n");
+		return -ENODEV;
 	}
 
 	return 0;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
