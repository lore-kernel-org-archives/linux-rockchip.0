Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5DA86C369B2
	for <linux-rockchip@archiver.kernel.org>; Thu, 17 Apr 2025 15:23:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hP79gzjDZAerc1tsuEsUV2EFcKnbmMXQGdKFc24VZqI=; b=pEFB0Gdg8/cF8E
	r3xgGQQuQ1vHOhwAfv3YvYrSYJXQ7f/EerFOWEq0w+0FY+Zl6oBzCwGmBjn2y+c8a1BekZswAJGGW
	SB3xt1sEZTUueMsgAXsdYGf1/kZyrBnC06Fpdu2kh0M4m4FRm1dsmi3QAoyBUE+Yl2pcCQvYq9z+v
	m8swm7PWP7Mdwf/nzkM/Y8MMz+S2pNZ9yXDUhS5uu6teB49+C3PNiAyihVlrOkvwuhI3V2vSr/MvR
	LwWF7nSBxe6oMxo9Rb9puV7OmJFki4nlVftz6GwksPBVGd/7gU1EOC6eaz9UhOoVOe4JSPKUnSMAv
	qSi5Y0Z+yNSycFIOCb5Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5R5E-0000000DUb0-1kuj;
	Thu, 17 Apr 2025 15:23:20 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u5QMi-0000000DLUU-2UfQ;
	Thu, 17 Apr 2025 14:37:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=RVTZZlkVmOkvB5WsIfkhd9UXY1euh5sdiDKh9SvmqYg=; b=dgVgLkbUPkXBrYOdgS7sAtUgXm
	hldVG8stYS3b+S5y3DMkgZd63ST6hMb0rQy90H3r82QLHuzMILdXoP+lgQXqVgIU2zvCIoVisERUe
	gZiWV3lW6airenqxrrYeMlS8nvUaSPT/VGzgebqd4FBzlx8fEvdJtWMWSAInbG5BLSPRmEOcU+9Gm
	X3TO44nKEJdT7miJWfj3WkIOR2pZrXcKgN63euslzYyCEPidVGY7ZdJZC/YuT/upa+PDYA/oijW+z
	4DYUwKUSFKefMIj2lG+Ui6PnTDdKPoiVProwB5G+ja9mhaBfJOFAdffRXZxVWe5I7YIRx9oCyPS9S
	gLmHvm4Q==;
Received: from layka.disroot.org ([178.21.23.139])
	by desiato.infradead.org with esmtps (Exim 4.98.1 #2 (Red Hat Linux))
	id 1u5QMd-0000000AJSv-2BDX;
	Thu, 17 Apr 2025 14:37:19 +0000
Received: from mail01.disroot.lan (localhost [127.0.0.1])
	by disroot.org (Postfix) with ESMTP id 5940725984;
	Thu, 17 Apr 2025 16:37:13 +0200 (CEST)
X-Virus-Scanned: SPAM Filter at disroot.org
Received: from layka.disroot.org ([127.0.0.1])
 by localhost (disroot.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JHofJYrXWWn4; Thu, 17 Apr 2025 16:37:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=disroot.org; s=mail;
	t=1744900632; bh=6edIhBaoWOfTotZiCQe2Htao2lyDgYNn+iXUNDszYqs=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References;
	b=WgQSCRhHb3j6VTjSb7tAJl7FuhzDXhX21D04crHYaG2JOAxw2rx5kgcWY047ydd5C
	 vjgUXdhfcX1B8CfGHrRSI0H4beVeA+vGXTqbA9KxVtSsIvU7TlArqb/83633nnM7WZ
	 vCsURFm17faiN6K/nEOQWNw7OjV60A06Rqb19Y3ks2iOSqDX6BHpk0eAt010NoznfT
	 TAN3WPRqDl6xcardsY7P8D+P4Gw8dKG1BzBdKQstI9NKkIVL7sgh7u8N04BXH760/1
	 D8pihXbzU6ekDe4eV7j/6OXZrx5OGMle1DqvT0oKjGw/mAIZteNh8rAnDqiS7QjCOd
	 tMJie+Pv0THSg==
From: Yao Zi <ziyao@disroot.org>
To: Ulf Hansson <ulf.hansson@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Shresth Prasad <shresthprasad7@gmail.com>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Detlev Casanova <detlev.casanova@collabora.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Chukun Pan <amadeus@jmu.edu.cn>
Cc: linux-mmc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-clk@vger.kernel.org,
	Yao Zi <ziyao@disroot.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v4 1/5] dt-bindings: clock: Add GRF clock definition for RK3528
Date: Thu, 17 Apr 2025 14:36:43 +0000
Message-ID: <20250417143647.43860-2-ziyao@disroot.org>
In-Reply-To: <20250417143647.43860-1-ziyao@disroot.org>
References: <20250417143647.43860-1-ziyao@disroot.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250417_153715_767569_21FA5FDA 
X-CRM114-Status: UNSURE (   6.80  )
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

These clocks are for SD/SDIO tuning purpose and come with registers
in GRF syscon.

Signed-off-by: Yao Zi <ziyao@disroot.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 include/dt-bindings/clock/rockchip,rk3528-cru.h | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/include/dt-bindings/clock/rockchip,rk3528-cru.h b/include/dt-bindings/clock/rockchip,rk3528-cru.h
index 55a448f5ed6d..0245a53fc334 100644
--- a/include/dt-bindings/clock/rockchip,rk3528-cru.h
+++ b/include/dt-bindings/clock/rockchip,rk3528-cru.h
@@ -414,6 +414,12 @@
 #define MCLK_I2S2_2CH_SAI_SRC_PRE	402
 #define MCLK_I2S3_8CH_SAI_SRC_PRE	403
 #define MCLK_SDPDIF_SRC_PRE		404
+#define SCLK_SDMMC_DRV			405
+#define SCLK_SDMMC_SAMPLE		406
+#define SCLK_SDIO0_DRV			407
+#define SCLK_SDIO0_SAMPLE		408
+#define SCLK_SDIO1_DRV			409
+#define SCLK_SDIO1_SAMPLE		410
 
 /* scmi-clocks indices */
 #define SCMI_PCLK_KEYREADER		0
-- 
2.49.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
