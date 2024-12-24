Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1AEE9E77188
	for <linux-rockchip@archiver.kernel.org>; Tue, 24 Dec 2024 17:15:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/orqFwf3vjq2PhJJJR6Un82KoFMAgokn6/exya7Ce/M=; b=dWY4lCftcKVhJT
	NSRgZw3/GE3BA70EAnNXVTXOx7rwH884xiH6cnPeqGp4oFhzeBXlpEFHLDc06ZHhq42hVFS50EF5V
	mQprU43H4Pm5k9TgUcTvuFra1sHTZrP7leP5gMQh5UOk8h1hcVU6EGcoaXJlHqhBy79WHg6zkvxQJ
	wJ2qtKYAcHxMR9cckd/kDODW11n31lQE+Mu62zPhkRoTC7cUjAij02+JwhIEvu7jRJbZGi0CuB6VX
	4+B7jywj2xUlu9neqZM7WmKKmT5eKQsH1ayqzWH2WG3aZvUJblitBccgLJ7moc7CkM9uWuOGD9yVS
	6fEiJXpFk3ywG5GQc8kw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ8V3-0000000CPrf-1sxb;
	Tue, 24 Dec 2024 17:15:17 +0000
Received: from relay2-d.mail.gandi.net ([217.70.183.194])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tQ8Mv-0000000CMf6-2Gll;
	Tue, 24 Dec 2024 17:06:55 +0000
Received: by mail.gandi.net (Postfix) with ESMTPSA id 7169F40002;
	Tue, 24 Dec 2024 17:06:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
	t=1735060011;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=GhS+zZ6UEvQnr62N11JkbnpzTV68YUYjNDNf+0QneiY=;
	b=mjyzG3GWELMq6c7f+8BEGOXFcDyZWw4zZFu5oZ2bXKmWLasrMO/ecJD+oTC5EHpPnh+quK
	/9s58HlReb6/z8C6P81U5uRXkQ/ZJaKPQTrjuCT/5lQKUh2hQHsGUUhSbHbz0u6oIDbciG
	/zw6CNFxXPEpc3SSOGj3alSbFeE499xV08jk+3HCwMJr8finn7su+O60xgOJj2KFY6ObfM
	Mb3x4z4jl8wpvnGBpRpLOJwKLFsP/QLpyr4h0RG5G1uW7kB++G9tcFYX5WEzbFWVmDjOHx
	HFM8urZlhjo6nG0RNMZ4fEgRUPTufSjchTwx2YIgxI17pCukEoKI0IFNCA6Bzg==
From: Miquel Raynal <miquel.raynal@bootlin.com>
Date: Tue, 24 Dec 2024 18:05:51 +0100
Subject: [PATCH v2 06/27] spi: cadence-qspi: Support per spi-mem operation
 frequency switches
MIME-Version: 1.0
Message-Id: <20241224-winbond-6-11-rc1-quad-support-v2-6-ad218dbc406f@bootlin.com>
References: <20241224-winbond-6-11-rc1-quad-support-v2-0-ad218dbc406f@bootlin.com>
In-Reply-To: <20241224-winbond-6-11-rc1-quad-support-v2-0-ad218dbc406f@bootlin.com>
To: Mark Brown <broonie@kernel.org>, Sanjay R Mehta <sanju.mehta@amd.com>, 
 Serge Semin <fancer.lancer@gmail.com>, Han Xu <han.xu@nxp.com>, 
 Conor Dooley <conor.dooley@microchip.com>, 
 Daire McNamara <daire.mcnamara@microchip.com>, 
 Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Haibo Chen <haibo.chen@nxp.com>, Yogesh Gaur <yogeshgaur.83@gmail.com>, 
 Heiko Stuebner <heiko@sntech.de>, Michal Simek <michal.simek@amd.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Richard Weinberger <richard@nod.at>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Jacky Huang <ychuang3@nuvoton.com>, Shan-Chun Hung <schung@nuvoton.com>, 
 Chin-Ting Kuo <chin-ting_kuo@aspeedtech.com>, 
 =?utf-8?q?C=C3=A9dric_Le_Goater?= <clg@kaod.org>, 
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@codeconstruct.com.au>, 
 Avi Fishman <avifishman70@gmail.com>, Tomer Maimon <tmaimon77@gmail.com>, 
 Tali Perry <tali.perry1@gmail.com>, Patrick Venture <venture@google.com>, 
 Nancy Yuen <yuenn@google.com>, Benjamin Fair <benjaminfair@google.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Raju Rangoju <Raju.Rangoju@amd.com>
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>, 
 Steam Lin <stlin2@winbond.com>, linux-spi@vger.kernel.org, 
 linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
 linux-riscv@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-mtd@lists.infradead.org, linux-aspeed@lists.ozlabs.org, 
 openbmc@lists.ozlabs.org, linux-stm32@st-md-mailman.stormreply.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.15-dev
X-GND-Sasl: miquel.raynal@bootlin.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241224_090653_850645_C74DEC14 
X-CRM114-Status: GOOD (  12.19  )
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

Every ->exec_op() call correctly configures the spi bus speed to the
maximum allowed frequency for the memory using the constant spi default
parameter. Since we can now have per-operation constraints, let's use
the value that comes from the spi-mem operation structure instead. In
case there is no specific limitation for this operation, the default spi
device value will be given anyway.

The per-operation frequency capability is thus advertised to the spi-mem
core.

Reviewed-by: Tudor Ambarus <tudor.ambarus@linaro.org>
Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 drivers/spi/spi-cadence-quadspi.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-quadspi.c
index 0b45b7b2b3ab30951d94ea2ce57dcba3a2600847..e4862163252ed35053f743c74f1175e033940b17 100644
--- a/drivers/spi/spi-cadence-quadspi.c
+++ b/drivers/spi/spi-cadence-quadspi.c
@@ -1407,7 +1407,7 @@ static int cqspi_mem_process(struct spi_mem *mem, const struct spi_mem_op *op)
 	struct cqspi_flash_pdata *f_pdata;
 
 	f_pdata = &cqspi->f_pdata[spi_get_chipselect(mem->spi, 0)];
-	cqspi_configure(f_pdata, mem->spi->max_speed_hz);
+	cqspi_configure(f_pdata, op->max_freq);
 
 	if (op->data.dir == SPI_MEM_DATA_IN && op->data.buf.in) {
 	/*
@@ -1655,6 +1655,7 @@ static const struct spi_controller_mem_ops cqspi_mem_ops = {
 
 static const struct spi_controller_mem_caps cqspi_mem_caps = {
 	.dtr = true,
+	.per_op_freq = true,
 };
 
 static int cqspi_setup_flash(struct cqspi_st *cqspi)

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
