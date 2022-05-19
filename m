Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id BCCC8C433EF
	for <linux-rockchip@archiver.kernel.org>; Thu, 19 May 2022 07:51:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=219K0iqGfZBCmLRtpHqgn1UY6QelKDZqu923BalLWgk=; b=vwbPcg0ZIVLFnS
	SZ68kfcgMp27lTMgygULoAL3k9PlBtr8Bxs+A3r/VvRmnY7ONeZAMjrhdgBtmgyzNPKZCQGjDbo7V
	aeR8Y53wKWlcjIUS7HJx2cLIEROfoq2fW6ymNW3VHJctdx7NcPGcBxTOkrWBfB2OmU4+OWoRLmuop
	hOVLjTy1wQVDELvdoJFINJ+Rd5CWM6omJj27T+yoDwNUJFVthAYiS73RIrEDYa0tFlv/1IbFEv3JB
	6fTHORh1BDDhliZG17Djhw87DU6CUCEUyfScQSjFRrNy14MkETXU0b9w4UsjiGszresuedwpnqS21
	mjwheR7oJdaiPw7Ctxjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nrawc-005dlJ-1H; Thu, 19 May 2022 07:51:38 +0000
Received: from mail-wr1-x42b.google.com ([2a00:1450:4864:20::42b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nrawY-005dgC-UD
 for linux-rockchip@lists.infradead.org; Thu, 19 May 2022 07:51:36 +0000
Received: by mail-wr1-x42b.google.com with SMTP id f2so5945258wrc.0
 for <linux-rockchip@lists.infradead.org>; Thu, 19 May 2022 00:51:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=R8nd64bbYuPtZbk3gzEjUJPg36SEhyQKMYL9m18hVxQ=;
 b=K9Not7I+PyZgkrTUlvVKLMxK26XXWC22aRyuioGV9vGEC1RwgFJcdeonATmNFFb0yn
 46pEFPaO2T4rV+mpEXbhUEk5k6oW2w3YTlo+wy7Lf2uGFDuesPGQwQ4zun5zlSMEzDco
 nFYuNMv5mFtLPDjKpooejPiTdUsLRq1sfAFLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=R8nd64bbYuPtZbk3gzEjUJPg36SEhyQKMYL9m18hVxQ=;
 b=f3EARoex+XcgCv3NV5p2o5u398HFXcDNspiJMC/KLJThlTmJw0FMCTlKuFhVZUzl0Y
 SEaJc6i0ftICYDBmzsRm6H6grGt7g6scZlcNNKD5qgQOm1x/WtQl87r+ZvaI1UM7kc1F
 g6hTWzBmqvBAcX7GShLHnbd6z+qMD0s89KkREK/OxG5Ok91oCCqp3WoodJyK82IeVppk
 bgf0O4p3TLn7tnQq8gF0pvIwcpnogjBJzB6A4StlyFORlJcU6+DktHmkAqTzL6aibDHt
 MUNBW/q1Oel95E+qLPcTMQLgfsRS2cpzID6oTwZVDl0qC/SFD5XGPIUDHs2WZSIMj9Cg
 zPWw==
X-Gm-Message-State: AOAM53388vSZZ1KxsQuXCXrur4yN3HlN9KpQcpAMqVFxIFXqeVegi7Dh
 t8DSQaNHDWHYT1e8Sbq6pvl9e33OEF5OWg==
X-Google-Smtp-Source: ABdhPJxmIkNAYgF+QDQxw92qkyMAyQOfu9THq+oITmvFlxH/AZHtvenhrXRlRO0Ke8oDbg6nXEcIKA==
X-Received: by 2002:adf:f046:0:b0:20d:e9f:9ed6 with SMTP id
 t6-20020adff046000000b0020d0e9f9ed6mr2861358wro.539.1652946686410; 
 Thu, 19 May 2022 00:51:26 -0700 (PDT)
Received: from tom-ThinkPad-T14s-Gen-2i.station
 (net-188-217-53-154.cust.vodafonedsl.it. [188.217.53.154])
 by smtp.gmail.com with ESMTPSA id
 c6-20020a05600c4a0600b003942a244ebfsm3370254wmp.4.2022.05.19.00.51.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 May 2022 00:51:26 -0700 (PDT)
From: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
To: 
Cc: tommaso.merciai@amarulasolutions.com, linuxfancy@googlegroups.com,
 linux-amarula@amarulasolutions.com, michael@amarulasolutions.com,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Heiko Stuebner <heiko@sntech.de>, Shunqian Zheng <zhengsq@rock-chips.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-media@vger.kernel.org
Subject: [PATCH 3/4] arm64: dts: rockchip: px30: add mux for mipi-pdn pad
Date: Thu, 19 May 2022 09:51:16 +0200
Message-Id: <20220519075117.1003520-4-tommaso.merciai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220519075117.1003520-1-tommaso.merciai@amarulasolutions.com>
References: <20220519075117.1003520-1-tommaso.merciai@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220519_005135_069372_0FCE8E3B 
X-CRM114-Status: GOOD (  10.94  )
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

Add right mux for mipi-pdn. Mux this pad as gpio2 14

Signed-off-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Tested-by: Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/px30-evb.dts | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/px30-evb.dts b/arch/arm64/boot/dts/rockchip/px30-evb.dts
index 53930e28eadf..0d05a1b098bc 100644
--- a/arch/arm64/boot/dts/rockchip/px30-evb.dts
+++ b/arch/arm64/boot/dts/rockchip/px30-evb.dts
@@ -450,8 +450,8 @@ ov5695: ov5695@36 {
 		dvdd-supply = <&vcc1v5_dvp>;
 		dovdd-supply = <&vcc1v8_dvp>;
 		pinctrl-names = "default";
-		pinctrl-0 = <&cif_clkout_m0>;
 		reset-gpios = <&gpio2 14 GPIO_ACTIVE_LOW>;
+		pinctrl-0 = <&cif_clkout_m0 &mipi_pdn>;
 
 		port {
 			ucam_out: endpoint {
@@ -544,6 +544,12 @@ cif_clkout_m0: cif-clkout-m0 {
 				<2 RK_PB3 1 &pcfg_pull_none_12ma>;
 		};
 	};
+
+	mipi {
+		mipi_pdn: mipi-pdn {
+			rockchip,pins = <2 RK_PB6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
 };
 
 &pmu_io_domains {
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
