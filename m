Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 919EBCA600C
	for <linux-rockchip@archiver.kernel.org>; Thu,  8 Oct 2026 19:18:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PlYwcTutX4OVEDEx3q6enJZCNizQ+pvXR433fUKrEeY=; b=yeNwrnF8n26Xm9
	UIJD+Pu/qdpRLqcvdDzd8N3t/CEeGkuFMMEgKROBgq10hup9rSl08kffoo9L0crFGvxQAGAARkwpD
	bLDOXnQcrgB8yIH6ueeMgA1mEosLXqVFbPKTjYvE8AjYeqEb96bXltNxK7kk1dKFJObTPANa03p1p
	TZRaOYjO/Rv8UbJUZpPIdFXqbYqgKJSSuXONQiKaXLLvqpbRbO9QDGdrjd2dvUYizw6DKU4Y8zkZ5
	fwCywf7wzTOWWJi4VhtFkJ+UCgAAoGBynq4qDhnQwjfev585do+WDPySU+R7DTtG13AOVhwJLwxI0
	FcjGBuP4LIJuP8yTGfhQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEtdQ-00000004uob-44WQ;
	Thu, 08 Oct 2026 19:18:32 +0000
Received: from mail-dy1-x1329.google.com ([2607:f8b0:4864:20::1329])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEtdO-00000004umo-2WX3
	for linux-rockchip@lists.infradead.org;
	Thu, 08 Oct 2026 19:18:32 +0000
Received: by mail-dy1-x1329.google.com with SMTP id 5a478bee46e88-35154cb9de2so4960135eec.1
        for <linux-rockchip@lists.infradead.org>; Thu, 08 Oct 2026 12:18:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=trailofbits.com; s=google; t=1791487110; x=1792091910; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=a14qc72yQKkzCAZ2CAoTwipNnd9qGKItgjyfXX9xZAw=;
        b=XKHqRSIA45QWqnqriSW/FP3QRnQKNbeZTDtWaZIkp6WUzqYRMGfVoMxbRYwsoDmJzl
         OL8c28zZAvdHZSm5ORQZu2GKWbK25W2bnhAd/e8lPTa2LhNbnSHiZMFA3Mfh29uDD6Om
         hQJyj5jznS9VrqtVfRnOIchJVUuLuVH9sNuvDtOpDzaB1lWGWnCUJeGr9qNt/ReL2Xpr
         hGBnTEZD76mb4ajLCmrRgHKKB3E+3QOhEv4LqBkUskpaTzkYFe1QzSrqPpAOOmTXAWbZ
         ttLqz5O1AZu8l15j+ri0HFTc8l0AuXM9JBX6pDBS9r+AtN8aMxRYW1lyP68GQj3C1wKN
         UYvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1791487110; x=1792091910;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=a14qc72yQKkzCAZ2CAoTwipNnd9qGKItgjyfXX9xZAw=;
        b=kDKv8mZA5Lo+7wDcm1x0weWzsR3MYv7i1JCJcaCpj0zAa1Lx67l4SbTAVewg7SHbHL
         yyU7ocoEA9D1JX6qGMivrYPpzVujB/pvi+P2S96Ki08iyQEGLyuPkSslcf/MAtcGFg6M
         hU+5ERBJkbIOz/+vfZBcF5OOQG/ZSXfOInuthuQre5/fGt9gpGYClZdfG3upFQY87zBM
         SzdTAUgzBjk5IGVntPo1gloiF+S0Wnsaep4y/R2pY+xvmu+J96LXWWN8a5C0OdSohJuD
         ru7zx6+vFEiAPj91gBuIWee8H50TdYs97TVOH2E3DNeI8pLC58bly7E+jeAk60rp2gKy
         8rHw==
X-Forwarded-Encrypted: i=1; AKwUvBwnN0vEHVOkPZ3bOnKG8EfZKz2Gtt/hX1y+MAVhkl0eZLBn7UhIAx2FCg6Q3GVb7Vtf9XL9N778f/TO2dpxXA==@lists.infradead.org
X-Gm-Message-State: AFq9FYKc2DS+OCMl89PN51/Ms7N6hV3An5iQO72M9hnBZjBwaCkgas2y
	ec9zkBsQqp3gYQx4NTuM+GkFZCJaeoLYZ2PzdzsjMCDHEy4c3f4BeCl/zBCUg46AOI8=
X-Gm-Gg: AYBFou1j6tnovcq6HslWVHmt5J32MilTC1RYhDUizNxH/RwMLBfrqetq0m6893nJ2iV
	+Ykuo1i0JvRCFipnKH+U3U1STrO/R7CBoROpJZ+Vx7wWmyPVlTHinGKTIAWEB40YV28foMz6RLM
	+BoPwsOzFMJX5Z3aPV5v96jjuhgjNVOPaoM2TyMSLLn7QIsJIp1gYNIpJ9oDB0nsu5jnGD8jfap
	y7ytWo2YCd9UF+qXkTa+52jjRs/nvm93pstespgbXAXfdq55OQJCbOOkJSdDRr8mnIQXpDxB7F6
	VOz18KJ+yLB2F287hGe0mFgt06XSbiFUM2pWtEcMqp/P5AKrFiH0dg3D6goEuoBivuPHiDTj90t
	QF91gveb/s4MR+dCea3w3mLY8oLZY7lLSD95t1KlTOlAQudCnuNE5TPQMEamjce/qtE7JN8+8Sk
	asrr+JNYebZ8jtyN29a0TvzV57aDSOBvdDbOzy2iqwIMV4ToOOUWZohvEeyY9g9nP82oqw4jmFc
	ZbYAlzCEZJsRvqMaRbb4hiTeTjbdl7/ReKQISpRWqb8iONcrMXe2CVg74E/8QxZc45jhDc=
