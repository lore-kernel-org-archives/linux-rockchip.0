Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 741DBC52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:46:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2RzZG2KGA2jbdj92G3uRxzt9hZKGHn5aYv1xuu5KjWU=; b=J3rsj48gYhKVJD
	d6aijtNR71GYT6w/NWHaZrCYCJzaMI+Zs9M6DgK/alY4ZH5wcjR+2vnN2XxFAB+L7bqIoZjjHuAgb
	EOzM5qMCAlMlofSxZpY4+xzxk+tbx+EcQhS1EptjbPUNmNjh9Vhw5afw1ihsHPGI0/mrPJzD/eBx/
	VLGywwJ8rNH/f4+o6FhG99PBQsg37W2vtPQG5mhi37UzpUCcBUOG5WCha6kYPJvZhOJdwJ/nkrtes
	3uuIjyaQ1vZ5/qBsrXm4beZbnn3XURc/Yojw5iJAksMO0zyp8n2S6DVHQ+M+P7hTNW1uXwfrctVpF
	ZLuJs/XGqJTDapaKogXw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLGK-0000000F5Pv-1K0o;
	Fri, 23 Aug 2024 03:46:56 +0000
Received: from mail-m118220.qiye.163.com ([115.236.118.220])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEn-0000000F4zA-0UCK;
	Fri, 23 Aug 2024 03:45:24 +0000
DKIM-Signature: a=rsa-sha256;
	b=Bz9IFpiy268CyAP1qfIFGlZ/ayx6Mtjr+z9BhGwIX3Ocl1WXhpPM2xIFAy4ewpcFiMdazmkhSqFjljgn9ZRfKkeUZ3QZZHK7Cse3rkuEi9Ir8ln9WaJR2jSQuJMzwolH0xT7VX8hSHYIDU7MMOG+e5kUysSq/wO6sISDB+by0iw=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=vfagnm/2cZBspp0iuuHjQlsoD4A5ZXzku9bzq7Fy2kI=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 2E8007E03DF;
	Fri, 23 Aug 2024 11:45:01 +0800 (CST)
From: Ye Zhang <ye.zhang@rock-chips.com>
To: linus.walleij@linaro.org,
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
	Ye Zhang <ye.zhang@rock-chips.com>
Subject: [PATCH v2] gpio: rockchip: resolve overflow issues
Date: Fri, 23 Aug 2024 11:43:06 +0800
Message-Id: <20240823034314.62305-4-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQ0MeGlYdHkwfQhodSBgfQh1WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d566dcd09cfkunm2e8007e03df
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6OBg6Kio4TzI3KCweTjQ9ThEa
	PRoKCx1VSlVKTElPSENPTEtJSEJLVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU5DTDcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204521_699337_EE87EB85 
X-CRM114-Status: UNSURE (   8.72  )
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

Prevent overflow issues when performing debounce-related calculations.

Fixes: 3bcbd1a85b68 ("gpio/rockchip: support next version gpio controller")
Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 5f60162baaeb..bf22b103b6a2 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -209,11 +209,12 @@ static int rockchip_gpio_set_debounce(struct gpio_chip *gc,
 		freq = clk_get_rate(bank->db_clk);
 		if (!freq)
 			return -EINVAL;
-		max_debounce = (GENMASK(23, 0) + 1) * 2 * 1000000 / freq;
+		div = (u64)(GENMASK(23, 0) + 1) * 2 * 1000000;
+		max_debounce = DIV_ROUND_CLOSEST_ULL(div, freq);
 		if (debounce > max_debounce)
 			return -EINVAL;
 
-		div = debounce * freq;
+		div = (u64)debounce * freq;
 		div_reg = DIV_ROUND_CLOSEST_ULL(div, 2 * USEC_PER_SEC) - 1;
 	} else {
 		div_debounce_support = false;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
