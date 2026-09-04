Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 24D0AC79F88
	for <linux-rockchip@archiver.kernel.org>; Fri,  4 Sep 2026 13:09:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oCERNUwN6SGo+ebJqN8oxUqN61/LBqvULDor8oEL/+c=; b=AwZM+ywLgIIIMu
	w8CRCP8dJ421CvHENQMzMLBoLKGMzwzOT+65p100MpnpKIvBrSED/T+IWDUiHQ7f9oqFC41a7hA+p
	RqOv5mYsmCaEzyJVtf8n0r82ug5SbekjlL/NDJEYxXIRwa2HhJc312rI9Qcr+lOIT0DNeAS4yrblr
	zaiDoIuY/Z4UaRCdYauHsVPj/P7eh2Fw0B79LzxAaLXi9TaWNchZGPuSmRZ+0cDDrS+vSkJIeWvXx
	y1JZm5kEVuzf2xoGq7Zs7JN2m05wY38y3JIj/G/tsoTgddiG7hpeni4nzOh8++6F8kcK9mpB3nF/h
	O4fp9g4SAGqEp+6QAyvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfp-000000026nm-0QMK;
	Fri, 04 Sep 2026 13:09:41 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x2Tfl-000000026hh-0cbl
	for linux-rockchip@lists.infradead.org;
	Fri, 04 Sep 2026 13:09:38 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-499dd4900dfso962085e9.1
        for <linux-rockchip@lists.infradead.org>; Fri, 04 Sep 2026 06:09:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1788527375; x=1789132175; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=E/t7wxFBsuNgANZ3txwtSGvXS0Fyj90ixWLfFCZVhFw=;
        b=b1w2K7r5geNnJ5qf3BGQWPBOsdvEAHjhM/9u722KDgG1FFLSAzs5hM/PjSLboTlQDW
         VrjdmW4QA9awmLD7J7VyEKrsG0Nn8KrApCr5pNF/GBRmf+/VR9Tp5zXBZcGdvGzs5C41
         VJ7TuzF0fER68Lkf3y3tkJ23zG4HEGT/vlJ+6lXdqSSlE6j3jI8q4Y9AqoMqM2Af+I2b
         Bxb935bMU8lKD99J5F4Mx+GvzJdujPc/Cvyr9eZCThuK8RB3F36agcn0b6JDBZnEtU9H
         3mNRmI4mfaj7wLDmpTIvxAmMpe/k8ulwqgVk2MdhyTbzxkX/RHgUGYpNaY3EBdEsjIbR
         h9Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1788527375; x=1789132175;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=E/t7wxFBsuNgANZ3txwtSGvXS0Fyj90ixWLfFCZVhFw=;
        b=adCETV8HVUh2m9f6pF8Zo0RP+YQFULGbwz1IBXkGpEg1iQb4hxMJWWltnO97/t3y9D
         VD7Eg7Cyyluhr93KN5a7P1c/D5EObBJbTzjx7uYLHeKrSSaU9iecElHzCO8mlelQSzFv
         oK9+UYpHQmID4sn8ZYc9WX19X1j0I5xaRV5AOv0Q7oVc1rDU6B7mL2EcTgHeCvELFJv2
         N44LUOrjvCG1/VLyeknsnHTFDOnwzcWmmpyg4EFVAnZgEOcx1ManoVtZqn7TfTkEwMTI
         oY/ACdYomDn/CltOJ4T6i2wM7SdQYBu560m50E8/xzlNwqcvrMyloccO7GDDzM4fWmA0
         olIQ==
X-Forwarded-Encrypted: i=1; AKwUvBzBk90xH4QobcY7bJO49FfAj09+dSttErzuTmCqGexnJAnKmIcgB1XLAImVpwOYEzULFbiHOVf4GVd2Lh2trw==@lists.infradead.org
X-Gm-Message-State: AFuF++lfDJwWIdvwwy4F797q9ylZClG2DyrNO0/f8ty1LiD2BcUervPp
	KclddCv3L/BiZRu5xdLyhrDtLLEmyrIubLIjezxnRC3sJPH2tuTRxJk5
X-Gm-Gg: AYBFou396xAnor6OJLhc7jzfQ2xsdFLc8DU5bjvsedCvgBIZTLwhBxtOPCaMXPjWS+8
	pbzQTqPE9izEtMWDyd3Myr9IH/G3AulzkTddRO6pqTJrGkPm+aelqqLPmbqJZzFFzp0LH+6DL18
	EwGk8Z0KuRYanqmTdMN4Fji8YAaWv6KVqZgt9wb3EIFDC5fV3EAOxCOZQCsKcpBP8qbNqXu/GQY
	r/a6q8BiWu1Htc06U4jE/uRoyO5+XIZajPIjVr9gy70NqKzWI1XeGk2BLtcGYz3LzCHaRJkqaDm
	SycKlvlmlvgir+AAXSzxRcNN/N0QHLhRDYk15oewWnDLauf2WJMWLYGiQXUt+qUjcXq0lSjXOFR
	L6RRk4TNvkqWOIPu1bgp/Jp1TJzafn4y+x6k0XG/7KqwhLRq5j15UhMyiHmM6WlcouaL5kf75rO
	r4segmt/kTrw24xDkyDj/l3lFOwnx24XGVXVG90hkWRpOQpJmuorqqejbT8Wl1pZhzd49do4Lj4
	3DldSVYIEFng7+DlcbtJIQZGt4kpWiskgZwo/cbgkhiA3gXpbVAS7axW6JLGyCys13O
