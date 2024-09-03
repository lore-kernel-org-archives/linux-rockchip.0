Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 79D61CD342A
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:40:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7eHDKpXkAwf0EmM2MO2vn8f5Q+ZSxFUPVK83g650cEY=; b=Dv/cPcNj1yz+2X
	TVEH1PWVkgqQ+mal+/bQsPUdATwbiaeeq8UnG2YJIP+kxf5GmDnrm+FjhKO0EsmqbZDCk/LhfnWrq
	rniWyMPLPRoYRcTwTMhv7NINQCjmi0VWQScZHoU9whddlnq1Og1APjen1aNY4D6wgk1zxaFRjTBMv
	8726fSeEAjfvOxGRM1nzHNcY4BjdO4sRTXRsixEambVhoDl50FLfjQeHCiRTkCoMi2mnMtcDuIOmx
	7w4XwJl7tw2BYLNNNogPw9+78+lqCLZYG94P22LZO7Hwm5hMRTtOk8YORhsJgyJSDBAUn3o5f/vAA
	NuS8kASb1N2OlxBtZqUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO8u-0000000Giqu-2Ylj;
	Tue, 03 Sep 2024 07:40:00 +0000
Received: from mail-m1287.netease.com ([103.209.128.7])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6R-0000000GiKi-034f;
	Tue, 03 Sep 2024 07:37:29 +0000
DKIM-Signature: a=rsa-sha256;
	b=IUKg42GNT3xefHxZljlCyU0i5Ir/n0Tdxfi7ukaqzx/HGz+c4C/Idpy4zESZzqtC+jSEj0N09lQzk/dLj2E3YOLA/4szuvdCjKxw6CHBIh9oPIdzHOKMqYiGb1FeEyhCMHzmvRhc09QFRUi/Wb0f4QaqCxH8AXHk8KvtEAYkVmU=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=i3Ih0qHoA8BaoqENjDe44S2TQECjEhO9KvAw8e9oDoQ=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id D3C227E03F6;
	Tue,  3 Sep 2024 15:37:08 +0800 (CST)
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
Subject: [PATCH v3 05/12] gpio: rockchip: fix debounce calculate
Date: Tue,  3 Sep 2024 15:36:42 +0800
Message-Id: <20240903073649.237362-6-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ04dTFYYTE1PQ0MZTklLGUJWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d0e6d209cfkunmd3c227e03f6
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NS46Aww6IjIrS0kZLBJKFRhO
	H1FPFDVVSlVKTElOSE9CS0hLSktIVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUJDSjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003727_418757_8FFFF11F 
X-CRM114-Status: GOOD (  11.53  )
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

The previous configuration ensured that signals with a duration greater
than the debounce value would always be detected, while signals with a
duration less than debounce / 2 would always not be detected. After the
modification, it is changed to ensure that signals with a duration greater
than 2 * debounce will always be detected, while signals with a duration
less than debounce/2 will still not be detected.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 26191197cd37..75355f799751 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -213,13 +213,13 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 		freq = clk_get_rate(bank->db_clk);
 		if (!freq)
 			return -EINVAL;
-		div = (u64)(GENMASK(23, 0) + 1) * 2 * HZ_PER_MHZ;
+		div = (u64)(GENMASK(23, 0) + 1) * HZ_PER_MHZ;
 		max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
 		if (debounce > max_debounce)
 			return -EINVAL;
 
 		div = (u64)debounce * freq;
-		div_reg = DIV_ROUND_CLOSEST_ULL(div, 2 * USEC_PER_SEC) - 1;
+		div_reg = DIV_ROUND_CLOSEST_ULL(div, USEC_PER_SEC) - 1;
 	}
 
 	raw_spin_lock_irqsave(&bank->slock, flags);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
