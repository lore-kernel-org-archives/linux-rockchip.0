Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103D460A260E
	for <linux-rockchip@archiver.kernel.org>; Thu, 29 Oct 2026 10:06:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=KNeBx281;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=rfFTEmv9
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=Ngd305KLTZx+OqXOtCVBWFllQmxp0gtmqcPho0noVyw=; b=KNeBx281LOEL6gkPEYGTZelMTR
	zvKeQX+1NCf8br2ja6guuiu7zfosbXdukN5sJh1AJZJsnh+L/0NL4HMyoGKMvUgwmBBykNllXJDBG
	BeLbHdljnGv+PmmSIOqfB67dRp48AcufT/uIa8QVjGmOFc0cxCs/0OT/Rmgv32v/pVzBvVB4lrASY
	W8J3ztYeal3BBkmJq9NUQZ0aJnqh4SCzvmM+MOSpCJlJya1D0SVw6o5r0DUzs4QLW8kQCDab3/UAl
	ZWtNFT9reYPHQ46eg1KwqNcJa4Plgh6RvbRGBnaxBElVHTSxzFxnscNOoZmHP9PZyhLZdkhnJEu5o
	h7yaRjUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMN28-00000008vI6-0ECc;
	Thu, 29 Oct 2026 10:06:56 +0000
Received: from mail-wm1-x32b.google.com ([2a00:1450:4864:20::32b])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMN23-00000008vDZ-1iZg
	for linux-rockchip@lists.infradead.org;
	Thu, 29 Oct 2026 10:06:52 +0000
Received: by mail-wm1-x32b.google.com with SMTP id 5b1f17b1804b1-4a2d6d01ecbso13301435e9.0
        for <linux-rockchip@lists.infradead.org>; Thu, 29 Oct 2026 03:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1793268409; x=1793873209; darn=lists.infradead.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=C716tLFOYukgv8vVV1xiU5crvYZUQVn0gaj4X2Zv6Ao=;
        b=rfFTEmv9giHcWtMG9V+ER+TW6E4YM2X6hkRmoTSQaNTUPyTF4qkH/3Q10pKOS29TbM
         erADT4MrClqhlPVNBe2vNMQUu3d3Q9FHFpJWtZoZbDlAqExYW1nhthXP56bodFtRZ1nQ
         rPqWK+ZviLnRVaVFf7QBcXzlvnVPxXnasbFWkdslkLfIVHMsguSnIENvb/4VS98YDQJ8
         1uebqik0D9Vtdxl+SXQie1m4bmFxFThow8cCHV0FTFUY+r6ybQ48MUhZK/chS0XNXcXE
         xEiiSZXBnqBXJAOloGrX3epeqWsratG8FJBh2D4UJ4dkGdyfISWR+wIXPGMgqJW0nElr
         tqvg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1793268409; x=1793873209;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :content-type:mime-version:subject:date:from:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=C716tLFOYukgv8vVV1xiU5crvYZUQVn0gaj4X2Zv6Ao=;
        b=kAItJqYIncDBVoKlAQSbYCef/iujUKV3oM17Dll6nnKByz34eaQxHXCMNROs4dj1Ys
         IOoF623z4Gkh++JRZtjwxhJah71vldih0UYqNfWMF6Wwdj8CXPyPukkKQYth7qyhjJpz
         Gq+mtseFP52r39jHtCpwmuRROimj+xCbyYOC3WA6MgaYZu2p8aiUR41zFWH68B1gU1Wd
         pzuQR+452sUl3CEGdIeIS92CNNjaoZJTLRMteDVeaTn1M+irlAtbO5J7wWAxxBdQnYrY
         mKTsf7sTSz/dQxkCtdcqrvik/LZFIFvS13rzehemXWI7T/ArmkwoMWUViQwN3FkZT1OH
         X3EQ==
X-Forwarded-Encrypted: i=1; AKwUvBzO6nzJ9UbkHPhZKUvv7NLhQgKfjOGXzd5LMsi7PDT0nU3v3p1fSIr85K9YotTA+9O0sgtFR/5vFONGvIeo8A==@lists.infradead.org
X-Gm-Message-State: AFq9FYJI29wydOargwARA9t1L7px4aL7lPqwht168z3N2ZZCre0SvIVv
	u6sY+j9ZlcuEzqX0MaqiZRKfuXBbvrrBTL7KZG7dxmu+emu3zMCH4mwu
