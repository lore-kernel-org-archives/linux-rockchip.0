Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EA334C4332F
	for <linux-rockchip@archiver.kernel.org>; Sat, 26 Feb 2022 18:43:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/HaQ1R3GOdWuSyEmPGvuzvZX2QJPA4QL2IbtWLWAdNE=; b=S3htvW/WR1q41q
	VxKfF05IZcLDlvbjv/hDJNkaUUVsJDAcd+sESH1/JVteZu87Ihk303PLFIb6zCyIkAFwGe6Q6iDzw
	EEqQ0VqpNpLZvITZcwGLcmSU728l4M1eaD9vIzFHY+pw01w7Q75iM/FEqZkpsRnHUJtzwLvfYowXS
	8e31QaG3FqrycCAdpVp0oioD2OUe12cXOuF+MBZI/sUlJlqNM7NaWbyhcpHpAWF0D+LPwjWmC9CrV
	ccVsk5g5benQq0nZZMJlYM5v19EKVEsf/9NNfDuGgPbJ8IXKPDPhIrTY+aSO3+2O77B+z0+JgnUuY
	2euqI7jjzenEiTN3dnxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nO22C-008Nod-Pa; Sat, 26 Feb 2022 18:43:12 +0000
Received: from mail-qk1-x733.google.com ([2607:f8b0:4864:20::733])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nO214-008NB8-Cu
 for linux-rockchip@lists.infradead.org; Sat, 26 Feb 2022 18:42:03 +0000
Received: by mail-qk1-x733.google.com with SMTP id z66so7275561qke.10
 for <linux-rockchip@lists.infradead.org>; Sat, 26 Feb 2022 10:42:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=im3jhqbRxcVhFb0LH+3d/Ku9WkG9V/8mj+qtSjXi2MQ=;
 b=Ghkzii35oEk0YNg6aKLT06vzZxLa3oWyc8XXhLkK50PQvvtyAZ44Poo+pCTWs3/FYP
 VG+UdXBgWy6ag7Cfs2cHJ0bPZPm7x1GsCwp4nKcdnGWpg1BgbTOaLovYZ+NolLFzqtLH
 FaOGERTBPDxNQUb/av0MME2hS8Pm4u+1wZ/D424jQg48qq0oDYa0kBkPxZXYvXvCF6nj
 +zdA2CNMTMbwApgREqeBE3u1+7SK5A3YnjIUTZw45LSTTQhkMe7NV78iTUoXMmUQrZvt
 3d+ZfhmhaqTsIo87prgrjpxnO2V3xRAthKeTnexl4kvWUaELlz8MDh8CuRkMDYRIPle9
 KiRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=im3jhqbRxcVhFb0LH+3d/Ku9WkG9V/8mj+qtSjXi2MQ=;
 b=CYJQh9aLNzR6+/FjL3Gwl5LuZ2gUzGCVCPl0wVsE7YVT84c9GmgKBR82nhc2fo9hhW
 5K19c5HoBqPLyUU2rROXIhI7HCj1V2ljq2CtEchpvW5OgyfvlmhNiCiG6T09uyvsF49v
 q9hzuT/+tj0cGZ1wCK6hSrLtwWdKITHEhpL5bPQAqmLVfhuS609YGvVo4dbPkY9sdQhs
 nRtoDJvuAxZEXcSYleltGh5dRLyZLrVDy1qGe9e/KynvKr6sMgvvhsA2VGEE1IwFhCtX
 c7sFh7PU9ajAzWcX2wyqXBicry9v7p94mBMpDRtC7ksFHpQ3+p0FkyLbyXtXv3FnFFsF
 RXZQ==
X-Gm-Message-State: AOAM530Cwg69B9YnSMK5UfYb7kP2blb4GKsX9VG0MIOr/1STajNZXwdq
 Z8cf/joWH2B/I4Pfx0X8oZg=
