Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D98AC7619A
	for <linux-rockchip@archiver.kernel.org>; Sun, 26 Mar 2023 20:45:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TdcGv20iELjDUNGbM86vCWGEbw3qaj6T7hfG+6WBs7A=; b=iXmo30cASfVxs2
	lHchfniYznXIlf2l8rzOsrF0TtkoMWw9leInW2A/bOiDJnntVQYtUSqDWlgMVlvcnGWre4s9sG+K9
	oklxHwhre/SdhGffokAp0gi0NA4x1Cu9qcPPtMZ8TAFuQLNJtSU3Sejt1sPPvf2aOEe2SKbI124kJ
	DIOvij/1v33wU7H4C14/lykGJ9MKGpDIoznyZ13NDZrkuMyXAVxTA0irmzZKjMsmNLzNVOM0rI0Mo
	GHFVsD+E/2LvxQndSgyQXDE7FZe0klLi/7kQRWx1ClnXIgQ+NEtKgnsdEjDWMbM/pMc5Uf5xXQHhe
	BM/ID5ueGonwBsJsxQ7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgXFA-009BVl-1F;
	Sun, 26 Mar 2023 20:45:36 +0000
Received: from mail-ed1-x52a.google.com ([2a00:1450:4864:20::52a])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgXEz-009BQY-1A
	for linux-rockchip@lists.infradead.org;
	Sun, 26 Mar 2023 20:45:26 +0000
Received: by mail-ed1-x52a.google.com with SMTP id t10so27843583edd.12
        for <linux-rockchip@lists.infradead.org>; Sun, 26 Mar 2023 13:45:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679863523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=E0i+V8G7VdrK/84+XZ0FJoiVtupVc5YlW2vczBepMrk=;
        b=N4d0IndMuyD4ayxxCiLuUSkQOXoR+pdQhWDyB2S/LO++7YRb/1nBCVGWgUUcENLFFP
         rJ45zYpBmlA4cLr1AgOL8lPYtrovKYY45nBNXQsIHZJ+nwZndhMY5GE0QuX5u5mh9kUK
         /P2TaF7atG3fldx5Yew/xw9RXAG+VYjdg1ePjG18jdVHeOuc6jb0vu34CRZvmJ83/RVE
         MCSmKQPxMh5XsrjZ5goHoF52U6B/ayMozmYtpShO0ZUhDB1lvFkUlD1Zp20Ial+EtBJJ
         wOAKTF+hSboQvl5NyNtxgj9/M4AEobruZNbIxDch0ZAN14gB9ATMOC/zy2p+TcPNn3TV
         VqJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679863523;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E0i+V8G7VdrK/84+XZ0FJoiVtupVc5YlW2vczBepMrk=;
        b=7tshRa7tiBykaTUzzbMpTR57nTZJXxZkkI4GHy5NgNnwbEHZZP/mAE28gRxjI1PQp0
         Hu6INssaDhgbOv8mQOlaSvfikYDolxuss9a3XVWVuAwjxJzYFK+Vukw4AqEZqt65TdB/
         6X9YuItA/RETVnGaUcP3oomA9VUtsj7pWnEttUpZu08hix7DTPqz355Lx+g4gx3eqxcQ
         5PvB8NPajQEBJaJSK/sXId9QP4XZ2zOzfYr6QdjB0xN4WuAJTDgH/pvuf8IF8c28++AW
         opeCPjUI6uvpvs7+tBDDYrnBiUC1B+vAYveMqbyVtyTCah4RklsR1dowFkI9NhdVTTZW
         Pvsg==
X-Gm-Message-State: AAQBX9e0ik01rg0xMcKjSgiVyLwDIYeh1IGASI0N2bBecFjkRtHg/zr5
	toTNTwTgJYmkty/bByg+uAT/WA==
X-Google-Smtp-Source: AKy350ZVWzfpQH3Vv3fya5+Swd9/DQof6OEiE4x/vV5J3lMabZeCVhLRbM1KfCFu1xvTRqLTtZAwPA==
X-Received: by 2002:a17:906:2bc9:b0:939:e870:2b37 with SMTP id n9-20020a1709062bc900b00939e8702b37mr10695350ejg.70.1679863523176;
        Sun, 26 Mar 2023 13:45:23 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:6b51:4748:3f3f:ffcf])
        by smtp.gmail.com with ESMTPSA id ga5-20020a170906b84500b0093e23d03d72sm4090982ejb.177.2023.03.26.13.45.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Mar 2023 13:45:22 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 2/3] arm64: dts: rockchip: use just "port" in panel on Pinebook Pro
Date: Sun, 26 Mar 2023 22:45:19 +0200
Message-Id: <20230326204520.80859-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230326204520.80859-1-krzysztof.kozlowski@linaro.org>
References: <20230326204520.80859-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230326_134525_401522_4F57B6FD 
X-CRM114-Status: GOOD (  10.43  )
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

The panel bindings expect to have only one port, thus they do not allow
to use "ports" node:

  rk3399-pinebook-pro.dtb: edp-panel: 'ports' does not match any of the regexes: 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/rockchip/rk3399-pinebook-pro.dts    | 16 +++-------------
 1 file changed, 3 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 54bb0398128f..ddd45de97950 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -50,19 +50,9 @@ edp_panel: edp-panel {
 		pinctrl-0 = <&panel_en_pin>;
 		power-supply = <&vcc3v3_panel>;
 
-		ports {
-			#address-cells = <1>;
-			#size-cells = <0>;
-
-			port@0 {
-				reg = <0>;
-				#address-cells = <1>;
-				#size-cells = <0>;
-
-				panel_in_edp: endpoint@0 {
-					reg = <0>;
-					remote-endpoint = <&edp_out_panel>;
-				};
+		port {
+			panel_in_edp: endpoint {
+				remote-endpoint = <&edp_out_panel>;
 			};
 		};
 	};
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
