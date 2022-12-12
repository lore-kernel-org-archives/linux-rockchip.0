Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CC8D2C04FDE
	for <linux-rockchip@archiver.kernel.org>; Mon, 12 Dec 2022 12:44:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=frvpTzpOYN7z4J7wRyglaaldC8Kcj1J57JwjwHvBA0k=; b=H3Xc2SwBB/B79l
	PGybtaETnyAIZyPvkagrGPdKmCmEriJIWoSfK/OGYI03nTZ1RMxTWJZGyZaO3xxtiTdIE0FpBtfXM
	KTK6P7Qe1GNq1HBXE16PbVj+FuEoxz09gdikGL36/i5oW/FmzXsf4/IYBN8kBN9rYV3uYfh6VjupP
	GeqmUlVdtD0VHdSaTxZq6M6CN3TLckdEX/UM2Paq8ZkAV9wyWMVw8/irART+VcJWznrMPrikn/lLV
	Ebi3EOxxW9EynXTDTZlq/Gx3ASYBG4oP1S3exJzgZr4NzseplqNVf53Ku3rN6L/6a5f/jZqUrc3tW
	jq1IbmWt7YQ5TG/Q2tzA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4iAd-00FnVX-Cl; Mon, 12 Dec 2022 12:44:35 +0000
Received: from mail-wm1-x333.google.com ([2a00:1450:4864:20::333])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p4iAa-00FnNM-Np
	for linux-rockchip@lists.infradead.org; Mon, 12 Dec 2022 12:44:34 +0000
Received: by mail-wm1-x333.google.com with SMTP id i4-20020a1c3b04000000b003d21f02fbaaso171229wma.4
        for <linux-rockchip@lists.infradead.org>; Mon, 12 Dec 2022 04:44:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BcuYqJP5+fj5SQoxNBlxka40ix71bnNCS/22EOHif6c=;
        b=5jCsOLmT84Gpexbwd3LYlscYFmSC0rEy8GV3tJSFjAtHmjIjt4VjGnK46fL+c/SWko
         ATD7rA1A4qLWJXBZhFM6fOAe7uWwF8YRYl0tvgHp+/H4QQjigrwhEOSxW3teF8zlrKMT
         RtORGOYYIn2Z4uwWENQo4rfBXfz1qwkYa/HyOgxvcOoamH9j05Wnd+O4JrSGar2V2K00
         WRP5QrBDIZOss0XvJEadjQmENw0w1xG+LO03xVCGmlPikLB8ZaE87ziVNFyRuG5mb16q
         /fGTehl8qbk/Gjg4xkys9qmI2MZBOw+xRTs5KrhzoPxi0PeiL+J5pdtzP8gt1i/Ekv6R
         VmAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BcuYqJP5+fj5SQoxNBlxka40ix71bnNCS/22EOHif6c=;
        b=ROePsoWhPNM47xKRKoJcuVR5Qml5VR/GAySrCmSH+JThI9DkqmFQg21VFGNq3QhzNw
         BvRtBWhzKQ8vY0A+cVecE+n0YYh14+oVblgX+IdDRsIDbWNvXtSBTMPMZyOpJo1fELZG
         wqRtZdbRPOK5ZBdHxnmUoT/bRkRpNApM9qgBCUIHujkBovty4J2gmVV878s4HnPMXxFe
         1nzR38W6JtcsrMCgUM3hwau4+/11D+28cOUqOmXp5kKH8SaU8b0NoAF2J3i9GAMG/iOr
         EFYMbhJzYTjCDrJok8IpZeHQAwGbatPS71DxYnhJDDWueJpVQ9t8JkQgDKHbJBYMpXO4
         794g==
X-Gm-Message-State: ANoB5pkkhBc9S2zr35RVP1S7bcTDHUQhwpBua4xtjwHzEYmRMN4ANFI1
	hvyxiYEcJJveHo8THC0hoPjAOw==
X-Google-Smtp-Source: AA0mqf7ZofsvsUMIpaiiaqGaUYm44ZHz7+YLjvSzQ6WLOrlmfcHRI4m9G7pmNFdYrqN3h2+Ly+yLYQ==
X-Received: by 2002:a05:600c:3ac3:b0:3d2:148b:4a26 with SMTP id d3-20020a05600c3ac300b003d2148b4a26mr7598329wms.32.1670849070998;
        Mon, 12 Dec 2022 04:44:30 -0800 (PST)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j17-20020a05600c1c1100b003cfd42821dasm10198660wms.3.2022.12.12.04.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Dec 2022 04:44:30 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH] arm64: dts: rockchip: rk3399: use correct reset names
Date: Mon, 12 Dec 2022 12:44:23 +0000
Message-Id: <20221212124423.1239748-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221212_044432_816260_1ACE39C0 
X-CRM114-Status: UNSURE (   9.53  )
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

The reset names does not follow the binding, use the correct ones.

Fixes: 8c701fa6e38c ("arm64: dts: rockchip: rk3399: add crypto node")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 4391aea25984..834d16acb546 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -589,7 +589,7 @@ crypto0: crypto@ff8b0000 {
 		clocks = <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>, <&cru SCLK_CRYPTO0>;
 		clock-names = "hclk_master", "hclk_slave", "sclk";
 		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>;
-		reset-names = "master", "lave", "crypto";
+		reset-names = "master", "slave", "crypto-rst";
 	};
 
 	crypto1: crypto@ff8b8000 {
@@ -599,7 +599,7 @@ crypto1: crypto@ff8b8000 {
 		clocks = <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>, <&cru SCLK_CRYPTO1>;
 		clock-names = "hclk_master", "hclk_slave", "sclk";
 		resets = <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
-		reset-names = "master", "slave", "crypto";
+		reset-names = "master", "slave", "crypto-rst";
 	};
 
 	i2c1: i2c@ff110000 {
-- 
2.37.4


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
