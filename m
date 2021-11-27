Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7762CC433F5
	for <linux-rockchip@archiver.kernel.org>; Sat, 27 Nov 2021 14:20:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OnQAbmS0JLYKCFyJahD9y4DSSl/kDdgbEr07JbzreP8=; b=aiM9JXllK/JPj4
	RR8D+PnjSp7tcngMeudZINsLyl0mcxrtg2w8qfB42Yv4/HLgxj4Cjw2vo6wWAVs3luLBKdjqsgygD
	FYtscnJBo2EJI3zWw++JtKioPUo9JTNpxEbU7l8WQ8GqBI87G2po0a8XA999/L/DKe3snJ+qQqozR
	LU24w6f3gStBXd3NF1D3fhAjBqs4OpaXk/rWe1wwfohdV2lGstOdtPyVrmvknk3yZIiuOmBLan8tU
	X5NSVGD18eEGNa5fAZLyZ9Ogz0Bt2fIu2QzX6SE2WJkcXdpcIBz9+zN8nethum0hNPFX6bhFIpCX5
	13qQuIHMeEJg9g+ELtjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mqyZ0-00DmiV-Ee; Sat, 27 Nov 2021 14:20:26 +0000
Received: from mail-wr1-x42f.google.com ([2a00:1450:4864:20::42f])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mqyYS-00DmWL-Uv; Sat, 27 Nov 2021 14:19:54 +0000
Received: by mail-wr1-x42f.google.com with SMTP id j3so25242740wrp.1;
 Sat, 27 Nov 2021 06:19:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=knysJR+0JkKxgB5c3JruXDvwT5X6G8sbeHcN6EJjwiQ=;
 b=NiPoYtZV57Fy+h78veSroMO24JY2nzGLUScsxAmzDp0Ewz3CDHc9C3SL0fOYCYrSjg
 KDOIp5ClznO7sFYdjwvb1GEu4o6+SDLIMpFOrX2jj66i4O3IoBahln/hltkJoJII7PA9
 uDOBOdf+ryDecKQ8rSEtiuUTmOM4XxBCYsezG+Xx0SvOQ9YxdWdUnvIpZGOGFyf2Od7Q
 ULsZIKk8LkwtZf2Us0kbUz34PSuWuuuTHYSNTzvYzWV0vyCTvN9vG1H/sXaXD+E7WjWt
 0ixra8ROuw6HFC9DVtlEQICUT2/mgrm+PNwbYpkEsdy7lDf7KwPaZtuPGG5qvr4fItHZ
 mr7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=knysJR+0JkKxgB5c3JruXDvwT5X6G8sbeHcN6EJjwiQ=;
 b=Bo0Pnw6qQrqDPiysI/X2i5Os9m6UMWzU5fY1tQ93Mc3UcCXldDN9OEaO3ZGGM1WhEi
 Qq8YOoztCVlAdYwrxT7AVKQ8xps8TSUdLGB05UPPCLavIcolF/NTIFdRMrECsuMuciTz
 U6To37mWmFeO3B8+5opjD2Jjs3DdxpdsBnWGYZpJdd5A66cymYZWegi6btnkTlITaQOk
 T/3IiiGlWMFwfbAT5PrqAdLv2parz+7szZ0dyEbAotvzKJTvCEIL5NNnGvpTNspdmFeJ
 L11dT8EGRodPJBU55DrpLEDvW8GFaNjqslclM/+Oz6G74Y+ZxzhMltIFRGBuN5D85BWP
 usKQ==
X-Gm-Message-State: AOAM533+7XfR97z20uO0nt+PZD7FyO6HbhA2BWSbjIvThsXPI1BIJ+2d
 yx5QoXPMcnVZo7BbLsC12TzwC5ldfqM=
X-Google-Smtp-Source: ABdhPJzeu70tA+QgGcaCcxlfFdluQ7ubejp4mO+3n9hXLlYxhGmQTgjMvG7RsgUn/7LsvXkiMY08OA==
X-Received: by 2002:adf:9bc4:: with SMTP id e4mr21076296wrc.476.1638022791496; 
 Sat, 27 Nov 2021 06:19:51 -0800 (PST)
Received: from localhost.localdomain (84-72-105-84.dclient.hispeed.ch.
 [84.72.105.84])
 by smtp.gmail.com with ESMTPSA id o1sm8509839wrn.63.2021.11.27.06.19.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 27 Nov 2021 06:19:51 -0800 (PST)
From: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To: Rob Herring <robh+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>,
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] arm64: dts: rockchip: Add spi1 pins on Quartz64 A
Date: Sat, 27 Nov 2021 15:19:09 +0100
Message-Id: <20211127141910.12649-4-frattaroli.nicolas@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
References: <20211127141910.12649-1-frattaroli.nicolas@gmail.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211127_061953_019246_E517D293 
X-CRM114-Status: GOOD (  12.71  )
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

The Quartz64 Model A has the SPI pins broken out on its pin
header. The actual pins being used though are not the m0
variant, but the m1 variant, which also lacks the cs1 pin.

This commit overrides pinctrl-0 accordingly for this board.

spi1 is intentionally left disabled, as anyone wishing to add
SPI devices needs to edit the dts anyway, and the pins are more
useful as GPIOs for the rest of the users.

Signed-off-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
index 4d4b2a301b1a..166399b7f13f 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-quartz64-a.dts
@@ -509,6 +509,11 @@ &spdif {
 	status = "okay";
 };
 
+&spi1 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&spi1m1_cs0 &spi1m1_pins>;
+};
+
 &tsadc {
 	/* tshut mode 0:CRU 1:GPIO */
 	rockchip,hw-tshut-mode = <1>;
-- 
2.34.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
