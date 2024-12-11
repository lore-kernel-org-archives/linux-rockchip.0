Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 379F1E7717D
	for <linux-rockchip@archiver.kernel.org>; Wed, 11 Dec 2024 10:17:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HcbkTTdSb4QgJbY6Eo1zU4/ZfbXGxcpZoNnbfcSNMBw=; b=2NhB+6DZ0Rc4jC
	RzAD197827SOWT8Zf9UG8ROwmNmQaGC/0cUvsc99Ik/fKrnbVDRBW26tfw2HoLKRvXMDr1p9AnlJe
	nc5kz2ZB6N0vCVkYHQMyLaVjeFDQBFND3MbZRLhJHgTSkVfi7mFwSoMYzmuJfvpX2WJLb7b14vXpd
	FtAFXNGurl3EU1uiUxeUQKppLQVcByJda/HBHjXlSRtRB4vLoI4gLP4ZmCsIFFp2LJr56mRi8VMkj
	kwVJWitZyKaPOliJpOpJtw+6QquCnmaEcp+MY/XpU9MPlqdrxEux/YJeLNuiXZn+cdYuRpqDLoEPv
	wE85I0qdEN+jOkVJN8Hg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tLJmE-0000000EXzh-3fHV;
	Wed, 11 Dec 2024 10:17:06 +0000
Received: from bali.collaboradmins.com ([2a01:4f8:201:9162::2])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tLJkf-0000000EXYc-436J;
	Wed, 11 Dec 2024 10:15:31 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1733912128;
	bh=eAufraMFMnfi2IGWNJkkS7Jvw+zFLnnar89/NtNbjiw=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Yvnsj5DWio7ojSsr0PD02rfB0+uMYYEQE5WOnSyNKDR2HjXw2rK0L6TOU2DEitxH0
	 WCmWJy+dRCAtn4kkAO2idsGzsYbsk4bSeexucu0C/CtgEMa7ntvSaBmuWJna1s3IIh
	 t42y5gLCjbp0Oo8wiRKOWdoSKuyn2HUNlZW9kgHbJ/nrdpECJWYlWXnfvKEWa/lCVm
	 DMrsT5+7ZE/NSQZHXmWAgh3XwHYe1o+XKAzO75BOtACPE0m88HHHrIjxCp7s0CCdji
	 6LedlVG9x8WnqtBB3ySrHevu/oYhsIa37BhZ9WjgmbvSfSfwKtOJq+tqHrTRE0RCBh
	 fBXjJd1cKBCOg==
Received: from localhost (unknown [188.27.48.199])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (prime256v1) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: cristicc)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id CD64417E35FC;
	Wed, 11 Dec 2024 11:15:27 +0100 (CET)
From: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Date: Wed, 11 Dec 2024 12:15:05 +0200
Subject: [PATCH v2 1/5] dt-bindings: display: vop2: Add optional PLL clock
 properties
MIME-Version: 1.0
Message-Id: <20241211-vop2-hdmi0-disp-modes-v2-1-471cf5001e45@collabora.com>
References: <20241211-vop2-hdmi0-disp-modes-v2-0-471cf5001e45@collabora.com>
In-Reply-To: <20241211-vop2-hdmi0-disp-modes-v2-0-471cf5001e45@collabora.com>
To: Sandy Huang <hjc@rock-chips.com>, 
 =?utf-8?q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
 Andy Yan <andy.yan@rock-chips.com>, 
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
 Maxime Ripard <mripard@kernel.org>, Thomas Zimmermann <tzimmermann@suse.de>, 
 David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: kernel@collabora.com, dri-devel@lists.freedesktop.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241211_021530_182750_66AC82D0 
X-CRM114-Status: UNSURE (   8.95  )
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

On RK3588, HDMI PHY PLL can be used as an alternative and more accurate
pixel clock source for VOP2 video ports 0, 1 and 2.

Document the optional PLL clock properties corresponding to the two HDMI
PHYs available on the SoC.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
---
 Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
index 2531726af306bd388c00c3c0a1785b2c7367e2bd..46d956e63338e196361483a668fbf5597ebce24f 100644
--- a/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
+++ b/Documentation/devicetree/bindings/display/rockchip/rockchip-vop2.yaml
@@ -53,6 +53,8 @@ properties:
       - description: Pixel clock for video port 2.
       - description: Pixel clock for video port 3.
       - description: Peripheral(vop grf/dsi) clock.
+      - description: Alternative pixel clock provided by HDMI0 PHY PLL.
+      - description: Alternative pixel clock provided by HDMI1 PHY PLL.
 
   clock-names:
     minItems: 5
@@ -64,6 +66,8 @@ properties:
       - const: dclk_vp2
       - const: dclk_vp3
       - const: pclk_vop
+      - const: pll_hdmiphy0
+      - const: pll_hdmiphy1
 
   rockchip,grf:
     $ref: /schemas/types.yaml#/definitions/phandle

-- 
2.47.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