X-Gm-Gg: AYBFou0I6u+ULsvssyOEtTwcl9w19ATvkXQc8tcoS1edfhOGQFD6yACEGeisQ4G/iDJ
	TG30gMmMsiQbcsKcHZ18ueLNTQ8pWAiwixmamkpEd49Coi3541qCeWUO5uPOeorBsVbek1EmU4E
	wpCYhiFoCzmXaG2E+R+8YBaD2J93aNcvJwhUfk3coMk+8R09MALt0d5B4kZeW4N8+UHcOOITkBy
	7E/VxL/JgKnGwuigSr2qBne8e/D7IFw8nHe8XvttKrXnAM8E9Wr7yGzfeAu7cef+yEr6WYmR6Ou
	n+PVXxqhGHYtpmirhQlei8gCrkKVoCC0yb0vl3A1PztRbFRGmQxKQuIITwP2aeNSc3CyI6mA+01
	dIWcOEYWpp9TiyEzmDt+dDwg1PPYIiXUmCMS09ydjcWcs70nKHwgz+5Pn0nrnUNA9aOivMsXSjP
	/kWp7dbDQ+u2ujwZ3dGNK5NmHe1Q49a5XciE7XXbCYh8XEHPrZMa6fWRXmHqk0flVPfi0C0EzaJ
	AUprOtb9T5tT4bel5VRh8ki+60o9PdPBs6MW8xu1UJQxiW89/ibgyu7ZeCeuMYJmx1Jk8yowtWG
	yCysVp7EE75VOZGSo3VB8enQ8+EV5YkeZroTSaEp8pIeIaFKk430/4wcO/kg9qdi97ExdebX+zw
	9cNYKPOo7
X-Received: by 2002:a05:600c:5246:b0:4a2:14af:1ead with SMTP id 5b1f17b1804b1-4a9676d1514mr113081845e9.25.1793268408743;
        Thu, 29 Oct 2026 03:06:48 -0700 (PDT)
Received: from [127.0.1.1] (ip092042140082.rev.nessus.at. [92.42.140.82])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4aa7fdb7691sm53082825e9.11.2026.10.29.03.06.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Oct 2026 03:06:48 -0700 (PDT)
From: Jakob Unterwurzacher <jakobunt@gmail.com>
Date: Thu, 29 Oct 2026 11:06:23 +0100
Subject: [PATCH 1/4] Input: rk805-pwrkey - enable the wakeup interrupt
 during system suspend
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-1-cb12621c1fb4@cherry.de>
References: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-0-cb12621c1fb4@cherry.de>
In-Reply-To: <20261029-dev-tiger-v7-4-pre-20261028-tiger-suspend-b4-v1-0-cb12621c1fb4@cherry.de>
To: Dmitry Torokhov <dmitry.torokhov@gmail.com>, 
 Joseph Chen <chenjh@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Sebastian Reichel <sebastian.reichel@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-input@vger.kernel.org, mfd@lists.linux.dev, 
 devicetree@vger.kernel.org, 
 Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>
X-Mailer: b4 0.16.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793268406; l=3230;
 i=jakob.unterwurzacher@cherry.de; s=20261029; h=from:subject:message-id;
 bh=3qBapWKlE9gnNc1OkRIJoQ7rj2z5kJO1plv4vMvRaIE=;
 b=Gax9ATA7YcEykEZRoU8HuTbsJxxf2tMvfTF8fzq4d1vXJVAPuOzgirPI7o+V26V3EhSkl5nP5
 acS+c8VRtbJBrDNorA6RDsnaahLsnJ730MdZY7glDerfZxdequzJfBG
X-Developer-Key: i=jakob.unterwurzacher@cherry.de; a=ed25519;
 pk=0v1L7pjG4d7PcaYPMOmzP4SjaRtnB+8bMzZLZCRzB8I=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261029_030651_485873_0BD745D3 
X-CRM114-Status: GOOD (  21.37  )
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
X-Spam-Status: No, score=-8.8 required=3.0 tests=BAYES_00,DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Jakob Unterwurzacher <jakob.unterwurzacher@cherry.de>

