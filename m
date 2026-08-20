Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77EDAC5DF81
	for <linux-rockchip@archiver.kernel.org>; Thu, 20 Aug 2026 09:15:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=WLs1ipXg8AJX7E/PmzSfdr1nj3rsL5vOMIOqTMeGnnY=; b=4QZfdg32oEwMK+
	3x2BUjSgETN4Br/6dMW/Nv1EFaHv1f2OiTDIhEChGOOyAzluy1XvdgtcfzAD6dxduSxxiudJhxrHO
	W66+mnp7j0Xptoz2mOrEUvES+HMjb9XuDH+8ZYyuvjwjNbnWgNEPS0KNQcpX94w96gZUZxtLXZoVh
	gE6kSPaQvDtsStvJUI5V1eo18hZj28rDgnXGhBJOxA8B4r7pQoTw74gV3qVIXN1tftp9JxRUWY9tO
	zuoPOGb+vUtgkdR6lio4nlpHpYTWprG9zDCWCubPKK7tOPnGiuwt+wCDMmItMmxFj4BpYZ0OMvo3g
	kqj2x/RKvYzLNLt3C5sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwys4-0000000BEa4-1ldb;
	Thu, 20 Aug 2026 09:15:36 +0000
Received: from mail-pz2-x00.google.com ([2607:f8b0:4864:3b::])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wwys1-0000000BEZ8-1jYp
	for linux-rockchip@lists.infradead.org;
	Thu, 20 Aug 2026 09:15:35 +0000
Received: by mail-pz2-x00.google.com with SMTP id 41be03b00d2f7-c96739a46acso1035297a12.1
        for <linux-rockchip@lists.infradead.org>; Thu, 20 Aug 2026 02:15:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787217332; x=1787822132; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=Y1kOOBqdadqKd7sMsBzk2riCQDzvapQr8MFQipboziI=;
        b=nqh8nZlUQQzDcNGpSBW4REpEaP4uEbYjpzW2RqKVv86sAKJyZurPnx9AslH/PcyCzS
         aRXNU9HNyv2SmulT+7GR+CoeuEfl04PxvBOodIZg/8blhux9rPE9AlPczqbVS2WmZpFY
         zOAo6fukSrRasRsVrEZvkMvRvPXXUhI47K9AjxhZdXP5hNQ0zE0pPMZR5QmlPJ6Q/eZc
         x0ahfA9xBqHZS8jytDEPJ6XIly3yoLlueV4mnrS2nqutsFQRyEHzmcx8wYu1rPyl3AaE
         KY/+I7MrNwE3i1rv3dDaHSYnDGu2JiJwv6P8kAUQZU39MVQapi9cbVw1Gn5/Mpu85+iK
         +dBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787217332; x=1787822132;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=Y1kOOBqdadqKd7sMsBzk2riCQDzvapQr8MFQipboziI=;
        b=UGY3z8gafMgZbaQss0CXIlznkeiGbdQSTZgA9RZgjrPgxFv8A0GwJISd8AbYNvpw7e
         DW8Cez2xSwzsvVEGp7jczh52Lw2FleJiRDLxeWVjLZb2FaRdSryiyrEEbDjgt+s4xRJ8
         1g0tRSluwt8Qt0DK+fRTainUB6ozaCh3e533SUp0Rjd6TOs7xg1RnVJ9LmWuPkO5J3zG
         4GXHjyF3vvI9ez1sZgwpCbpDnGeSMRjjXxrUXQ3fGUQgf2XutEtu9zog8uCxsBHq95lu
         9gfKw+0odc0C8ZKl4+66QOLz4RvtS8JXxhTzHWgiM81qweVjgrxyfr+y2d1UAl1bd1et
         FfmA==
X-Forwarded-Encrypted: i=1; AHgh+RobPZpox2RjPJHw2HpcJOT/g4oBKgjs9hw+pGtldZDR6ePzuLiZR9O5MP1fbEXoC9cQDOgQGLif9dhsfDOPyA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yy86Ny4WywVrC1w6+VRbBmM93ub4IXYeSqskS82n/B9s5+3I6hB
	+eWKguX82SWzRJdWZfm+9Z3rwyaHD3nli3FV2qXap5IFOE0v0SnQuHY=
