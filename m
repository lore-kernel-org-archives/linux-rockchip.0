Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B26CFC433EF
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Feb 2022 12:04:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=BsZdnbpEnBOMIU0sAct5bnJyH3Znkb3TAqQRYSR91EQ=; b=kVzw8if/Qczx+P
	5wbRqhMFG1DWD34i2fkHtqqFGPcq/G0ytTAxPETJ0pLLMbdoU92W5xbltxEotmT2e8XEXWUHDhESY
	PGs6YrEwwXa8dlq7wp1pJmCCS41/IM37eVVgby18pu7Km4fY6+T91ojjB4Ie2vJTPgaFBBvxaGD7q
	0Wd0TRmDLqSJLKZVnOI8xekMcAelTPCfojSNG2h+ktiCeXvy/m1ZRT6Dzl+LPFFTF2O/itciI8T6h
	qKGZYPA1ZmwaobsjE2sxM3i5Dcg0fFmcJUUrLiE62C9i85lR+ztEq0sis5a2mcrR3WAXqD/knIaZ3
	H4pK5O5MLqXvLkUEMqLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nHlhm-00HXuH-QN; Wed, 09 Feb 2022 12:04:14 +0000
Received: from mail-wr1-x42a.google.com ([2a00:1450:4864:20::42a])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nHlhb-00HXrD-3e
 for linux-rockchip@lists.infradead.org; Wed, 09 Feb 2022 12:04:05 +0000
Received: by mail-wr1-x42a.google.com with SMTP id k18so3595834wrg.11
 for <linux-rockchip@lists.infradead.org>; Wed, 09 Feb 2022 04:04:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LuQ+t7txbXIU7O+D0qY3XOtYqJoUWTZj2gqA0c0RP1Y=;
 b=V2NqRr+XhvuOeZj+iuQVuPoiizd+ZriYPR7aMPdWrE3EWBIyxJGVJzC4vJ0UpFj4DX
 LIRcNuILzPkd/h7V5szegEdmHFmifdGrnVJdZlbvO7bybg6vnJKBwx9lvd3Zm/FhSOnT
 lyIgubYyaTBAFy2KasuqKboyHAMOf0u9UFcb/GnzdTH6tYF5Qfk3Y0qIVJ+/8p80vpk1
 XvxqvLUh3NvLBovLbV/BkoIvQs0jQlwiUTWdHZ1ImCa3BOsr0iN6kSVE3jY8Ccr9pvuR
 pizhiOGfzD7TUksGiJygVa+714ibkvQmXcMYE7u5oBMJ4x44OBbDJXyJp4Nh2MZ07MuI
 fdEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=LuQ+t7txbXIU7O+D0qY3XOtYqJoUWTZj2gqA0c0RP1Y=;
 b=MNRr7+2mtHTS+TOuXnuzybddSu2rpk6pzrmhVZHPCojgxhsL0nVLG7jFAO1zMlTE3i
 7haZWwvV/Cwmsai3r60NIIf6EQ7kFJJrH8/YcGojzg2NiURdfH1cF7wvV+WY0SgFxaq5
 3Damk5GnuQVKQ/yK97ujjEM6XYWx08huAFdjaFK2fMvnH9UbkLrLxQWq+VcvpaH1w6JC
 4fR2WFWAyWT+fnD+7dWbjHuprxVd25NHDl70Nj9yWljLpX1/AIXL8BhEpGMMONShpT7a
 OQqE8ZXefyNgMTUnhMJ+4QEfVLG1WXdycfybtV0MrU0zkoYY0IZK/joevUAo7JvarZes
 TMVw==
X-Gm-Message-State: AOAM533GF+E9/Jpw1UJuL/UMnhuLCainkWi89paFd5gv9tAhpIWaeNCl
 uFZp8zkak+Vk57iSM6pNXD9cSQ==
X-Google-Smtp-Source: ABdhPJwQMhdX+Yxksxzbkh3C+D0HAP+5HMpyzJPfMag6iT/NNqvVOLmInZKwunnyDJNHU+/k4cxKDQ==
X-Received: by 2002:a5d:6d88:: with SMTP id l8mr1781243wrs.458.1644408241021; 
 Wed, 09 Feb 2022 04:04:01 -0800 (PST)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id l26sm1062989wms.24.2022.02.09.04.04.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Feb 2022 04:04:00 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de,
	krzysztof.kozlowski@canonical.com,
	robh+dt@kernel.org
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2] ARM: dts: rk3288: fix a typo on crypto-controller
Date: Wed,  9 Feb 2022 12:03:55 +0000
Message-Id: <20220209120355.1985707-1-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220209_040403_174919_7F4EEE8E 
X-CRM114-Status: GOOD (  10.95  )
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

crypto-controller had a typo, fix it.
In the same time, rename it to just crypto

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
Change since v1:
- rename crypto-controller to crypto

 arch/arm/boot/dts/rk3288.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index aaaa61875701..45a9d9b908d2 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -971,7 +971,7 @@ i2s: i2s@ff890000 {
 		status = "disabled";
 	};
 
-	crypto: cypto-controller@ff8a0000 {
+	crypto: crypto@ff8a0000 {
 		compatible = "rockchip,rk3288-crypto";
 		reg = <0x0 0xff8a0000 0x0 0x4000>;
 		interrupts = <GIC_SPI 48 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
