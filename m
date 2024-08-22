Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 10A6FC3DA4A
	for <linux-rockchip@archiver.kernel.org>; Thu, 22 Aug 2024 19:57:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Psx4W0hgI32FKTTjaL9C5Z2M3so5Qc8woOWyZk2jpSo=; b=37Y49fvy18mUL6
	csGhx/h1kA1TE2DEWac3xFsnMj9CnjqnwehtxKG4F/1lH903ODRf6MOugsaLPEF1WOVva9K8/khwb
	zoc8W3yiYEpYLVSFyQskbruIKaUsJ4UXhMDnGsReaniq8AjixPeVF0hZA4+SYEpYqY1z1dM1oBOkl
	66O3ppSeIPVKEq84ImAt9H7aTsPmbe2coxD5oAbMmuZvW72YGbPlFPH/UY3P5wqYeNSql2PVVOirY
	CtjNkpY6FFNDG/9qds/mpg+e9SjzXZvAztXecJQHqHzJR+kbCKVkgfhx9r5wdkA5TVLDtzuKm8X0J
	vQCu+82NF6uzNCiceb2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDw8-0000000EADL-1kYk;
	Thu, 22 Aug 2024 19:57:36 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1shDw4-0000000EABL-3cpC;
	Thu, 22 Aug 2024 19:57:34 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1724356644; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Z8aYStN88XnrVLqh2BalbJKQLADmLTkpPBDEiWkEqWebpJaFabGa3W2O4lhm7MYEuOYj3y/dqeBft4z/0Y2+uVWLUlQteDXmdsJC3FBjHffn+FXkLIIk3ZGhg1KRo03vIUaevPnK7LB4zQGsSCItq92CU5x3PtOQrDEjtb1jP+4=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1724356644; h=Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=uyD1jgLYcHCHmk8wrlzBXsw88Lru62jDx3Q42nc0dV0=; 
	b=NuvtUZVk20ZApOS/ylyDj/nY3VDaJwuRbNywS8vMYS0ibmvmaM3R8kX4WGOLtS3cY+qkyZ9cMUjz8bSHNsV6dzNE9gWcwzuZUXiwEC8Ek7669P9/muuKsyWCyjixgtpDcP07FSyZ0ob9lcqbbew2DrIFDwBZ7QrDQUsqkJyF008=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=detlev.casanova@collabora.com;
	dmarc=pass header.from=<detlev.casanova@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1724356644;
	s=zohomail; d=collabora.com; i=detlev.casanova@collabora.com;
	h=From:From:To:To:Cc:Cc:Subject:Subject:Date:Date:Message-ID:In-Reply-To:References:MIME-Version:Content-Transfer-Encoding:Message-Id:Reply-To;
	bh=uyD1jgLYcHCHmk8wrlzBXsw88Lru62jDx3Q42nc0dV0=;
	b=kgTOBg/Aob5IBudGhbviRrJBBsjWAvqBHe2hOWZGcdGwkFP9VRAh1YP3kf2g8X7J
	jEey7nJBLWQXX03BxZH6QxyVIbgEC9eDysG6yP9GyWORb4Z56/69H155eaWzqJIrYzX
	zo8/ESWPxoxSfiqgFh1RgadeKCYh4i32H9CAi4ak=
Received: by mx.zohomail.com with SMTPS id 1724356643158395.86992208662514;
	Thu, 22 Aug 2024 12:57:23 -0700 (PDT)
From: Detlev Casanova <detlev.casanova@collabora.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/4] grf: rk3576: Add default GRF values
Date: Thu, 22 Aug 2024 15:53:37 -0400
Message-ID: <20240822195706.920567-3-detlev.casanova@collabora.com>
X-Mailer: git-send-email 2.46.0
In-Reply-To: <20240822195706.920567-1-detlev.casanova@collabora.com>
References: <20240822195706.920567-1-detlev.casanova@collabora.com>
MIME-Version: 1.0
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240822_125732_974807_793C01BC 
X-CRM114-Status: GOOD (  11.64  )
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
Cc: Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Detlev Casanova <detlev.casanova@collabora.com>, Linus Walleij <linus.walleij@linaro.org>, Sebastian Reichel <sebastian.reichel@collabora.com>, Shresth Prasad <shresthprasad7@gmail.com>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, linux-rockchip@lists.infradead.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, kernel@collabora.com, Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Set SW controlled i3c weak pull up and disable JTAG function on SDMMC IO.

The i3c weak pull up is activated to let all gpio banks be controlled
by the pinctrl driver.

Disabling the JTAG function lets the SDMMC core use its full IO width.

Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 drivers/soc/rockchip/grf.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/grf.c b/drivers/soc/rockchip/grf.c
index 5fd62046b28a..4607fc0779e7 100644
--- a/drivers/soc/rockchip/grf.c
+++ b/drivers/soc/rockchip/grf.c
@@ -121,6 +121,29 @@ static const struct rockchip_grf_info rk3566_pipegrf __initconst = {
 	.num_values = ARRAY_SIZE(rk3566_defaults),
 };
 
+#define RK3576_SYSGRF_SOC_CON1		0x0004
+
+static const struct rockchip_grf_value rk3576_defaults_sys_grf[] __initconst = {
+	{ "i3c0 weakpull", RK3576_SYSGRF_SOC_CON1, HIWORD_UPDATE(3, 3, 6) },
+	{ "i3c1 weakpull", RK3576_SYSGRF_SOC_CON1, HIWORD_UPDATE(3, 3, 8) },
+};
+
+static const struct rockchip_grf_info rk3576_sysgrf __initconst = {
+	.values = rk3576_defaults_sys_grf,
+	.num_values = ARRAY_SIZE(rk3576_defaults_sys_grf),
+};
+
+#define RK3576_IOCGRF_MISC_CON		0x04F0
+
+static const struct rockchip_grf_value rk3576_defaults_ioc_grf[] __initconst = {
+	{ "jtag switching", RK3576_IOCGRF_MISC_CON, HIWORD_UPDATE(0, 1, 1) },
+};
+
+static const struct rockchip_grf_info rk3576_iocgrf __initconst = {
+	.values = rk3576_defaults_ioc_grf,
+	.num_values = ARRAY_SIZE(rk3576_defaults_ioc_grf),
+};
+
 #define RK3588_GRF_SOC_CON6		0x0318
 
 static const struct rockchip_grf_value rk3588_defaults[] __initconst = {
@@ -132,7 +155,6 @@ static const struct rockchip_grf_info rk3588_sysgrf __initconst = {
 	.num_values = ARRAY_SIZE(rk3588_defaults),
 };
 
-
 static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	{
 		.compatible = "rockchip,rk3036-grf",
@@ -158,6 +180,12 @@ static const struct of_device_id rockchip_grf_dt_match[] __initconst = {
 	}, {
 		.compatible = "rockchip,rk3566-pipe-grf",
 		.data = (void *)&rk3566_pipegrf,
+	}, {
+		.compatible = "rockchip,rk3576-sys-grf",
+		.data = (void *)&rk3576_sysgrf,
+	}, {
+		.compatible = "rockchip,rk3576-ioc-grf",
+		.data = (void *)&rk3576_iocgrf,
 	}, {
 		.compatible = "rockchip,rk3588-sys-grf",
 		.data = (void *)&rk3588_sysgrf,
-- 
2.46.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
