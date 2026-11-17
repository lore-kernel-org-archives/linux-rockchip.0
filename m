Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AB5C606A31C
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Nov 2026 23:51:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=jCcGNPv4;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=infradead.org header.i=@infradead.org header.a=rsa-sha256 header.s=desiato.20200630 header.b=WPa8xto9;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=sntech.de header.i=@sntech.de header.a=rsa-sha256 header.s=gloria202408 header.b=dSziFeNg
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=j+sxX+PlIQrqSn9ZGCqqB0/NVRTFl1THK9WJo3PwMvg=; b=jCcGNPv4JyD/FNL/oK2tZU1MCw
	H8qcYU7djymBQD0ZWIF5ADFU7J+eW2HUO/TsEB3Uw/G70RIU4CvMItguNFEGUbdUbaFJ3+s40ldv+
	Pvnfg5fQ1jn8+hs31SJkyK0lIzDUiWRao4zp5vemY/2GDEWzxv9Yf2pOZk5RidRQvBHNBTirrt/LR
	yySNOS8F4REt6gbwhvZ+rKrCROD02D1wUoaR/tPBWvwpNIGC1AEczAPjz/xqRgqqk/QHi6bJb14fV
	ChcwN1Ax4X63iq1glYT+1Z9lEQUb9luuDO03OH1Yd98r+p21hnazLLu0PaVJPVjlwfzKEGvR6xsxh
	wlMnQLZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSxG-00000007Jff-0lsc;
	Tue, 17 Nov 2026 23:51:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSwu-00000007JOl-1gMu;
	Tue, 17 Nov 2026 23:50:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=Zyn/wsIyYQl6Eky8acJOO+NdFIpJN2qVmm8YCLh3DuM=; b=WPa8xto9TpwVKYeEUY8PVt5Vh+
	CjR0XzYyiE+7cRNS07Brn7OO3bII5Ez4g3nvTGtZKaso0exltYN9nffC9A2/Bt/5+JI4Y8rtIPOQL
	oPn2I9QI2RUhitt7tfJgWl87f32svuhgZy0MAJW0FTuZM1R4alpIbFHK9n2uhn2siui1/eDz7KtlS
	KFqWsNGiwOvQmAzE5dn14VL0O4ux2CgG+85KHoXiSgeuxXZKcBHzChio+gVHpkDscHw2JJmtTyn9t
	7ZYDpwoevkk7J0JLfnAaZ6XoOvjaUJ9tKtnCQDwM8i0ZDWT1wHv1K3Fx3hxnlRtTiONFjDLZsaYRI
	Ca7+Qjvw==;
Received: from gloria.sntech.de ([185.11.138.130])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTSwp-0000000FVIc-1bjG;
	Tue, 17 Nov 2026 23:50:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:References:
	In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type;
	bh=Zyn/wsIyYQl6Eky8acJOO+NdFIpJN2qVmm8YCLh3DuM=; b=dSziFeNg76MA4AKj//A3RRR61i
	6/wuPkqr/DSUjCTHVtSQPpGk+Ecjc1MUu2XLRePkRE5obgPVnHD5Ve75egqQK5lp76vu6eJaCpL9Q
	JI2hsXyAUYlbwbs7C7iRZUrcgOssgedHRe7RxZcqHbsCEvSxNPCZxkJpsuFW8nZlnOUPASk8BO+9F
	uW1rpn32jsYXamLJdwjbzZUNOX1M8RtPIix96IlI7+58jT/j987rnqKcLonJ1y/gRyri2fAMv30Vp
	Kw5D/AfctkxbUdnyQbsg+jBxH/YVB/UOc1UvFRCWWh5Ksk813ZlgxBl0jTi5X8ipgsLymjj/bHgbz
	nWzvh/yw==;
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org
Cc: Heiko Stuebner <heiko@sntech.de>,
	linux-spi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	quentin.schulz@cherry.de,
	Lee Jones <lee@kernel.org>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Heiko Stuebner <heiko.stuebner@cherry.de>
Subject: [PATCH v3 1/7] spi: Allow spi_toggle_csgpiod() to get called from atomic contexts
Date: Wed, 18 Nov 2026 00:50:15 +0100
Message-ID: <20261117235021.2013719-2-heiko@sntech.de>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20261117235021.2013719-1-heiko@sntech.de>
References: <20261117235021.2013719-1-heiko@sntech.de>
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_235047_898862_CB3705EB 
X-CRM114-Status: GOOD (  15.13  )
X-Spam-Score: -0.2 (/)
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
X-Spam-Status: No, score=-16.9 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Heiko Stuebner <heiko.stuebner@cherry.de>

spi_toggle_csgpiod() by default allows for sleeping gpio controllers.
In the upcoming atomic mode for late stage systems,

So determine which stage the system is at and select an appropriate
gpio_set_value function to use.

If for whatever reason a sleeping gpio controller is combined with
an atomic operation using a gpio-chipselect, this will cause a warning.

This also introduces a helper spi_in_atomic() to determine when that is
the case. While the upcoming atomic transfer should really only be used
during late system states, this helper just makes sure to distinguish
between sleeping / non-sleeping.

Signed-off-by: Heiko Stuebner <heiko.stuebner@cherry.de>
---
 drivers/spi/spi.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/spi/spi.c b/drivers/spi/spi.c
index 40cda0037ea5..3aeee3b11c0c 100644
--- a/drivers/spi/spi.c
+++ b/drivers/spi/spi.c
@@ -1244,8 +1244,18 @@ static inline bool spi_is_last_cs(struct spi_device *spi)
 	return last;
 }
 
+/* Check if sleeping is allowed */
+static inline bool spi_in_atomic(void)
+{
+	return IS_ENABLED(CONFIG_PREEMPT_COUNT) ? !preemptible() : irqs_disabled();
+}
+
 static void spi_toggle_csgpiod(struct spi_device *spi, u8 idx, bool enable, bool activate)
 {
+	/* Will complain if atomic transfer is combined with sleeping gpio */
+	int (*gpio_func)(struct gpio_desc *desc, int value) =
+		spi_in_atomic() ? gpiod_set_value : gpiod_set_value_cansleep;
+
 	/*
 	 * Historically ACPI has no means of the GPIO polarity and
 	 * thus the SPISerialBus() resource defines it on the per-chip
@@ -1257,10 +1267,10 @@ static void spi_toggle_csgpiod(struct spi_device *spi, u8 idx, bool enable, bool
 	 * into account.
 	 */
 	if (is_acpi_device_node(dev_fwnode(&spi->dev)))
-		gpiod_set_value_cansleep(spi_get_csgpiod(spi, idx), !enable);
+		gpio_func(spi_get_csgpiod(spi, idx), !enable);
 	else
 		/* Polarity handled by GPIO library */
-		gpiod_set_value_cansleep(spi_get_csgpiod(spi, idx), activate);
+		gpio_func(spi_get_csgpiod(spi, idx), activate);
 
 	if (activate)
 		spi_delay_exec(&spi->cs_setup, NULL);
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
