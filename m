Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D1D82CD342E
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:48:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=26pCxffy6pc+8wjIb+fvpGOwjRWLeGz2r8Gy4aIrbyk=; b=rd7j1ywiAHP5Cz
	R8CAcW3zcqNcNd36r+xwz4r2eraUFlfxO0xBHJ760OTxPScua3g6jl1wVTWeuV9/YnIXOnofhkH1P
	nVse7FOEq5Qol0rhjjgF8bS/n6wnceTT8gkxxF0wBVppdMDHKhqP3JZy6xOkPRo5cotEbvrq8U38G
	YVjgox/jtHba/du6+p9a/DqCkCZU19qxb20TfDuLh2dH1xf2h6ldGl+H1ZkSO7Tzw2iDaL8awIq7T
	GYxRb5/CV2Ep+NE6CPEOAKEfHsC5oxF6/aOrKvIRUFxpqcqEYuAGAAIwmt+PDbCqeTMpfZsACJY4X
	NxJ2fIJ3PP3ByxUhcuFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOGl-0000000GkcJ-1S58;
	Tue, 03 Sep 2024 07:48:07 +0000
Received: from mail-m118218.qiye.163.com ([115.236.118.218])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6V-0000000GiPY-29qe;
	Tue, 03 Sep 2024 07:37:33 +0000
DKIM-Signature: a=rsa-sha256;
	b=GKCejw2dVuzw9CkrXNsUGDcFloWio3UugIYBHK2SHk9yoT0YOOo51O9Tfb/8XnvQ6EwlQ6DxOXMdIETLy/42UT8IhQtwEEs8dWnFFwDROm47EOLPZUYULxJ5i5U7Dr4wAJL0KWrSYfh9CEvJTLKOK6wPU01HiJgbI0joZjOOCa4=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=zDVZ8TZm7nkWoJsuX0habbG1+gqX4d/hwXj0dJJAT7Y=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 08F447E0659;
	Tue,  3 Sep 2024 15:37:16 +0800 (CST)
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
Subject: [PATCH v3 11/12] gpio: rockchip: Set input direction when request irq
Date: Tue,  3 Sep 2024 15:36:48 +0800
Message-Id: <20240903073649.237362-12-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZQk1LHVZNTx5JTklMSENJTEtWFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d106a209cfkunm08f447e0659
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6NEk6NDo5ITIwNEkhLBEaFQ0X
	DEwwCy1VSlVKTElOSE9CS0hDSEpCVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSU1PSTcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003731_938538_8EA406A7 
X-CRM114-Status: UNSURE (   9.10  )
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

Since the GPIO can only generate interrupts when its direction is set to
input, it is set to input before requesting the interrupt resources.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 6deebf1dd9dd..73e57efb46fc 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -476,10 +476,14 @@ static int rockchip_irq_set_type(struct irq_data *d, unsigned int type)
 
 static int rockchip_irq_reqres(struct irq_data *d)
 {
+	irq_hw_number_t hwirq;
 	struct irq_chip_generic *gc = irq_data_get_irq_chip_data(d);
 	struct rockchip_pin_bank *bank = gc->private;
 
-	return gpiochip_reqres_irq(&bank->gpio_chip, d->hwirq);
+	hwirq = irqd_to_hwirq(d);
+	rockchip_gpio_direction_input(&bank->gpio_chip, hwirq);
+
+	return gpiochip_reqres_irq(&bank->gpio_chip, hwirq);
 }
 
 static void rockchip_irq_relres(struct irq_data *d)
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
