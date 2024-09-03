Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 530E0CD342F
	for <linux-rockchip@archiver.kernel.org>; Tue,  3 Sep 2024 07:49:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CYHd1GrMZj8AzQC/sUrWP4c0TFP7GXKyPvaUnR7Fb9M=; b=eZpiWsCEmIS/Ol
	nprDtCd+03VL5GCAZCfMX2wqDVM3LysaaaHUosOz0IzTPOf3vMsvNJfTaJ2wSPcpPtf032S2fFIQe
	039kv7tcjS/l8V/wrTd9l309umtcqm61bZYC/7DLmOKGFDcQLG28uH5RzDquG1vj31lmv/AMpTmBd
	7xRe/jXPLd6Op4Uad+Ne/m8EQDxMPIHv6Dt2oMUP++MBmypAy7ollOJQWt7Hs4X/6QQd5UNEN7nHT
	QLacaxlnCZYQwvG/4c3cLiR27eGrShQqAGV5HWgCsSaOsQ7ygGlleVJ0J0kbxhHPXWSP9Vsr5LLkP
	rVa635+tXQwjMHBhIJsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slOHf-0000000Gkum-2dGJ;
	Tue, 03 Sep 2024 07:49:03 +0000
Received: from mail-m12787.qiye.163.com ([115.236.127.87])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1slO6a-0000000GiSx-28VT;
	Tue, 03 Sep 2024 07:37:37 +0000
DKIM-Signature: a=rsa-sha256;
	b=Svn1LfzBXD6+X08id4l9jK0W/Cla+KEeOVEdn7IGloLESmycgijpufkzijYmggBJ5spOLgBeGqUeFSEdc0N8UlAFTvIqp68PCaGCfjsXywmzn++Iqemx3up6RQA/vZiX/g/OcB5IoGskpHPuAtgVuDEJZXxxFi84o9UnXIZdCwY=; c=relaxed/relaxed; s=default; d=rock-chips.com; v=1;
	bh=mgSI3a/7dMdZbLCNsqhcURBOepC3DqKjtYsqMJY17gk=;
	h=date:mime-version:subject:message-id:from;
Received: from rockchip.. (unknown [58.22.7.114])
	by smtp.qiye.163.com (Hmail) with ESMTPA id 68C3B7E0292;
	Tue,  3 Sep 2024 15:37:18 +0800 (CST)
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
Subject: [PATCH v3 12/12] gpio: rockchip: replace mutex_lock() with guard()
Date: Tue,  3 Sep 2024 15:36:49 +0800
Message-Id: <20240903073649.237362-13-ye.zhang@rock-chips.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240903073649.237362-1-ye.zhang@rock-chips.com>
References: <20240903073649.237362-1-ye.zhang@rock-chips.com>
MIME-Version: 1.0
X-HM-Spam-Status: e1kfGhgUHx5ZQUpXWQgPGg8OCBgUHx5ZQUlOS1dZFg8aDwILHllBWSg2Ly
	tZV1koWUFDSUNOT01LS0k3V1ktWUFJV1kPCRoVCBIfWUFZGUwaTFYZTkIZGUlCGh5JTR5WFRQJFh
	oXVRMBExYaEhckFA4PWVdZGBILWUFZTkNVSUlVTFVKSk9ZV1kWGg8SFR0UWUFZT0tIVUpLSUhCSE
	NVSktLVUpCS0tZBg++
X-HM-Tid: 0a91b6d10c2209cfkunm68c3b7e0292
X-HM-MType: 1
X-HM-Sender-Digest: e1kMHhlZQR0aFwgeV1kSHx4VD1lBWUc6Pk06Qzo6GjI1FklRLBEfFQgt
	Qw1PCTpVSlVKTElOSE9CS0hCTUNIVTMWGhIXVQIeVQETGhUcOwkUGBBWGBMSCwhVGBQWRVlXWRIL
	WUFZTkNVSUlVTFVKSk9ZV1kIAVlBSEtNQjcG
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240903_003736_767039_B8AF96E5 
X-CRM114-Status: UNSURE (   9.94  )
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

Replacing mutex_lock with guard() simplifies the code and helps avoid
deadlocks.

Signed-off-by: Ye Zhang <ye.zhang@rock-chips.com>
---
 drivers/gpio/gpio-rockchip.c | 14 +++++---------
 1 file changed, 5 insertions(+), 9 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 73e57efb46fc..d5c57617fc86 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -765,20 +765,19 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 		}
 	}
 
-	ret = rockchip_get_bank_data(bank);
-	if (ret)
-		goto err_disabled_clk;
-
 	/*
 	 * Prevent clashes with a deferred output setting
 	 * being added right at this moment.
 	 */
-	mutex_lock(&bank->deferred_lock);
+	guard(mutex)(&bank->deferred_lock);
+	ret = rockchip_get_bank_data(bank);
+	if (ret)
+		goto err_disabled_clk;
 
 	ret = rockchip_gpiolib_register(bank);
 	if (ret) {
 		dev_err(bank->dev, "Failed to register gpio %d\n", ret);
-		goto err_unlock;
+		goto err_disabled_clk;
 	}
 
 	while (!list_empty(&bank->deferred_pins)) {
@@ -805,14 +804,11 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 		kfree(cfg);
 	}
 
-	mutex_unlock(&bank->deferred_lock);
 
 	platform_set_drvdata(pdev, bank);
 	dev_info(dev, "probed %pOF\n", np);
 
 	return 0;
-err_unlock:
-	mutex_unlock(&bank->deferred_lock);
 err_disabled_clk:
 	if (bank->manual_clk_release)
 		clk_disable_unprepare(bank->clk);
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
