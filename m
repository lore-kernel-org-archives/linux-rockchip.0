Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id CFE9DCF11CD
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Oct 2024 10:37:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=oo5AafaEO/Oqf2ld0nL59VXIzXb6jVjM+11McYeP2Z4=; b=S87cdndC0t5rFY
	VyYsYqNcO07FYAyrqT5hu52oRA8S6W/KbJHHkvx9ybTuR/RRggy+3lwcBQzFuzqlqGjwzg+6DLHgy
	X28zGF1mkwCz/mgFHW9EH5qh+F0gZRAGSYEtFffE3hlCYMfdlqav0ufP/NsK6gjdmAjlYJJgAZAIu
	mqRQb609FDf0CTUUW80QENvHbQ3Pz5ztv16F7PtJmoHX92r82JjUhZ0nrK9jPw4aCN46AxCdCUNaU
	F/Cq1dcUrTMBOGilTQIMbbWq4uOp6+XlEHklnUtmTyAk5FrUF2kVkgRLAp4LWTo6eKIq/CUoBzD9o
	xm0FpmJBne84tcVNoFGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1syqYE-0000000CPzr-2RiK;
	Thu, 10 Oct 2024 10:37:46 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1syqGz-0000000CMyB-2CGL;
	Thu, 10 Oct 2024 10:19:59 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1728555592;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=2t5G1nuRoT30uUHQhEAmI0rqUOvlejZIQbCf/G470I4=;
	b=cAFRP0Ge91jsRZUPc1Y7Hxml3ClssfPkL7iEl55YX+Q+8Y3kHzPGbMULWqpDCgf9QurS23
	dDQgM7dmZkIRc4a49nbje1QipkkHNUDafgSq7qeWW7Uc3n2B1bOzUgaVLYUUv47qlGnxuP
	a5Si+9OZX7RJpvg+9LYdKE4cjSaNqvVcDq/3ccT0s55e6Vg5e6tgnq7ynpnQntUqkKJe/6
	Msh+c3wL5PjhOKtYdeo1NFIRzSwoiHKp1iupO0EVCGNZ3T89X+H0k3Del8DOkseY41B8YU
	jg2AEk18OJmU8Ea83OT17kIzJT9nPPWLRIG3lioZyNc8OY8+AYGTPTwnLYPqYg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	stable@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: Prevent thermal runaways in RK3308 SoC dtsi
Date: Thu, 10 Oct 2024 12:19:41 +0200
Message-Id: <d3e9dc4201d38894b09f3198368428153a3af1a4.1728555461.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241010_031958_061486_FD6FA8AC 
X-CRM114-Status: UNSURE (   8.53  )
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

Until the TSADC, thermal zones, thermal trips and cooling maps are defined
in the RK3308 SoC dtsi, none of the CPU OPPs except the slowest one may be
enabled under any circumstances.  Allowing the DVFS to scale the CPU cores
up without even just the critical CPU thermal trip in place can rather easily
result in thermal runaways and damaged SoCs, which is bad.

Thus, leave only the lowest available CPU OPP enabled for now.

Fixes: 6913c45239fd ("arm64: dts: rockchip: Add core dts for RK3308 SOC")
Cc: stable@vger.kernel.org
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3308.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308.dtsi b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
index 31c25de2d689..a7698e1f6b9e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3308.dtsi
@@ -120,16 +120,19 @@ opp-600000000 {
 			opp-hz = /bits/ 64 <600000000>;
 			opp-microvolt = <950000 950000 1340000>;
 			clock-latency-ns = <40000>;
+			status = "disabled";
 		};
 		opp-816000000 {
 			opp-hz = /bits/ 64 <816000000>;
 			opp-microvolt = <1025000 1025000 1340000>;
 			clock-latency-ns = <40000>;
+			status = "disabled";
 		};
 		opp-1008000000 {
 			opp-hz = /bits/ 64 <1008000000>;
 			opp-microvolt = <1125000 1125000 1340000>;
 			clock-latency-ns = <40000>;
+			status = "disabled";
 		};
 	};
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