The driver marks the device as wakeup capable, but never enables the
power key interrupt as a wakeup interrupt. As a consequence, the PMIC
interrupt line is masked during system suspend and the power key cannot
wake up the system, e.g. from suspend-to-ram on RK3588 with an RK806.

Enable the interrupt as wakeup interrupt in the suspend callback if the
device may wake up the system, and disable it again on resume.

This is done in the regular suspend phase on purpose, rather than with
dev_pm_set_wake_irq(), which arms the wakeup in the noirq phase: there,
enabling it updates the PMIC's interrupt registers through regmap-irq,
which fails when the PMIC is connected via SPI:

  spi_master spi2: Failed to power device: -13
  rk8xx-spi spi2.0: Failed to sync masks in 7a

Fixes: 5a35b85c2d92 ("Input: add power key driver for Rockchip RK805 PMIC")
---
 drivers/input/misc/rk805-pwrkey.c | 42 ++++++++++++++++++++++++++++++++++++++-
 1 file changed, 41 insertions(+), 1 deletion(-)

diff --git a/drivers/input/misc/rk805-pwrkey.c b/drivers/input/misc/rk805-pwrkey.c
index 76873aa005b41..9b64ec7463c62 100644
--- a/drivers/input/misc/rk805-pwrkey.c
+++ b/drivers/input/misc/rk805-pwrkey.c
@@ -15,6 +15,10 @@
 #include <linux/module.h>
 #include <linux/platform_device.h>
 
+struct rk805_pwrkey {
+	int irq;
+};
+
 static irqreturn_t pwrkey_fall_irq(int irq, void *_pwr)
 {
 	struct input_dev *pwr = _pwr;
@@ -37,10 +41,15 @@ static irqreturn_t pwrkey_rise_irq(int irq, void *_pwr)
 
 static int rk805_pwrkey_probe(struct platform_device *pdev)
 {
+	struct rk805_pwrkey *priv;
 	struct input_dev *pwr;
 	int fall_irq, rise_irq;
 	int err;
 
+	priv = devm_kzalloc(&pdev->dev, sizeof(*priv), GFP_KERNEL);
+	if (!priv)
+		return -ENOMEM;
+
 	pwr = devm_input_allocate_device(&pdev->dev);
 	if (!pwr) {
 		dev_err(&pdev->dev, "Can't allocate power button\n");
@@ -84,16 +93,47 @@ static int rk805_pwrkey_probe(struct platform_device *pdev)
 		return err;
 	}
 
-	platform_set_drvdata(pdev, pwr);
+	priv->irq = fall_irq;
+	platform_set_drvdata(pdev, priv);
 	device_init_wakeup(&pdev->dev, true);
 
 	return 0;
 }
 
+/*
+ * Arm the wakeup in the regular suspend phase rather than with
+ * dev_pm_set_wake_irq(), which does it in the noirq phase: enabling the
+ * wakeup updates the PMIC's interrupt registers, which is no longer
+ * possible once the bus to the PMIC (e.g. SPI on RK806) is suspended.
+ */
+static int rk805_pwrkey_suspend(struct device *dev)
+{
+	struct rk805_pwrkey *priv = dev_get_drvdata(dev);
+
+	if (device_may_wakeup(dev))
+		enable_irq_wake(priv->irq);
+
+	return 0;
+}
+
+static int rk805_pwrkey_resume(struct device *dev)
+{
+	struct rk805_pwrkey *priv = dev_get_drvdata(dev);
+
+	if (device_may_wakeup(dev))
+		disable_irq_wake(priv->irq);
+
+	return 0;
+}
+
+static DEFINE_SIMPLE_DEV_PM_OPS(rk805_pwrkey_pm_ops, rk805_pwrkey_suspend,
+				rk805_pwrkey_resume);
+
 static struct platform_driver rk805_pwrkey_driver = {
 	.probe	= rk805_pwrkey_probe,
 	.driver	= {
 		.name = "rk805-pwrkey",
+		.pm = pm_sleep_ptr(&rk805_pwrkey_pm_ops),
 	},
 };
 module_platform_driver(rk805_pwrkey_driver);

-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