X-Gm-Gg: AR+sD10HYBpY0Yt3M6db0L2Nc2eOvFiyy2K33xOXJLxYCIiI7blbgPCsixcpNrgNJ5U
	ZLFbEixNKmH3ArXod6EdCbjH7NHARbXfYFg/ET6MFPqp0hy1Dkg7Tr1IKZ9M0dwO+5io7NDdQmm
	eq28+SzAsTHyfOLI4Bo5Ntr6r9Gf94j3MvvK6s0AiA+9sCMqzCZf+Ogy9lirbQtWNsASKevFsjm
	TPBv6G7mtCa1hOuSRUbUX+z2gj7Avg9Qr5KSFRc3LjUqyP4uUjiGnQ057jxEN83yrUhNEU8O+mh
	faHNmUhfWUPjvL3TUwhdEUee8cCYPhx4sxLTuuoCo37KHjncj0/8qnZGfZNC4NZU/1QH1198biB
	JkgnsYzCkCOxHSLFnZFCUDMuYbCTvYak5JnBMMj+SFV+QqdUJSdny1hhAasFStyC+QRYE4Shrrd
	2FhNkNBMDGGY97U2rn/h2Maa+BaLdStZLhlQffUFRZZ8h8rqO0jvcFqACHZs4l+WpYrsV9eve7L
	w==
X-Received: by 2002:a05:6a00:2305:b0:84f:dc19:b77d with SMTP id d2e1a72fcca58-851d3953250mr18184469b3a.12.1787217332306;
        Thu, 20 Aug 2026 02:15:32 -0700 (PDT)
Received: from DL2XHKPB4.dl.net ([103.63.104.162])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-851d3617434sm1431016b3a.29.2026.08.20.02.15.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Aug 2026 02:15:31 -0700 (PDT)
From: Triet Hoang <triet.hoang.dev@gmail.com>
To: andi.shyti@kernel.org
Cc: chris.packham@alliedtelesis.co.nz,
	heiko@sntech.de,
	linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Triet Hoang <triet.hoang.dev@gmail.com>
Subject: [PATCH] i2c: busses: Convert to DEFINE_SIMPLE_DEV_PM_OPS()
Date: Thu, 20 Aug 2026 16:15:27 +0700
Message-ID: <20260820091527.2118302-1-triet.hoang.dev@gmail.com>
X-Mailer: git-send-email 2.53.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260820_021533_457842_B231FBF0 
X-CRM114-Status: GOOD (  12.59  )
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

Convert the deprecated SIMPLE_DEV_PM_OPS
to DEFINE_SIMPLE_DEV_PM_OPS and pm_sleep_ptr().

This lets us drop the __maybe_unused annotations from its suspend and
resume callbacks, and reduces kernel size in case CONFIG_PM or
CONFIG_PM_SLEEP is disabled.

Signed-off-by: Triet Hoang <triet.hoang.dev@gmail.com>
---
 drivers/i2c/busses/i2c-eg20t.c | 8 ++++----
 drivers/i2c/busses/i2c-mpc.c   | 8 ++++----
 drivers/i2c/busses/i2c-rk3x.c  | 6 +++---
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/i2c/busses/i2c-eg20t.c b/drivers/i2c/busses/i2c-eg20t.c
index 8c67ab4f2aad..405229cf8f1d 100644
--- a/drivers/i2c/busses/i2c-eg20t.c
+++ b/drivers/i2c/busses/i2c-eg20t.c
@@ -829,7 +829,7 @@ static void pch_i2c_remove(struct pci_dev *pdev)
 	kfree(adap_info);
 }
 
-static int __maybe_unused pch_i2c_suspend(struct device *dev)
+static int pch_i2c_suspend(struct device *dev)
 {
 	int i;
 	struct pci_dev *pdev = to_pci_dev(dev);
@@ -857,7 +857,7 @@ static int __maybe_unused pch_i2c_suspend(struct device *dev)
 	return 0;
 }
 
-static int __maybe_unused pch_i2c_resume(struct device *dev)
+static int pch_i2c_resume(struct device *dev)
 {
 	int i;
 	struct adapter_info *adap_info = dev_get_drvdata(dev);
@@ -870,14 +870,14 @@ static int __maybe_unused pch_i2c_resume(struct device *dev)
 	return 0;
 }
 
