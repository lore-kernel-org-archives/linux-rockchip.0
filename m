Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 36ACEC55165
	for <linux-rockchip@archiver.kernel.org>; Thu, 30 Jul 2026 13:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mBdGZlqZHcIsMnCnbq4biYrc32WWjBPF7j4ugShmDIY=; b=2TvYNIBAnubED8
	rSX6xyYy0VARKFexZ7zf3poEEFIq7LEk5FqzwaW21Ke6TnPA4r90GurbgOXjXyyDUnhDLOHFur9Y7
	p5FbQz0HoxdifGOOq1cng5YZCg/DWTZhCJ8o6TIhi5deLH9TpdC7TVhbx9FanmTaO+xNoWnWcrmXV
	p3sLCKANfuozVGtoBM1X4KZK216oSQ5AzuQXxIkbwnoeCUPQZDhRETK+IEbnVcGPXItAM1yRHzPFk
	edbT+sD6bV1iJuZRfqGNOd45qfqlh0Sgip0fxlCzFOwcpJDG2+ZnhUXHWxbRLquPX0OZM3DTudi33
	UVYxxgDoCrwEhh+Tpg7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpR7i-0000000AePh-2g1t;
	Thu, 30 Jul 2026 13:48:34 +0000
Received: from mail-pg1-x533.google.com ([2607:f8b0:4864:20::533])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wpR7d-0000000AeN2-25FN
	for linux-rockchip@lists.infradead.org;
	Thu, 30 Jul 2026 13:48:34 +0000
Received: by mail-pg1-x533.google.com with SMTP id 41be03b00d2f7-ca00f126b7eso1302359a12.2
        for <linux-rockchip@lists.infradead.org>; Thu, 30 Jul 2026 06:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1785419308; x=1786024108; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=UUyxSz5c3/MDQCOI75162kYwAQ50MisZs/s81C016VE=;
        b=eAWEpp1mmd+UyILvr0aEU2rmOAyiQKlVZznjve6CzXK0GP4t37aC5jUSGJUGXwkPmK
         J2RvaWPIM3zBQ+sGEN8lnU6uOwP5ptgI1Ky+8qppqTZejmZwQ3FSndz/wAAcoSJtOQ0x
         Ta207DRkZ+KoO3DS6GLcQ8iiD4FwEQHAuCnGu3cqTspqOO8OdZ67KH8sOsBIUuNx4nut
         UTaXt4hlgPbyG+I8Y7x3oWlY3fZgBswZUokTMQICcWL8rZ3w2SHbSnSb7uxO6HF2Z5uj
         hZtdM2KgQcEbcvoLFQGILB1resJ+cyLQYDS4NkCQeW6Wti8spCHLcgLmuk6KELGdDnvL
         WpIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1785419308; x=1786024108;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=UUyxSz5c3/MDQCOI75162kYwAQ50MisZs/s81C016VE=;
        b=F2R/cGRTLs8bN1J3HYcJN+1AtFSXmuGXnuPNiWWJ3pom8Dcsa+7UqbbdPe3HuTaTkm
         4/Ox8oNMdaAu3cFL46utCMyHzpoosX6OFWEwhiHFFlJAUij7eztcSyraunn5Bxeekfq4
         lCufnZAjMJUKQoBOy2QMrQ2DOmTHSkNRVIcTe6fLV2fO0Q1cUuVfDr5zZ7dwZXZZyDas
         hnPengOaWkUX4y2hG46Y7qmY/ahmzhGf3WyxFPwP83LVUO7crv44ZMcGVeJJvYR8cvYV
         EVLAejOTo5q9kC2qKrCqTK5sNjjafCCvx4B+c7k7mksQrj3u7axJjlbdXvkXwAl4Kg7w
         YRoQ==
X-Forwarded-Encrypted: i=1; AHgh+Rqvl4nGImyJErHgbV0eupEuFygGEfDrj3jjGuiM1JY2kLgPOQ5mCnYyQMJ2jxe6OLl3+58mf2TrqwM7uYX0hw==@lists.infradead.org
X-Gm-Message-State: AOJu0YxcwyonEmSPw3OukNb7V82sqRL/H6obT4ddtTB2+9d+qjt9xEJU
	+SP7HzuZ/sy5l3NKIwdBrEg3TIaO+FbjlQsTvOI4nGdq49quK1BjyiwH
X-Gm-Gg: AR+sD10Ud1sx18X+zBjNKPEBve8Sr74BfauTvPwOXBA2xf2C6VYAbNK6XUmXSLnovkF
	JZp2xy1/yS4nOvXPojzFsdDcbFKIIaZZ1iZA4tPQ8l2vHKBXBzC2G7UiNc0dGoMHIH85lsIGJXI
	d9mQW8jFzTiuQIX1+9icmbJ9SHnkNDiEnklOwxlaBvN0V6CuJCAjVHz1GaO8pMqh+bfTXDq9P85
	2LhHg3G+sHFKvOQw7Bqdt/SmmHlbi6W78mSrhY34mAerv09Oyhhah6X1OVpgiB5+fmbDHDjtSy4
	HYmTexlrucDjXPZt8TiN2JPjyQr5qXaz8PNYXW10qcb9lzWHbuz4yTjJk17KJ9KYWKIziYT3mVX
	Mlt+tKJZ1zx5u7I+ycY1vqQc6KTFhpTjvQyvJoCGMBclBTo0MjvfDbDftUs3Y7IZQVdQFVoCSQn
	rFI/q8aV3vhy2FOmcgaAc1Hktjy9Z6kWaQQAsL8T8Tt14nxonV8AcqnqebSrY/frDcoPeU
X-Received: by 2002:a05:6a20:918b:b0:3a3:a9c4:3d60 with SMTP id adf61e73a8af0-3c900705785mr2618493637.27.1785419308313;
        Thu, 30 Jul 2026 06:48:28 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:6882:91b7:8e79:7958])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-31504b670dcsm20692047eec.7.2026.07.30.06.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Jul 2026 06:48:27 -0700 (PDT)
From: Hrushiraj Gandhi <hrushirajg23@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Hrushiraj Gandhi <hrushirajg23@gmail.com>
Subject: [PATCH 1/2] dt-bindings: arm: rockchip: Add Vicharak Axon Lite board
Date: Thu, 30 Jul 2026 19:18:14 +0530
Message-ID: <20260730134815.434654-2-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260730134815.434654-1-hrushirajg23@gmail.com>
References: <20260730134815.434654-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260730_064829_554736_D8CEAEAC 
X-CRM114-Status: UNSURE (   8.60  )
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

Document the compatible string for the Vicharak Axon Lite, an RK3576-based
single-board computer.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..4e80b594f42f 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Axon Lite
+        items:
+          - const: vicharak,axon-lite
+          - const: rockchip,rk3576
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
