Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 72E21C433F5
	for <linux-rockchip@archiver.kernel.org>; Fri, 26 Nov 2021 15:44:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/zxz+rX6+WZjZl8F9ay9rFpcBudWiY4bF/lbXk6qdTM=; b=Kuz9wWa92uPrAb
	MOpFy6uwGtDDnG2W8uPBRTZuAsre6ZY2OHY+9uB1T1u4PxYFwyvNf6qGbjjHe56e2Q4BVvHxpD1+B
	yycfC2p10syiQ/T5XlHwtwIzAWWoCWeoOHu9mIzPfAyOv1S6oCO/mjxGELQaq/CA9f1IK5TDy1Mp9
	DdFZzzC8PAmV4SacqU3YTUbjf0R6voIUQhxtBRQg1qfaqWwE0Y+0S2HIQcRJ3rvfxFUxJt/znPWTD
	8CHdjDlEYoftkqf2wasdcnW5Q5e/loiZOFPke+TulTjXjnPkDPjSJrfmj2OJuLwraSCTBbtZDie1a
	oy21hwNuCTb79iFOVdTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqdPC-00AzBn-VY; Fri, 26 Nov 2021 15:44:54 +0000
Received: from mail-wm1-x32e.google.com ([2a00:1450:4864:20::32e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqdOT-00AytS-6b; Fri, 26 Nov 2021 15:44:10 +0000
Received: by mail-wm1-x32e.google.com with SMTP id 137so8502419wma.1;
 Fri, 26 Nov 2021 07:44:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=pX4j/3IbsfRWpBbXodLKp3Ooot7rXdkPhrMGrMwdyWc=;
 b=AgA6dlVN8+MxCY69yDgWXVIwfqwHDmubESbFeUHARnLUW5T0CicoqzKNAP+DzoA0+/
 hOAsQyxPmKrVMYF299xM2CLHKkw6CvUfXZgdzb2MsXLv8GEhGuqrkaio6Pn76HakeaGg
 yNWMrF8/me7pQRRnSbAQrXzBuLeOrnmZa0fCe1yrcdUH/Yv/8V8YQcaABXJ4Zdy5toJA
 1CUsw6cZhQa3VQfGethcCDMFZBC3GxL65BrqucrncGXwD+T8Mz1hNw5ocGBTcpBvJTKF
 ojfbV68Z190Z0sGcxHrbVPOXWjvY2FX/M07/WYxvyUqwYdJOC9CaqvSbd+n1OAzV+gxl
 i7TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=pX4j/3IbsfRWpBbXodLKp3Ooot7rXdkPhrMGrMwdyWc=;
 b=d+3uA6vUtcsQ/VFzqrdVWpBJXcgtQfIfFcOGjEphKq2Jqxhw7ERLImRmSiIYCd+VrP
 /f8KHzvvMIVXCA57ws+UxNoMhFqgPSZl5D1zXtbRx3dtjDNYGjr+n1Mu72we3Z6FQ2JS
 Td3liAa6oPTNY5/auSyl6utSNFum8JtCBF93J6GU1OkfP9Hk2UaYEfrJX/8nt1O38VhW
 M1tN+woZ9KfiI9uWcGucC1UfKpstmjGlr8Oxu9NGhd8YpS7p3FfA27RXusvRbnuALYZ7
 qLn52vAkRhSo6jO54wxTnvU3HDHZ9t4O9oje+TX7R+hlPp9Fsht3JGY/3kUFFXaCUnC1
 UvKg==
X-Gm-Message-State: AOAM533qmz2X1hGbDupbQS+Byrv5V0z0LTxuMWdVYypaW6yT5Hx+bcn7
 Jn0Tvi2ygIMv+G7dgs5mxYj2lQ/vJNo=
X-Google-Smtp-Source: ABdhPJxy5WZeJkCDxGPpJ20fBso/4CEHRxiGR3BRtJynzdR1LTnPQwXFPtils/lZCoP0kz2L/m9zSw==
X-Received: by 2002:a7b:cc8f:: with SMTP id p15mr16274799wma.129.1637941448071; 
 Fri, 26 Nov 2021 07:44:08 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id p13sm11372400wmi.0.2021.11.26.07.44.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 26 Nov 2021 07:44:07 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: rockchip: Add spi1 pins on Quartz64 A
Date: Fri, 26 Nov 2021 16:43:44 +0100
Message-Id: <20211126154344.724316-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.0
In-Reply-To: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
References: <20211126154344.724316-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211126_074409_277548_562B679B 
X-CRM114-Status: GOOD (  12.54  )
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

The Quartz64 Model A has the SPI pins broken out on its pin
header. The actual pins being used though are not the m0
variant, but the m1 variant, which also lacks the cs1 pin.

This commit overrides pinctrl-0 accordingly for this board.

spi1 is intentionally left disabled, as anyone wishing to add
SPI devices needs to edit the dts anyway, and the pins are more
useful as GPIOs for the rest of the users.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 4d4b2a301b1a..166399b7f13f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -509,6 +509,11 @@ &spdif {
 	status = "okay";
 };
 
+&spi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi1m1_cs0 &spi1m1_pins>;
+};
+
 &tsadc {
 	/* tshut mode 0:CRU 1:GPIO */
 	rockchip,hw-tshut-mode = <1>;
-- 
2.34.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
