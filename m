Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D04D9F9D0FC
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Apr 2026 21:41:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3sGNA1fUzYiO5Tz0btSMoYIYOn5pYZSshiE5Vcaoxes=; b=fStgnJr/QfopTP
	4rQ0SCMWAiRyvXfNNw73Xr5hVzrP6PohOIbeLG0kauagIh0wPlmRJimXy/LCVO8w5OnDsppWyhqEI
	ydV9dS3JZE6IAvYrt6eG7nSVS++d21jpioOU86l4uE27IeiejYBKe88Cd60agmgpX9+9piRkKSc/8
	qOodWMpGLFuH+/Ey4YOQg1qalCSWJ168IBZHjXeXfdbolTNnftIVuOL7vzyfRz9u2KRQnbgR3VNO+
	QDtv+fTOl9GmZ5tDjrGYLt0KcstyJBFO9cvRicFb7dlADxnX9LWPhDAqFqmm5JMxy+QaBCAYBMAua
	WJdVByzM5h+bBF+cFPcQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVa-00000000FlZ-2Sur;
	Tue, 14 Apr 2026 21:41:22 +0000
Received: from mail-ua1-x962.google.com ([2607:f8b0:4864:20::962])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wClVT-00000000Fdq-2qh8
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Apr 2026 21:41:17 +0000
Received: by mail-ua1-x962.google.com with SMTP id a1e0cc1a2514c-94ac8cbf3feso3636950241.0
        for <linux-rockchip@lists.infradead.org>; Tue, 14 Apr 2026 14:41:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ausil.us; s=google; t=1776202874; x=1776807674; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5Q87q408S6kD03eCdhgkumlXWLlyzkrJl5PR3laXuXk=;
        b=BYnPAt5bbewm2PK27x9h+qTeNU3tSQevdgELl2R8j6hPcJiQz0u3TWUPZ2lpEpANu5
         ltWpQXOH1X16RjbK0OURBp8RIXjRXkrYLXn5eRMbL7uekTa4c9r1vBY46k/SyX1IGVRs
         Yo+HFTLYKCKBoDYfFkT864mvpWa4eBgQsn96ZmcelVc8rINMaKZJ67DVVBAQ1TX8IxCe
         eNOYupoSOUKH/Of+qhoiy4bkH6HY70TYeQAhdmvqOHC4HgSlkUS9wKgGJEytpoEfmtCZ
         Fc4hLNQP1woxk6px1s9xZ3Md4J3//JyD6EV1Bi956aEC+0RiEYDfuhQwlHTBOy8o+xaO
         24+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1776202874; x=1776807674;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=5Q87q408S6kD03eCdhgkumlXWLlyzkrJl5PR3laXuXk=;
        b=gY8sE1Z/u1K92wAGolwRi54OorzVD9fuR3Q4igEzinZr4dqXfaGyCDIlit/B71jyXK
         nEMW184xAsSR9gixcwY3DISbB4S2CcVUWqGVZIHX0oD9KQXs9w5ByfnpQ34JWUayn641
         /I2xes4vlCZdecqmAj749kqj9bklYzN2TrzoPDgaHvS75dVwHilQW5cnjroCVIFi4+ui
         VEef7Zr6ILWC3BCRvsENnkBM563jEWi+9MzYu5360ZGWJKZdlJlfKhN+nRwoXwU/N+E5
         MSId4gWzxiEgwBRUCxOmZ5ZvI7Emgvz0vuziw2IIbJfhSBoNXLioVKo6i/7fQ38gOGfW
         t7Dg==
X-Forwarded-Encrypted: i=1; AFNElJ8bJNsWtCkDdFycBiqVeJRPfD/MUaq+mT8HMgHxIXgeioXjakVPkmRGPP4Hwei3/5Pf3L7B/eVWpklIjjiQPA==@lists.infradead.org
X-Gm-Message-State: AOJu0Yzp8A7atn5Yl0IoAMkf62oCLlCJTyJvhVuTM7HuZOnof5B9ssqK
	YTcO0CITYt8zzijRaK+T0MGr/A0aqqzbuPdbb+N6CXl7kZyHrf+UzohkwM7cRVfivR9wBQyjj0V
	HwN1CV0S3RDt5uViicGCJDDjVin142mPlNwrv
X-Gm-Gg: AeBDiesiuVM67DAmxjUAuV/RJWO5IeomBzsWTbI6d2cSC7bt69YFtQH31XjivTnb9Ju
	sqN/2npXMjzlhSiZIFelmOsrzwTdf0/7kEP4Jegjuipod/z+qEHvWa2rH8tmiI+hNsH47SOgszn
	RiybGCYR+6DIKKazMa3eNKlFFKp0yDsTGsg5y2Qb0uJt3g/ZBDuWD5aX/YzgnqsIBHAeRqdPkCE
	mBrLuR2wHkLTSWXJjkqfdsmbr7xvwcwZ1ETG1sCJczH2f3WcaJENWofZfdUYZRKJdkp76t4zAj2
	e47yTojKcsYR0GqYsXNC+CGLkvH8wc4iO775+JeyVecYCtVgg8awZKK3ekw6gWRHr0dRPFjc25f
	q+5f2tU3hVHqJ0aX62vI81PNJjx0AMsOQScvwSzd9eErhnnmnp+r9rW4=
X-Received: by 2002:a05:6102:4b81:b0:605:5d09:8631 with SMTP id ada2fe7eead31-60a010583b2mr9353897137.29.1776202874377;
        Tue, 14 Apr 2026 14:41:14 -0700 (PDT)
