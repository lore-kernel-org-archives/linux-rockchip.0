Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7B4CAC0219D
	for <linux-rockchip@archiver.kernel.org>; Mon, 10 Feb 2025 22:56:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IMr0BNwxxNqJX6HcZXKqVCrVSQqlMWzBMTsk17ofNIk=; b=4h7dRRDD765Mge
	HM7sMwTz3AtISyiHYpVHYjUwvS1Wbmaco7Tt1o/ypAPdb+hrtHGrK6dVH0hUeoCheyQhKpbO3TAOe
	DQ5Ak+KhfT7bxWf9IKBlApDYkAB/H+hMBSi+wd5Uf3+QOik9sERP+M6g43SRfDoCgzcsZzwDUMODg
	kCvzEN9ZdSXnlQ/gxKIAYTgRW8eUggomlFtSx7WUnrt4Zuc+tWjaUXb1NdzTphRmTbcKuu8TyvvDQ
	5YPuRFKQMGt4eV1UYYhiwegwd42wVdUjsGhaRPHjjTdOiBUIwL5xJx3YwCodi0YovBE183wmKOxyW
	sD2BBjtVgW8qszVrS8wA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1thch0-00000001kkr-1nLH;
	Mon, 10 Feb 2025 22:55:54 +0000
Received: from mail-lj1-x261.google.com ([2a00:1450:4864:20::261])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1thbTH-00000001Vse-479e
	for linux-rockchip@lists.infradead.org;
	Mon, 10 Feb 2025 21:37:41 +0000
Received: by mail-lj1-x261.google.com with SMTP id 38308e7fff4ca-30761be8fa7so44852641fa.2
        for <linux-rockchip@lists.infradead.org>; Mon, 10 Feb 2025 13:37:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=patrick-wildt-de.20230601.gappssmtp.com; s=20230601; t=1739223457; x=1739828257; darn=lists.infradead.org;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Wcfm2torRnSHmFqV9a+s+XnFIKlfVs7U50YSgpk9mKY=;
        b=ZstyyZbFnjWgJLwW8x7i4JhICuzVEodKfqKb9VVJZ7ZXgh2A58euqwn9af8WrROW77
         qWppNoR/Dxb/Ob2f5/n/Oq8Jie522nTqVoWr/sviM9gMhgfx1Tyt7/FbeMGf+63Fs3Fm
         8RYNVL6EJEX0ej+F3JPcEzjd6lbWLetJk+s7eWHUPsl+yXWBZZtaJYlmVJNjwd3dOHNr
         QRcBLWsih1eS7V4kHeXRoZhym7lcm3a2D1Lidh5/DLU60TX1qYXkIVFrSVi2TsZowg+U
         e8qq6zWGkLY9fGAVIMmWsswFH3OQomeBJUHe7K+3Gqb8B59dJEq5ZGvw5rnsfJacsOBY
         ac8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739223457; x=1739828257;
        h=content-disposition:mime-version:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wcfm2torRnSHmFqV9a+s+XnFIKlfVs7U50YSgpk9mKY=;
        b=HMeZZqypp6nIqawKwR4GMZpwQiwkBHeKghXJXavi61FgP6MjcwIY0ujBx0cMoKjH+n
         s8aeEK9SF2GZUhHfu060eG/fgYZfoK0+vqimJ2exX3VQx+ANFhjKaUp4zZzYNmuhwL2k
         0IoAMHl12r8J1W71RV6Jvkowy6ZMddj1fpvn+c5w/K8fzY19RRM7JMkPaWBGPfD1w1sf
         EpHQYKgGPJ9zlvM5eJK6Aoy1pCF6bmLTU7vTFfB6OTb9zDhGOUx39GPBUx1a1U+GudYq
         +FsxTastT9ypoLUBcsvbs/GfnWf1kpSFPcysbMtkshz5ewb8MXl5BJd1GCr+BrjSFWuQ
         H4Jg==
X-Gm-Message-State: AOJu0YyyQuzkaS+il+8iwM8a6++7TJSMVqufTpRQUQyZ+IVAJNzg0cJF
	BYIbyhG5sreQFINRZfWVYpY6W/GRFM0vP331U55Wrx5y9TRBXsduX9CAAkPRrBa/bIL0f74SJkf
	K6/uLMv6lNkEVpHOvmUbyTuJCQrSYfJ7SGAQxeSsw
