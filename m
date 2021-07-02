Return-Path: <SRS0=rL42=L2=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-14.4 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,
	UNWANTED_LANGUAGE_BODY,URIBL_BLOCKED,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28004C11F67
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jul 2021 02:15:44 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 770EC613F7
	for <linux-rockchip@archiver.kernel.org>; Fri,  2 Jul 2021 02:15:43 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 mail.kernel.org 770EC613F7
Authentication-Results: mail.kernel.org; dmarc=none (p=none dis=none) header.from=rock-chips.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HDPXipKK5eE+7KZOPlAts//di0R8rGzWWc4FiWrUcDY=; b=YloWcm1JGEdfu8
	rTB7SAq/bzYJvImymcr5DM9/wdIDJ8trSuPX0+Uzr2p8KTGxOH0gdvzVT1tcJsejJWGYS7Eie+qX7
	0s3uE8Vvkmy/pJZsFcmeNr1K7JfARTlrx6JHWntQ+WfHs1y+u2zKpSWVsiU/o9O5AUGUP9GMETlhH
	jLzKtWDXE3FTLTqZ21I23auJAyk2qmJQf/bEKSy1M8D4niSuRIXaKlX0ZXAtXA2jhZps90SMxlk9G
	m7OE/p43dRlkJqRomTtSGn5UBJa3w5vzElTV1LSw0yUpD1kwqPkbby6/VhnST3E0X2ounLyPMyJcL
	VZoMAXDC3NZH5qokrRbA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lz8iS-001ocK-3J; Fri, 02 Jul 2021 02:15:40 +0000
Received: from lucky1.263xmail.com ([211.157.147.132])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lz8iP-001obX-Sk
 for linux-rockchip@lists.infradead.org; Fri, 02 Jul 2021 02:15:39 +0000
Received: from localhost (unknown [192.168.167.235])
 by lucky1.263xmail.com (Postfix) with ESMTP id 57622FAF49;
 Fri,  2 Jul 2021 10:15:34 +0800 (CST)
X-MAIL-GRAY: 0
X-MAIL-DELIVERY: 1
X-ADDR-CHECKED4: 1
X-SKE-CHECKED: 0
X-ANTISPAM-LEVEL: 2
X-ABS-CHECKED: 0
Received: from xxm-vm.localdomain (unknown [58.22.7.114])
 by smtp.263.net (postfix) whith ESMTP id
 P5174T139828410701568S1625192128889748_; 
 Fri, 02 Jul 2021 10:15:34 +0800 (CST)
X-IP-DOMAINF: 1
X-UNIQUE-TAG: <624a86349f5a32301e16e818cdfdb5b8>
X-RL-SENDER: xxm@rock-chips.com
X-SENDER: xxm@rock-chips.com
X-LOGIN-NAME: xxm@rock-chips.com
X-FST-TO: jic23@kernel.org
X-RCPT-COUNT: 10
X-SENDER-IP: 58.22.7.114
X-ATTACHMENT-NUM: 0
X-System-Flag: 0
From: Simon Xue <xxm@rock-chips.com>
To: Jonathan Cameron <jic23@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
 robh+dt@kernel.org, Johan Jonker <jbx6244@gmail.com>,
 Heiko Stuebner <heiko@sntech.de>, Lars-Peter Clausen <lars@metafoo.de>,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, linux-iio@vger.kernel.org,
 Simon Xue <xxm@rock-chips.com>
Subject: [PATCH 2/2] iio: adc: rockchip_saradc: add support for rk3568 saradc
Date: Fri,  2 Jul 2021 10:15:27 +0800
Message-Id: <20210702021527.146343-1-xxm@rock-chips.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210702021403.146293-1-xxm@rock-chips.com>
References: <20210702021403.146293-1-xxm@rock-chips.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210701_191538_161553_6C3F6C37 
X-CRM114-Status: GOOD (  13.24  )
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

Signed-off-by: Simon Xue <xxm@rock-chips.com>
---
 drivers/iio/adc/rockchip_saradc.c | 22 +++++++++++++++++++++-
 1 file changed, 21 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 12584f1631d8..f3eb8d2e50dc 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -35,7 +35,7 @@
 #define SARADC_DLY_PU_SOC_MASK		0x3f
 
 #define SARADC_TIMEOUT			msecs_to_jiffies(100)
-#define SARADC_MAX_CHANNELS		6
+#define SARADC_MAX_CHANNELS		8
 
 struct rockchip_saradc_data {
 	const struct iio_chan_spec	*channels;
@@ -192,6 +192,23 @@ static const struct rockchip_saradc_data rk3399_saradc_data = {
 	.clk_rate = 1000000,
 };
 
+static const struct iio_chan_spec rockchip_rk3568_saradc_iio_channels[] = {
+	SARADC_CHANNEL(0, "adc0", 10),
+	SARADC_CHANNEL(1, "adc1", 10),
+	SARADC_CHANNEL(2, "adc2", 10),
+	SARADC_CHANNEL(3, "adc3", 10),
+	SARADC_CHANNEL(4, "adc4", 10),
+	SARADC_CHANNEL(5, "adc5", 10),
+	SARADC_CHANNEL(6, "adc6", 10),
+	SARADC_CHANNEL(7, "adc7", 10),
+};
+
+static const struct rockchip_saradc_data rk3568_saradc_data = {
+	.channels = rockchip_rk3568_saradc_iio_channels,
+	.num_channels = ARRAY_SIZE(rockchip_rk3568_saradc_iio_channels),
+	.clk_rate = 1000000,
+};
+
 static const struct of_device_id rockchip_saradc_match[] = {
 	{
 		.compatible = "rockchip,saradc",
@@ -202,6 +219,9 @@ static const struct of_device_id rockchip_saradc_match[] = {
 	}, {
 		.compatible = "rockchip,rk3399-saradc",
 		.data = &rk3399_saradc_data,
+	}, {
+		.compatible = "rockchip,rk3568-saradc",
+		.data = &rk3568_saradc_data,
 	},
 	{},
 };
-- 
2.25.1




_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
