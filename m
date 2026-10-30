Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9A78606A322
	for <linux-rockchip@archiver.kernel.org>; Fri, 30 Oct 2026 11:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=Y0qczOZ+;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=Npu08he3
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=uE1Cs/rBiBlpNoh+/vpG8mPo595EJgPO3NkDxGCQZog=; b=Y0qczOZ+xMUDeI28VK/AQrHdjb
	a/VnQ0pMYpQjOZ9ECdOA1De1xoVLvLs/kjrZvOk6/Gy4yGdBCC/oMDUgtgcSeVKoNxHS+LshXkT0g
	MceORsrGYjD83oEqu5mZQWN8xEELyoh9PY9mbhH/WNMxxr+hTS0BnX7m8ZwKlOazhM35Ev7Yc6ZKj
	bcHkU/Z3AYCxQxKatFxA8i4JOm7fPcLGNWnLcptV44Uy0YgMOjs1hpI0tJfFnTyYLw9IRaD94r1eT
	WEarFzZ1IwV/oD17811SWbXWFpsGcLHfDUKWURdpyTvP8YxekJ03BrpJp81bazDcVzNBxo57ZsH34
	pljkq80A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlDG-0000000Bc4g-0ECy;
	Fri, 30 Oct 2026 11:56:02 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMlDE-0000000Bc4H-1jcZ
	for linux-rockchip@lists.infradead.org;
	Fri, 30 Oct 2026 11:56:01 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=LWulNEi7OnC7ab/AWpVRlKXxCTgfElN1f2n9XM4xApg=; b=Npu08he3rfSFuPQTQZVoSbVBzX
	4zwwSs5VKNB4bLEGYG+nrMdxNfImqgujMZeA4sL5AM+IYJ8+789qh/u2xjg+7scbv0Mh8gFYhxIp2
	WMEcDjP+iY+UIoZ/ZkuTWJdYdvsjtnoTRhOM7yK9EEA+zA8OS/EZz3U84RgOOJlVRgCT6jOpQbGUX
	SWJmHu8ST5oQMO3nQKyv1B/yZm24kqlWm7G2ZAXNVb6CAxWI8rATod5dHLfY4WutTimw62tESxlRd
	lnNAPsO98aYz37M9xiyCSZi6vL+rMC5+EuQQECq4DyfmNgAmW887H19DhYwIWFinyF0FriIfc9Yh/
	xCYPOcuA==;
From: Heiko Stuebner <heiko@sntech.de>
To: linusw@kernel.org
Cc: heiko@sntech.de,
	chenjh@rock-chips.com,
	linux-gpio@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Heiko Stuebner <heiko.stuebner@cherry.de>,
	stable@vger.kernel.org
Subject: [PATCH] pinctrl: rk805: fix ordering of gpio and pinctrl registration
Date: Fri, 30 Oct 2026 12:55:40 +0100
Message-ID: <20261030115540.3660242-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.3
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_045600_504300_E2114A4B 
X-CRM114-Status: GOOD (  12.98  )
X-Spam-Score: -2.1 (--)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Heiko Stuebner <heiko.stuebner@cherry.de>

The call to gpiochip_add_pin_range() binds the gpio-chip and pinctrl
together. devm_gpiochip_add_data() sets up the devm action to tear it
down again - and this includes removing the pin-range.

As devm teardown is running in opposite order, when
pinctrl_remove_gpio_range() is reached from gpiochip_remove_pin_ranges()
that pin-controller is already gone, leading to something like:

[    9.703366] Unable to handle kernel paging request at virtual address dead000000000108
[...]
[    9.703553] [dead000000000108] address between user and kernel address ranges
[    9.703573] Internal error: Oops: 0000000096000044 [#1]  SMP
[...]
[   23.237380] Call trace:
[   23.240120]  pinctrl_remove_gpio_range+0x28/0x60 (P)
[   23.245687]  gpiochip_remove_pin_ranges+0x5c/0x8c
[   23.250955]  gpiochip_remove+0x144/0x1c0
[   23.255350]  devm_gpio_chip_release+0x10/0x1c
[   23.260239]  devm_action_release+0x14/0x20
[   23.264834]  devres_release_all+0xb0/0x120
[   23.269430]  device_unbind_cleanup+0x2c/0x84
[   23.274221]  device_release_driver_internal+0x1ec/0x224
[   23.280072]  device_release_driver+0x18/0x24
[   23.284862]  bus_remove_device+0xe4/0x19c
[   23.289359]  device_del+0x14c/0x40c
[   23.293273]  platform_device_del+0x28/0x94
[   23.297871]  platform_device_unregister+0x18/0x3c
[   23.303149]  mfd_remove_devices_fn+0x130/0x14c
[...]

Fix this by reordering gpio and pinctrl addition.

Fixes: ea479996c79b ("pinctrl: Add pinctrl driver for the RK805 PMIC")
Cc: stable@vger.kernel.org
Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/pinctrl/pinctrl-rk805.c | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rk805.c b/drivers/pinctrl/pinctrl-rk805.c
index 22f576337faa..8e04da3ef0f3 100644
--- a/drivers/pinctrl/pinctrl-rk805.c
+++ b/drivers/pinctrl/pinctrl-rk805.c
@@ -663,13 +663,6 @@ static int rk805_pinctrl_probe(struct platform_device *pdev)
 		return -EINVAL;
 	}
 
-	/* Add gpio chip */
-	ret = devm_gpiochip_add_data(&pdev->dev, &pci->gpio_chip, pci);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "Couldn't add gpiochip\n");
-		return ret;
-	}
-
 	/* Add pinctrl */
 	pci->pctl = devm_pinctrl_register(&pdev->dev, &pci->pinctrl_desc, pci);
 	if (IS_ERR(pci->pctl)) {
@@ -677,6 +670,13 @@ static int rk805_pinctrl_probe(struct platform_device *pdev)
 		return PTR_ERR(pci->pctl);
 	}
 
+	/* Add gpio chip */
+	ret = devm_gpiochip_add_data(&pdev->dev, &pci->gpio_chip, pci);
+	if (ret < 0) {
+		dev_err(&pdev->dev, "Couldn't add gpiochip\n");
+		return ret;
+	}
+
 	/* Add pin range */
 	ret = gpiochip_add_pin_range(&pci->gpio_chip, dev_name(&pdev->dev),
 				     0, 0, pci->gpio_chip.ngpio);
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