X-Gm-Gg: ASbGncsdXAmPpiqdpavgr91Tk5Azkp5NFzFtGLmc0VSWps6WVFS0lBI2juxhHX3QcFQ
	Q6PQzPkLc6N0QD6xCwsh5Oo1PVQz2dELhtCxveMqLObhgXhZkd/KvrUWHdfo7z2s7K7j9ROLyTN
	FuWP2EBYwPmaHnkbgTIz8Tvh4X6avmGp3ciKQHSzlvRGiIPvwawhAl/lEI8QT6aS2l/T+uRAABi
	e02KiK5FfwdlUE0RuLzONBHdv0aykJIuShuw5Xv7kJyUA3kJKitV1Evt7XQ+dA74nnY8Awx3Q9T
	HYZ7OgYqzCw5tLQefuGpol1uFMsaIegT
X-Google-Smtp-Source: AGHT+IGn7YjOVgn9JSAaDfX3ZnHdARe93nyXys+vCCF1LaucNZ/41I9JmCGvPgOvWMcZ0mZSnMfQ25GhTucI
X-Received: by 2002:a2e:9e07:0:b0:308:df1e:24c5 with SMTP id 38308e7fff4ca-308df1e2fb0mr32112041fa.9.1739223454517;
        Mon, 10 Feb 2025 13:37:34 -0800 (PST)
Received: from windev.fritz.box (pc19f8e2d.dip0.t-ipconnect.de. [193.159.142.45])
        by smtp-relay.gmail.com with ESMTPS id 38308e7fff4ca-307de2bb0adsm2715111fa.49.2025.02.10.13.37.32
        (version=TLS1_3 cipher=TLS_CHACHA20_POLY1305_SHA256 bits=256/256);
        Mon, 10 Feb 2025 13:37:34 -0800 (PST)
X-Relaying-Domain: blueri.se
Date: Mon, 10 Feb 2025 22:37:29 +0100
From: Patrick Wildt <patrick@blueri.se>
To: linux-rockchip@lists.infradead.org
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
	Kever Yang <kever.yang@rock-chips.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] arm64: dts: rockchip: adjust SMMU interrupt type
Message-ID: <Z6pxme2Chmf3d3uK@windev.fritz.box>
MIME-Version: 1.0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250210_133740_170894_4992F75C 
X-CRM114-Status: UNSURE (   9.87  )
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

The SMMU architecture requires wired interrupts to be edge triggered,
which does not align with the DT description for the RK3588.  This leads
to interrupt storms, as the SMMU continues to hold the pin high and only
pulls it down for a short amount when issuing an IRQ.  Update the DT
description to be in line with the spec and perceived reality.

Signed-off-by: Patrick Wildt <patrick@blueri.se>
---
 arch/arm64/boot/dts/rockchip/rk3588-base.dtsi | 16 ++++++++--------
 1 file changed, 8 insertions(+), 8 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
index 8cfa30837ce7..520d0814a4de 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3588-base.dtsi
@@ -549,10 +549,10 @@ usb_host2_xhci: usb@fcd00000 {
 	mmu600_pcie: iommu@fc900000 {
 		compatible = "arm,smmu-v3";
 		reg = <0x0 0xfc900000 0x0 0x200000>;
-		interrupts = <GIC_SPI 369 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 371 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 374 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 367 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupts = <GIC_SPI 369 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 371 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 374 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 367 IRQ_TYPE_EDGE_RISING 0>;
 		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
 		#iommu-cells = <1>;
 	};
@@ -560,10 +560,10 @@ mmu600_pcie: iommu@fc900000 {
 	mmu600_php: iommu@fcb00000 {
 		compatible = "arm,smmu-v3";
 		reg = <0x0 0xfcb00000 0x0 0x200000>;
-		interrupts = <GIC_SPI 381 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 383 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 386 IRQ_TYPE_LEVEL_HIGH 0>,
-			     <GIC_SPI 379 IRQ_TYPE_LEVEL_HIGH 0>;
+		interrupts = <GIC_SPI 381 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 383 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 386 IRQ_TYPE_EDGE_RISING 0>,
+			     <GIC_SPI 379 IRQ_TYPE_EDGE_RISING 0>;
 		interrupt-names = "eventq", "gerror", "priq", "cmdq-sync";
 		#iommu-cells = <1>;
 		status = "disabled";
-- 
2.48.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
