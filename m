Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA86D606A339
	for <linux-rockchip@archiver.kernel.org>; Fri, 20 Nov 2026 11:36:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=lists.infradead.org header.i=@lists.infradead.org header.a=rsa-sha256 header.s=bombadil.20210309 header.b=bSBQl3Qt;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20260707 header.b=zK7isIo7
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=DgHe2nixOgOmCsh4Rjm70GyMeDiRsKlOAg5I1ByL5nM=; b=bSBQl3Qtf2BMu1uijwGWyWPWuw
	2fO33orN22sEFcbtKB9RTnb7ac2CZ+3tawaxll+S1/o7xsSEvd5JuYomqEYMYNbwRdK9gzclRu7wz
	f/WSrhxv/iO76/wKuvvAuAx78j7DQtyD5xrWE2DR/Z5QiC0tnLpDG/sCWjcACbiSrIVln5j20PCkW
	VEkvRC56vYFFKJ4pIKT3b3cah7txv3L/5SkPCNg/a6CqZArqEoh2KHRIhV/bKzID5tJCCKAOhMwr2
	SU6hYsSkRvcTdshFSfYPhe4Xtb9nJ97AK2x1rVeFFm6IObHFNKrRDigE7mr40p7DeXTvta71A709A
	+QmXtq0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMuP-0000000Ep0k-1ZBw;
	Fri, 20 Nov 2026 11:36:01 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xUMuM-0000000Eozs-0gZC
	for linux-rockchip@lists.infradead.org;
	Fri, 20 Nov 2026 11:36:00 +0000
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-490c3ae81d3so447699f8f.2
        for <linux-rockchip@lists.infradead.org>; Fri, 20 Nov 2026 03:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20260707; t=1795174556; x=1795779356; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=5rrMQra0cZM9+1upaJuZrzcLt5QpE789pWlJu6nut9k=;
        b=zK7isIo7lcjJtHj72DJapXuArQHNA6JyPIj0/UX+QWMmKlBA62PmBDVxdV43j3EZC0
         A0Y1oVLfjxemDWYyX3jwUrTBmXG06Aacpn0uPn/+eLaXosDEo3/ngpdxSLTPdUcqeZ8y
         szWtplTUn/1gdwpr4LR/yv5qaSTXXXWMBXNeyh3I1vBHgjDfcyYjGodaW9kJf+/U6WDz
         3kvJ5mZksIvWiEVDSc4d8pDXa9z9WrNYSh/bdZgyX430uobBR+brhl10OyUTsNxYVvlR
         ch1Z7igPLoGtdfahkPq4z3yIgsXkFZl8b7hEjOAcCQWfMVD3yej84uxLVV+D7TXCFnm2
         VOXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1795174556; x=1795779356;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=5rrMQra0cZM9+1upaJuZrzcLt5QpE789pWlJu6nut9k=;
        b=zbSR5munP1ypOQTIJS/4qlepYSshv1Pf6wRBt14L06sv1z+VJe3XbPq7Kd5/ItzZLS
         z6vDnso4WQ91OUwscDmvQzP6wKhoa9wlx7uRrusXkpSkSBu4Vtiy8a9SD4xMYsK44iWb
         knDaH5R25I6v3EGnGBIm9JFk/AqCD+HIfTpY0VHPPxc8zxvDrNr5M7gmjuHJo8dBjeQD
         h4XX+u94utUB2eiINtizPVqLxuBQWaL7K6Zu+vpGwo4Gy0gTMTlW3mFJEIGnYv8vnZ+7
         q55Q/UQiDLlffy3d7CczBAwY86fuIfhvx2/D3skiiy0Cy5zfFp8R6SfvSLuSPulb8z6s
         K/gQ==
X-Forwarded-Encrypted: i=1; AL+hErGgCTNthkjI675mj0jhkSGq6QW/QaWk8U4tF4iNN/MXYVBSRI30C1l0W0lEzq3MZug375vw3Od8XAnfxucblQ==@lists.infradead.org
X-Gm-Message-State: APuU4Z9RSmYxugAzcXAV/lDovfXEc+603ZDDlbOKKEOD3ZVBKnX/vW2s
	xp5kuTUwFCcUiC72jSHUQT9jfADjrSnhyc9IQUx1YsqChsHJuT7vi2z2
