Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A3D5EC4332F
	for <linux-rockchip@archiver.kernel.org>; Wed, 16 Nov 2022 21:16:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k/Yhg0EAcDOUGxmYnmS+2ohJOL7Oh9JTfMyW+ef3SJM=; b=CnsYr97x7FMldh
	vY01HX9T/dlswVgFK1RFSa0ZiRKzXbT9tsWj60OPDFvpEQrexsXMSz6x2/8glTh3IUCeU9BFzReJS
	Mjv7IqBs0326wrrG2M/a9dMVwbwplS+kjaC21Bo9nSQrFVvkyMl3N0kegq5v/7H93p5SQniE3VqG6
	KVmntHdMP19MsjkjTxAixHCztwsbZpPddTl6SJ0I6RRQ+OC18X4UUvkd3lTpbIaIOIbNDCBWF6hDg
	aCHrIOCte/o5AuxzT2ZoC1dpT2WXBZ0CgqqT7H77uGM5QmhQhEvg1o7cRXk+WAI3qy8IW0sEPf+OH
	HD+c2dvDb577XMyV+ARQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovPlP-0084SR-24; Wed, 16 Nov 2022 21:16:07 +0000
Received: from mail-pj1-x1030.google.com ([2607:f8b0:4864:20::1030])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1ovOcE-007TVP-Aa; Wed, 16 Nov 2022 20:02:36 +0000
Received: by mail-pj1-x1030.google.com with SMTP id m14-20020a17090a3f8e00b00212dab39bcdso3460794pjc.0;
        Wed, 16 Nov 2022 12:02:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=As0fulMLun+eJjqjObjSTdg/PTBD9UNPaQIMHAXZOXg=;
        b=HF+WPJyRYMs597lubkXXvkdDma+90w/DWbM/ldOz6YR0pmeg3/ztGGIkmlIlb9vErS
         nLkLssypMX366ESoLasH3xX4jIb/d3PI5KNYYhpn7wjhV/81J/VMCw//RVp2PExQHVMP
         /UhkGVXOuZLhy/KZYOeyAgjZpSt8frCme9FgOy+5VP2uuk6Q7I3DrbpycnxZb+MWlONg
         g6VHarv+9bkOdWOIQ+Xt4kpq5KIew1mfIJ1xE9iTO2vzcSwJ0GcTm17t9mSK6qdpGtvx
         tzKLD9qGlBH59gUTR6EW5Jy601opo5iJKh69FcFHrpTn9HVXom4nItSUZXgLZaEJMiWG
         Bh1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=As0fulMLun+eJjqjObjSTdg/PTBD9UNPaQIMHAXZOXg=;
        b=jvZ+cf6ipvKC392qq/6B6JJuSnwsBaf2l5+SGHdgGSb4cKdIihBtx51LeRpsK1vKSv
         dtbwr+IR28CFPDeTgB8LLZwLQCh8HzWvxGWugfRc0QRrAp/n0TJXhCvfzFdhKjz/ow1A
         RwZGx4AMYqymd8EwHDevw9WxV1eFS1o977WBQmV54FqZ7m9nbn/Yq7Tw+QsmYOm4Vtz6
         jvM5xEYnTL/bx6iPeZdCCfrzl/6hjhr6118EpRLEkjOL2Cgab7e8ceaAEmyoM8XQdB7G
         AoGTdUUU/+hlb4Za5AtJ8U+kd1Uh5rvTnj40rycrg38ivvKFhhufQGt0Ng7EFQtrcPZr
         /xbw==
X-Gm-Message-State: ANoB5pnxnnqv/TjiXqtsnpMwwqsZ5OUD3O0oZ7MsRVJVSRbyUrOi6ZA6
	a3xLpcdzzioriecZknhdVz8=
X-Google-Smtp-Source: AA0mqf5K1iGwEgJfomYHvGNZlBmAKHUob/dddxCYWbbDWYXMYIUVPRGmp/cnjjkHHHFqrb3PbXovHA==
X-Received: by 2002:a17:902:ba91:b0:188:c395:1748 with SMTP id k17-20020a170902ba9100b00188c3951748mr10019993pls.155.1668628951901;
        Wed, 16 Nov 2022 12:02:31 -0800 (PST)
Received: from localhost.localdomain ([103.51.72.182])
        by smtp.gmail.com with ESMTPSA id s18-20020a170903215200b00186a6b6350esm12423950ple.268.2022.11.16.12.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 12:02:31 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Anand Moon <linux.amoon@gmail.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Michael Riesch <michael.riesch@wolfvision.net>,
	Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [linux-next-v2 2/5] arm64: dts: rockchip: Add support of external clock to ethernet node on Rock 3A SBC
Date: Wed, 16 Nov 2022 20:01:44 +0000
Message-Id: <20221116200150.4657-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221116200150.4657-1-linux.amoon@gmail.com>
References: <20221116200150.4657-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221116_120234_436752_BA7104BC 
X-CRM114-Status: GOOD (  13.08  )
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

Add support of external clock gmac1_clkin which is used as input clock
to ethernet node.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
V2: None
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index e1c75532dcee..b848282ea005 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -32,6 +32,13 @@ hdmi_con_in: endpoint {
 		};
 	};
 
+	gmac1_clkin: external-gmac1-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <125000000>;
+		clock-output-names = "gmac1_clkin";
+		#clock-cells = <0>;
+	};
+
 	leds {
 		compatible = "gpio-leds";
 
@@ -249,9 +256,8 @@ &cpu3 {
 
 &gmac1 {
 	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
-	assigned-clock-rates = <0>, <125000000>;
-	clock_in_out = "output";
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>, <&gmac1_clkin>;
+	clock_in_out = "input";
 	phy-handle = <&rgmii_phy1>;
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
@@ -259,6 +265,7 @@ &gmac1 {
 		     &gmac1m1_tx_bus2
 		     &gmac1m1_rx_bus2
 		     &gmac1m1_rgmii_clk
+		     &gmac1m1_clkinout
 		     &gmac1m1_rgmii_bus>;
 
 	tx_delay = <0x4f>;
-- 
2.38.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
