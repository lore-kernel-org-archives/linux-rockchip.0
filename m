Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 17E3AC43458
	for <linux-rockchip@archiver.kernel.org>; Tue, 14 Jul 2026 05:35:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YIwY7G/4HTj1HuDGfQf8Q4YWy3JqhEX+a5JdLmcQAno=; b=htXUECOoyRsxfm
	3xKdib1y2v8e4sPfYVRpQljMzqkFXWB3K9WiGcH6EUKpnpAJ+MfNyAoY9inpVRkswERT9IfGfwNRT
	nj+tDa07MNUf1ISwmwpdFINNMZVp4U5ROJVDF67EIN/AoyfFT1q6zrXTE9UHcywAAwsOpknUlo2fs
	xi7nQkxy4IRm6XNnr53TIpyUmf2LheWpN/lYPrwNV5Ito0UTpAx1HsGAeCHhF8f8xd2ruNzhZMGv2
	wxCdvr2SZjzPCjC9Ku4EqP6HTH6F0iQ3Ym63v326DnIlNM/Xh+CrfZdnZ6rHONppZfWnEEXo3DtPK
	BezJLD0o9l4vRki+2P8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVnW-0000000Axbv-04dZ;
	Tue, 14 Jul 2026 05:35:14 +0000
Received: from mail-pg1-x52e.google.com ([2607:f8b0:4864:20::52e])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wjVnT-0000000AxXx-11wr
	for linux-rockchip@lists.infradead.org;
	Tue, 14 Jul 2026 05:35:12 +0000
Received: by mail-pg1-x52e.google.com with SMTP id 41be03b00d2f7-c9b373d5af0so2771097a12.2
        for <linux-rockchip@lists.infradead.org>; Mon, 13 Jul 2026 22:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1784007310; x=1784612110; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=QwOYXI2V1R9DqBLkb2LBFR3Buo2LVm7RtoTaR0VD7i+jUoIkA5VuB8j0XxEzjf0aQ0
         z4enOTZXZIo2Lk58EDw59GpA+OcWeCFaAaSMm1ByXWqwGtz8jvAPBeZmzO/mXBbu00ti
         KEyLOp/QTxu1YD9E2r1RX50wv0aVQjOl6RKrlrAqYp6Z2+vkqimgMCH5UlQjPovCaX1w
         PvA+IAcRxyKvrobBvP+55mP1K4PFwTumLvH5mx5/uvjeajNup4jC62eDRssMUGQXCblb
         Mbss7Byit5KHUK1V80TZIFOiBSq1rdIwdhQoOdM0N6gMI0ggEcyx/1ik2Qj6eDwICLef
         npaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784007311; x=1784612111;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=YtSd3Xc+ifVj14PL2Jkw0taP79/hnT+MmHpMwaXVGFE=;
        b=RIkjQyMVwbmVs9GsX5q7TxzbGtSN5KypkwLNDb3j3GWDzq56Ob6RgHFboElNuXRUnn
         81UKZ/PRS4aIzeQeIDr0uQpxaFrhSEQf9heXVLDkMHpAu8s8dildXhD+dikLOyArn2IL
         d2WaiNCABBn3mbFNe4Gc6ZpDckFzrJPdCUn9eJvNdX2jwNMnQ8XrhsCmyvEzirOAi6cv
         eV4vHj8L9tngHBPAP2j6T01DWxeGHppd10UQoCUOYqf0LQydCNml9s0gjvbdfY72luoQ
         L5Hjv5vf+4oNg9+WHxH9y2xOOEvR00hEmGP6Y1F6mQFb22sH4zfDB8jRPU4mW0IV0mgh
         98NA==
X-Gm-Message-State: AOJu0Yzgr3W02Q0vHz/fB4/I0N5267acotYeOggEhpB7IHEOcxTrjF8i
	5A55Px0m4/ZE4fWVrVd+lYZt5nuphfRtZhu1/phvXo3P8XFx/5aw6xFFyvjZZqBh
X-Gm-Gg: AfdE7clnXbxJCtD982HuMLRGxwokuGn3QjGnt4z4VNe0H68dTFkdqw+xRqeCFh5pJqq
	yWWcbwzNLZBH3qCK/LOmnTgU5xJbZ0BFHrR/RkzN+5MbwzHjaV7VOzGmqJplPbyRZRbwQXyKCR3
	IeOxAp1XD6kwBxg6jjFOjfc+0G9SLzudKZKE9Kjuy/bVcDW+G5pKQmLJ4DL1tHY+p15qMlVHFvq
	DHJ68NwF26caCCaXYqxOBM0d1siMx4Xz0Abr/SmbOI1NlhlN+dvXcj7Lx9pqTSOS4FWMEKLpL0i
	fbx4MQ9vgHpZptXaDoicJtCUt5oCNHKBatfMiy4Jggb1L5d1PtEP2KQ1k6SYy82KznA/hXAOc/1
	nwv+i5IBO1+MFE40h3F6m0U5Y6lHh8jMBz7++tHutByNETwuAJMMsP5o47c/nPlx2sgO0FR6OaF
	y0o0Mg7EqEKe+Vwu1Oh47J
X-Received: by 2002:a05:6a21:9f17:b0:3c0:9c19:65c4 with SMTP id adf61e73a8af0-3c110aaff03mr14840300637.76.1784007310615;
        Mon, 13 Jul 2026 22:35:10 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-13b659d8da9sm131882715c88.14.2026.07.13.22.35.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jul 2026 22:35:10 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	krzk+dt@kernel.org,
	robh@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH v3 2/3] dt-bindings: arm: rockchip: Add Vicharak Vaaman2
Date: Tue, 14 Jul 2026 11:04:41 +0530
Message-ID: <20260714053442.265587-5-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260714053442.265587-1-hrushirajg23@gmail.com>
References: <20260714053442.265587-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260713_223511_285099_302DD0D3 
X-CRM114-Status: UNSURE (   8.59  )
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

Add device tree binding documentation for the Vicharak Vaaman2,
a single-board computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index b023d4cc9842..b5a43fd5e546 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1311,6 +1311,11 @@ properties:
           - const: vicharak,axon
           - const: rockchip,rk3588
 
+      - description: Vicharak Vaaman2
+        items:
+          - const: vicharak,vaaman2
+          - const: rockchip,rk3588
+
       - description: WolfVision PF5 mainboard
         items:
           - const: wolfvision,rk3568-pf5
-- 
2.47.3


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
