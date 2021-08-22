Return-Path: <SRS0=1QWa=NN=lists.infradead.org=linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@kernel.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-13.7 required=3.0 tests=BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,INCLUDES_CR_TRAILER,
	INCLUDES_PATCH,MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED,
	USER_AGENT_GIT autolearn=ham autolearn_force=no version=3.4.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CC47C4338F
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 11:58:23 +0000 (UTC)
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPS id 070376126A
	for <linux-rockchip@archiver.kernel.org>; Sun, 22 Aug 2021 11:58:23 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.1 mail.kernel.org 070376126A
Authentication-Results: mail.kernel.org; dmarc=fail (p=none dis=none) header.from=gmail.com
Authentication-Results: mail.kernel.org; spf=none smtp.mailfrom=lists.infradead.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=v+RX2qvoz63dhPM0f0Y4YMWuQDZU/Uq7LzAjQQ3SgOA=; b=WCmBvipP/0cABQ
	TxLAT4oNyTaOaxP1uLgCMlP7k6g6wFnrwZrZlbE1fUfRNZaWNKlXVwcoZSusumROuv1gFPwGEflpG
	0VPolwmXHYlMM/ZbrqZCvgODM0BHImRU3kRJjtEVlV0r3a8Rb93htXIpq+slViOu0Nw8uZIv8Mx9W
	GRcu2yZSR6I2lGUpNaEttLJLm8Jm7jmRMFmbZYSEJlNORQtpwEfkO3zTwKC3HJTrFMU3F+T2Nyw3m
	XgH4QpN8KpmbzJKADIBFi7N2QdWYgbZasdNquyD9EnYurqidjjUAdCG4Nw7YSYJalS58ILjHJ/84h
	Fb1Hu4RfNBRI/4W6maNg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mHm7H-00DxaU-2r; Sun, 22 Aug 2021 11:58:19 +0000
Received: from mail-wr1-x42e.google.com ([2a00:1450:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mHm73-00DxYJ-L7; Sun, 22 Aug 2021 11:58:07 +0000
Received: by mail-wr1-x42e.google.com with SMTP id q11so21665458wrr.9;
 Sun, 22 Aug 2021 04:58:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4j6NCEA2JsSzQ2QsfgWgHDpNcyrom07JcEHXpRwvQ14=;
 b=aojctXTp9BeGs075gGnP60Pb0/CqIhoBf7WWZx1f3Qk4xIvD2dSjNWonXwAVEIfBh/
 4H76ff14KgN5KLmvPR4Suj8+3ZeAjXM1p5iajIcZ5aGGmTimRAZ5gp31VTyxSJ1utlHH
 Ht8tu41WQKznENCSRDhJLnsiTGgHoyD0Crp6tEg/TqR/8+bnd1J2CTlIcwHUqi8DLfhG
 l8he16ClLwmKCYcuVO9ZOxV98bgv7kQA/2GmjMQj1uoR7seRwyF9bHmsuKqdOF3SZBA5
 W2zmVQ/7Ms0Iz2+eGoiyXo8E8WK8hR5Y2UQpTJA5/e3XrOcAOWanl1AW3gy1k9HdWvdR
 onXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=4j6NCEA2JsSzQ2QsfgWgHDpNcyrom07JcEHXpRwvQ14=;
 b=pRKfe8bNIZgTZV5rOw6Bus1xPkpgGfMsFFvQ36CwXpRS9YOJ4e1uqezoHU1lL5ATJG
 8fLBzW8z5dsTQyyj6WxxV2lJkrkFW9/i3kIYSzIAR+mZtBBWwvE80+8094kK6pxE598n
 Q40ecmo8Hm5dNHpKpquQxrZ7iCBY8+RtH09uAVhwGDi0FXfUWgDBRjugxsb0aom3A086
 2NQmo7ePRLf5NLV0OggfWZnnasd5cMagkMagwzt5n308TmvnvSnhnPeksjz0fMPIjW08
 jCFAd/4udf2LhGnbFYIOQrWgp61PHzOGhQ1nM/EayBcWM5tMFgEqcvXIeGaWiZZcJZ2A
 1GQA==
X-Gm-Message-State: AOAM531WtLw5B/9tQhFOwHeLa7GI3+/VhZo+HnJAFpy9Tw4rBbzkUOk8
 1QbHLRrYWZJw4HZEviS95A==
X-Google-Smtp-Source: ABdhPJzMnOC33dq2VZnwECdAtqdJtIWt0/HDpXCZlRyZcQAcpER+Z3PxsOIn5IU1WqY6q3wU9q/x6Q==
X-Received: by 2002:a5d:4bca:: with SMTP id l10mr8251436wrt.187.1629633483471; 
 Sun, 22 Aug 2021 04:58:03 -0700 (PDT)
Received: from alex-ThinkPad-E480.. ([2a02:810b:f40:4200:97f6:a4b1:c76e:8844])
 by smtp.googlemail.com with ESMTPSA id
 k16sm1597965wrx.87.2021.08.22.04.58.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 22 Aug 2021 04:58:03 -0700 (PDT)
From: Alex Bee <knaerzche@gmail.com>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh+dt@kernel.org>, Johan Jonker <jbx6244@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org,
 linux-kernel@vger.kernel.org, Alex Bee <knaerzche@gmail.com>
Subject: [PATCH] arm64: dts: rockchip: Re-add interrupt-names for RK3399's vpu
Date: Sun, 22 Aug 2021 13:57:55 +0200
Message-Id: <20210822115755.3171937-1-knaerzche@gmail.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210822_045805_740281_17F46903 
X-CRM114-Status: UNSURE (   9.65  )
X-CRM114-Notice: Please train this message.
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

Commit a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
intended to remove the interrupt-names property for mmu nodes, but it
also removed it for the vpu node in rk3399.dtsi. That makes the driver
fail probing currently.
Fix this by re-adding the property for this node.

Fixes: a728c10dd62a ("arm64: dts: rockchip: remove interrupt-names from iommu nodes")
Signed-off-by: Alex Bee <knaerzche@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 9db9484ca38f..44def886b391 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -1240,6 +1240,7 @@ vpu: video-codec@ff650000 {
 		reg = <0x0 0xff650000 0x0 0x800>;
 		interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH 0>,
 			     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupt-names = "vepu", "vdpu";
 		clocks = <&cru ACLK_VCODEC>, <&cru HCLK_VCODEC>;
 		clock-names = "aclk", "hclk";
 		iommus = <&vpu_mmu>;

base-commit: 5936c9eb785b46fdc5563d1c5c34b5558e3fa156
-- 
2.30.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
