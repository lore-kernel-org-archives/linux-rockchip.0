Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D3D2D1BDE3
	for <linux-rockchip@archiver.kernel.org>; Mon,  4 Nov 2024 19:13:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qJu8DHAvah88hUbAfv5Amq/B9lEnKuoctXTCWtDIxZE=; b=iL/cLpblMwVBdz
	l+N2sI2WLm+cl8i4l/vq6xertjs9YC0e0hahWUv0+uhtYjt5y5L/MV6+vSD/IdmePWaYYI6dxIw9Q
	RyOd66rXXD4L9mbyZxohON6BJhUtcOUurKdTc2CqPVtwcK0wZlgUx1dsO+zy9d7r9hszsLUmB/R25
	2Du3Jc2KMDw01aWp91GmjnsLNjdqk9bCFAH5LBo98M7lys72KOrAagdFWCFgruhkbak5XNpACPTdb
	e370Rlv48uRk+jTIgd/qJ5u8zlAY0BvscsqWW3TnDcthTnzBbSHXDWSHemJpAvysWZjbirRmJ91Nh
	ThejwvYAGWCBXDQqmAtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t82WD-0000000Erna-2IIV;
	Mon, 04 Nov 2024 19:13:41 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t82PK-0000000EqhE-26Ha;
	Mon, 04 Nov 2024 19:06:35 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 3A0025C0474;
	Mon,  4 Nov 2024 19:05:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E9CDC4CECE;
	Mon,  4 Nov 2024 19:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730747193;
	bh=Lu1Fi0IEy8M6BgnItjbqpPrJ7Hppzar99nXYlc6ZBCo=;
	h=From:To:Cc:Subject:Date:From;
	b=G9VXQBg0OJr9ruK9K4Te4NS+RvBhpRlD4WWJHJs3yIccyl3pRBkCfGWgMIYEIKzmw
	 rSTI1vpqCWAEaCVUnRfcPfmms/elbyEu3t9TBzjUBesAEXavjGErPlxcZmfy7PX9AQ
	 hUT8bvNn5S5o3YO4inhpE3WV53tj4MY2OBS8rCzlkuJlL1q52+GUtxZybenNVrDEeJ
	 H9OWVcFNMUU4JZk+6OVCq7VROHwDHURpj+XvwFN3bOf5eBG1dRfsn1wwx0tQbFVEM1
	 0HU40fbhcQbo2vXvhy2E35buIOujmsJHWjU16F9IxXF3TtMrhRyeG29tUODrrpUyfq
	 Oj0NfitO9kYEg==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Heiko Stuebner <heiko@sntech.de>
Cc: linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] gpio: Use of_property_present() for non-boolean properties
Date: Mon,  4 Nov 2024 13:06:27 -0600
Message-ID: <20241104190628.274717-1-robh@kernel.org>
X-Mailer: git-send-email 2.45.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241104_110634_602060_ECA381E9 
X-CRM114-Status: GOOD (  13.52  )
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

The use of of_property_read_bool() for non-boolean properties is
deprecated in favor of of_property_present() when testing for property
presence.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 drivers/gpio/gpio-rockchip.c | 2 +-
 drivers/gpio/gpiolib-of.c    | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index 365ab947983c..64924bc01591 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -602,7 +602,7 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	 * files which don't set the "gpio-ranges" property or systems that
 	 * utilize ACPI the driver has to call gpiochip_add_pin_range().
 	 */
-	if (!of_property_read_bool(bank->of_node, "gpio-ranges")) {
+	if (!of_property_present(bank->of_node, "gpio-ranges")) {
 		struct device_node *pctlnp = of_get_parent(bank->of_node);
 		struct pinctrl_dev *pctldev = NULL;
 
diff --git a/drivers/gpio/gpiolib-of.c b/drivers/gpio/gpiolib-of.c
index 880f1efcaca5..2e537ee979f3 100644
--- a/drivers/gpio/gpiolib-of.c
+++ b/drivers/gpio/gpiolib-of.c
@@ -337,7 +337,7 @@ static void of_gpio_flags_quirks(const struct device_node *np,
 	 * to determine if the flags should have inverted semantics.
 	 */
 	if (IS_ENABLED(CONFIG_SPI_MASTER) && !strcmp(propname, "cs-gpios") &&
-	    of_property_read_bool(np, "cs-gpios")) {
+	    of_property_present(np, "cs-gpios")) {
 		u32 cs;
 		int ret;
 
-- 
2.45.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
