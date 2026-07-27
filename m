Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 44BB3C531D0
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Jul 2026 17:40:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8qTUiPBlnUYuwgRzUJC7J9RkjbH05xWBC2ioyyiCO7o=; b=2gxN272LYToL1Z
	XCnnby7hf0rauRAEYhE/89Oovn0G6+pvsxZRicovX3K33dyd6zfqfqqigaAqt1s6l42NimsXxb0pi
	7slLa7k0/P7xxvG3SJsdoncTJoPj/6Ol7NMVLq2/FARbGJ/MYgyb6ZVe6HE58tQ0ohiosy/qIQMnb
	bPqevtQJf32kUIIyOV8WYqZmJt2rwP57m9yOv3+kNbFut0e+AYxZ6bysiyeKzIU1sVv73rmTwyDmu
	6Thb0YHJf8j9sw1cMdWGW2FClEAxfzbyO8hG5wEcbnWnvYzLqDdyqsFtZvzn8kVbkDGKEc562qT6g
	uYn6lZXL58aniFKbc0+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woPJP-00000003Xf5-0XYO;
	Mon, 27 Jul 2026 17:40:23 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1woPJL-00000003Xdt-2hUB
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Jul 2026 17:40:21 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-c981c2c37cbso2216781a12.0
        for <linux-rockchip@lists.infradead.org>; Mon, 27 Jul 2026 10:40:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785174018; x=1785778818; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=bLAfO4vgeRYgxOeRuUb0Ab16fkzdVk0WYV86aUUze8s=;
        b=T8m3NGUHAWZHpCPTJkF8L8a67KPTUX4dA1uW29e2GeVv3OxQBydn4m27aj5Nyhu08a
         qUwicpYeCb3KMeqmhTqdWwk637E4M/064GDCa0P4kMW6s7jCTbrItx0ZE1a2YxA+45NE
         iEaDLzfqWDjM21e0LnngfJRHIy0sMSWzvtnMx+8iO9IKXrGLoQkLlQglCof+yRmTXaN9
         PAgYlTPvVgJ/xJ442aX27FfZl7bmGnpnuVRAOwDBB9i+Pgx1Af72KCBMPXVVQxfR+rhB
         5SlbrtjXoCl5HBimQylyud/HiwOGxX2Cp+5hHTS+BBk4g+WTvwETKT/BwxQ/2QApP3A5
         aK8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785174018; x=1785778818;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=bLAfO4vgeRYgxOeRuUb0Ab16fkzdVk0WYV86aUUze8s=;
        b=Sb9t8M7nAnOSyz44GF5Xq7yRF8YuZ8LUb8+WCMdOa8tmMMps7DwYIawwk4ntFvArSx
         4HTJHIemb+Os4wKsxICewrOL2Rp3LivxvtmgiLtx5DsCJ4BRhFGVk0yfzKXHKAkD61a5
         9KK7v0DsAzoXrSh1wXuD+7tGWeOHbBTGyWJT7kbG2A5vRXhRmP6CdpFA+Hi+UFjDTqIW
         /oK0IHLTwcZfhftbepUIoQrdy5B2Fdi4VAEz+DybcXTmpRZ1iYkaOeTwps8TZFAPOcfM
         m+5e+7mQJ9RCX4hEXJ6Yt/87NqM4SnhKrN7CyZtNkDeLALZLXT+R4+rID3/xYm5J1jlZ
         iYvw==
X-Forwarded-Encrypted: i=1; AHgh+RpPyerz8rafjhicU3Emj2jH6Kv7g4P6OP8+HUM73QPmo2TC8lRtFqh40Rhe7buI3pjHfCP4zwObcOyEbWSJ7w==@lists.infradead.org
X-Gm-Message-State: AOJu0Yxp3Z0N+hAyxxkxoyGLF/HMOt8XlQ/wUe4OwA/Ok7vuJCJR+7ZR
	d4b79nIH6hllLzXs5t2ANsGPhhHmZpuyUQyCU2Lwdkpm3+JB9o1GXOG6
