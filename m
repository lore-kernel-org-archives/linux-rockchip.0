Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 25840C38145
	for <linux-rockchip@archiver.kernel.org>; Tue,  6 Sep 2022 17:51:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6Va+OiXEkaQR9Eolgf+a8cOUZjbrIswd7P9xZEF/UJs=; b=hYombYuNrH6iL4
	/49uYFdrju1KbQm+xpQ2f7hi9X6I0/4C71NaoUH9//JkjM3I1yuePyTaucCbesUiOunocj/1aeXe5
	gp4w6ZxrOXH8lk0jb3OoT1eDwhWiLeA19xg98uYb78ZI5oTtYWsq3t4SMelSuZNbWb5wgjJOzIlel
	jiljGydhGxkjY51P3beB6R0/riWXU06YX5kLdbyKLHltZuXvSwczUBLdvdAxOWaWkNcYpCuKG2y7x
	LPnBxBPbIynasQDCTX+DPuwlJfoOwgsWNDNZb3ANAV2kxVIXvfDOlRzme0z9SRhqNTh2nscnMOv1C
	G4yK/L/WsseD2A9+SKlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcjD-00G7mP-Py; Tue, 06 Sep 2022 17:51:15 +0000
Received: from mail-oo1-xc33.google.com ([2607:f8b0:4864:20::c33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVcgZ-00G6Ar-Kn; Tue, 06 Sep 2022 17:48:33 +0000
Received: by mail-oo1-xc33.google.com with SMTP id g5-20020a4ac4c5000000b0044af7c8c4b3so2061498ooq.1;
        Tue, 06 Sep 2022 10:48:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=ORAgmiG57p/S9ocR1iRk76VvyBsd1+DxcS7O0rlHDs0=;
        b=U5Y4i5jx+40Cx/xgDGq5I8pG9GGoT/wBANnOxRC1QYjQtco82MIEp0iLpmvWiEueFf
         nPthrGMsA/B5nPavWnddRw33xlMDuUwM5QayNrilaND8+mDCU6gasVa0o7X4mAKo8ksy
         rfDrZXD6+EnNdMyZWmv6OcIj5zu0ZKEhMBw/FPiLWw2G6ERAfZg33d+jNrr2nyi/Cajp
         K+4tLN1xPP8VQEPv1yQKSPYWAODfml+LplHFIYMPEyGterhytbVd0p7OWvoGqhZtblzy
         wQWRBVbLhLIejlcJVHgF+DeikMwWZN81V5RGuFJATEl1BmOpqX+EIV0qGoXCvS4pospT
         u5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=ORAgmiG57p/S9ocR1iRk76VvyBsd1+DxcS7O0rlHDs0=;
        b=EG0YponUX0yQIRujtyn8UJosjgZQ84iiw47BsNJPolepELAZM/uJsWRnbf3UwVrmbp
         //jQ7TdRTjDKEgOjiUHRb4UYi4wVfyz2sQgv74AgFehRHyy04ScQnR9l2O1zLl0xYDGl
         TONxrXJeik1w0BbSN3+Gp4tMOe0na9TZfqUvczmyiEGvVCCiAZgYLvuFdRAjqQyx2bBt
         n1fXczsXcAv7mlCqZFrrOmcDE/OJxdSBe13estIlJxiK6jmKk6I+3Jl6u7DphG7560JG
         BHQXsoGl+B19o3V4PvPvVHJWcLrcYKcSEnBPTm/IHVk7PZ2lq61FW3+CSzkiLa+XN7db
         xk1g==
X-Gm-Message-State: ACgBeo2Co1DgMwzCAVw5J3HneTQ88nsOPNZXP1pFkRJ0cKTDLp7h7P2Q
	uDn70LkqAtC7RTwDPWRKDh8fnsaV0gM=
X-Google-Smtp-Source: AA6agR4hbHRGQOp1BJL6pGJS5Rw997lx2vRqKeDCTqregl6X9KNodLb0ILtqgU8K5/N7p21z2icjwA==
X-Received: by 2002:a05:6820:541:b0:44a:907d:c641 with SMTP id n1-20020a056820054100b0044a907dc641mr18987260ooj.65.1662486509383;
        Tue, 06 Sep 2022 10:48:29 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o186-20020aca41c3000000b00344afa2b08bsm5568065oia.26.2022.09.06.10.48.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 10:48:28 -0700 (PDT)
From: Chris Morgan <macroalpha82@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: linux-phy@lists.infradead.org,
	devicetree@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	cl@rock-chips.com,
	s.hauer@pengutronix.de,
	pgwipeout@gmail.com,
	vkoul@kernel.org,
	kishon@ti.com,
	krzysztof.kozlowski+dt@linaro.org,
	robh+dt@kernel.org,
	daniel@ffwll.ch,
	airlied@linux.ie,
	heiko@sntech.de,
	hjc@rock-chips.com,
	Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH v2 1/5] dt-bindings: display: rockchip-dsi: add rk3568 compatible
Date: Tue,  6 Sep 2022 12:48:19 -0500
Message-Id: <20220906174823.28561-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220906174823.28561-1-macroalpha82@gmail.com>
References: <20220906174823.28561-1-macroalpha82@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220906_104831_791385_56FCD9D7 
X-CRM114-Status: UNSURE (   8.42  )
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
