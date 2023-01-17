Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 2727AC63797
	for <linux-rockchip@archiver.kernel.org>; Tue, 17 Jan 2023 10:57:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FgGkYgicwQp1U56IVktNa2nveQj/iPi5Tjk3I21ufC4=; b=gKK0AHCktq7f9i
	ByV5XpWjqgMMUvxel+D6qQFRPPeTr0mMkQHFI0XrXnx6TS6xTGUOyINhiDT2EIftcBxIoixR/VVMD
	L36J1Ck+ZluyPioAyS1tVvAYSDDiIzo3PEhUvFYLZ7sSARIhjMGQ8V7Cn4odWwemctCB7katB0aR1
	QOsGl4dk0Nuavpae5DlCYcDJQMxMzRyswKBCsbpvZdIwdY8dzjTWmhRTCaWVVGJXCUBxJl9SYf2MM
	WEpyp9sXOUXiEWOh4dLJhelG2OMWLtEZy73zYoRFSaYlGg6zz524sb2M4Ql2jesaSTto86Twzqst7
	4H0p0K0pnWogA+hZ+lKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjeB-00DsgZ-Oo; Tue, 17 Jan 2023 10:56:55 +0000
Received: from mail-pg1-x52a.google.com ([2607:f8b0:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pHjd0-00Ds0g-I6
	for linux-rockchip@lists.infradead.org; Tue, 17 Jan 2023 10:55:45 +0000
Received: by mail-pg1-x52a.google.com with SMTP id h192so21642361pgc.7
        for <linux-rockchip@lists.infradead.org>; Tue, 17 Jan 2023 02:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rntfRZnff+n5lbhzJZ4A2rcNW7HidbhUCoXTa14UKAc=;
        b=SnQ+hjWEox1G5YrR4AQn7aHZmdA/ONYA//zFLJArkoZxXZCUpUssTTqz96FvIzoNDh
         p0q4hJyV/G2t4ks9mesRxmQ5wl2zaqSf68B2mZmH8H5kJxSTJSjFcEqNVhskYYdpMFJ+
         U/qxP3WmXlvOTFTBzSs+bV1WTBcaWKy9pHgTA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rntfRZnff+n5lbhzJZ4A2rcNW7HidbhUCoXTa14UKAc=;
        b=farhzFrHJUiHGyl4hP0GWRHqiyJPFEDehf4hFi0nvrvB4IzrzqWhP5T9ih/foRFTMF
         Ll0SbqjDxArabYhUatr2MalYMYksKNA8SHl2ouPbclvecKiPXMZUuQAiAVzejHFwIlxY
         q5mFlib2YCN3G0GO+CtbDX2HDApf1LO/iLZZFBgATOVaZEYDzj4G8clyFR75tq8PlBSr
         ZFt1Q/VWWVUuO/B6vHOGrfpQOuLIz5RxVboiwXsrxG8GKnPLoRDc8rbihiq1HAVyB7Lw
         fwTWbTxqv3QDCHrNhMjtRtlo+bXPR7ChC4UiFBCaO6sSmu0NGftUGc0pbRJyAIt8HXCZ
         sQmg==
X-Gm-Message-State: AFqh2kqbGMnONws5+sHPaUoDYTmegPcubGkn8mj50E0puXiGS+JM9rm4
	NHy4Y7pgBNRr3t0lnOTVJrhEQQ==
X-Google-Smtp-Source: AMrXdXvV6zuZ2hXmO+gpQebDvUeI4P7sWLhlUX5aBmzVEj6XfkP2Wcs/QSQ80SSR/kRv20F7ZDRLgQ==
X-Received: by 2002:a62:790d:0:b0:58a:fccd:9eb5 with SMTP id u13-20020a62790d000000b0058afccd9eb5mr25431472pfc.23.1673952940718;
        Tue, 17 Jan 2023 02:55:40 -0800 (PST)
Received: from localhost.localdomain ([45.249.78.214])
        by smtp.gmail.com with ESMTPSA id w65-20020a623044000000b0056c349f5c70sm19837413pfw.79.2023.01.17.02.55.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 02:55:40 -0800 (PST)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Jagan Teki <jagan@amarulasolutions.com>,
	FUKAUMI Naoki <naoki@radxa.com>
Subject: [PATCH 7/7] arm64: dts: rockchip: Update eMMC, SD aliases for Radxa SBC boards
Date: Tue, 17 Jan 2023 16:25:04 +0530
Message-Id: <20230117105504.18296-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230117105504.18296-1-jagan@amarulasolutions.com>
References: <20230117105504.18296-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230117_025542_631518_18BAA39E 
X-CRM114-Status: GOOD (  12.45  )
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

Radxa SBC boards like ROCK 3A/4 models do support eMMC and SDcard
via external connector slots.

Mark, the eMMC has mmc0 by considering the Rockchip boot order priority
as both MMC devices are connected externally.

Reported-by: FUKAUMI Naoki <naoki@radxa.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi   | 4 ++--
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts      | 4 ++--
 3 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
index 309c35d7fca8..028eb508ae30 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dts
@@ -15,8 +15,8 @@ / {
 	compatible = "radxa,rock-4c-plus", "rockchip,rk3399";
 
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 1f76d3501bda..907071d4fe80 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -13,8 +13,8 @@
 
 / {
 	aliases {
-		mmc0 = &sdmmc;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc;
 	};
 
 	chosen {
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index cd1e1d8e1244..77ba37ce6d6c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -13,8 +13,8 @@ / {
 
 	aliases {
 		ethernet0 = &gmac1;
-		mmc0 = &sdmmc0;
-		mmc1 = &sdhci;
+		mmc0 = &sdhci;
+		mmc1 = &sdmmc0;
 	};
 
 	chosen: chosen {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