X-Received: by 2002:a05:7300:8819:b0:33c:e72:5b3b with SMTP id 5a478bee46e88-3535f3cbcd4mr464739eec.25.1791487109863;
        Thu, 08 Oct 2026 12:18:29 -0700 (PDT)
Received: from localhost.localdomain ([2603:8001:5f01:8bab:bc88:5ec1:4f8a:5b23])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-3537c841579sm117933eec.4.2026.10.08.12.18.28
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Thu, 08 Oct 2026 12:18:29 -0700 (PDT)
From: Artem Dinaburg <artem@trailofbits.com>
To: stable@vger.kernel.org
Cc: Artem Dinaburg <artem@trailofbits.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>,
	Marco Scardovi <scardracs@disroot.org>,
	Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Andy Shevchenko <andy@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	linux-gpio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Linus Walleij <linusw@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	jay.xu@rock-chips.com
Subject: [PATCH 6.6.y 1/2] gpio: rockchip: teardown bugs and resource leaks
Date: Thu,  8 Oct 2026 15:18:20 -0400
Message-ID: <20261008191824.98662-2-artem@trailofbits.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20261008191824.98662-1-artem@trailofbits.com>
References: <20261008191824.98662-1-artem@trailofbits.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261008_121830_650719_BBB07515 
X-CRM114-Status: GOOD (  18.39  )
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

From: Marco Scardovi <scardracs@disroot.org>

[ Upstream commit 9500077678230e36d22bf16d2b9539c13e59a801 ]

Address several teardown issues and resource leaks in the driver's remove
path and error handling:

1. Debounce clock reference leak: The debounce clock (bank->db_clk) is
   obtained using of_clk_get() which increments the clock's reference
   count, but clk_put() is never called. Register a devm action to
   cleanly release it on unbind. Note that of_clk_get(..., 1) remains
   necessary over devm_clk_get() because the DT binding does not define
   clock-names, precluding name-based lookup.

2. Unregistered chained IRQ handler: The chained IRQ handler is not
   disconnected in remove(). If a stray interrupt fires after the driver
   is removed, the kernel attempts to execute a stale handler, leading
   to a panic. Fix this by clearing the handler in remove().

3. IRQ domain leak: The linear IRQ domain and its generic chips are
   allocated manually during probe but never removed. Remove the IRQ
   domain during driver teardown to free the associated generic chips
   and mappings.

[ Backport to 6.6.y: For 6.6.y, send with 1c1e0fc88d6e (CVE-2026-53226)
  so generic chips are explicitly removed before irq_domain_remove().
  6.1.y lacks irq_domain_remove_generic_chips(), so it needs a
  separately reviewed older generic-chip teardown backport. ]

Fixes: 936ee2675eee ("gpio/rockchip: add driver for rockchip gpio")
Assisted-by: Antigravity:gemini-3.5-flash
Signed-off-by: Marco Scardovi <scardracs@disroot.org>
Link: https://patch.msgid.link/20260526171050.12785-3-scardracs@disroot.org
[Bartosz: don't emit an error message on devres allocation failure]
Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@oss.qualcomm.com>
Assisted-by: LLM
Signed-off-by: Artem Dinaburg <artem@trailofbits.com>
---
This is patch 1 of 2 in the ordered 6.6.y backport series.
This change addresses CVE-2026-64241. Releases the debounce-clock
reference, disconnects the chained IRQ handler, and removes the IRQ domain
during driver teardown.

The fix is already present in 6.12.y, 6.18.y, and 7.2.y, but not in 6.6.y.

 drivers/gpio/gpio-rockchip.c | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-rockchip.c b/drivers/gpio/gpio-rockchip.c
index ff9a4b8611d7..e0e4f3ed5fdd 100644
--- a/drivers/gpio/gpio-rockchip.c
+++ b/drivers/gpio/gpio-rockchip.c
@@ -629,10 +629,17 @@ static int rockchip_gpiolib_register(struct rockchip_pin_bank *bank)
 	return ret;
 }
 
+static void rockchip_clk_put(void *data)
+{
+	struct clk *clk = data;
+
+	clk_put(clk);
+}
+
 static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 {
 	struct resource res;
-	int id = 0;
+	int id = 0, ret;
 
 	if (of_address_to_resource(bank->of_node, 0, &res)) {
 		dev_err(bank->dev, "cannot find IO resource for bank\n");
@@ -662,6 +669,11 @@ static int rockchip_get_bank_data(struct rockchip_pin_bank *bank)
 			dev_err(bank->dev, "cannot find debounce clk\n");
 			return -EINVAL;
 		}
+
+		ret = devm_add_action_or_reset(bank->dev, rockchip_clk_put,
+					       bank->db_clk);
+		if (ret)
+			return ret;
 	} else {
 		bank->gpio_regs = &gpio_regs_v1;
 		bank->gpio_type = GPIO_TYPE_V1;
@@ -773,6 +785,9 @@ static int rockchip_gpio_remove(struct platform_device *pdev)
 {
 	struct rockchip_pin_bank *bank = platform_get_drvdata(pdev);
 
+	irq_set_chained_handler_and_data(bank->irq, NULL, NULL);
+	if (bank->domain)
+		irq_domain_remove(bank->domain);
 	gpiochip_remove(&bank->gpio_chip);
 
 	return 0;
-- 
2.39.5

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
