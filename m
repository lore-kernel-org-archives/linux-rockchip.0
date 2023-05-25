Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 83EE1C7EE2C
	for <linux-rockchip@archiver.kernel.org>; Thu, 25 May 2023 21:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VcipyhHY3zz/KxRK0X/mwLMuu7xnrNUyFhHR6JgJ/I=; b=brf7scCgDe81CP
	a3OxW412KJ9Vw/EutKqSPSSMAwW++era9XwPursrFejcmwERmdPNXgY5GmS68uQoemK79DH0f1lwH
	/EDo2d5Wc+Rre/i7Lytb7MCMqVdv8CvmngRkqA+ARgssl3PKPGb/QcQqc+5ChZCP/lrL5U3HCBo3G
	jNbbqpeBP1csyQcchFs0MXatsqfMeSp7raFguKoQtebRXZ2gbCRH1erFd1nSXMGz+I4B6+wnGFqnM
	Gek35Dsd8EM51S3GWtb4WoeuNHhAj9Cym5BMJpLPk7AcpRrKm06yrkdr8CpbfrGyB4JcjM62vXpUZ
	TtrynmMjuQAhDeKAj56g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IVC-000BkR-38;
	Thu, 25 May 2023 21:28:06 +0000
Received: from madras.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e5ab])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q2IV7-000Bie-0c;
	Thu, 25 May 2023 21:28:02 +0000
Received: from localhost.localdomain (unknown [IPv6:2405:201:0:21ea:e49:10dd:40c0:e842])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: shreeya)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 056FD6606E81;
	Thu, 25 May 2023 22:27:56 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1685050080;
	bh=jsynsw/ZbWVC0ttTQiwGX9l8Q++CdnsiAIG6M4Z8nRw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=nuCe0J0MsiSf6bFs8VW2iuq7HIenCb9alpkzMD4x6wwVGufdHwvXEYecDAZKz8B0n
	 cVfiAtUDi5x31x6tTBlbUXL8pWVlQkWpPps14DllNKabi4Btrocm+jT1zJi7vKT8q1
	 XgqsgcAMMXAnodxWdcw9feelnBcLA2fh6SeWCczmgYBwulT9Ni8+Hcpf9Ct0uPqg8u
	 9bHzc0ALXZ3FqmR+hI8j2q0+ZAgmoAkXo39oz4YhCPb+eyoGnD49aBIc7gknRO+7A0
	 Edo1XSBUdkcST0SD6LkCKp10Wp1Y46oNd87xeahGmph1jHdJnmgn9tlC70k31VoMTj
	 dAReny5cei1Qw==
From: Shreeya Patel <shreeya.patel@collabora.com>
To: jic23@kernel.org,
	lars@metafoo.de,
	heiko@sntech.de,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	sebastian.reichel@collabora.com
Cc: linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	kernel@collabora.com,
	gustavo.padovan@collabora.com,
	serge.broslavsky@collabora.com,
	Shreeya Patel <shreeya.patel@collabora.com>,
	Simon Xue <xxm@rock-chips.com>
Subject: [PATCH v2 1/8] iio: adc: rockchip_saradc: Add callback functions
Date: Fri, 26 May 2023 02:57:05 +0530
Message-Id: <20230525212712.255406-2-shreeya.patel@collabora.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230525212712.255406-1-shreeya.patel@collabora.com>
References: <20230525212712.255406-1-shreeya.patel@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230525_142801_502963_57AB5157 
X-CRM114-Status: GOOD (  16.72  )
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

From: Simon Xue <xxm@rock-chips.com>

Add start, read and power_down callback functions,
which will help in adding new rockchip device support
cleanly.

Signed-off-by: Simon Xue <xxm@rock-chips.com>
Signed-off-by: Shreeya Patel <shreeya.patel@collabora.com>
---

Changes in v2
  - Add a from address.
  - Create a separate patch for changes done in the code for old
    devices.

 drivers/iio/adc/rockchip_saradc.c | 64 +++++++++++++++++++++++++------
 1 file changed, 52 insertions(+), 12 deletions(-)

diff --git a/drivers/iio/adc/rockchip_saradc.c b/drivers/iio/adc/rockchip_saradc.c
index 79448c5ffc2a..21f9d92a6af4 100644
--- a/drivers/iio/adc/rockchip_saradc.c
+++ b/drivers/iio/adc/rockchip_saradc.c
@@ -38,10 +38,15 @@
 #define SARADC_TIMEOUT			msecs_to_jiffies(100)
 #define SARADC_MAX_CHANNELS		8
 