-static SIMPLE_DEV_PM_OPS(pch_i2c_pm_ops, pch_i2c_suspend, pch_i2c_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(pch_i2c_pm_ops, pch_i2c_suspend, pch_i2c_resume);
 
 static struct pci_driver pch_pcidriver = {
 	.name = KBUILD_MODNAME,
 	.id_table = pch_pcidev_id,
 	.probe = pch_i2c_probe,
 	.remove = pch_i2c_remove,
-	.driver.pm = &pch_i2c_pm_ops,
+	.driver.pm = pm_sleep_ptr(&pch_i2c_pm_ops),
 };
 
 module_pci_driver(pch_pcidriver);
diff --git a/drivers/i2c/busses/i2c-mpc.c b/drivers/i2c/busses/i2c-mpc.c
index a21fa45bd64c..fc7bc0ddbeee 100644
--- a/drivers/i2c/busses/i2c-mpc.c
+++ b/drivers/i2c/busses/i2c-mpc.c
@@ -880,7 +880,7 @@ static void fsl_i2c_remove(struct platform_device *op)
 	i2c_del_adapter(&i2c->adap);
 };
 
-static int __maybe_unused mpc_i2c_suspend(struct device *dev)
+static int mpc_i2c_suspend(struct device *dev)
 {
 	struct mpc_i2c *i2c = dev_get_drvdata(dev);
 
@@ -890,7 +890,7 @@ static int __maybe_unused mpc_i2c_suspend(struct device *dev)
 	return 0;
 }
 
-static int __maybe_unused mpc_i2c_resume(struct device *dev)
+static int mpc_i2c_resume(struct device *dev)
 {
 	struct mpc_i2c *i2c = dev_get_drvdata(dev);
 
@@ -899,7 +899,7 @@ static int __maybe_unused mpc_i2c_resume(struct device *dev)
 
 	return 0;
 }
-static SIMPLE_DEV_PM_OPS(mpc_i2c_pm_ops, mpc_i2c_suspend, mpc_i2c_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(mpc_i2c_pm_ops, mpc_i2c_suspend, mpc_i2c_resume);
 
 static const struct mpc_i2c_data mpc_i2c_data_512x = {
 	.setup = mpc_i2c_setup_512x,
@@ -942,7 +942,7 @@ static struct platform_driver mpc_i2c_driver = {
 	.driver = {
 		.name = "mpc-i2c",
 		.of_match_table = mpc_i2c_of_match,
-		.pm = &mpc_i2c_pm_ops,
+		.pm = pm_sleep_ptr(&mpc_i2c_pm_ops),
 	},
 };
 
diff --git a/drivers/i2c/busses/i2c-rk3x.c b/drivers/i2c/busses/i2c-rk3x.c
index fcede9f6ed54..878bf42c4d73 100644
--- a/drivers/i2c/busses/i2c-rk3x.c
+++ b/drivers/i2c/busses/i2c-rk3x.c
@@ -1145,7 +1145,7 @@ static int rk3x_i2c_xfer_polling(struct i2c_adapter *adap,
 	return rk3x_i2c_xfer_common(adap, msgs, num, true);
 }
 
-static __maybe_unused int rk3x_i2c_resume(struct device *dev)
+static int rk3x_i2c_resume(struct device *dev)
 {
 	struct rk3x_i2c *i2c = dev_get_drvdata(dev);
 
@@ -1394,7 +1394,7 @@ static void rk3x_i2c_remove(struct platform_device *pdev)
 	clk_unprepare(i2c->clk);
 }
 
-static SIMPLE_DEV_PM_OPS(rk3x_i2c_pm_ops, NULL, rk3x_i2c_resume);
+static DEFINE_SIMPLE_DEV_PM_OPS(rk3x_i2c_pm_ops, NULL, rk3x_i2c_resume);
 
 static struct platform_driver rk3x_i2c_driver = {
 	.probe   = rk3x_i2c_probe,
@@ -1402,7 +1402,7 @@ static struct platform_driver rk3x_i2c_driver = {
 	.driver  = {
 		.name  = "rk3x-i2c",
 		.of_match_table = rk3x_i2c_match,
-		.pm = &rk3x_i2c_pm_ops,
+		.pm = pm_sleep_ptr(&rk3x_i2c_pm_ops),
 	},
 };
 
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
