Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 186F5C52D7C
	for <linux-rockchip@archiver.kernel.org>; Fri, 23 Aug 2024 03:45:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwQ+avCzeamshHkuM1bVmfNwxV5XakDYKm1raK7nOZo=; b=NX7wEyrtPODKl/
	IxDWHVv533RnCii7WTYK8pEmOaZ9j5rZqSO6NaMsM3WJk+MtmfITYzY8rzTrDlfFO3WKEyjyKIqGX
	GpolY5OiCC5s4YXerC4xodhbaQqJ+n1TKrhUK+daQCrFkgfInZ2pfEpY/fd7XD8JhjR5CxUoGBwp1
	Nm/DX1PS8rlJ4KWChk7K7miqSfJFTluHk9sLC/aGMZ5lTR0LIrNSBMCmV78c1EgxhYiAdLCivuLBw
	FwiF0RFwX1pa89S2gHvWjf3wmKovVvBXyz8iLjh56ZcGNbOhA3YWNco+x/Q9VMuuJNdVmPdOXnKEu
	TqlHAjvwNMmwmApXnrmg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEr-0000000F555-3JVc;
	Fri, 23 Aug 2024 03:45:25 +0000
Received: from mail-m3285.qiye.163.com ([220.197.32.85])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shLEn-0000000F4z4-1CUS;
	Fri, 23 Aug 2024 03:45:23 +0000
DKIM-Signature: a=rsa-sha256;
	b=E8aXzYYrGFjdNdtLeFQzu7QdHVnuYVeNuT7hS3ZeKcL9wkmxgUBrRLAapbFzVGQuDIJiOzf+zvpgQqbG56VerNEqGX79HPPFBXQ5Wb7I4RTEVkNmeRL6YdLGCcs04gMQYX6hk6oC42LZG9QeT8Wk4+XKuHVWMTxDoKPEGw78iUs=; s=default; c=relaxed/relaxed; d=rock-chips.com; v=1;
	bh=aKIFSG7psQm1vWjapk5w2XfwNBNv7IDfrqqRzIJzccQ=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id CA2EB7E03D1;
	Fri, 23 Aug 2024 11:44:59 +0800 (CST)
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
Subject: [PATCH v2] gpio: rockchip: release reference to device node
Date: Fri, 23 Aug 2024 11:43:05 +0800
Message-Id: <20240823034314.62305-3-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240823034314.62305-1-ye.zhang@rock-chips.com>
References: <20240823034314.62305-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUtPSFYaSk5NSU4dTR5KHktWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a917d56687909cfkunmca2eb7e03d1
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6ORg6GSo5SzIxHixONzZCTg8p
	SzEwCT1VSlVKTElPSENPTEtKS0xCVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSUhPSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_204521_670353_D1B7DCD1 
X-CRM114-Status: UNSURE (   7.50  )
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

Added a call to of_node_put(pctlnp) in rockchip_gpio_probe to properly
release the reference to the device node, improving memory management
and preventing potential leaks.

Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 712258224eb3..5f60162baaeb 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -715,6 +715,7 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 		return -ENODEV;
 
 	pctldev = of_pinctrl_get(pctlnp);
+	of_node_put(pctlnp);
 	if (!pctldev)
 		return -EPROBE_DEFER;
 
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
