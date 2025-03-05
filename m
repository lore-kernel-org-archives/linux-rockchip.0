Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6BED8C19F32
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Mar 2025 21:31:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:Message-Id:
	MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kslFMsnxUlY3QmU7j1/SVMEyDdmlWxrzqTXrAwB9kxU=; b=jgYSMyALg99kXX
	bPQDbfkhtgJbbzlNyNGYDHi9MgwwEL+UsMqJIwGphAK2EYhBAOjn0TlFNZhv0JbXABTE//e2qLn7o
	gZay7BcDro7JSdimrX3xmym66CUfSJiPs3PmDiW0cQGRe8/adErPYwFJlQQxRuC7NWjlD+ikGTKAX
	QvGe+LGo+0nY5l2qEs/QVApqe+FiuF4uhKOqlnVImjoeZuYzhrIdGC/VinhDb+S/TGhWCmjuFns3+
	SzQOTM0SJvkxfr5dRa66l8JeMv5f5766CK7uBojREugZzLe/Lc4tOzEm1xJkqD0wziEb8uLIXjSYT
	KA/P8IDIGvCpHwNmRSsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tpwLC-00000009M6n-3qUd;
	Wed, 05 Mar 2025 21:31:46 +0000
Received: from sender4-pp-f112.zoho.com ([136.143.188.112])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tpwEt-00000009L7R-0MJY;
	Wed, 05 Mar 2025 21:25:16 +0000
ARC-Seal: i=1; a=rsa-sha256; t=1741209902; cv=none; 
	d=zohomail.com; s=zohoarc; 
	b=LPpRpTOTpGBW1N1KXO6lG4fjXGnEfUiE2GVgGQIVE+onZ0oz0XRV/3pYPdxqmI4AdN//bdvfIbxWXruEFW0GpX8P2CFVTmeGjeyI1Mn7TJOH1pZ8GPVIZIxlLWz6v2ZalWhEEEM7hpChHz6Z71kYoK7xpq1QyBlPJqYq2Swt7UI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zohomail.com; s=zohoarc; 
	t=1741209902; h=Content-Type:Content-Transfer-Encoding:Cc:Cc:Date:Date:From:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:Subject:To:To:Message-Id:Reply-To; 
	bh=l0WQdUrdZJvKyXOHu07xCpPjCZtIyq2fPB6xG3qYqGM=; 
	b=UnXK7L/fOkC2itQLu9yR5izY2gYsVhw2vm4+yXW+H0GB96q/zcRDpe94dsfOFrAkBdFPUBC/yJgASa87J/b4+yUihim/79xDEX6hggg+RH7bGqMWPvwRT3Ahj6CmKJMpY3RDywP7V/2ygDrKwHtRzEsAnRhDNclNCq4OkvhJ8Qk=
ARC-Authentication-Results: i=1; mx.zohomail.com;
	dkim=pass  header.i=collabora.com;
	spf=pass  smtp.mailfrom=nicolas.frattaroli@collabora.com;
	dmarc=pass header.from=<nicolas.frattaroli@collabora.com>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1741209902;
	s=zohomail; d=collabora.com; i=nicolas.frattaroli@collabora.com;
	h=From:From:Date:Date:Subject:Subject:MIME-Version:Content-Type:Content-Transfer-Encoding:Message-Id:Message-Id:References:In-Reply-To:To:To:Cc:Cc:Reply-To;
	bh=l0WQdUrdZJvKyXOHu07xCpPjCZtIyq2fPB6xG3qYqGM=;
	b=iRw7kNwdCDEIeYtbxWouwWu2FNaj4vprd51PoVeSVewffIOQifb9676ctXebrfAJ
	ovozdcDgcO6Spmld312QBVlUleu561VWuZCdQ5HG1ziK6PNIrK40TlG14a7llo5A3ly
	ooBwyIg3Y+S5iUxx1aroLsvsS2lBs7EANhMb60zM=
Received: by mx.zohomail.com with SMTPS id 1741209899333471.5790605921402;
	Wed, 5 Mar 2025 13:24:59 -0800 (PST)
From: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
Date: Wed, 05 Mar 2025 22:24:21 +0100
Subject: [PATCH 1/7] dt-bindings: clock: rk3576: add IOC gated clocks
MIME-Version: 1.0
Message-Id: <20250305-rk3576-sai-v1-1-64e6cf863e9a@collabora.com>
References: <20250305-rk3576-sai-v1-0-64e6cf863e9a@collabora.com>
In-Reply-To: <20250305-rk3576-sai-v1-0-64e6cf863e9a@collabora.com>
To: Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>, 
 Philipp Zabel <p.zabel@pengutronix.de>, 
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
 Sugar Zhang <sugar.zhang@rock-chips.com>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250305_132515_208399_CFEA1753 
X-CRM114-Status: GOOD (  11.77  )
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
Cc: devicetree@vger.kernel.org, Sebastian Reichel <sebastian.reichel@collabora.com>, linux-sound@vger.kernel.org, linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, kernel@collabora.com, Luca Ceresoli <luca.ceresoli@bootlin.com>, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org

Certain clocks on the RK3576 are additionally essentially "gated" behind
some bit toggles in the IOC GRF range. Downstream ungates these by
adding a separate clock driver that maps over the GRF range and leaks
their implementation of this into the DT.

Instead, define some new clock IDs for these, so that consumers of these
types of clocks can properly articulate which clock they're using, so
that we can then add them to the clock driver for SoCs that need them.

Signed-off-by: Nicolas Frattaroli <nicolas.frattaroli@collabora.com>
---
 include/dt-bindings/clock/rockchip,rk3576-cru.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/dt-bindings/clock/rockchip,rk3576-cru.h b/include/dt-bindings/clock/rockchip,rk3576-cru.h
index 25aed298ac2c2e2d37e2b441c9d92ac68801be6e..9dbccd8ed4689ee85c9220c1404f971b73c7d4ea 100644
--- a/include/dt-bindings/clock/rockchip,rk3576-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3576-cru.h
@@ -589,4 +589,14 @@
 #define PCLK_EDP_S			569
 #define ACLK_KLAD			570
 
+/* IOC-controlled output clocks */
+#define CLK_SAI0_MCLKOUT_TO_IO		571
+#define CLK_SAI1_MCLKOUT_TO_IO		572
+#define CLK_SAI2_MCLKOUT_TO_IO		573
+#define CLK_SAI3_MCLKOUT_TO_IO		574
+#define CLK_SAI4_MCLKOUT_TO_IO		575
+#define CLK_SAI4_MCLKOUT_TO_IO		575
+#define CLK_FSPI0_TO_IO			576
+#define CLK_FSPI1_TO_IO			577
+
 #endif

-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