X-Google-Smtp-Source: ABdhPJym8DP8QPfFSS/2U7TpSb8ylxzl1V/5tXc7tQFPh+tZlC8Q//yyix0ycdxzLkpBzfZ7lwweGQ==
X-Received: by 2002:a37:e213:0:b0:5f1:8911:855e with SMTP id
 g19-20020a37e213000000b005f18911855emr7748469qki.174.1645900921264; 
 Sat, 26 Feb 2022 10:42:01 -0800 (PST)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
 by smtp.gmail.com with ESMTPSA id
 p68-20020a378d47000000b006491d2d1450sm2891983qkd.10.2022.02.26.10.42.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 26 Feb 2022 10:42:01 -0800 (PST)
From: Peter Geis <pgwipeout@gmail.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-rockchip@lists.infradead.org, heiko@sntech.de,
 michael.riesch@wolfvision.net, Peter Geis <pgwipeout@gmail.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 07/11] usb: dwc3: convert dwc3-of-simple to use match-data
Date: Sat, 26 Feb 2022 13:41:43 -0500
Message-Id: <20220226184147.769964-8-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220226184147.769964-1-pgwipeout@gmail.com>
References: <20220226184147.769964-1-pgwipeout@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220226_104202_466991_0A55B73A 
X-CRM114-Status: GOOD (  14.63  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms
 <linux-rockchip.lists.infradead.org>
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

The upcoming support for rk3568 will reuse data from rk3399.
Instead of adding a bunch of of_device_is_compatible as we add support
for new devices, lets get ahead of the problem and use of_match_data
instead.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 39 ++++++++++++++++++++++++-------
 1 file changed, 30 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index 9dc6295df6b1..57ba9427ad74 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -30,12 +30,16 @@ struct dwc3_of_simple {
 	bool			need_reset;
 };
 
+struct dwc3_of_simple_data {
+	bool			need_reset;
+};
+
 static int dwc3_of_simple_probe(struct platform_device *pdev)
 {
 	struct dwc3_of_simple	*simple;
 	struct device		*dev = &pdev->dev;
 	struct device_node	*np = dev->of_node;
-
+	const struct dwc3_of_simple_data *data = of_device_get_match_data(dev);
 	int			ret;
 
 	simple = devm_kzalloc(dev, sizeof(*simple), GFP_KERNEL);
@@ -49,8 +53,8 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 	 * Some controllers need to toggle the usb3-otg reset before trying to
 	 * initialize the PHY, otherwise the PHY times out.
 	 */
-	if (of_device_is_compatible(np, "rockchip,rk3399-dwc3"))
-		simple->need_reset = true;
+	if (data->need_reset)
+		simple->need_reset = data->need_reset;
 
 	simple->resets = of_reset_control_array_get(np, false, true,
 						    true);
@@ -170,13 +174,30 @@ static const struct dev_pm_ops dwc3_of_simple_dev_pm_ops = {
 			dwc3_of_simple_runtime_resume, NULL)
 };
 
+static const struct dwc3_of_simple_data dwc3_of_simple_data_rk3399 = {
+	.need_reset = true,
+};
+
 static const struct of_device_id of_dwc3_simple_match[] = {
-	{ .compatible = "allwinner,sun50i-h6-dwc3" },
-	{ .compatible = "cavium,octeon-7130-usb-uctl" },
-	{ .compatible = "hisilicon,hi3670-dwc3" },
-	{ .compatible = "intel,keembay-dwc3" },
-	{ .compatible = "rockchip,rk3399-dwc3" },
-	{ .compatible = "sprd,sc9860-dwc3" },
+	{
+		.compatible = "allwinner,sun50i-h6-dwc3",
+	},
+	{
+		.compatible = "cavium,octeon-7130-usb-uctl",
+	},
+	{
+		.compatible = "hisilicon,hi3670-dwc3",
+	},
+	{
+		.compatible = "intel,keembay-dwc3",
+	},
+	{
+		.compatible = "rockchip,rk3399-dwc3",
+		.data = &dwc3_of_simple_data_rk3399,
+	},
+	{
+		.compatible = "sprd,sc9860-dwc3",
+	},
 	{ /* Sentinel */ }
 };
 MODULE_DEVICE_TABLE(of, of_dwc3_simple_match);
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
