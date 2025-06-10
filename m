Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 03A56C5B552
	for <linux-rockchip@archiver.kernel.org>; Tue, 10 Jun 2025 13:23:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1k0JmTDGbWDxgHB8x+2Ot8J0bRoL/EtKl7viTcwJIQI=; b=y0g4ROTtIlJ6ld
	jGaNyOz4K8oeMWVkbUH0/n17P0NOhikYCNbizkLMRDsASrg0/cxF/wbNfkvxwgT170FYUg6mMqG0+
	6JiuFF+vkBL5NuXQvAtPNJigIaF0R1MQQ4pLyKmWSBNJctFIYg/8h/xRkRBvyACjlHhuFx0GHdFHZ
	lVSnUKqPRUWzfXsrSobKPz6m+RM7WygMasFccUza5Nd9rsAeRV7FuinMtKdRXdVf2Ecz34NQHUad3
	S/e22Oo1RXc4VoQznuaZUTeODS8hU0H51F9Qil2BKF+gSkN+WaWRgstwZbEuK2ozCUb7Uvp5UdHdi
	NItIiuAb9CoU1WjrO5Fg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOywV-00000006wgJ-2LvZ;
	Tue, 10 Jun 2025 13:23:07 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uOyA5-00000006mHk-378Y;
	Tue, 10 Jun 2025 12:33:07 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1749558771; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=Y/HWAl+BrVvwcj3QIGlOh+eH8RGYVyzKfX1d0+Tk1LKJ2zfwnXZKj+S6/GH2WWq4zNFFgBl/oPYGc4DzgsBqoKnNEES+pH+KoqXAgvJRv0YaCzEfZhoDQ8ANR1+ArGy2f3tPDbJ/R98v4f9xuEI8U2jBThJmCQ1iJkTA9FpEU5Q=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1749558771; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=Tnp7bdW/um/Nf3Hkgt/EOyvTtoi0plo3EB+bh3F7o3o=; 
	b=NGD2fXCk7pG4diymGtx2OYJQzF5bZl7zpEPKSP8+25n8fncHp+g7UQTJf///oIAUDD7quPWqiCVEDg4qAJTco3BQwqv4PbZ92HS94d3fJI9d+cZGIVtiVZr9ViKI1N4YsmmQN1vGYpf4ue+hwpsSCYuuwNIYnIm8BvaTw78sPGs=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1749558771;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=Tnp7bdW/um/Nf3Hkgt/EOyvTtoi0plo3EB+bh3F7o3o=;
	b=cB0jGed+HtxmlOcbiif09rpri7CVAT2t0+RhgfBMafdP8nxkDlGei+FEvTXK88iB
	xZ1iFy++EpOT6N+ZyiYTiHDW8LYzLxfv5pkClMP0jRo0DuWgv7muV/E3+rb2Zriw/zN
	bcgTF7p3bARCKb5czFkAnz+9k4e/laDT8542rA7k=
Received: by mx.zohomail.com with SMTPS id 1749558770257746.9148597054228;
	Tue, 10 Jun 2025 05:32:50 -0700 (PDT)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Tue, 10 Jun 2025 14:32:37 +0200
Subject: [PATCH v6 1/7] thermal: rockchip: rename rk_tsadcv3_tshut_mode
MIME-Version: 1.0
Message-Id: <20250610-rk3576-tsadc-upstream-v6-1-b6e9efbf1015@collabora.com>
References: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
In-Reply-To: <20250610-rk3576-tsadc-upstream-v6-0-b6e9efbf1015@collabora.com>
To: Alexey Charkov <alchark@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Jonas Karlman <jonas@kwiboo.se>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250610_053305_849853_C892D9A9 
X-CRM114-Status: GOOD (  12.40  )
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
Cc: devicetree@vger.kernel.org, linux-pm@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

The "v" version specifier here refers to the hardware IP revision.
Mainline deviated from downstream here by calling the v4 revision v3 as
it didn't support the v3 hardware revision at all.

This creates needless confusion, so rename it to rk_tsadcv4_tshut_mode
to be consistent with what the hardware wants to be called.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 drivers/thermal/rockchip_thermal.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/thermal/rockchip_thermal.c b/drivers/thermal/rockchip_thermal.c
index a8ad85feb68fbb7ec8d79602b16c47838ecb3c00..40c7d234c3ef99f69dd8db4d8c47f9d493c0583d 100644
--- a/drivers/thermal/rockchip_thermal.c
+++ b/drivers/thermal/rockchip_thermal.c
@@ -1045,7 +1045,7 @@ static void rk_tsadcv2_tshut_mode(int chn, void __iomem *regs,
 	writel_relaxed(val, regs + TSADCV2_INT_EN);
 }
 
-static void rk_tsadcv3_tshut_mode(int chn, void __iomem *regs,
+static void rk_tsadcv4_tshut_mode(int chn, void __iomem *regs,
 				  enum tshut_mode mode)
 {
 	u32 val_gpio, val_cru;
@@ -1297,7 +1297,7 @@ static const struct rockchip_tsadc_chip rk3588_tsadc_data = {
 	.get_temp = rk_tsadcv4_get_temp,
 	.set_alarm_temp = rk_tsadcv3_alarm_temp,
 	.set_tshut_temp = rk_tsadcv3_tshut_temp,
-	.set_tshut_mode = rk_tsadcv3_tshut_mode,
+	.set_tshut_mode = rk_tsadcv4_tshut_mode,
 	.table = {
 		.id = rk3588_code_table,
 		.length = ARRAY_SIZE(rk3588_code_table),

-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
