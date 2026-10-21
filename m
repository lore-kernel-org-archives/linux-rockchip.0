Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E99E606AD39
	for <linux-rockchip@archiver.kernel.org>; Wed, 21 Oct 2026 16:13:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=43wRza6u;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20260515 header.b=UI+5dcVm
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:
	Message-Id:MIME-Version:Subject:Date:From:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egjOOAsfqJeM09HuZBMvM/pUQbRb89Bdvq69JeakEQ0=; b=43wRza6uug8eqb
	xjobBS9LEw/8l7p4xSOi/MrNpChVrQhnzuMCgV38KRifmHlLDY3QRIf7+31fs630ZSbH7RZfumZ0Y
	9n3gFdCHXHcwPi7cRBRnp07fF6v/B3vFyWr2zEsyXtHuansXSeJVXxkcsR/pvmsOmN4dSEuASaEvr
	zpZYY492vNX9TUXwA3Ba+4yp/YJdLKdpE6Nh6w1mE9IJYWQYZwqbt/PyYLBQe4EuD+TRnqAjUJ2xV
	Ae8VTb4btogyiyNvzJGqdLJ20lPUnxBsHcBM8QKP/Wo3S+nGlFqbQAkNbW90UKd5UiOKQX+ngryuS
	B2ZX5RT0/rbvrIzDRXEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYwF-0000000CNQp-1C3D;
	Wed, 21 Oct 2026 16:13:15 +0000
Received: from tor.source.kernel.org ([172.105.4.254])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJYvo-0000000CMkg-43Vj;
	Wed, 21 Oct 2026 16:12:49 +0000
Received: from smtp.kernel.org (quasi.space.kernel.org [100.103.45.18])
	by tor.source.kernel.org (Postfix) with ESMTP id CE0546020C;
	Wed, 21 Oct 2026 16:12:47 +0000 (UTC)
Authentication-Results: smtp.kernel.org; arc=none smtp.remote-ip=100.80.115.77
ARC-Seal: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256; cv=none;
	t=1792599167;
	b=Uy/7Bn0i0iI5mObVkuPH5XlcAXt1MSgwKlSFHWyj9G+yeN5KWfx9Wohnp3iLCT5cHczA
	 bEM/WhCeVLVqeVT0LHxLJzDBcqAZJOpvr0Ic9s/hk9WX1+3RpUKMge4Sb6NG93sC4Q60E
	 g2vJHL/qcXd0T17qnwmjzdv2GJ+ZY1TU2rDLDFUYmY7/RCA3zM9WT20+pxBaAVmICW9Mc
	 odBJtBZqzLDbSXSQryvQ9pQztcW4mKXCmtOlRIRYax3Kdaj4MN84TZQ5rUQDycuvhhSEV
	 NK+RTH0UgEe1qATKEVxuG3zg8jti9dRWLOJYlRiJwJVs/r3MEcVQoqc9z5NvIQBKG0A==
ARC-Message-Signature: i=1; d=kernel.org; s=arc20260519; a=rsa-sha256;
	c=relaxed/relaxed; t=1792599167;
	h=DKIM-Signature:Received:From:Date:Subject:MIME-Version:Content-Type:
	 Message-Id:References:In-Reply-To:To:Cc:X-Mailer:
	 X-Developer-Signature:X-Developer-Key:X-Endpoint-Received:
	 X-Original-From:Reply-To:Content-Transfer-Encoding;
	bh=jJLVwqngB3khTM7aVsmVcc/kQR+Ovh/E3oE7VLbfW6I=;
	b=qWGmap/iJLRYjHKdO2Mw6NrjdHFC3jUObiqVGxqFrKr5T49LtvsWvJgB79hzd09iuNYY
	 c/NzaG0OEuF1SHrx6J/7+G/76H29EBPpOTti/CVmGRu7nYgr52cpXdDroVWBs9/WmmWnd
	 yz4oaBu3FHK6xZdeD/qORseUcLyjnbyXDVsqm84CPTPqydeBNIlX+hXfSTHGy1JcBOH00
	 pU6Yp2V3IY012+c6vScvO9PPGseTJLY/IGz6y5ayesDbXzfk1muU2GCvV40v+pUfqWdTr
	 R7qLWxP+uqUm56MsKbmJZL1giaQLOPcwLpZHvlPCmQfC3FtD0/ugN9Z0Jy83E20yGYg==
