Return-Path: <SRS0=TPHQ=NV=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 09A6CC432BE
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 18:10:07 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id CC1EB60F5B
	for <linux-rockchip@archiver.kernel.org>; Mon, 30 Aug 2021 18:10:06 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org CC1EB60F5B
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IqCg/+r6q4mWeeaCvLwF0Fgc5klcif88LJglmY+UzZk=; b=A4m2eEVLOzkAsm
	XeLBjH/7WArYh0vMetjZLcjjmUsyQ513ULS7/5+sbDGHsbSlN+Fohwo7L9dlc7omBP3VjOLt0/CiQ
	3/of8JECAJUjeCCtqAorFwrUb/bZBVR15/WsD1nqwZgYsf5IYTmy48zCplM1MRLYHg3upHzmaUTbF
	ncMAwz9gdP2+S8evVZzbNEBLyRkXtE2pgyZdAC6jE66wu3G0y6CtTUiqG06OSsvb17Je7zqSzIBro
	otCyv+73DYNnu7LIbpdeqOexsfamYrUtjJOcoIGgwuKavRmt1B7oQbbFUV165DBpCdGj2hppKVri/
	WveKFnAziQnKRLxTcmeQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mKljO-000I5F-M1; Mon, 30 Aug 2021 18:10:02 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mKlhp-000HPH-6V; Mon, 30 Aug 2021 18:08:27 +0000
Received: by mail-lf1-x129.google.com with SMTP id p38so33115744lfa.0;
 Mon, 30 Aug 2021 11:08:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tNH9p1ySBp4UZ8l/t50r11EkpzeUvSvC0XpafPg6xs0=;
 b=CLXnwhdy6MXOOs8SpSpXTbPLfWqbua6tNBBcKMjLuz7YVXiC+rV5E1AskEoFwqy/lN
 KP6W0T7UEpHHgWRXeBIrkzMRgryNt4IPSHo9U5QRFLi1boBUIljgImhpaciXL3bo6yzb
 Rsr2pN144ecPzwBy5yD6tJqEbHN5SJJPsGn2k/6eUrkJuz6OWgg3jbublEV8KjUGyW9U
 UUzzKckWEhRMhB6FFrUt2aukzQ3Ny+FJqmeC1htOq9olg4giDoAT2bTPhoKTr+5ZOc1X
 9LD42iEuP/dEq+cY8t3iDKapUdIVN4DVUpFq02KsOMX8Vu8Z6gGIS9Vx8C4wW9nT5vBe
 sHEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tNH9p1ySBp4UZ8l/t50r11EkpzeUvSvC0XpafPg6xs0=;
 b=H9knZEB9pM/RCpWFjXIuADIT1XJP/9HuTD84CU0RTb+BMSS+ENgttXvub/3Epz5q8R
 tY/pZtQGHp3J599QuhJtz8qAEf6vJ9ZvaimGNL1PcDoDXydyAHz5ATdnR7Gw2baiDCiC
 n6EmnL4nATQ5HqypKmV++u9dv9IH9nl7ePgL5mmkX7kU73GlPrO7gneDs/PZQu/7JdFR
 pw03ds5P9iLx/U2LB6ZY0ujYTT+jSLv86hQWRd6bO6qbMeh5lo0xhn7/SGKkVA3OyGld
 J5oCVBlebvJVrnoAP1TUtj6rlIqwLpsJNgVNzhMPfOIYQASx5nGkjtDMi12Lu7xZcJfP
 0+yQ==
X-Gm-Message-State: AOAM533AdfoMvVfN4Fxr/BiChyAeQF4SdjK5pYud59mm5eH+WuV4YOnY
 qQL/O3/HBx9+FkTGD/cAjXcPglQsZLj7ug==
X-Google-Smtp-Source: ABdhPJwTZpqAdQiLuqh/W2bvYOZGd89ApOpWRv3Rc3552s1pAqdwg4dWbJ1Wln0Ax5lv0G8GDWFORQ==
X-Received: by 2002:ac2:58ce:: with SMTP id u14mr18518005lfo.59.1630346903521; 
 Mon, 30 Aug 2021 11:08:23 -0700 (PDT)
Received: from localhost (37-145-211-218.broadband.corbina.ru.
 [37.145.211.218])
 by smtp.gmail.com with ESMTPSA id q189sm1859345ljb.68.2021.08.30.11.08.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Aug 2021 11:08:23 -0700 (PDT)
From: Mikhail Rudenko <mike.rudenko@gmail.com>
To: linux-phy@lists.infradead.org
Cc: linux-media@vger.kernel.org, Mikhail Rudenko <mike.rudenko@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 Johan Jonker <jbx6244@gmail.com>, Marc Zyngier <maz@kernel.org>,
 Helen Koike <helen.koike@collabora.com>,
 Elaine Zhang <zhangqing@rock-chips.com>,
 Shunqian Zheng <zhengsq@rock-chips.com>,
 Robin Murphy <robin.murphy@arm.com>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v1 5/5] arm64: dts: rockchip: add mipi-dphy-tx1rx1 for rk3399
Date: Mon, 30 Aug 2021 21:07:54 +0300
Message-Id: <20210830180758.251390-6-mike.rudenko@gmail.com>
X-Mailer: git-send-email 2.33.0
In-Reply-To: <20210830180758.251390-1-mike.rudenko@gmail.com>
References: <20210830180758.251390-1-mike.rudenko@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210830_110825_281181_4E14B124 
X-CRM114-Status: GOOD (  10.35  )
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

Add DT node for RX mode of RK3399 TX1RX1 D-PHY.

Signed-off-by: Mikhail Rudenko <mike.rudenko@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 3871c7fd83b0..2e4513275a87 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1902,6 +1902,21 @@ mipi1_in_vopl: endpoint@1 {
 		};
 	};
 
+	mipi_dphy_tx1rx1: mipi-dphy-tx1rx1@ff968000 {
+		compatible = "rockchip,rk3399-mipi-dphy-tx1rx1";
+		reg = <0x0 0xff968000 0x0 0x8000>;
+		clocks = <&cru SCLK_MIPIDPHY_REF>,
+			<&cru SCLK_DPHY_TX1RX1_CFG>,
+			<&cru PCLK_VIO_GRF>,
+			<&cru PCLK_MIPI_DSI1>;
+		clock-names = "dphy-ref", "dphy-cfg",
+			"grf", "dsi";
+		rockchip,grf = <&grf>;
+		power-domains = <&power RK3399_PD_VIO>;
+		#phy-cells = <0>;
+		status = "disabled";
+	};
+
 	edp: edp@ff970000 {
 		compatible = "rockchip,rk3399-edp";
 		reg = <0x0 0xff970000 0x0 0x8000>;
-- 
2.33.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
