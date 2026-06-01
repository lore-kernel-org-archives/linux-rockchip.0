Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 1F3A7CD5BD1
	for <linux-rockchip@archiver.kernel.org>; Mon,  1 Jun 2026 16:06:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zp4xxpeP+ZFgBuq3L6LaJsxwZo9tqSIfg8xfSBrLJ54=; b=JXpvlh/u1QmCsj
	Z9u0m9v2d394FruqH+ajZ7X2L/jEck+vWHkJ1lJxanw1fb6FyLGAHGg5JO8LKVmvGnMm/S30YrGNE
	pYDho5FntTapZLfC+FWuC6gNpSLdTsFTX/27bqXocQFrezPmT46i65xwrYkbVrYBWrSvXM5dqPeli
	TOwVXuuEmMkyUEzLB5cYITwpLW968tUum1WfeYfdeaI1xdBE2Gp/Lk+cBLoLIN6KdcM6FqyarJ6pF
	Q7dRMtT7LwTA0+kXXfVSVEzi2+9iNgc44KgH3IAQfzE7yZ0ctMO4gDc0hzHbZC4yQcsq0ss8zrcNJ
	09XikBIXhj1sUoOuCQGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU59x-0000000BQsv-42N8;
	Mon, 01 Jun 2026 16:06:37 +0000
Received: from mail-pj1-x1033.google.com ([2607:f8b0:4864:20::1033])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wU59v-0000000BQr1-1S2q
	for linux-rockchip@lists.infradead.org;
	Mon, 01 Jun 2026 16:06:36 +0000
Received: by mail-pj1-x1033.google.com with SMTP id 98e67ed59e1d1-36da151a152so923097a91.1
        for <linux-rockchip@lists.infradead.org>; Mon, 01 Jun 2026 09:06:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1780329994; x=1780934794; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YU2lR4C6HulA/xumBMwgTiZI291rJPzss3O8OSIe4FI=;
        b=RUNzJ0lwaol0kpMjoh+0Yv2jUGD8SSFsH7AwGzAzngy2DOb9AQZgC+YwDQKVDndUWb
         Pt3SBBAuVukdOtYFwrPN2QWfP2oHfcnie0U2u9UYz0KxRvKKAhrrb4lr217AVJZX+mj/
         UkqwqRguctbBhcRM/Zpi0cgP2iSDrLqIdFcCiID75emxRGShLHxBlEYX4i4N/7MxGKJf
         crM3k+p/nOxpFPw9yyw7/XbIhrwld5nC53oohImdjVNjBQ1K7nk6khNTB1439xZ63Dt1
         Dr6ORS5enWS36eixOmh4+zyd1BPugextfYPShoWQoObZPFScs2/ANpy8VnVM/i+nsH25
         rZ0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1780329994; x=1780934794;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=YU2lR4C6HulA/xumBMwgTiZI291rJPzss3O8OSIe4FI=;
        b=DKqtIqcjngw5sN08MIE9nvFNfeFA+MlsUV4ZrrHbnN7nik8icoeFUQ5cz1X9UAE1Ft
         a9jzIBKb8nVyXHbMrsneL/JGfmUvc2rM0rsM0geVE+duUQd2KIGqn1n+anXLfQ1qE7Ww
         BbCDUz8iNEecO4hRr4WSaAnml2awK9y0TwgoaGbnZuUn2boVMbwtymyzML4RreXN8yBo
         +XcNKNtD3oW+YS+6G95WLyOoQEOA+kQ/leAogT0y5w7NdGTpH/UuPl3Nx7EsG+wDWho7
         dchjBNRV+VQABqrFeci4q6V0KPrKGm1joY0C4xd+ThzqLAFK6A/91Ggq/ScnmYFpbOqS
         /7wg==
X-Forwarded-Encrypted: i=1; AFNElJ8vxEnGH/QQtphRTF/tnWKazIVnDcQ1jV432wOv9wc6udxpwAmof6jfkeKf1iUQRIiGttTWhuK4QyEhpV1RBw==@lists.infradead.org
X-Gm-Message-State: AOJu0YyjGtiRjS9PbTYM8QFJBZfMSZZML1dmlOFeMQ2HWYgmMYVCEI+k
	Zf6vnpNiMMuQ8p+Bm7WBH8fXEaJ7TJoSrruTQsCBIrlK6Xni56L12uw7
X-Gm-Gg: Acq92OH1TiB152LpQH0kHoip7gQa3TpmCU5tInb9a3If3os6evp74jg0FFsyiVqaiw9
	DBjFdJp66teIptAtKkVDHJV+MgXtKvx8DcT6aTGqpuIe+i45f1tOVMAL674guV1SveJiWED/zUp
	9NQGmbA1gG3MrGrOAOqQWxrsqCLWmFgAn05Xy2/JylYcQpvQ/G14hxRwHr/4xj1U5qRkT9wN8yz
	m0rQDc4INBIEK1fPCi4WKAXwwrtxF3aQ1wOX9iXAqHtB/jKNxtY0QQeZ02JiiBq0Q4nmKHYN6iG
	imh/dU8mkusF+qm4ukpg4rJ7+qK1p/v3xRHroNqMw3zJRyeRo9frDFI1C6jzQQSuwlfFLtokzsS
	083GIHTY94LzjzpCf8GBLJWAD2/zDYBuSjwiK5qd5Lemtx8JgUDmvMSberycAT1PkywFJb7/BGS
	wzqKNxADVGnwdHNdmsRQa7C4EW7YXfm2WOWkvkkJJ+
X-Received: by 2002:a17:90b:3c92:b0:365:a5f6:4a5c with SMTP id 98e67ed59e1d1-36c4ff2c8c0mr10880173a91.1.1780329994484;
        Mon, 01 Jun 2026 09:06:34 -0700 (PDT)
Received: from i386.168.1.127 ([2402:a00:163:2ce9:9c6f:e28:3da8:7980])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-36dd9205ddasm64218a91.14.2026.06.01.09.06.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Jun 2026 09:06:33 -0700 (PDT)
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
Subject: [PATCH v5 2/3] dt-bindings: arm: rockchip: add Vicharak Axon board
Date: Mon,  1 Jun 2026 21:36:02 +0530
Message-ID: <20260601160603.167706-3-hrushirajg23@gmail.com>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260601160603.167706-1-hrushirajg23@gmail.com>
References: <20260601160603.167706-1-hrushirajg23@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260601_090635_380814_F252D688 
X-CRM114-Status: UNSURE (   8.57  )
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

Add the device tree binding for the Vicharak Axon single-board
computer based on the Rockchip RK3588 SoC.

Signed-off-by: Hrushiraj Gandhi <hrushirajg23@gmail.com>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1a9dde18626d..b023d4cc9842 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -1306,6 +1306,11 @@ properties:
           - const: turing,rk1
           - const: rockchip,rk3588
 
+      - description: Vicharak Axon
+        items:
+          - const: vicharak,axon
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