Received: from ryac.ausil.us (207-179-239-100.mtco.net. [207.179.239.100])
        by smtp-relay.gmail.com with ESMTPS id a1e0cc1a2514c-95691131afesm346899241.1.2026.04.14.14.41.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2026 14:41:14 -0700 (PDT)
X-Relaying-Domain: ausil.us
From: Dennis Gilmore <dennis@ausil.us>
To: 
Cc: Alexey Charkov <alchark@gmail.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Andrzej Hajda <andrzej.hajda@intel.com>,
	Chaoyi Chen <chaoyi.chen@rock-chips.com>,
	Conor Dooley <conor+dt@kernel.org>,
	David Airlie <airlied@gmail.com>,
	Dennis Gilmore <dennis@ausil.us>,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	FUKAUMI Naoki <naoki@radxa.com>,
	Heiko Stuebner <heiko@sntech.de>,
	Hsun Lai <i@chainsx.cn>,
	Jernej Skrabec <jernej.skrabec@gmail.com>,
	Jimmy Hon <honyuenkwun@gmail.com>,
	John Clark <inindev@gmail.com>,
	Jonas Karlman <jonas@kwiboo.se>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-rockchip@lists.infradead.org,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Mykola Kvach <xakep.amatop@gmail.com>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Peter Robinson <pbrobinson@gmail.com>,
	Quentin Schulz <quentin.schulz@cherry.de>,
	Robert Foss <rfoss@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Simona Vetter <simona@ffwll.ch>,
	Thomas Zimmermann <tzimmermann@suse.de>
Subject: [PATCH v7 4/6] arm64: dts: rockchip: rk3588s-orangepi-5: rename PLDO regulator labels to match schematic
Date: Tue, 14 Apr 2026 16:40:55 -0500
Message-ID: <20260414214104.1363987-5-dennis@ausil.us>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260414214104.1363987-1-dennis@ausil.us>
References: <20260414214104.1363987-1-dennis@ausil.us>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260414_144115_758958_8FB77418 
X-CRM114-Status: UNSURE (   8.82  )
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

The Orange Pi 5, 5B and 5 Pro schematics label the RK806 PLDO outputs
using the pattern VCC_*_S0 / VCCA_*_S0 / VDDA_*_S0. Rename the base
dtsi regulator labels (and the es8388 supply references) to match:

  pldo-reg1: avcc_1v8_s0 -> vcc_1v8_s0
  pldo-reg2: vcc_1v8_s0  -> vcca_1v8_s0
  pldo-reg3: avdd_1v2_s0 -> vdda_1v2_s0
  pldo-reg4: vcc_3v3_s0  -> vcca_3v3_s0

Also update the saradc vref-supply reference to track the pldo-reg1
rename. No functional change.

Signed-off-by: Dennis Gilmore <dennis@ausil.us>
---
 .../boot/dts/rockchip/rk3588s-orangepi-5.dtsi | 26 +++++++++----------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
index dafad29f9854..fd5c6a025cd1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588s-orangepi-5.dtsi
@@ -274,10 +274,10 @@ es8388: audio-codec@10 {
 		compatible = "everest,es8388", "everest,es8328";
 		reg = <0x10>;
 		clocks = <&cru I2S1_8CH_MCLKOUT>;
-		AVDD-supply = <&vcc_3v3_s0>;
-		DVDD-supply = <&vcc_1v8_s0>;
-		HPVDD-supply = <&vcc_3v3_s0>;
-		PVDD-supply = <&vcc_3v3_s0>;
+		AVDD-supply = <&vcca_3v3_s0>;
+		DVDD-supply = <&vcca_1v8_s0>;
+		HPVDD-supply = <&vcca_3v3_s0>;
+		PVDD-supply = <&vcca_3v3_s0>;
 		assigned-clocks = <&cru I2S1_8CH_MCLKOUT>;
 		assigned-clock-rates = <12288000>;
 		#sound-dai-cells = <0>;
@@ -441,7 +441,7 @@ &rknn_mmu_2 {
 };
 
 &saradc {
-	vref-supply = <&avcc_1v8_s0>;
+	vref-supply = <&vcc_1v8_s0>;
 	status = "okay";
 };
 
@@ -666,8 +666,8 @@ regulator-state-mem {
 				};
 			};
 
-			avcc_1v8_s0: pldo-reg1 {
-				regulator-name = "avcc_1v8_s0";
+			vcc_1v8_s0: pldo-reg1 {
+				regulator-name = "vcc_1v8_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -678,8 +678,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_1v8_s0: pldo-reg2 {
-				regulator-name = "vcc_1v8_s0";
+			vcca_1v8_s0: pldo-reg2 {
+				regulator-name = "vcca_1v8_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1800000>;
@@ -691,8 +691,8 @@ regulator-state-mem {
 				};
 			};
 
-			avdd_1v2_s0: pldo-reg3 {
-				regulator-name = "avdd_1v2_s0";
+			vdda_1v2_s0: pldo-reg3 {
+				regulator-name = "vdda_1v2_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <1200000>;
@@ -703,8 +703,8 @@ regulator-state-mem {
 				};
 			};
 
-			vcc_3v3_s0: pldo-reg4 {
-				regulator-name = "vcc_3v3_s0";
+			vcca_3v3_s0: pldo-reg4 {
+				regulator-name = "vcca_3v3_s0";
 				regulator-always-on;
 				regulator-boot-on;
 				regulator-min-microvolt = <3300000>;
-- 
2.53.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
