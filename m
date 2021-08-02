Return-Path: <SRS0=4of/=MZ=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-17.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B33CDC4338F
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Aug 2021 09:10:20 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 558E960F4B
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Aug 2021 09:10:20 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 558E960F4B
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=XfMm0FuvaHbStCKIEHlAE3Zjd5xBKK3ENsTtbYdhhvc=; b=nNF12QbDcrvNjP
	UroBzRFNLW4exKlwLSUN4taiFnJpJeG+FwZ4qBozFkuDpZs1kYo7pWQkE6azypOErZaeDlNkLnACy
	lwGGLKAAXeJ4hjyoKyDVahVilKrRStn6mIiiT7C1afbHw3XjrUXGzJOklkvacd4ke1ctRbZw4jCzy
	QZpgON2GQSFQi+/h8PyZYqX+SLPr2cTbpqqC+k77XnZnle55wW4VBpurbu/YDnQ/oJLW7yZfEMhi4
	YNL0v3SHzOgiwPg7HRUqEbCgfT2qHASs6Mv5MX8ojoym299cCoAYZWiz+pY7OiT7iwVMRMFq6wkq0
	Ow8IC4vrlKEHG3L3/x5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mATxf-00FW3V-OC; Mon, 02 Aug 2021 09:10:15 +0000
Received: from lucky1.263xmail.com ([211.157.147.133])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mATxc-00FW1b-9a
 for linux-rockchip@lists.infradead.org; Mon, 02 Aug 2021 09:10:14 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 3A6E3D5D9C;
 Mon,  2 Aug 2021 17:10:03 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 1
X-ANTISPAM-LEVEL: 2
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P25115T140690434549504S1627895398918754_; 
 Mon, 02 Aug 2021 17:10:02 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <ba7c15aebc23196a188eca0ceb1eaea8>
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
Subject: [PATCH] iio: adc: rockchip_saradc: just get referenced voltage once
 at probe
Date: Mon,  2 Aug 2021 17:09:29 +0800
Message-Id: <20210802090929.37970-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_021012_644746_FF2CB7C0 
X-CRM114-Status: GOOD (  13.36  )
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

The referenced voltage is not changed after initiation, so just only
get referenced voltage once.

Signed-off-by: Simon Xue <xxm@rock-chips.com>
Signed-off-by: David Wu <david.wu@rock-chips.com>
---
 drivers/iio/adc/rockchip_saradc.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index f3eb8d2e50dc..cd33c0b9d3eb 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -49,6 +49,7 @@ struct rockchip_saradc {
 	struct clk		*clk;
 	struct completion	completion;
 	struct regulator	*vref;
+	int			uv_vref;
 	struct reset_control	*reset;
 	const struct rockchip_saradc_data *data;
 	u16			last_val;
@@ -105,13 +106,7 @@ static int rockchip_saradc_read_raw(struct iio_dev *indio_dev,
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
@@ -410,6 +405,13 @@ static int rockchip_saradc_probe(struct platform_device *pdev)
 		return ret;
 	}
 
+	info->uv_vref = regulator_get_voltage(info->vref);
+	if (info->uv_vref < 0) {
+		dev_err(&pdev->dev, "failed to get voltage\n");
+		ret = info->uv_vref;
+		return ret;
+	}
+
 	ret = clk_prepare_enable(info->pclk);
 	if (ret < 0) {
 		dev_err(&pdev->dev, "failed to enable pclk\n");
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
