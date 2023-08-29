Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 78C2CC6FA8F
	for <linux-rockchip@archiver.kernel.org>; Tue, 29 Aug 2023 17:18:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mDMWm+KjawkWDZ5kF2Lze3R/MeZscp3Cig2cOyPJSXY=; b=1JkH8mVgCGoJpT
	SsINTyApeTXEO9SBPqLoYiElku6x9Qz/PcGr0wiwoNPpLEKLGkdE0/8SmHGJ+4yj7KbcoFIZs60nH
	YDXWkI4Butm50pTT8uPvS/Q3hIGzZlNTnzY6yH7cyAqk7JmGDHnVXTKu6IvQNFsEc8RRWdMebuf6j
	C5DYNIrT0HFFWew2pV6i0l/oNFm/DNUTWCE+txyWlwI2BD3AtktkDyrYXULirWTZkrJ0dbbPxWzMF
	UY59UKl3Zs85TyzWLDFPpBYrgH3/67jcUufzAU1K+MAcgA1GOh85iVYlto6Bk295j8NKhwBxd6zrF
	uxQNRBjBo9A9NVUBxQLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2Lx-00BvxR-1v;
	Tue, 29 Aug 2023 17:18:09 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qb2LP-00BvMM-2F;
	Tue, 29 Aug 2023 17:17:36 +0000
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99bfcf4c814so607585566b.0;
        Tue, 29 Aug 2023 10:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693329454; x=1693934254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=R9DunujICwW+FdyG9ifMFQMXRh/n/3eNMexEB6m+XBc=;
        b=px2WocHwCMwjM675wD1bA1eXGHHv/R0rc7/GX6NGiX/OBlTqMyRnCDGc1uHsgku1sr
         G9rYQKPxprXZVpBGprwZm/C1f5qoDFg7KX5I/JxK4fvDG/kHaDBkBRxeheaI3QKeuZWE
         b50Gkg1HsF/3mn9w/IkH+vaEzdeSdwvdItZaDUy7tTxaZ866AleSX46/6MxQjT3LQ2cV
         UjX9eF48i0xUFo7p0kA7WbqSxQWbgvpfuTM5l8VNPmlDvMkdduEnZHvz3nbv9HkQuSG+
         oVeE+UuxPm3zGhNAUqbsJx77wJbbtm5NJgbuIgPWEmDiRNhO2V29qqX6GcIpTJKMkWbk
         0XkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693329454; x=1693934254;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R9DunujICwW+FdyG9ifMFQMXRh/n/3eNMexEB6m+XBc=;
        b=EA1w/uHW92s/xI9SmsChMjH+VIeUmvF3vK3Mv+GQ8okdpH2JHXc1wLNWEOZEJqtKgG
         4ngcc3bs1Krs8sE2vKTG6HzT4DLBLS4Dh3mdom2vfFI7RJAitTTVlJAXKHGZ3JJYAj+p
         /KPPIDyyIGDxOSRSFrN5molP1ztsHK+l9Npasuh/DZHKFtRDo/Hb7ArJkmN6fpvy3kw6
         7AJgIoJCvoLF354qZZqG3+eAUkEWAPpbqdzXYnrr5LhIkWQOLsDb5ydi7DkmwDYc6ZwQ
         ymfaq88RURV/2eU3zux8qmtd1HLjvzv5ln+Gm59liuekHMFrpfQoaa741Qn4cPHeAeYh
         z1yw==
X-Gm-Message-State: AOJu0YwnCQVOEpVv4bbEnsHqO9p6b7AGUKBFT+wGzBMUB2TvA4JcaWIM
	VcjyM0AoX6qjS+iryPMYmA==
X-Google-Smtp-Source: AGHT+IHrpTiL0i8g4E5q2Q0OjRcmwKFC2fgt4+QDBkipBm6SYXUm13m4URpgLyUReqBKRY8pMjjrIg==
X-Received: by 2002:a17:907:2bee:b0:9a1:b950:abab with SMTP id gv46-20020a1709072bee00b009a1b950ababmr16022437ejc.32.1693329454190;
        Tue, 29 Aug 2023 10:17:34 -0700 (PDT)
Received: from U4.lan ([2001:9e8:b958:3410:8e0c:ed68:cd6c:7cb8])
        by smtp.gmail.com with ESMTPSA id a21-20020a1709062b1500b00993cc1242d4sm6115834ejg.151.2023.08.29.10.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Aug 2023 10:17:33 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Daniel Vetter <daniel@ffwll.ch>,
	Lee Jones <lee@kernel.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Kishon Vijay Abraham I <kishon@kernel.org>
Cc: Elaine Zhang <zhangqing@rock-chips.com>,
	Johan Jonker <jbx6244@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	alsa-devel@alsa-project.org,
	linux-clk@vger.kernel.org,
	linux-phy@lists.infradead.org,
	Alex Bee <knaerzche@gmail.com>
Subject: [PATCH 10/31] ARM: dts: rockchip: Fix i2c0 register address for RK3128
Date: Tue, 29 Aug 2023 19:16:26 +0200
Message-ID: <20230829171647.187787-11-knaerzche@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20230829171647.187787-1-knaerzche@gmail.com>
References: <20230829171647.187787-1-knaerzche@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230829_101735_734196_AC5638E0 
X-CRM114-Status: GOOD (  12.57  )
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

The register address for i2c0 is missing a 0x to mark it as hex.

Fixes: a0201bff6259 ("ARM: dts: rockchip: add rk3128 soc dtsi")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm/boot/dts/rockchip/rk3128.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3128.dtsi b/arch/arm/boot/dts/rockchip/rk3128.dtsi
index b63bd4ad3143..2e345097b9bd 100644
--- a/arch/arm/boot/dts/rockchip/rk3128.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3128.dtsi
@@ -426,7 +426,7 @@ saradc: saradc@2006c000 {
 
 	i2c0: i2c@20072000 {
 		compatible = "rockchip,rk3128-i2c", "rockchip,rk3288-i2c";
-		reg = <20072000 0x1000>;
+		reg = <0x20072000 0x1000>;
 		interrupts = <GIC_SPI 24 IRQ_TYPE_LEVEL_HIGH>;
 		clock-names = "i2c";
 		clocks = <&cru PCLK_I2C0>;
-- 
2.42.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
