Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 6EF4CC001DD
	for <linux-rockchip@archiver.kernel.org>; Thu, 13 Jul 2023 14:40:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dE8E/STL3On9dexx0z2eK1yemay6815xhapJMelVjQs=; b=KmsCRpgQjbzV80
	5CqnhN417IgN5UsA2TW21pmu+UpvTXFofUUU6/3mD6AZyUhXjlwT9VM6pywnfFCRO8tkcVuH/4iN9
	2SusmBbVO0xjUkegFEks6JQfNyq82/Lxv994lU411QDQPDCxgFRYDOXFzhPmwq9X/gTp9XjGdxBFF
	9Mk/+Ea53fEnGIlgxnvA7DIBGLnkDZ4nS/lJKRGHoADBKHxEe04bUbTOk3hNtTHQOnLOx5FHHiSRi
	EkldZk65OCwXYsr2N7czG1jedekuRZu/bOBA7OI+NmdyI3+B1D0YeImtdVSNfgfIJ+cyJ95Fo003O
	iLjIbP/YgnLI9qyNtnJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxUP-003ajN-0M;
	Thu, 13 Jul 2023 14:40:17 +0000
Received: from mail-pf1-x432.google.com ([2607:f8b0:4864:20::432])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qJxUG-003adN-1M
	for linux-rockchip@lists.infradead.org;
	Thu, 13 Jul 2023 14:40:09 +0000
Received: by mail-pf1-x432.google.com with SMTP id d2e1a72fcca58-6831e80080dso524544b3a.0
        for <linux-rockchip@lists.infradead.org>; Thu, 13 Jul 2023 07:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20221208.gappssmtp.com; s=20221208; t=1689259208; x=1691851208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=K5vZ1vv0N6K8LaB+S//93BMQdabNI48ulO78d3KhNAs=;
        b=ViUr4yqzbp/7T1fHL1dSLBxZ5canTK9h+yFzNEtiMTgBVeXe/XRCSjtU8Ys6/nxdVC
         hG0ythVN0K8XferSdjJdJCB1jugLF/mHAFmdqxx99/crMOQJXOsg/pw87UENZCYePGuo
         j/Mll1JQmB3xSa/IQ6wOWCeRsTtbqqtTXiU6TAJjw5rviSJXqh2KzjLkLSTFxxBAsfKH
         jJaIyb4jeYgYElpXMGeRcWr0ski9x88Dvuk9pDjKT7yIDHqZp1ISSuWYDILxTyhLeHTQ
         aDy3wz+5ehBKBHI+F6tXdK4D+BwAb6AyAy4o/hmjhUD5bxtAYhKnDtTa0BZavaYkm7fh
         Vbxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689259208; x=1691851208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=K5vZ1vv0N6K8LaB+S//93BMQdabNI48ulO78d3KhNAs=;
        b=brIu5ez/XJ2fBuAc31LMLBrTEJ2xHH9ShXUu7azsYam606UbHX7a2DE9x3G4jdq7yz
         De8RN/99oQn4BpaAWxthFFi55YJ/o+r2of3/lR05NlastJC7gHNmGxZZcxhx4kterPej
         NJZtathN0t7IbhI+729gwZzFTKMnazpv1y4FTGx+J4wRyQfFVxS8NbteyeNuF3iWDHpE
         cjXEbCIYJzirDGIO7UHNlVs8CAkvXizqF2ZmE40O06I9HJ/VEKwNlKobzlNQ0w6n39wb
         0RT/2KvOUHH+Rk1ZCkVDuirxqbQICysm2MIsOxj2OUkfCIq27TmEgiExJDp6LNlzXMz/
         YsjQ==
X-Gm-Message-State: ABy/qLbTzstJpmYJ2TGpmpZoDNJV3WXY5DhzNK/ykJHWPgywPmvL5cuY
	Aod5OluSecOEZvAuL/qQLypqKjtNKFKfjgpFjNATvg==
X-Google-Smtp-Source: APBJJlHaB4XRsF1iruppO3ErGKHoxLxsp5GZ23w3i5jBtiochO2BfLPG5L2raB1yLQjo/ijQpc7KXA==
X-Received: by 2002:a05:6a00:3a1d:b0:680:f6fe:8908 with SMTP id fj29-20020a056a003a1d00b00680f6fe8908mr1431203pfb.9.1689259207857;
        Thu, 13 Jul 2023 07:40:07 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a208:4984:5087:308e:21ca])
        by smtp.gmail.com with ESMTPSA id d18-20020aa78692000000b0067a50223e44sm5565764pfo.74.2023.07.13.07.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Jul 2023 07:40:07 -0700 (PDT)
From: Jagan Teki <jagan@edgeble.ai>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH 8/8] arm64: dts: rockchip: Enable RS485 for edgeble-neu6b
Date: Thu, 13 Jul 2023 20:09:41 +0530
Message-Id: <20230713143941.1756849-8-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230713143941.1756849-1-jagan@edgeble.ai>
References: <20230713143941.1756849-1-jagan@edgeble.ai>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230713_074008_464697_19FDABCB 
X-CRM114-Status: UNSURE (   9.63  )
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

Add RS485 support for Edgeble Neu6B NCM IO board.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
 arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
index 1bcd64680ff0..72b0e5150155 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-edgeble-neu6b-io.dts
@@ -84,3 +84,10 @@ &uart6 {
 	pinctrl-names = "default";
 	status = "okay";
 };
+
+/* RS485 */
+&uart7 {
+	pinctrl-0 = <&uart7m2_xfer>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.25.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