+struct rockchip_saradc;
+
 struct rockchip_saradc_data {
 	const struct iio_chan_spec	*channels;
 	int				num_channels;
 	unsigned long			clk_rate;
+	void (*start)(struct rockchip_saradc *info, int chn);
+	int (*read)(struct rockchip_saradc *info);
+	void (*power_down)(struct rockchip_saradc *info);
 };
 
 struct rockchip_saradc {
@@ -60,27 +65,50 @@ struct rockchip_saradc {
 	struct notifier_block nb;
 };
 
-static void rockchip_saradc_power_down(struct rockchip_saradc *info)
+static void rockchip_saradc_reset_controller(struct reset_control *reset);
+
+static void rockchip_saradc_start_v1(struct rockchip_saradc *info, int chn)
+{
+	/* 8 clock periods as delay between power up and start cmd */
+	writel_relaxed(8, info->regs + SARADC_DLY_PU_SOC);
+	/* Select the channel to be used and trigger conversion */
+	writel(SARADC_CTRL_POWER_CTRL | (chn & SARADC_CTRL_CHN_MASK) |
+	       SARADC_CTRL_IRQ_ENABLE, info->regs + SARADC_CTRL);
+}
+
+static void rockchip_saradc_start(struct rockchip_saradc *info, int chn)
+{
+	info->data->start(info, chn);
+}
+
+static int rockchip_saradc_read_v1(struct rockchip_saradc *info)
+{
+	return readl_relaxed(info->regs + SARADC_DATA);
+}
+
+static int rockchip_saradc_read(struct rockchip_saradc *info)
+{
+	return info->data->read(info);
+}
+
+static void rockchip_saradc_power_down_v1(struct rockchip_saradc *info)
 {
-	/* Clear irq & power down adc */
 	writel_relaxed(0, info->regs + SARADC_CTRL);
 }
 
+static void rockchip_saradc_power_down(struct rockchip_saradc *info)
+{
+	if (info->data->power_down)
+		info->data->power_down(info);
+}
+
 static int rockchip_saradc_conversion(struct rockchip_saradc *info,
 				   struct iio_chan_spec const *chan)
 {
 	reinit_completion(&info->completion);
 
-	/* 8 clock periods as delay between power up and start cmd */
-	writel_relaxed(8, info->regs + SARADC_DLY_PU_SOC);
-
 	info->last_chan = chan;
-
-	/* Select the channel to be used and trigger conversion */
-	writel(SARADC_CTRL_POWER_CTRL
-			| (chan->channel & SARADC_CTRL_CHN_MASK)
-			| SARADC_CTRL_IRQ_ENABLE,
-		   info->regs + SARADC_CTRL);
+	rockchip_saradc_start(info, chan->channel);
 
 	if (!wait_for_completion_timeout(&info->completion, SARADC_TIMEOUT))
 		return -ETIMEDOUT;
@@ -123,7 +151,7 @@ static irqreturn_t rockchip_saradc_isr(int irq, void *dev_id)
 	struct rockchip_saradc *info = dev_id;
 
 	/* Read value */
-	info->last_val = readl_relaxed(info->regs + SARADC_DATA);
+	info->last_val = rockchip_saradc_read(info);
 	info->last_val &= GENMASK(info->last_chan->scan_type.realbits - 1, 0);
 
 	rockchip_saradc_power_down(info);
@@ -163,6 +191,9 @@ static const struct rockchip_saradc_data saradc_data = {
 	.channels = rockchip_saradc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_saradc_iio_channels),
 	.clk_rate = 1000000,
+	.start = rockchip_saradc_start_v1,
+	.read = rockchip_saradc_read_v1,
+	.power_down = rockchip_saradc_power_down_v1,
 };
 
 static const struct iio_chan_spec rockchip_rk3066_tsadc_iio_channels[] = {
@@ -174,6 +205,9 @@ static const struct rockchip_saradc_data rk3066_tsadc_data = {
 	.channels = rockchip_rk3066_tsadc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_rk3066_tsadc_iio_channels),
 	.clk_rate = 50000,
+	.start = rockchip_saradc_start_v1,
+	.read = rockchip_saradc_read_v1,
+	.power_down = rockchip_saradc_power_down_v1,
 };
 
 static const struct iio_chan_spec rockchip_rk3399_saradc_iio_channels[] = {
@@ -189,6 +223,9 @@ static const struct rockchip_saradc_data rk3399_saradc_data = {
 	.channels = rockchip_rk3399_saradc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_rk3399_saradc_iio_channels),
 	.clk_rate = 1000000,
+	.start = rockchip_saradc_start_v1,
+	.read = rockchip_saradc_read_v1,
+	.power_down = rockchip_saradc_power_down_v1,
 };
 
 static const struct iio_chan_spec rockchip_rk3568_saradc_iio_channels[] = {
@@ -206,6 +243,9 @@ static const struct rockchip_saradc_data rk3568_saradc_data = {
 	.channels = rockchip_rk3568_saradc_iio_channels,
 	.num_channels = ARRAY_SIZE(rockchip_rk3568_saradc_iio_channels),
 	.clk_rate = 1000000,
+	.start = rockchip_saradc_start_v1,
+	.read = rockchip_saradc_read_v1,
+	.power_down = rockchip_saradc_power_down_v1,
 };
 
 static const struct of_device_id rockchip_saradc_match[] = {
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
