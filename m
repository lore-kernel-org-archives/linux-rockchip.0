Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 77BA5C43334
	for <linux-rockchip@archiver.kernel.org>; Fri, 10 Jun 2022 13:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nk6Nxk4EClO8/LGTKEmVsqhQ5LXeUXsiQXCJLxjn6ok=; b=Ym62DuP2Fxp8ED
	/ZjtlIkFCj2CAp9Pw1Pfcs/jdQxvcQdNLZAwWydXsuPYvjpxwv3hoswlTw983uqolTL2H9YmbQXA6
	rd532IeFi5e6L6HjIRAlWhrtKnmYjFeGfbevCb42xG99LSmHayXb9BUuMNDW4lyBOFH2Mq11Hzo1E
	idrzgu4x3FYebLmEnhvGjhPrd+/P7Iswdirbr1BSVh6LLPUp53iltfeLoxO29KAjAdc5nYaGQq3ha
	wB5NboRl4hVehJyI50Vit9N5hh56ycu0JDRgIMf9BznqGiAwsobGE31PcYonfNJghQwA4emt3R9TC
	ifj8yCuU45g6udZ/9eLw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzeeV-008MXl-TS; Fri, 10 Jun 2022 13:26:15 +0000
Received: from mail-qk1-x72c.google.com ([2607:f8b0:4864:20::72c])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzeeL-008MSH-1J; Fri, 10 Jun 2022 13:26:06 +0000
Received: by mail-qk1-x72c.google.com with SMTP id x75so16443891qkb.12;
        Fri, 10 Jun 2022 06:26:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ow44vJixTJI3bDLbO6IuQAgGyjbFuK55tv6KHdA7yKE=;
        b=mlTLGiRQqGAqZUXhGPc9iKwdlZB0ss78nnQ8j03HInq0uIUB98UynOy2B/ZNvV/Y/N
         X2h5Uh8tnxYia6rUZqlhfoR9fI0ipHP0GFy1zLRw/gvoWjv2M/myc/cYmoBMgEVrbaLA
         B1olK1qQB65AuFPKiA/5OayHIYJKZTD0jxadaqxkCpAIbCbaxIoO5M/iwZg9pcIgnlVc
         gPjc0XLZvEI2CeRF/9CdKWV+BHS3kPiS4cM6ib/oaaXaC3g9uv8vnkj1MrVqV1aniZO6
         ztmA5psXbfaulM6yvIE1BxqpgC8ZR9bXeyg6lzmmKgTCsh6mwk1MiBGHnZ02i3Ked4dN
         c9Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ow44vJixTJI3bDLbO6IuQAgGyjbFuK55tv6KHdA7yKE=;
        b=l6YT805Js0dn6sAXmpweWb8vD0/yq40iFxQP2J7gIIMQ2hiBp5GG5rjB4rGh/BJvIJ
         OgVlugjIGlRFmulkOLvuRQsXJjiuQ8Ky6C+jjabThu0X/dMZ8jkSQBRCWO/1hVNFYpts
         RSKt3UA2o60XCsrIWJMcPR9h1+erEWoeuey/F/f87+ZjN49gaqIRMdpDR/9/vOmlRRqF
         FunEast4O8SdJQE6eHYTheqfSqjL3bmelaaqnM3gwHAprg9KNJKidamnw40aObxRUj2C
         VSlN/QDzFkJ3J965nq0ad0tpn9obMmEaObFshEAWDy6mXEE+yJ2lghO1pVzMu6wANukY
         /94Q==
X-Gm-Message-State: AOAM533lPPRb9WI3jmOPkn88ENNi7MdRIkHz24ZHEc5PJjKu3wW3ebHO
	fA0B3SrjIs8Bd2o8CrmWV70=
X-Google-Smtp-Source: ABdhPJzdF9S6OSps6LldwbWkRol9JBXWt5aJOVrTn8JJEeavL0ZEONRe2Eo3CfToQROOPOUB1v4uQg==
X-Received: by 2002:a05:620a:4726:b0:6a6:d207:7a3f with SMTP id bs38-20020a05620a472600b006a6d2077a3fmr15475207qkb.239.1654867564570;
        Fri, 10 Jun 2022 06:26:04 -0700 (PDT)
Received: from master-x64.sparksnet ([2601:153:980:85b1::10])
        by smtp.gmail.com with ESMTPSA id w184-20020a3794c1000000b006a098381abcsm21509546qkd.114.2022.06.10.06.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 06:26:03 -0700 (PDT)
From: Peter Geis <pgwipeout@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Michael Riesch <michael.riesch@wolfvision.net>
Cc: Peter Geis <pgwipeout@gmail.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Fix SoQuartz CM4IO usb
Date: Fri, 10 Jun 2022 09:26:01 -0400
Message-Id: <20220610132601.160088-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_062605_092608_D604DAF8 
X-CRM114-Status: GOOD (  10.10  )
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

The SoQuartz CM4-IO should support otg mode, however it currently
defaults to device mode when otg is enabled. Force it to host mode to
retain the previous behavior.

Fixes: bc405bb3eeee ("arm64: dts: rockchip: enable otg/drd operation of usb_host0_xhci in rk356x")

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
index e00568a6be5c..56764fae9f9d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-soquartz-cm4.dts
@@ -169,6 +169,7 @@ &usb2phy0_otg {
 };
 
 &usb_host0_xhci {
+	dr_mode = "host";
 	status = "okay";
 };
 
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
