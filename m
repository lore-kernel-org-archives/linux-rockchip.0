Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 26361C433F5
	for <linux-rockchip@archiver.kernel.org>; Mon, 25 Apr 2022 20:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qyhx7JHaUAyz+sEHp5evrRQnwUlKNPA6sBvzAsSbbAg=; b=rpqGzo8lqYDmyh
	VoSuEeZe8YEK8kW8LwhZK/k14myW/6nfNSU9gUriILbgs0HgAhuv+Lq2D9Uqg/7u2qT244R0Te5Wc
	kF1ulqWAm4UKp7Qo1rc8L6eFx+HZOoxNDUwGkq1Y79yAmtEifrE9E8SIc8AviPL0etFPjdFnidgUs
	FJzQg5O1cKdCe1q1JAeHtpn2qsjD6ctgcwePSo7Wo/ByBTIK6Gq6PN84GEH0/MUPD1nsn80u63iFv
	x3X361t9DzQQfxxiHgnaClvXUNDJ+acB66afMDpvMjrnD12hcqO1yeCGnNUE/+LHgvIaPgiX/ZbMa
	4MpYRv0cOSi7XeCjwWog==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nj5Yw-00BL1B-AC; Mon, 25 Apr 2022 20:44:02 +0000
Received: from mail-wm1-x335.google.com ([2a00:1450:4864:20::335])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nj5DZ-00BBDR-B1
 for linux-rockchip@lists.infradead.org; Mon, 25 Apr 2022 20:22:02 +0000
Received: by mail-wm1-x335.google.com with SMTP id
 m22-20020a05600c3b1600b00393ed50777aso256327wms.3
 for <linux-rockchip@lists.infradead.org>; Mon, 25 Apr 2022 13:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20210112.gappssmtp.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=X4PiWPA2z+YwiPjwmkViEPpFlveGzLMoVQh4AfeqXKE=;
 b=Qg1O2zSUnx2ygBmjovdhwaM7vW9gnnEAw3GRJ4lBZwTX75TRGOMiYJoySJqWBipp5Z
 MKRamTDF25d2ASVhsQfG6tCR145SE+548nJHkJEx00FuqVJ10ylltJiEC7iUcH6v2CH/
 Zqsq954ZLyfe0fdH/cRuRjSewsNcETaEpjPllFdahMmuz8CxAI8GnXMgZxXbGnCllBxj
 f682bYJHmquE0I4aBl1kSwmhL1kroEK2+dvoaDJTD/m6VRrv0irtflo4QWekYEBQCkW5
 GA/CfL04y+lo/FK5okHXfXu/V9ivmpTnTrUtYaWOzCD95+LxvB04QO/vG4gonFiYvcfX
 xHrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=X4PiWPA2z+YwiPjwmkViEPpFlveGzLMoVQh4AfeqXKE=;
 b=tizItrfO/ujrpx1QdDvE56RL0ZZ1sXzNaI+ITbGuNv8LeiO4q0VsF/tpOtEZ4uXil3
 cIkCQxVK7dAt+AAx3gfqc1XuYmM9SK9TeT8eC8uuCrnPYG0vkyc7NsuND2QnvnuyAgko
 4I9MLK6xgtBEfEGd8PU5BhdGox+167dRbKgK+3Df7LMXPC+3K/qNth6KgZmnewhNffsI
 UF52PZvld4IQpNCRJun86H2m3lBJfv0tfKgvMLG8LubVSJxdbsiaFTzG6Tit5JRwPCP5
 7rs3iQzhnAUmvQsRIlPCf8mbI77hp6kHmy2o6Ye4kOO9u9/9v/YeBkwqyahjEDYcOpCw
 2UQA==
X-Gm-Message-State: AOAM533CYrWPciBm20xQ85yn5KpJe76LrAW4LU3Um8i/F1C0E33lKK3q
 VP/JTIEvIQtGPAwoqwgzq87EkQ==
X-Google-Smtp-Source: ABdhPJzrD0nES3DLaCfKsbFatbnjfGfnZ61YdcgcPshkhinZzFOeQEiHBkt/Y/5AVAXrlqcsVjOwXQ==
X-Received: by 2002:a7b:c403:0:b0:38e:7c57:9af7 with SMTP id
 k3-20020a7bc403000000b0038e7c579af7mr17529379wmi.144.1650918114629; 
 Mon, 25 Apr 2022 13:21:54 -0700 (PDT)
Received: from localhost.localdomain
 (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.googlemail.com with ESMTPSA id
 p3-20020a5d59a3000000b0020a9132d1fbsm11101003wrr.37.2022.04.25.13.21.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 13:21:54 -0700 (PDT)
From: Corentin Labbe <clabbe@baylibre.com>
To: heiko@sntech.de, herbert@gondor.apana.org.au,
 krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org
Cc: linux-crypto@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v6 28/33] arm64: dts: rockchip: rk3399: add crypto node
Date: Mon, 25 Apr 2022 20:21:14 +0000
Message-Id: <20220425202119.3566743-29-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220425202119.3566743-1-clabbe@baylibre.com>
References: <20220425202119.3566743-1-clabbe@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220425_132157_520199_F0EFF141 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
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

The rk3399 has a crypto IP handled by the rk3288 crypto driver so adds a
node for it.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index a90beec50f6a..b9b16008813e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -582,6 +582,26 @@ saradc: saradc@ff100000 {
 		status = "disabled";
 	};
 
+	crypto0: crypto@ff8b0000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b0000 0x0 0x4000>;
+		interrupts = <GIC_SPI 0 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO0>, <&cru HCLK_S_CRYPTO0>, <&cru SCLK_CRYPTO0>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO0>, <&cru SRST_CRYPTO0_S>, <&cru SRST_CRYPTO0_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
+	};
+
+	crypto1: crypto@ff8b8000 {
+		compatible = "rockchip,rk3399-crypto";
+		reg = <0x0 0xff8b8000 0x0 0x4000>;
+		interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH 0>;
+		clocks = <&cru HCLK_M_CRYPTO1>, <&cru HCLK_S_CRYPTO1>, <&cru SCLK_CRYPTO1>;
+		clock-names = "hclk_master", "hclk_slave", "sclk";
+		resets = <&cru SRST_CRYPTO1>, <&cru SRST_CRYPTO1_S>, <&cru SRST_CRYPTO1_M>;
+		reset-names = "rst_master", "rst_slave", "crypto-rst";
+	};
+
 	i2c1: i2c@ff110000 {
 		compatible = "rockchip,rk3399-i2c";
 		reg = <0x0 0xff110000 0x0 0x1000>;
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