X-Gm-Gg: AR+sD11HqFTmvzxACDKM8CSIts6GTw+hadbtEhGjr89PNlXYlStzyCs29p5+JaR/NOw
	Kq63JZTlmRTtTb+a1ze/rr4okYlQuG8R7VXMqzsxTbOYz+pcFFoenQOD2dV9iMqEsxTUiK+Yi6H
	+ssNmg60kByaWh94X7jXxKD2e4PrSYi47gb1gIe/ic7dyteBcpAg5C0Zm5ovgwdrUDE9bT58ELQ
	83Bl+4m6U+TyBTYSzSkegOxRPEGFlRVKyMFxFEs9PuqOwl78gyqXHgTluId3XXPVsm9GR8/HyV4
	iO/mpGhE5CyzOchu9dQfUTChO4w5zsA+IM+sKWszuXK6n3RwM1fxaBsqbwPtOo66LPnAa0TkAHa
	VVkjRGDRq74W4bA5azIAWy9aIBb8Oplv4W2nKlOFzwQjjRHTtC3HucpBBMSUyCUxJBzeNL6IfwK
	lTomhs6UNWPVY49NDscSM01GMstRZY3XNY8OH2TZKucaenKBj8T/A=
X-Received: by 2002:a05:6300:193:b0:3b3:f46:1efa with SMTP id adf61e73a8af0-3c6c8016bb2mr582045637.42.1785174018200;
        Mon, 27 Jul 2026 10:40:18 -0700 (PDT)
Received: from fabio-X870-EAGLE-WIFI7.. ([2804:1b3:a801:60b4:21e4:da15:d321:6b72])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-314bc419c52sm33850735eec.10.2026.07.27.10.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jul 2026 10:40:17 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Add CSI-2 bus type to ROCK 5B+ camera overlays
Date: Mon, 27 Jul 2026 14:40:07 -0300
Message-ID: <20260727174007.2581714-1-festevam@gmail.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260727_104019_684750_E62A6B96 
X-CRM114-Status: GOOD (  10.30  )
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

The Rockchip RK3568 MIPI CSI-2 receiver binding requires the bus-type
property in its input endpoint.

Specify that the Radxa CAM4K modules connected to CSI2 and CSI4 use a
MIPI CSI-2 D-PHY bus. This fixes the following dtbs_check warning:

endpoint: 'bus-type' is a required property

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam0.dtso | 2 ++
 .../boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam0.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam0.dtso
index ee9ecf68a886..5c7fb960b099 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam0.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam0.dtso
@@ -9,6 +9,7 @@
 
 #include <dt-bindings/clock/rockchip,rk3588-cru.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/media/video-interfaces.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 
 &{/} {
@@ -80,6 +81,7 @@ &csi2 {
 
 &csi2_in {
 	csi2_input: endpoint {
+		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
 		data-lanes = <1 2 3 4>;
 		link-frequencies = /bits/ 64 <445500000>;
 		remote-endpoint = <&imx415_output>;
diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso
index 8a4cf3fdbf8e..1ee9036b9095 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus-radxa-cam4k-cam1.dtso
@@ -9,6 +9,7 @@
 
 #include <dt-bindings/clock/rockchip,rk3588-cru.h>
 #include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/media/video-interfaces.h>
 #include <dt-bindings/pinctrl/rockchip.h>
 
 &{/} {
@@ -80,6 +81,7 @@ &csi4 {
 
 &csi4_in {
 	csi4_input: endpoint {
+		bus-type = <MEDIA_BUS_TYPE_CSI2_DPHY>;
 		data-lanes = <1 2 3 4>;
 		link-frequencies = /bits/ 64 <445500000>;
 		remote-endpoint = <&cam1_imx415_output>;
-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
