Return-Path: <SRS0=fMZx=HL=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4B2A0C433E0
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:14 +0000 (UTC)
Received: from merlin.infradead.org (merlin.infradead.org [205.233.59.134])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id C98FC64EB4
	for <linux-rockchip@archiver.kernel.org>; Tue,  9 Feb 2021 19:24:13 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org C98FC64EB4
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fBtGb353wbEji6pfvTcFJl93KLHw+8VXApNngGPazoU=; b=j5/OSBtA2rgkzWYR3wJBZTbe/G
	ZBAUkHYMt0znjZrM7AC5DCWRpKtYlMdIiic+tELBxlBvflLJ+jyvbHWkWYM63TrL99Nvar+Y5PLOX
	tsws7G382UKUcsXXlmJo2xpBinBW7EieF9HCzQMKSwCzIa+IJgkecHDaM6vOzFfvmT8KmrP4Q8RSZ
	41eMBa+PLnX8xh/AbRzg13SsqQXe5M6UFdujG3YGh51XrjRQgbQqCjYuWi2lZg1CIeyF0fmzLJ24V
	duU5vUoZFm4VB8acAAmjvkkMCnXSLey/4C+wGa9EqsieQUaIyO1tTf40exMR9sGvlj3YzbzSjpIHz
	cDa2vTIA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1l9YcH-0004tB-Co; Tue, 09 Feb 2021 19:24:05 +0000
Received: from mail-ed1-x529.google.com ([2a00:1450:4864:20::529])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1l9YcE-0004rR-SI; Tue, 09 Feb 2021 19:24:03 +0000
Received: by mail-ed1-x529.google.com with SMTP id q2so22240355eds.11;
 Tue, 09 Feb 2021 11:24:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=pyReI/BEuC4BzvSRo5mXE3P7CpFBNp0uOKqtRDtZmz0=;
 b=YJPjb0dS96lYDOexjOydBEkgbTkDbxwnkeUSHVABRARJeOksmXglyDYD2RqyVw3O2E
 t+EVY/HYTcyuQPEAkxjsWudzToJR098RylZVaKH1Of8kbjRGDnhUfN64E81gKOABvlTN
 BPs/t2qVYxNAG2t7UXIasMOM9q+jQDV4jJrw72K7hdOKuZAdn7uHWPmj+kh8XogAP30L
 SHqKpYLguNlitYOH2Ih4GBSHsujJDoOn8KvJ19oO+GMVUp5V2bjf6t8a85fd+zJhhlTp
 bMNFWbKlGIOe1EmF9QeWKZXkz1AiCvIGuhtWnq35HOS2ukzxBa+E7DK/Dl2kle/gS8gh
 cVHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=pyReI/BEuC4BzvSRo5mXE3P7CpFBNp0uOKqtRDtZmz0=;
 b=KEwFUiE/h1NYXksLaSioRDwoCK4Qslj23+cYKvMCN/UthutUtVZDr8jsUozruZRXhW
 i9qGUMTuWYXy8nRY77BnaO96kZa/DNGmwjs4Ii9siFQJD4ipEIghenqxbE0NBRrqeN5T
 x1f3Wd9xWuSrmBUCuCtB6d3pbMqQdyv5xqcusJU0+/BL74lwPSSKDSNBFf/+uyUXe1O5
 OzITRp9aTG+JbR1xFDiw1IBl7/LvJT1GsQr9JFbLc9Qm/XSI5ec5uVjejAqhWZ/AeBLJ
 Pi71LLwYrfo7ze601kMzmzGiYE2ItwnUE6fP7sBjRqOwuBwWcLfBQS5bOi1Xh3IwK1oQ
 tNgg==
X-Gm-Message-State: AOAM530f7dy2V6PC8BOU5f9pED4F89odOhnQSMKKyhNs0LkG8dDrv7Yy
 6hmq0Uu/uV72GMzarfuj4Xo=
X-Google-Smtp-Source: ABdhPJz+bOuBJ3/9q6WA9aKGxDaFG4ToV8V9ky4ts+krOYiuFJikzdaJMlOuwtuQTxx8Th0zBx7T9A==
X-Received: by 2002:a05:6402:104b:: with SMTP id
 e11mr22202102edu.367.1612898639910; 
 Tue, 09 Feb 2021 11:23:59 -0800 (PST)
Received: from debian.home (81-204-249-205.fixed.kpn.net. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id w3sm11075779eja.52.2021.02.09.11.23.59
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 09 Feb 2021 11:23:59 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH v5 2/8] usb: dwc3: of-simple: bail probe if no dwc3 child node
Date: Tue,  9 Feb 2021 20:23:44 +0100
Message-Id: <20210209192350.7130-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20210209192350.7130-1-jbx6244@gmail.com>
References: <20210209192350.7130-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210209_142402_926690_E1DA0003 
X-CRM114-Status: GOOD (  14.45  )
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.29
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
Cc: devicetree@vger.kernel.org, balbi@kernel.org, gregkh@linuxfoundation.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

For some of the dwc3-of-simple compatible SoCs we
don't want to bind this driver to a dwc3 node,
but bind that node to the 'snps,dwc3' driver instead.
The kernel has no logic to decide which driver to bind
to if there are 2 matching drivers, so bail probe if no
dwc3 child node.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 drivers/usb/dwc3/dwc3-of-simple.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-of-simple.c b/drivers/usb/dwc3/dwc3-of-simple.c
index e62ecd22b..347b4d384 100644
--- a/drivers/usb/dwc3/dwc3-of-simple.c
+++ b/drivers/usb/dwc3/dwc3-of-simple.c
@@ -38,6 +38,10 @@ static int dwc3_of_simple_probe(struct platform_device *pdev)
 
 	int			ret;
 
+	/* Bail probe if no dwc3 child node. */
+	if (!of_get_compatible_child(dev->of_node, "snps,dwc3"))
+		return -ENODEV;
+
 	simple = devm_kzalloc(dev, sizeof(*simple), GFP_KERNEL);
 	if (!simple)
 		return -ENOMEM;
-- 
2.11.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
