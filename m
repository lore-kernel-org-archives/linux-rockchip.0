Return-Path: <SRS0=Jt5i=NB=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.5 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 390F8C4338F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Aug 2021 01:10:52 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 78E5360F8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Aug 2021 01:10:51 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 78E5360F8F
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qHhSp5fs08PAwAqQaRcP3n2vn0BQIK7h67WJBPh5YBA=; b=0aIUR2RZQ44Shz
	OZh4PtiUe+eiUBisLRc3Mj++AGVTFx8/rC/UR/Irle0KpMcv9bVtTd0l/76/MrM0uZCcTZlUTE59E
	LGVU3d9ocm7+BK50hs8zR8Nn8ogd3nUrCiVci1i9hOmdrgCSEAZ6ya0yeBWzo/ksgzJX62WdXPOgb
	Ajo46yekZCczv8e5b/JlSz8DbFYFG6XfUqvFaWeStCNvIrFHX0Ck+wBBweifeT53sJ9DzwVsaN2Pg
	xQMmlr6kxfawmSQ+MKHCXtbR0oYnuSAWb8DoRJp55HrOt769C4tprouFPNC7BeyuDXSZdYq1eXoV6
	JDVMJXE7+kZGhz+EZugA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mDGI0-002CYG-6m; Tue, 10 Aug 2021 01:10:44 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mDGHw-002CXc-BY
 for linux-rockchip@lists.infradead.org; Tue, 10 Aug 2021 01:10:43 +0000
Received: from localhost (unknown [192.168.167.32])
 by lucky1.263xmail.com (Postfix) with ESMTP id 36D7CD6179;
 Tue, 10 Aug 2021 09:10:33 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P49146T140469470209792S1628557815809840_; 
 Tue, 10 Aug 2021 09:10:19 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <edc5533435c7c5301041dd3fb0d9e71b>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: jic23@kernel.org
X-RCPT-COUNT: 11
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Simon Xue <xxm@rock-chips.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 David Wu <david.wu@rock-chips.com>, Simon Xue <xxm@rock-chips.com>
Subject: [PATCH v4] iio: adc: rockchip_saradc: add voltage notifier so get
 referenced voltage once at probe
Date: Tue, 10 Aug 2021 09:10:07 +0800
Message-Id: <20210810011007.54066-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210809_181040_969394_80193A6E 
X-CRM114-Status: GOOD (  15.57  )
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

From: David Wu <david.wu@rock-chips.com>

Add voltage notifier, no need to query regulator voltage for
every saradc read, just get regulator voltage once at probe.

Signed-off-by: David Wu <david.wu@rock-chips.com>
Signed-off-by: Simon Xue <xxm@rock-chips.com>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
---
 drivers/iio/adc/rockchip_saradc.c | 47 ++++++++++++++++++++++++++-----
 1 file changed, 40 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index f3eb8d2e50dc..a237fe469a30 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -49,10 +49,12 @@ struct rockchip_saradc {
 	struct clk		*clk;
 	struct completion	completion;
 	struct regulator	*vref;
+	int			uv_vref;
 	struct reset_control	*reset;
 	const struct rockchip_saradc_data *data;
 	u16			last_val;
 	const struct iio_chan_spec *last_chan;
+	struct notifier_block nb;
 };
 
 static void rockchip_saradc_power_down(struct rockchip_saradc *info)
@@ -105,13 +107,7 @@ static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
 		mutex_unlock(&indio_dev->mlock);
 		return IIO_VAL_INT;
 	case IIO_CHAN_INFO_SCALE:
-		ret = regulator_get_voltage(info->vref);
-		if (ret < 0) {
-			dev_err(&indio_dev->dev, "failed to get voltage\n");
-			return ret;
-		}
-
-		*val = ret / 1000;
+		*val = info->uv_vref / 1000;
 		*val2 = chan->scan_type.realbits;
 		return IIO_VAL_FRACTIONAL_LOG2;
 	default:
@@ -298,6 +294,26 @@ static irqreturn_t rockchip_saradc_trigger_handler(int irq, void *p)
 	return IRQ_HANDLED;
 }
 
+static int rockchip_saradc_volt_notify(struct notifier_block *nb,
+						   unsigned long event,
+						   void *data)
+{
+	struct rockchip_saradc *info =
+			container_of(nb, struct rockchip_saradc, nb);
+
+	if (event & REGULATOR_EVENT_VOLTAGE_CHANGE)
+		info->uv_vref = (unsigned long)data;
+
+	return NOTIFY_OK;
+}
+
+static void rockchip_saradc_regulator_unreg_notifier(void *data)
+{
+	struct rockchip_saradc *info = data;
+
+	regulator_unregister_notifier(info->vref, &info->nb);
+}
+
 static int rockchip_saradc_probe(struct platform_device *pdev)
 {
 	struct rockchip_saradc *info = NULL;
@@ -410,6 +426,12 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	ret = regulator_get_voltage(info->vref);
+	if (ret < 0)
+		return ret;
+
+	info->uv_vref = ret;
+
 	ret = clk_prepare_enable(info->pclk);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "failed to enable pclk\n");
@@ -450,6 +472,17 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 	if (ret)
 		return ret;
 
+	info->nb.notifier_call = rockchip_saradc_volt_notify;
+	ret = regulator_register_notifier(info->vref, &info->nb);
+	if (ret)
+		return ret;
+
+	ret = devm_add_action_or_reset(&pdev->dev,
+				       rockchip_saradc_regulator_unreg_notifier,
+				       info);
+	if (ret)
+		return ret;
+
 	return devm_iio_device_register(&pdev->dev, indio_dev);
 }
 
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
