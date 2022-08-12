Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32B27C19F2D
	for <linux-rockchip@archiver.kernel.org>; Fri, 12 Aug 2022 14:33:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Va+OiXEkaQR9Eolgf+a8cOUZjbrIswd7P9xZEF/UJs=; b=DseHI2pj+xhQmR
	uYk0XCGJaHTTuhJ8lWH3C+cwE6WMvRtWYt8NwmWr+n7S1J4mT4P/plx88HuO54TBTSIBEPEHVZBRd
	Dh71SrKkelCVoReXkoyXVWA0jlr+aTz3mD59G98s7s04crBZAmhJZ9Dg2gBgXb3DSi9taNmJxKtPl
	TGoXNTJvSjDMQTGRxnfqLoj4gH9+w97hKfBWTQwovehXAtGPjGPqKdxsgvL8SMQAbPLViVvBkC9Ab
	fnGW3zSXMOWFlBDCbL5DwTtQacCgWDqh4oUSQWVTHgRG2R3/1AZSnTc2X7wRePN4bh8grJzZjRy57
	mFQDXAOP/AOMMYb24AjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMVie-008xot-T8; Fri, 12 Aug 2022 14:33:00 +0000
Received: from mail-ot1-x32a.google.com ([2607:f8b0:4864:20::32a])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oMViZ-008xiT-57; Fri, 12 Aug 2022 14:32:59 +0000
Received: by mail-ot1-x32a.google.com with SMTP id h9-20020a9d5549000000b0063727299bb4so665470oti.9;
        Fri, 12 Aug 2022 07:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=ORAgmiG57p/S9ocR1iRk76VvyBsd1+DxcS7O0rlHDs0=;
        b=L19EYLdShAwN3qzEFR6fD2T75Fo5SjgH9YAE1tB7BZwbamNWm69s2TazBuiEWpVdjP
         6q90Et1+osane5GyjPjHIy/N7zHzKxkZtj3iLNBKt1AZZtGDaRrGGXmERhGxR5P8bcYb
         EkHQVxOwW5nmHP/KaWYGKrMA+b1I621PC7b87OhtknlVyKmNHxa3ncfUa9GQxcEZUd+Z
         aLpauA69TRhf1xl6Piz8oQHi1D5vQnzaGxicUSsJpLGz/SpcIdCy3qbrV2WE/KfoNdGr
         frF+a2SAfgDJ0+yRRP8MBG1SGcY+tkHN2VGLKMgOTI3t8v6YRs/AJj5uCYhlT1SMx2Kx
         7rhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=ORAgmiG57p/S9ocR1iRk76VvyBsd1+DxcS7O0rlHDs0=;
        b=BIQURCzOIqueZOjB6oN9PNJERpU8D+6mpGYzOn0mS7KwjTZGsdvWOuj7WfdEE3LlZ4
         zNX67yX48x2DSRy5x8op+PW5bHYsCfGYd6uWBbAPpiT0+fDbbGG/xJBcoeuBfofUFMiY
         OhTKJGQsD8AdccJniQiVWDunLloGXHbsQxfC0GQsiBnTJd+dGnjUjiWbgEgS6b7ExtwE
         Fw6BSj81shPC7yWwjtdBlUPk5PZA12MPMAHDhW0MqSGsi8DkX2GaE9qCE/O3duerJiMK
         JQFVvT0M0DbHfZnwcfbulokS5anSeS+QpEkuoSj2eL4/lKjZuXQBPvajV+U/AFfRdAZM
         /BVQ==
X-Gm-Message-State: ACgBeo1kcs7nukHGPVwkO2vAdilNEXEaSwzb/TEuZXR9nk1CK3Z2NAbo
	VWAYbASyxrCQ5WEOfV5hfUolDirDvP0=
X-Google-Smtp-Source: AA6agR5VxJHnzw9+8xRuZYBQGYnX+/ThoSrZzHgyNEu8fN+Id2bgeKZHZFCAIxPWejdhKq8FHKUUaA==
X-Received: by 2002:a05:6830:16d9:b0:637:2e86:68a8 with SMTP id l25-20020a05683016d900b006372e8668a8mr1497242otr.334.1660314772643;
        Fri, 12 Aug 2022 07:32:52 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id n28-20020a0568080a1c00b003436fa2c23bsm282879oij.7.2022.08.12.07.32.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Aug 2022 07:32:52 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	vkoul@kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@linux.ie,
	heiko@sntech.de,
	hjc@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [RFC 1/4] dt-bindings: display: rockchip-dsi: add rk3568 compatible
Date: Fri, 12 Aug 2022 09:32:44 -0500
Message-Id: <20220812143247.25825-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220812143247.25825-1-macroalpha82@gmail.com>
References: <20220812143247.25825-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220812_073255_224480_8344D783 
X-CRM114-Status: UNSURE (   8.30  )
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

From: Chris Morgan <macromorgan@hotmail.com>

The rk3568 uses the same dw-mipi-dsi controller as previous Rockchip
SOCs, so add a compatible string for it.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 .../bindings/display/rockchip/dw_mipi_dsi_rockchip.txt           | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
index 39792f051d2d..9a223df8530c 100644
--- a/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
+++ b/Documentation/devicetree/bindings/display/rockchip/dw_mipi_dsi_rockchip.txt
@@ -8,6 +8,7 @@ Required properties:
 	"rockchip,px30-mipi-dsi", "snps,dw-mipi-dsi"
 	"rockchip,rk3288-mipi-dsi", "snps,dw-mipi-dsi"
 	"rockchip,rk3399-mipi-dsi", "snps,dw-mipi-dsi"
+	"rockchip,rk3568-mipi-dsi", "snps,dw-mipi-dsi"
 - reg: Represent the physical address range of the controller.
 - interrupts: Represent the controller's interrupt to the CPU(s).
 - clocks, clock-names: Phandles to the controller's pll reference
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
