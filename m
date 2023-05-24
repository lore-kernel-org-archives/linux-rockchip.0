Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 42320C77B7C
	for <linux-rockchip@archiver.kernel.org>; Wed, 24 May 2023 08:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QC8ln6kYMSRZQvnlNq6Y9GhdidDM1z+zhPph+lNG8Fg=; b=PoBpn6OIED0odW
	bnNedzco8KYSfHktNuOQlu02XwP7kk+EMIyPf9QNUmeAlqpSgnJCpj3NS5uPe2grzCVE5tvhhi9qX
	hg9qfvZqWHmNFYHpKk8epDuwduuuIQdYcxpQKMLD9CVMMPIxiN5nOd60zo6LYRIPfTYF3kqsWZLWq
	Q7RdUhBuf37h07HoNWo7UnUzIFK9rmokqBOQju3MuDlBMm0Y38stN5A4vJb2B8x9mAtaHQSSCqSqf
	AO42o1UkjpkVHEDt+le2PIue5qFqsHNKmZv/M2ZE1Dy1vamf49Y7mAgA9x2A6wlYgU/DhgPU1duXU
	tnzSVo7Qo6SoSgCC6vuQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jws-00Cnvw-05;
	Wed, 24 May 2023 08:34:22 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1jwp-00CntU-2W
	for linux-rockchip@bombadil.infradead.org;
	Wed, 24 May 2023 08:34:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=zgSJctKUSJPYDf7hpcuHR32I1vYNeQ6pL3uzJBbba7U=; b=hzbOnsCm4gsn4dvtEe0op33eAw
	zEFsffSZKe3aXexQqmjO88WgZgv2DS7859nd7XUme+BXvVXcw4YbT1CuAsfUR77qqCwIQZmv/fhTM
	8syX1kK5IbQ59gFxjXkQ3z8lTBHBrKpYqqTCPlgJE8Fn0XhCWgHiZXWRF8Km89L+Q0/ssOSSluR18
	GHXKsdk+vxQi7zDHP6FQmy6aNaJg+AgP+gK+tPbHd2EZFaxnwSVRG568+F1kU/q8R8J6HMubc9YdS
	b+1Tb1oH/0DLCKb11sCn1G/dHnev2cx67rXGPab2ozbXJmWI9aWYpeLPtfiFRCX4KqcXxKfx73H2s
	brpHPBhQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1juk-004wTp-0I
	for linux-rockchip@lists.infradead.org;
	Wed, 24 May 2023 08:34:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q1jua-0002l8-Jw; Wed, 24 May 2023 10:32:00 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juW-002RZA-L3; Wed, 24 May 2023 10:31:56 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q1juV-009j1E-T7; Wed, 24 May 2023 10:31:55 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org,
	Heiko Stuebner <heiko@sntech.de>,
	Kyungmin Park <kyungmin.park@samsung.com>,
	MyungJoo Ham <myungjoo.ham@samsung.com>,
	Will Deacon <will@kernel.org>,
	Mark Rutland <mark.rutland@arm.com>,
	kernel@pengutronix.de,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Robin Murphy <robin.murphy@arm.com>,
	Vincent Legoll <vincent.legoll@gmail.com>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Jonathan Cameron <Jonathan.Cameron@huawei.com>
Subject: [PATCH v5 02/25] PM / devfreq: rockchip-dfi: Embed desc into private data struct
Date: Wed, 24 May 2023 10:31:30 +0200
Message-Id: <20230524083153.2046084-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230524083153.2046084-1-s.hauer@pengutronix.de>
References: <20230524083153.2046084-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-rockchip@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_093411_047562_13320088 
X-CRM114-Status: GOOD (  14.45  )
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

No need for an extra allocation, just embed the struct
devfreq_event_desc into the private data struct.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reviewed-by: Heiko Stuebner <heiko@sntech.de>
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>
---
 drivers/devfreq/event/rockchip-dfi.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/devfreq/event/rockchip-dfi.c b/drivers/devfreq/event/rockchip-dfi.c
index 74893c06aa087..467f9f42d38f7 100644
--- a/drivers/devfreq/event/rockchip-dfi.c
+++ b/drivers/devfreq/event/rockchip-dfi.c
@@ -49,7 +49,7 @@ struct dmc_usage {
  */
 struct rockchip_dfi {
 	struct devfreq_event_dev *edev;
-	struct devfreq_event_desc *desc;
+	struct devfreq_event_desc desc;
 	struct dmc_usage ch_usage[RK3399_DMC_NUM_CH];
 	struct device *dev;
 	void __iomem *regs;
@@ -204,14 +204,10 @@ static int rockchip_dfi_probe(struct platform_device *pdev)
 
 	data->dev = dev;
 
-	desc = devm_kzalloc(dev, sizeof(*desc), GFP_KERNEL);
-	if (!desc)
-		return -ENOMEM;
-
+	desc = &data->desc;
 	desc->ops = &rockchip_dfi_ops;
 	desc->driver_data = data;
 	desc->name = np->name;
-	data->desc = desc;
 
 	data->edev = devm_devfreq_event_add_edev(&pdev->dev, desc);
 	if (IS_ERR(data->edev)) {
-- 
2.39.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