ARC-Authentication-Results: i=1; smtp.kernel.org; 
	arc=none smtp.remote-ip=100.80.115.77
Received: from lkml.kernel.org (nexus.subspace.kernel.org [100.80.115.77])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.kernel.org (Postfix) with ESMTPS id 812171F0180D;
	Wed, 21 Oct 2026 16:12:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1792599167;
	bh=jJLVwqngB3khTM7aVsmVcc/kQR+Ovh/E3oE7VLbfW6I=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:Reply-To;
	b=UI+5dcVmR+0Lgi62uXF0jE6g0B++DgQX12n3af4/n1DUN0KwzGSTLwmnSMBfBd8pE
	 CxhDaYvLcDjF9e5nN99c19/XmWR+Qm8u2i+BAgu8Uj78GoqEZDxM5VtPOPg945SO0n
	 S901TzixMjpzdy143PI5WKq406DZ+WtB8tJzyvJNjD7BuMhqAzyWOX1HbrsuXobC3z
	 9M+Vhw8kciwps7xc4Q24A+KJqDt/W+qmmiDydDI2aTBwqiRjwlxQCZ/9VCKEiILutg
	 GkAZ9SoyF1PB7hYl97AavGNPsuCDrNP1R7EooIltKJsfnQNxn/sblJAjSbhs8mzb41
	 /OkLADdxRQcuQ==
Received: from nexus.subspace.kernel.org (localhost [IPv6:::1])
	by lkml.kernel.org (Postfix) with ESMTP id D07E743400;
	Wed, 21 Oct 2026 16:12:23 +0000 (UTC)
From: Cunhao Lu via B4 Relay <devnull+1579567540.qq.com@kernel.org>
Date: Thu, 22 Oct 2026 00:11:21 +0800
Subject: [PATCH 24/27] mmc: dw_mmc-rockchip: Keep RK3572 NVM domain powered
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
Message-Id: <20261022-add-board-ok3572-c-v1-24-0b0fd85a31ee@qq.com>
References: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
In-Reply-To: <20261022-add-board-ok3572-c-v1-0-0b0fd85a31ee@qq.com>
To: Stephen Boyd <sboyd@kernel.org>, Brian Masney <bmasney+clk@redhat.com>, 
 Jerome Brunet <jbrunet+clk@baylibre.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Elaine Zhang <zhangqing@rock-chips.com>, Lee Jones <lee@kernel.org>, 
 Linus Walleij <linusw@kernel.org>, Bartosz Golaszewski <brgl@kernel.org>, 
 Richard Cochran <richardcochran@gmail.com>, Ulf Hansson <ulfh@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Jiri Slaby <jirislaby@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Andrew Lunn <andrew+netdev@lunn.ch>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@kernel.org>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 David Wu <david.wu@rock-chips.com>, "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, 
 Maxime Chevallier <maxime.chevallier@bootlin.com>, 
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, 
 Alexandre Torgue <alexandre.torgue@foss.st.com>, 
 Vinod Koul <vkoul@kernel.org>, Neil Armstrong <neil.armstrong@linaro.org>, 
 Manivannan Sadhasivam <mani@kernel.org>, 
 Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
 Jaehoon Chung <jh80.chung@samsung.com>, 
 Shawn Lin <shawn.lin@rock-chips.com>
Cc: Cunhao Lu <1579567540@qq.com>, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 mfd@lists.linux.dev, linux-gpio@vger.kernel.org, netdev@vger.kernel.org, 
 linux-pm@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-mmc@vger.kernel.org, 
 linux-stm32@st-md-mailman.stormreply.com, linux-phy@lists.infradead.org, 
 linux-usb@vger.kernel.org
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1792599138; l=2194;
 i=1579567540@qq.com; s=20261015; h=from:subject:message-id;
 bh=3PU9hSe/SMk7DBdg0xf4xauSWrjq1Nz1yuJVCXM3AuM=;
 b=F8VlQQXXXNczwtESOy5RD1fLR2o2T1P1xaFISpXna6qy9gK+Nv97fAEV0tPYcJpVPqhMJ72/i
 Vvc390n0/atAb9P5zCJiO6A21b9yqanXUk0GsKPdEjNs1+rSq2/UdJr
