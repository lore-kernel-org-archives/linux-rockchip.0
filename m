Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5E7A4C41535
	for <linux-rockchip@archiver.kernel.org>; Fri, 22 Dec 2023 11:11:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e1J9cDtc0R3O0dp/rY4hdOmfB5vgLgsarEDOrgNTjV0=; b=IxTwmPGO2FFiMG
	i99qMDTF8Jo1Sc5haKMYWhcGSzoH6RPMBXgyKUJsiMaNIc8W4Zopcw4/UZbTdbPwk28TT6iWae90T
	8b8JbXlPfnM2ORmczHRVAowzr6NciMNpKwP/s65PerNqFHuU9AVMD6dutR/t9FaN2CHoZU0ZrMjkJ
	Dmefu2bEz6Sa5liBm2YYWkp1lhjqaE+XPrF8l/27OSBN6V29fwFfbOoJVoseLhFSp88euawhr7VKH
	vLjyvxHDQ+qo61DBmJ/3lX2UTLQYG25fmXx+DNN3e1nLyo9x7KY+VzDxst/J8CCk7jvnl6j4NNNJ8
	ArAn17m1f/y9yZQOrl5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdRD-005cap-1D;
	Fri, 22 Dec 2023 11:11:31 +0000
Received: from [2a01:4f8:1c1c:934f::1] (helo=mecka.net)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rGdQs-005cRT-16;
	Fri, 22 Dec 2023 11:11:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mecka.net; s=2016.11;
	t=1703243147; bh=BOl5n/LD2BBcBkSdOXNe2omY7nWrdquIwWyNKjcl3/o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=DTaLgZ6qP86N7YKevWdWipg/yVZipTobTmGgmJCS2lxA+0Nro7QP9+oJB+XbxhYSk
	 faQtPZVP3ecpRDl7BrGG6A80Ze22RmUZrl/DLvUr7yV5bfh2AkFP1KEi1UOxgrLFWG
	 kkWpDBZeGHVgw3Rp6tsrOQipFWTI7uOT2d2/QNTvTc2aTn5xsE7tlA2IZ5mexvr2PZ
	 FX1aFPKR05t47ugqMc7+vOa5Yolv3GDxcOpp8Xn8sxNXVBp58FsVV9J8yXQT8bj/2J
	 oZOZIrv5cn9s3jO43jPpMKRVMZFawRfESb4DX0no8GEUWOyKrr/Mnuv7rJs/m1gMly
	 9+F0cwf1qfQDg==
Received: from arthur.fritz.box (unknown [185.147.11.134])
	by mecka.net (Postfix) with ESMTPSA id 7A74E370D44;
	Fri, 22 Dec 2023 12:05:46 +0100 (CET)
From: Manuel Traut <manut@mecka.net>
Date: Fri, 22 Dec 2023 12:05:46 +0100
Subject: [PATCH 6/6] dt-bindings: display: rockchip: dw-hdmi: Add missing
 sound-dai-cells property
MIME-Version: 1.0
Message-Id: <20231222-pinetab2-v1-6-e148a7f61bd1@mecka.net>
References: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
In-Reply-To: <20231222-pinetab2-v1-0-e148a7f61bd1@mecka.net>
To: Neil Armstrong <neil.armstrong@linaro.org>, 
 Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Sandy Huang <hjc@rock-chips.com>, Mark Yao <markyao0591@gmail.com>, 
 Diederik de Haas <didi.debian@cknow.org>, 
 Segfault <awarnecke002@hotmail.com>, Arnaud Ferraris <aferraris@debian.org>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, Manuel Traut <manut@mecka.net>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231222_031110_559934_9A27DFB2 
X-CRM114-Status: UNSURE (   8.13  )
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

The sound-dai-cells property is used, e.g. in rk356x.dtsi

Signed-off-by: Manuel Traut <manut@mecka.net>
---
 .../devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml        | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
index 7e59dee15a5f..43250255fb6f 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip,dw-hdmi.yaml
@@ -94,6 +94,9 @@ properties:
       - const: default
       - const: unwedge
 
+  '#sound-dai-cells':
+    const: 0
+
   ports:
     $ref: /schemas/graph.yaml#/properties/ports
 
@@ -145,6 +148,7 @@ examples:
         interrupts = <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>;
         clocks = <&cru  PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_HDCP>;
         clock-names = "iahb", "isfr";
+        #sound-dai-cells = <0>;
 
         ports {
             port {

-- 
2.43.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
