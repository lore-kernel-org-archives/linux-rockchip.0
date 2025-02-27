Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D53E3C1B087
	for <linux-rockchip@archiver.kernel.org>; Thu, 27 Feb 2025 19:43:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nNkLUiBwCmFRrTR36LpL0EBSGxabSnrz9MPAz5Vjbww=; b=FNzLM9CgfHialz
	m9fFZYOmM4uLTfsQXqvmdzob9AxPlUzSKUqGYyTrLiGWOHHjDSs6RKWHs1hgjc28+5/Z/TZtPuMZB
	FXPQ9FembUBSt0lHluFxT1FKeLbE0NhsBokXvwpc1gQ+879bFNkMGcQZrw1OIIUkNPrbEYdw3mTri
	GS3H16z7xKaTp3sf90HYH2rNvWVkglwwwuqK+R9VFmAkDR7RL/POCNYqf8/mrPlLJ1iYwTCBuhcJg
	iYrmfKIB2mp4eHyHCoYLuwnDDyw+6kuxQhwuuoqSfN06oF5tGTA731X4yGoZCTUNfqLF9oAiCdA5E
	4frD8yqLojNuSRMi1Xfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tnjmc-00000008dkH-1VEl;
	Thu, 27 Feb 2025 19:42:58 +0000
Received: from smtp.forwardemail.net ([121.127.44.73])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tnip3-00000008LQv-04im
	for linux-rockchip@lists.infradead.org;
	Thu, 27 Feb 2025 18:41:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=Content-Transfer-Encoding: MIME-Version: References: In-Reply-To:
 Message-ID: Date: Subject: Cc: To: From; q=dns/txt; s=fe-e1b5cab7be;
 t=1740681684; bh=pMcozivu7dJDqecE4ZqBly6aZRxhwM+QCDCIXaMvZo0=;
 b=mL3qHes2Ri4oHp+X1ggh5/77nJdciqN9DFkP3rOEaxeVTh7sDZ1JEKsukUsejq94EDDpTnAXt
 i3IyndL6mh+Mlz3Lh35qVDKg+mGOLqepp/JMy5H3JRajtDZgdSxgSakeepCgiyHr3LFZbfXrGRL
 4N9jkdaLnWd+Dm2yB38grVNrDv173DsNlXEiiZ4tILVW1ZO1ikxLGsWVp7ioJRQr9ZS57gtAzAa
 bmUq3+9OGk+vdV7CdgYZmMv/WHExmuo6FiH+qTpNP0Yi1aqOBuwobl6BqfFU64kKgLUcp8If6Yy
 ivjSFQCs74WC2qdws0nm5mK8/YKnhNzQIiqqesUTI/ug==
X-Forward-Email-ID: 67c0b1d2bf572996e8621499
X-Forward-Email-Sender: rfc822; jonas@kwiboo.se, smtp.forwardemail.net,
 121.127.44.73
X-Forward-Email-Version: 0.4.40
X-Forward-Email-Website: https://forwardemail.net
X-Complaints-To: abuse@forwardemail.net
X-Report-Abuse: abuse@forwardemail.net
X-Report-Abuse-To: abuse@forwardemail.net
From: Jonas Karlman <jonas@kwiboo.se>
To: Heiko Stuebner <heiko@sntech.de>,
	Jonathan Cameron <jic23@kernel.org>,
	Lars-Peter Clausen <lars@metafoo.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH 2/4] iio: adc: rockchip_saradc: Add support for RK3528
Date: Thu, 27 Feb 2025 18:40:51 +0000
Message-ID: <20250227184058.2964204-3-jonas@kwiboo.se>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250227184058.2964204-1-jonas@kwiboo.se>
References: <20250227184058.2964204-1-jonas@kwiboo.se>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250227_104125_151833_26DA02CE 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
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

The Successive Approximation ADC (SARADC) in RK3528 uses the v2
controller and support:
- 10-bit resolution
- Up to 1MS/s sampling rate
- 4 single-ended input channels
- Current consumption: 0.5mA @ 1MS/s

Add support for the 4 channels of 10-bit resolution supported by SARADC
in RK3528.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/iio/adc/rockchip_saradc.c | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index a29e54754c8f..2619547d5d6f 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -275,6 +275,21 @@ static const struct rockchip_saradc_data rk3399_saradc_data = {
 	.power_down = rockchip_saradc_power_down_v1,
 };
 
+static const struct iio_chan_spec rockchip_rk3528_saradc_iio_channels[] = {
+	SARADC_CHANNEL(0, "adc0", 10),
+	SARADC_CHANNEL(1, "adc1", 10),
+	SARADC_CHANNEL(2, "adc2", 10),
+	SARADC_CHANNEL(3, "adc3", 10),
+};
+
+static const struct rockchip_saradc_data rk3528_saradc_data = {
+	.channels = rockchip_rk3528_saradc_iio_channels,
+	.num_channels = ARRAY_SIZE(rockchip_rk3528_saradc_iio_channels),
+	.clk_rate = 1000000,
+	.start = rockchip_saradc_start_v2,
+	.read = rockchip_saradc_read_v2,
+};
+
 static const struct iio_chan_spec rockchip_rk3568_saradc_iio_channels[] = {
 	SARADC_CHANNEL(0, "adc0", 10),
 	SARADC_CHANNEL(1, "adc1", 10),
@@ -324,6 +339,9 @@ static const struct of_device_id rockchip_saradc_match[] = {
 	}, {
 		.compatible = "rockchip,rk3399-saradc",
 		.data = &rk3399_saradc_data,
+	}, {
+		.compatible = "rockchip,rk3528-saradc",
+		.data = &rk3528_saradc_data,
 	}, {
 		.compatible = "rockchip,rk3568-saradc",
 		.data = &rk3568_saradc_data,
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