X-Developer-Key: i=1579567540@qq.com; a=ed25519;
 pk=sUTWrzlIwT4C7ctjNfVZAzzg0G7QUn2XxRGpYsw4RtM=
X-Endpoint-Received: by B4 Relay for 1579567540@qq.com/20261015 with
 auth_id=1177
X-Original-From: Cunhao Lu <1579567540@qq.com>
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Reply-To: 1579567540@qq.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-15.2 required=3.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,FREEMAIL_REPLYTO_END_DIGIT,
	HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,INCLUDES_PATCH,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,USER_AGENT_GIT autolearn=ham
	autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Cunhao Lu <1579567540@qq.com>

Power cycling the RK3572 NVM domain causes repeated SD recovery. Keep it
powered during runtime suspend without disabling controller runtime PM.

Signed-off-by: Cunhao Lu <1579567540@qq.com>
---
 drivers/mmc/host/dw_mmc-rockchip.c | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/drivers/mmc/host/dw_mmc-rockchip.c b/drivers/mmc/host/dw_mmc-rockchip.c
index 75c82ff20f177..8bc55d4b996c6 100644
--- a/drivers/mmc/host/dw_mmc-rockchip.c
+++ b/drivers/mmc/host/dw_mmc-rockchip.c
@@ -10,6 +10,7 @@
 #include <linux/mmc/host.h>
 #include <linux/of_address.h>
 #include <linux/mmc/slot-gpio.h>
+#include <linux/pm_domain.h>
 #include <linux/pm_runtime.h>
 #include <linux/slab.h>
 
@@ -528,6 +529,19 @@ static int dw_mci_rockchip_init(struct dw_mci *host)
 	return 0;
 }
 
+static int dw_mci_rk3572_init(struct dw_mci *host)
+{
+	int ret;
+
+	/* Power cycling the NVM domain disrupts SDMMC recovery. */
+	ret = dev_pm_genpd_rpm_always_on(host->dev, true);
+	if (ret && ret != -EOPNOTSUPP)
+		dev_warn(host->dev, "failed to keep power domain on: %pe\n",
+			 ERR_PTR(ret));
+
+	return dw_mci_rockchip_init(host);
+}
+
 static const struct dw_mci_drv_data rk2928_drv_data = {
 	.init			= dw_mci_rockchip_init,
 	.parse_dt		= dw_mci_rk2928_parse_dt,
@@ -541,6 +555,14 @@ static const struct dw_mci_drv_data rk3288_drv_data = {
 	.init			= dw_mci_rockchip_init,
 };
 
+static const struct dw_mci_drv_data rk3572_drv_data = {
+	.common_caps		= MMC_CAP_CMD23,
+	.set_ios		= dw_mci_rk3288_set_ios,
+	.execute_tuning		= dw_mci_rk3288_execute_tuning,
+	.parse_dt		= dw_mci_rk3576_parse_dt,
+	.init			= dw_mci_rk3572_init,
+};
+
 static const struct dw_mci_drv_data rk3576_drv_data = {
 	.common_caps		= MMC_CAP_CMD23,
 	.set_ios		= dw_mci_rk3288_set_ios,
@@ -554,6 +576,8 @@ static const struct of_device_id dw_mci_rockchip_match[] = {
 		.data = &rk2928_drv_data },
 	{ .compatible = "rockchip,rk3288-dw-mshc",
 		.data = &rk3288_drv_data },
+	{ .compatible = "rockchip,rk3572-dw-mshc",
+		.data = &rk3572_drv_data },
 	{ .compatible = "rockchip,rk3576-dw-mshc",
 		.data = &rk3576_drv_data },
 	{},

-- 
2.34.1



_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
