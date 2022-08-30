Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 53782ECAAD5
	for <linux-rockchip@archiver.kernel.org>; Tue, 30 Aug 2022 19:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Yg1pPS76o9yoHpBHBLzXGEn5VOrA93/iqH0wO+3R4R4=; b=rTcaoE5+4WUVvx
	rpC2E/opjWzw3+X7JG8jynQeQtzA5OSiuMIIFN/HbGiihJFOa+Did5z/TD4tlvFUc5BhoUNAwG5SI
	GspyumPNRGSE2UXFfZEupKGdbEHEQyseUuhee76jma7rvrYD8l2J4k7HsXPJSXX/zK225i0AVkinP
	zeYEkl85RHzFFkDLVT2lmR/r/sq9W0084fQSSjmm438srsrkO35waxntt4t9SZNUUUFUmyNjmSaKa
	6y2dLyOUT7icFy1IXgslc/JsK/8OH5hJN8S7S19Tmief3x5N1J8z81eedShdKfgKM/lLVVzTsKKdr
	oy3yrsmvTUpDC4+1qMkw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT6yu-001TC4-0A; Tue, 30 Aug 2022 19:33:04 +0000
Received: from mail-pl1-x632.google.com ([2607:f8b0:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oT6yh-001T7d-O6
	for linux-rockchip@lists.infradead.org; Tue, 30 Aug 2022 19:32:53 +0000
Received: by mail-pl1-x632.google.com with SMTP id c2so12096463plo.3
        for <linux-rockchip@lists.infradead.org>; Tue, 30 Aug 2022 12:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=OYzA9p0n5o59safiaW4KMlIlfnAxPamL+boi+em99/M=;
        b=W851mZSHA2NuVBwcGoGcf21aojaeZQ6itzde6gqVH7X2Aejqg6gmKniUdZpYCGwMgr
         /VYzjXwux5er4xhFoJ0SDpu1AxswH9or1LBBQDLKe2Ys/Yy9YyeyaOpZ8rS2ida5eoV6
         X2Ic6/yFW7PMZ82ej3p8GBPLvZV4vcpIpyLIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=OYzA9p0n5o59safiaW4KMlIlfnAxPamL+boi+em99/M=;
        b=zj/vZskePr7Xr8ZKKJaNh9ASwOc/bRZwoZBcJVmHtRT8WVUeUcaS8ONm9n0KWzPna1
         a6NBBeNGluddel+KpJHYobp2UFDKiwEkABzMb23eMeCHT2N/aop8I5nha29RrwS1HWg8
         SHR/hNTcHG5FaHe06U/nw9tK32QQaYOkllqN2E86QZlN+mh/0DhXzaPt+SR8k3RP5zxp
         +Apcn2JEkWadLt4UuDKrjBWTqDthjT6sskVqlLccem8vxBzd+l4OVhZoDTYn+ZWDy6nL
         stbid7KsPpTCosdSyt9PUMLlQulU+u9Pj9JeBNyfnCwKA343J/K/pttC7u5paXZBQOIv
         VVvQ==
X-Gm-Message-State: ACgBeo2CMQZvNfe57Ze0HUr/+mFaCXQ99D0TOVJA2uoKbo2fyBwxh+uf
	hbRGzTwxT7WboW6+8bfDx8VRXQ==
X-Google-Smtp-Source: AA6agR5a1ydzTy5CU1whWuOm/VAiahfPCvqjM4F31B9VPVSXp3Z7Evq1Nk8FjLUtWiUUav60coeBOQ==
X-Received: by 2002:a17:902:d501:b0:174:c4c9:9b77 with SMTP id b1-20020a170902d50100b00174c4c99b77mr10894828plg.67.1661887965373;
        Tue, 30 Aug 2022 12:32:45 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:d14a:ebf8:88f1:35e])
        by smtp.gmail.com with UTF8SMTPSA id z5-20020a17090a66c500b001f334aa9170sm8868376pjl.48.2022.08.30.12.32.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 12:32:44 -0700 (PDT)
From: Brian Norris <briannorris@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: zain wang <wzz@rock-chips.com>,
	Lin Huang <hl@rock-chips.com>,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	Douglas Anderson <dianders@chromium.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Brian Norris <briannorris@chromium.org>
Subject: [PATCH] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
Date: Tue, 30 Aug 2022 12:32:33 -0700
Message-Id: <20220830123231.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
X-Mailer: git-send-email 2.37.2.672.g94769d06f0-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220830_123251_842667_ACAB5BD1 
X-CRM114-Status: UNSURE (   9.69  )
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

We've found the AUX channel to be less reliable with PCLK_EDP at a
higher rate (typically 25 MHz). This is especially important on systems
with PSR-enabled panels (like Gru-Kevin), since we make heavy, constant
use of AUX.

According to Rockchip, using any rate other than 24 MHz can cause
"problems between syncing the PHY an PCLK", which leads to all sorts of
unreliabilities around register operations.

Signed-off-by: zain wang <wzz@rock-chips.com>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 45796b9fd94f..ee6095baba4d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -244,6 +244,14 @@ &dmc {
 &edp {
 	status = "okay";
 
+	/*
+	 * eDP PHY/clk don't sync reliably at anything other than 24 MHz. Only
+	 * set this here, because rk3399-gru.dtsi ensures we can generate this
+	 * off GPLL=600MHz, whereas some other RK3399 boards may not.
+	 */
+	assigned-clocks = <&cru PCLK_EDP>;
+	assigned-clock-rates = <24000000>;
+
 	ports {
 		edp_out: port@1 {
 			reg = <1>;
-- 
2.37.2.672.g94769d06f0-goog


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
