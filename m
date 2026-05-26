Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D986CCD5BB1
	for <linux-rockchip@archiver.kernel.org>; Tue, 26 May 2026 17:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OlLdLmhkfqxA1JH2OpTzL8MO8BqS5a8lM6HaiLaWNmo=; b=fhKOoj+0DT/ZNJ
	PIe5qmDx7W9KpJwP3b1aCsJtHnsd7F9/TrhfVtQirus9GI1kPzv4AErqO1mnblAFsiA2rvvOBNFD+
	vv0mcIj8hLc2RPy0eQv76G6stMIK1pIFhve/ar3ce6mNqT4/1JZXoAMQtTkGEhfa6QDkL0i7DFvvz
	ErAqRxgSVSYsAFZQT3WbR34Iv86s9LhRiULov2RESsznni5BhvNF/7VIUwM6aItJ4ZzlxGBYx8/gd
	HNw9ekTPxdCEKN5ioS8aMEAdFIDkyDR11hqwpKvP1018xXlrmcFKd28hTSPEoJoYClwgzXxEq84cA
	84vzieurNLJoKn8Q+nvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRvJN-00000002fKS-3l0f;
	Tue, 26 May 2026 17:11:25 +0000
Received: from layka.disroot.org ([178.21.23.139])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wRvJK-00000002fHD-07nZ;
	Tue, 26 May 2026 17:11:24 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 4AD0F26F8E;
	Tue, 26 May 2026 19:11:07 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id WwX45KF2v4_W; Tue, 26 May 2026 19:11:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1779815466; bh=XdAOWq8GGsIdFr4SLIxKKpxOgKgyrzPl7v4EErdEiPY=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=YvY47lybVuABgoIIJo3mtGYHdx+Dhyl7GsDFT6RCpU/MhGw4R7FYyC9XDGQd4peCX
	 cJ08ca/3HaJP5VXxBKZLSz9A4pgR7yjHyXNhsQksk/IZo7OH/cInX4r/Yu5ho/IFxa
	 Z74y/Ye3RO1BVUDGDFtgf5KKEx0oXD0zZ6pvd+Oj49WaN+ciZ1/1Pal7CKiOND0wkN
	 Tipb0bqz13qWVhMMYCk47hr2kbSGymDNldymyi0M52vJ85KPAPkF1nK8Ipk7aH3cEw
	 ZW4cTgnHzk8HgSVPpOWNAt+IwMZ8DRqHFepe7+HK040S5Pe6wWIyOCFT41quzGubGy
	 orjbUFwVNddLQ==
From: Marco Scardovi <scardracs@disroot.org>
To: brgl@kernel.org
Cc: heiko@sntech.de,
	linusw@kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	scardracs@disroot.org
Subject: [PATCH v2 1/2] gpio: rockchip: convert bank->clk to devm_clk_get_enabled()
Date: Tue, 26 May 2026 19:02:45 +0200
Message-ID: <20260526171050.12785-2-scardracs@disroot.org>
In-Reply-To: <20260526171050.12785-1-scardracs@disroot.org>
References: <CAMRc=Mfk9tP091DN=5kjb8fvFhj1=MiBZSq4NJ7+k5LNCVy9bw@mail.gmail.com>
 <20260526171050.12785-1-scardracs@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260526_101123_049068_7CFA68D6 
X-CRM114-Status: GOOD (  12.21  )
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

The bank->clk was previously obtained via of_clk_get() and manually
prepared/enabled. However, it was missing a corresponding clk_put() in
both the error paths and the remove function, leading to a reference leak.

Convert the allocation to devm_clk_get_enabled(), which also properly
propagates failures from clk_prepare_enable() that were previously ignored.

The GPIO bank device uses the same OF node as the previous of_clk_get()
call, so devm_clk_get_enabled(dev, NULL) correctly resolves the same
clock provider entry.

Fix the reference leak and simplify the code by removing the manual
clk_disable_unprepare() calls in the probe error paths and in the
remove function.

Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
Assisted-by: Antigravity:gemini-3.5-flash
Signed-off-by: Marco Scardovi <scardracs@disroot.org>
---
 drivers/gpio/gpio-rockchip.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 44d7ebd12724..33580093a4e7 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -656,11 +656,10 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 	if (!bank->irq)
 		return -EINVAL;
 
-	bank->clk = of_clk_get(bank->of_node, 0);
+	bank->clk = devm_clk_get_enabled(bank->dev, NULL);
 	if (IS_ERR(bank->clk))
 		return PTR_ERR(bank->clk);
 
-	clk_prepare_enable(bank->clk);
 	id = readl(bank->reg_base + gpio_regs_v2.version_id);
 
 	switch (id) {
@@ -672,7 +671,6 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 		bank->db_clk = of_clk_get(bank->of_node, 1);
 		if (IS_ERR(bank->db_clk)) {
 			dev_err(bank->dev, "cannot find debounce clk\n");
-			clk_disable_unprepare(bank->clk);
 			return -EINVAL;
 		}
 		break;
@@ -751,7 +749,6 @@ static int rockchip_gpio_probe(struct platform_device *pdev)
 
 	ret = rockchip_gpiolib_register(bank);
 	if (ret) {
-		clk_disable_unprepare(bank->clk);
 		mutex_unlock(&bank->deferred_lock);
 		return ret;
 	}
@@ -792,7 +789,6 @@ static void rockchip_gpio_remove(struct platform_device *pdev)
 {
 	struct rockchip_pin_bank *bank = platform_get_drvdata(pdev);
 
-	clk_disable_unprepare(bank->clk);
 	gpiochip_remove(&bank->gpio_chip);
 }
 
-- 
2.54.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