X-Gm-Gg: AZFdTZcbxG25UufbxLlZKsa6J0ayRnSkEwOS9rV8dg4kmLyFDXAJ4GNnZUdaoTHVd3Y
	o5v/ijXYT6TqXNTdpgsliws1ySblt0ZMTdcJdp9iGsq9DpGMl5TmUPsKE8b4g3vI3XqS48V4or4
	GY5p5amTrsDqMbQt3JSsnVBFbcR/vZG3oyMLAnXxL6ImwpJbCWeYbI719GRqoaDsZPDEXtmr4y3
	6j/v6CGhfumooW2Kwfh+4OvHBGdLslflySdpCjzDNAXpKHmUTNaPgTqVO/OnvoyBc+UhZ1Tn0Ev
	ryHpVUI4tK/G68olGapQcA7q4Mx3xHPAUnhz5t54hX1/d60Cbdb4DeFJFSvxADrKA5IH3Fhh5/j
	N2q7baAMlHnkEnVydvwC5PpqoiNJSqodSvVDSrCX5mO9nb6LmOn5QMAo4QeVcuRGxXIUWhy7pDE
	iIQ7po81LCE6OfWFXPimR2/yV8YLfbCc3b303t/cX9kRovYkZWNBb1jStQhQmgPopA2FU/WJZtA
	zXfDou4ax8lCP9Og9/hNbXgoUAEpwoBUxNsLs1hNlkuIg3SWDHgElhQmTkcgbeUTVxd+BKVTzqW
	ZKXEpkBjYCPG6/VhdHL9t29FT9RY0b0C1MD0VWo2cUY1ALZukCkmBm4t1I9BY931Pn726uUp94E
	=
X-Received: by 2002:a05:6000:46cb:b0:48e:4300:c6d8 with SMTP id ffacd0b85a97d-4abb3d2bf37mr4464668f8f.35.1795174556179;
        Fri, 20 Nov 2026 03:35:56 -0800 (PST)
Received: from debian.tailb81abf.ts.net ([213.152.28.84])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4ab6a67f1b2sm4735728f8f.25.2026.11.20.03.35.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2026 03:35:55 -0800 (PST)
From: MidG971 <midgy971@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Midgy BALON <midgy971@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: rk3568-rock-3b: describe the Ethernet PHY LEDs
Date: Fri, 20 Nov 2026 12:35:55 +0100
Message-Id: <20261120113555.1402132-1-midgy971@gmail.com>
X-Mailer: git-send-email 2.39.5
X-Archived-By: <archiver.kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261120_033558_464261_80F3348A 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.9 (-)
X-BeenThere: linux-rockchip@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: Upstream kernel work for Rockchip platforms <linux-rockchip.lists.infradead.org>
List-Archive: <http://lists.infradead.org/pipermail/linux-rockchip/>
List-Post: <mailto:linux-rockchip@lists.infradead.org>
List-Help: <mailto:linux-rockchip-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-rockchip>,
 <mailto:linux-rockchip-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
X-Spam-Status: No, score=-13.8 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,
	FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,
	INCLUDES_CR_TRAILER,INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,
	SPF_PASS,USER_AGENT_GIT autolearn=ham autolearn_force=no version=4.0.1
X-Spam-Checker-Version: SpamAssassin 4.0.1 (2024-03-26) on
	aws-us-west-2-korg-listserv-alma10-1

From: Midgy BALON <midgy971@gmail.com>

The ROCK 3B RJ45 jack carries two LEDs wired to the RTL8211F PHY LED
pins.  Describe them in the PHY nodes' "leds" subnode (binding:
Documentation/devicetree/bindings/net/ethernet-phy.yaml) so that
PHYLIB_LEDS instantiates one LED classdev per pin; the RTL8211F
driver drives them in hardware via led_hw_control_set (e.g. the
netdev trigger with link / rx+tx modes: amber = link, green =
activity).

Tooling disclosure (per Documentation/process/generated-content.rst):
the DT hunks in this patch were drafted with AI assistance (Mistral
Vibe), then reviewed by the author and verified on a ROCK 3B board:
the two PHY LEDs appear as stmmac-*:amber:lan / stmmac-*:green:lan
LED classdevs and drive the RJ45 jack LEDs via the netdev trigger
(amber = link, green = rx/tx activity, HW-offloaded to the PHY).
Signed-off-by remains with the human author per the DCO.

Signed-off-by: Midgy BALON <midgy971@gmail.com>
---
diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
index 9eef59ef7d07..8ffd393cbfb6 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3b.dts
@@ -605,6 +607,22 @@ rgmii_phy0: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <50000>;
 		reset-gpios = <&gpio3 RK_PB7 GPIO_ACTIVE_LOW>;
+	leds {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@0 {
+			reg = <0>;
+			color = <LED_COLOR_ID_AMBER>;
+			function = LED_FUNCTION_LAN;
+		};
+
+		led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
+		};
+	};
 	};
 };
 
@@ -615,6 +633,22 @@ rgmii_phy1: ethernet-phy@1 {
 		reset-assert-us = <20000>;
 		reset-deassert-us = <50000>;
 		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+	leds {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		led@0 {
+			reg = <0>;
+			color = <LED_COLOR_ID_AMBER>;
+			function = LED_FUNCTION_LAN;
+		};
+
+		led@1 {
+			reg = <1>;
+			color = <LED_COLOR_ID_GREEN>;
+			function = LED_FUNCTION_LAN;
+		};
+	};
 	};
 };
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