X-Received: by 2002:a05:600c:1c24:b0:49b:9241:7ff0 with SMTP id 5b1f17b1804b1-49cf7f4d9b7mr51876155e9.0.1788527375338;
        Fri, 04 Sep 2026 06:09:35 -0700 (PDT)
Received: from OrangePi5-Plus.BB-HOME (20014C4E1B871500CB6EF488A18F9C42.dsl.pool.telekom.hu. [2001:4c4e:1b87:1500:cb6e:f488:a18f:9c42])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-49ce554d52esm135575435e9.3.2026.09.04.06.09.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Sep 2026 06:09:35 -0700 (PDT)
From: Igor Paunovic <royalnet026@gmail.com>
To: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Oded Gabbay <ogabbay@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Sidong Yang <sidong.yang@furiosa.ai>,
	Diederik de Haas <diederik@cknow-tech.com>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	Jiaxing Hu <gahing@gahingwoo.com>,
	Nicolas Dufresne <nicolas@ndufresne.ca>,
	Jonas Karlman <jonas@kwiboo.se>,
	dri-devel@lists.freedesktop.org,
	linux-rockchip@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Igor Paunovic <royalnet026@gmail.com>
Subject: [PATCH 7/7] arm64: dts: rockchip: rk3588: add passive cooling to the NPU thermal zone
Date: Fri,  4 Sep 2026 15:08:58 +0200
Message-ID: <20260904130858.27803-8-royalnet026@gmail.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260904130858.27803-1-royalnet026@gmail.com>
References: <20260904130858.27803-1-royalnet026@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260904_060937_273233_BC93800A 
X-CRM114-Status: GOOD (  15.27  )
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

The NPU zone has had only a critical trip at 115 degrees, which is a
shutdown and not a cooling policy. Now that the NPU can be throttled by
capping its clock, give the zone a passive trip and a cooling map, in the
same shape and at the same temperatures as the GPU zone right above it:
85 degrees with 2 degrees of hysteresis, and a 100 ms passive polling
delay.

The #cooling-cells property goes on rknn_core_0, the core that carries the
shared clock and the OPP table. The other two cores have no clock of their
own and cannot be throttled independently of it.

The cooling map is inert until the driver registers a cooling device:
thermal_of_should_bind() only resolves a map entry once a matching cdev
appears, so this patch on its own changes nothing but the trip point.

The thermal path itself has not been exercised on the board this was
written on. Reaching 85 degrees on an NPU workload with the fan curve here
has not been possible, so what is verified is that the zone parses and
binds, not that throttling engages at temperature.

Signed-off-by: Igor Paunovic <royalnet026@gmail.com>
Assisted-by: LLM checkpatch dtbs_check
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 17 ++++++++++++++++-
 1 file changed, 16 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 376ad04e07869..c3d22b08f415b 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -1162,6 +1162,7 @@ rknn_core_0: npu@fdab0000 {
 		clock-names = "aclk", "hclk", "npu", "pclk";
 		assigned-clocks = <&scmi_clk SCMI_CLK_NPU>;
 		assigned-clock-rates = <200000000>;
+		#cooling-cells = <2>;
 		resets = <&cru SRST_A_RKNN0>, <&cru SRST_H_RKNN0>;
 		reset-names = "srst_a", "srst_h";
 		power-domains = <&power RK3588_PD_NPUTOP>;
@@ -3212,17 +3213,31 @@ map0 {
 		};
 
 		npu_thermal: npu-thermal {
-			polling-delay-passive = <0>;
+			polling-delay-passive = <100>;
 			polling-delay = <0>;
 			thermal-sensors = <&tsadc 6>;
 
 			trips {
+				npu_alert: npu-alert {
+					temperature = <85000>;
+					hysteresis = <2000>;
+					type = "passive";
+				};
+
 				npu_crit: npu-crit {
 					temperature = <115000>;
 					hysteresis = <0>;
 					type = "critical";
 				};
 			};
+
+			cooling-maps {
+				map0 {
+					trip = <&npu_alert>;
+					cooling-device =
+						<&rknn_core_0 THERMAL_NO_LIMIT THERMAL_NO_LIMIT>;
+				};
+			};
 		};
 	};
 
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
