Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7BD16C7EE2E
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 07:00:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=P97WIP4pmRywxnQI/0Lu6aqvRl7RxIGyngqgBxEiie0=; b=sYxzP/7UV6+zE0
	Zus96OfJQgd2cZRP2RjTY40tp7lEmM69g6LEHgii6i7MSRd7lu3lepFYWsZjWYYnMXjnh/w/qo+sR
	dVkjKgYDlqL7gq/dt8yE8JHWGQ+7OZpOckH941JeScN3LXIhQwFTN6enpPz+CgGb/IxBgGFEWJmIU
	DHfiyLom7JOyXMdzuU0X6DdKiyAT+Gt7nZ5smvhSLOACkiEq7a5qemCnKOXt3Je0Ug5DNn9MyVi3q
	kSbSNXBma0LAj58TeNY/dHbcBjFn2BC0ar/4gNQL7igRmM7SlEg1sFpVwCSjTAfoh6gEvlwiDzi+Q
	S1O7ZV6IRQnxlFxfdEEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q24xd-00Fji8-13;
	Thu, 25 May 2023 07:00:33 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q24xa-00Fjgu-2L
	for linux-rockchip@lists.infradead.org;
	Thu, 25 May 2023 07:00:32 +0000
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-96f50e26b8bso44338666b.2
        for <linux-rockchip@lists.infradead.org>; Thu, 25 May 2023 00:00:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684998028; x=1687590028;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JadIsMTsJ92GVWq2DDb6+uGxVPHVaTT+yhE6DV4FGg8=;
        b=PcF02pS9UagN9j65JNVgpj49EsPnJJeiRr2XIYIragHySmAWbfFlUTGS+VR0j/BkHS
         QOCjQCwzb8uA1lO2p6wR/DRshUJx4exZdhewT3CIjcajrShYMQQsbmjDNWU+myWVAQM9
         KUJQfWbLojJRLAY+KyM6X+ABIj2ylanVkkwjfVnRVaEYUN4EjKXzFeE2w85kZejVP9/M
         0U9J10gZu0Ex9ABbTEd9kQ8uekpfL6O9RpTtsFQ4+KWcZvxLXk+cHZk+IYfdZkYzDC+v
         6ZPDFHAhyQUWZrr5txxxoxDoarkvRAz9crqqmcseAfJr6qo/yPJaQL/k9n1VMqfHHmNC
         /pVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684998028; x=1687590028;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JadIsMTsJ92GVWq2DDb6+uGxVPHVaTT+yhE6DV4FGg8=;
        b=aMrW9GAvCPJemIYF+hGAWNRxFsPEnIrau2HaNQrP4AwEiXtz5yrjRj/UXWHScFc9zK
         WCOxOML8lucUVNcp2iLccBV+S/ZiGWCuyUzMsV8tMJDdqIvqKxUuPeDA1PWIouCsLEbE
         vE5QnB6WE21Qdl2bkL8ViL5gWYhqJoiXSLPuBWgjdUCCGSzWq73zmr8Ez5KY+KGVHUMI
         aohkBpC0ceryzTmpQ+lxWrKgd68tkaB3yanUJ+uI81P88WvbLAYHWPgkEc9xSRKP1M4O
         nMMsfdaClRMrzW6cOJPHD6lyxrStu/cG8ZfnXG0AlFYu+bJkgxb2HKhumsYWmFGOwGc5
         HncQ==
X-Gm-Message-State: AC+VfDxk+BIz/se0yu98AGNtZqBkwNLWsZlAF3G4oIvCbq0lEJsT89K9
	fyw0WjxCYn/G2/tmJ/VyCC4=
X-Google-Smtp-Source: ACHHUZ6ly4kMiHyfuzLJOGx9PXe0SUufmozsiz+WXgYGfTHm0DcucxcZQEEMkd+IOez3iEE2+mu64A==
X-Received: by 2002:a17:906:9c82:b0:94f:1a23:2f1c with SMTP id fj2-20020a1709069c8200b0094f1a232f1cmr729972ejc.50.1684998027690;
        Thu, 25 May 2023 00:00:27 -0700 (PDT)
Received: from computer001049.comelit.it (net-2-40-105-25.cust.vodafonedsl.it. [2.40.105.25])
        by smtp.gmail.com with ESMTPSA id x15-20020a170906148f00b00969f13d886fsm423452ejc.71.2023.05.25.00.00.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 00:00:26 -0700 (PDT)
From: Milo Spadacini <milo.spadacini@gmail.com>
To: heiko@sntech.de,
	lee@kernel.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Milo Spadacini <milo.spadacini@gmail.com>
Subject: [PATCH] driver: mfd: admit rk805 driver registration without interrupt support
Date: Thu, 25 May 2023 09:00:11 +0200
Message-Id: <20230525070011.23761-1-milo.spadacini@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_000030_763416_748E9A74 
X-CRM114-Status: GOOD (  15.94  )
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

rk805 use interrupt only for "rk808-rtc" and "rk805-pwrkey" drivers.
On custom board these drivers could be not used and the irq gpio
could be not connected.
Force the usage of a not used gpio, that could be floating, could cause
spurious interrupt.

Signed-off-by: Milo Spadacini <milo.spadacini@gmail.com>
---
 drivers/mfd/rk808.c | 39 +++++++++++++++++++++++++++------------
 1 file changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index e00da7c7e3b1..ae33be90b312 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -643,6 +643,7 @@ MODULE_DEVICE_TABLE(of, rk808_of_match);
 static int rk808_probe(struct i2c_client *client,
 		       const struct i2c_device_id *id)
 {
+	struct irq_domain * rk808_irq_domain = NULL;
 	struct device_node *np = client->dev.of_node;
 	struct rk808 *rk808;
 	const struct rk808_reg_data *pre_init_reg;
@@ -692,7 +693,11 @@ static int rk808_probe(struct i2c_client *client,
 		pre_init_reg = rk805_pre_init_reg;
 		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
 		cells = rk805s;
-		nr_cells = ARRAY_SIZE(rk805s);
+		if (client->irq)
+			nr_cells = ARRAY_SIZE(rk805s);
+		else
+			nr_cells = ARRAY_SIZE(rk805s) - 2;
+
 		break;
 	case RK808_ID:
 		rk808->regmap_cfg = &rk808_regmap_config;
@@ -734,19 +739,28 @@ static int rk808_probe(struct i2c_client *client,
 		return PTR_ERR(rk808->regmap);
 	}
 
-	if (!client->irq) {
+	if (client->irq) {
+
+		ret = regmap_add_irq_chip(rk808->regmap, client->irq,
+					  IRQF_ONESHOT, -1,
+					  rk808->regmap_irq_chip, &rk808->irq_data);
+		if (ret) {
+			dev_err(&client->dev, "Failed to add irq_chip %d\n", ret);
+			return ret;
+		}
+
+		rk808_irq_domain = regmap_irq_get_domain(rk808->irq_data);
+	}
+	else if (rk808->variant == RK805_ID)
+	{
+		dev_warn(&client->dev, "Skip interrupt support, no core IRQ\n");
+	}
+	else
+	{
 		dev_err(&client->dev, "No interrupt support, no core IRQ\n");
 		return -EINVAL;
 	}
 
-	ret = regmap_add_irq_chip(rk808->regmap, client->irq,
-				  IRQF_ONESHOT, -1,
-				  rk808->regmap_irq_chip, &rk808->irq_data);
-	if (ret) {
-		dev_err(&client->dev, "Failed to add irq_chip %d\n", ret);
-		return ret;
-	}
-
 	for (i = 0; i < nr_pre_init_regs; i++) {
 		ret = regmap_update_bits(rk808->regmap,
 					pre_init_reg[i].addr,
@@ -762,7 +776,7 @@ static int rk808_probe(struct i2c_client *client,
 
 	ret = devm_mfd_add_devices(&client->dev, PLATFORM_DEVID_NONE,
 			      cells, nr_cells, NULL, 0,
-			      regmap_irq_get_domain(rk808->irq_data));
+			      rk808_irq_domain);
 	if (ret) {
 		dev_err(&client->dev, "failed to add MFD devices %d\n", ret);
 		goto err_irq;
@@ -796,7 +810,8 @@ static void rk808_remove(struct i2c_client *client)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(client);
 
-	regmap_del_irq_chip(client->irq, rk808->irq_data);
+	if (client->irq)
+		regmap_del_irq_chip(client->irq, rk808->irq_data);
 
 	/**
 	 * pm_power_off may points to a function from another module.
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
