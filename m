Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 69F69CCF9EB
	for <linux-rockchip@archiver.kernel.org>; Mon, 27 Oct 2025 15:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Uje+HcQqw6KuquBLBxFwooLPXje9YuNmxdq1Vy0+02I=; b=csVAUOeeMwEMjW
	yecNT7/dHibo8dkzDmlWGSWYg0PjcFtX2w5EF51Fz5eSPcNwjpdc23szlcYWMgmMdJVjwt3hAmI3r
	l9adgKFXjcWDKMAoK0ihlR+RyGVRyNTMqAceLfEzFr4wDdOAQue2Kc63jZGwXi4bDnDy5ExWs5lvW
	Fs8sk7/SAz2xMePGZaC420C3cjcs1wOOEMOo2H1EdiMXnJsuLveUA/sJyH/HXzJW8wia+kZwDVldZ
	G+bEwJJczf2uEwcs0Nx/pb7FIvdICdHLycppsdBJznsrKX0SPPU5gGTLQ1KfQneZB3KONbUVPciLQ
	bf6yqQ8MWqSfEOG0tEUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDPbb-0000000EGqt-1b8A;
	Mon, 27 Oct 2025 15:57:59 +0000
Received: from out-178.mta0.migadu.com ([91.218.175.178])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vDPbZ-0000000EGpm-1AbR
	for linux-rockchip@lists.infradead.org;
	Mon, 27 Oct 2025 15:57:58 +0000
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cknow-tech.com;
	s=key1; t=1761580664;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=7DktUCNizUthk/eVYWcphe4sD34yOq87O4J/7ILxNWI=;
	b=NsxXLJecBlL5+cyKyvFiI6hida+cTbMcscYIDDa4jS3yYGcrOfZXzB2o/c4EGF/VFrf8PB
	bKQNj9HmzilsHCag2fRU+g6lVGv519KVy4+QcBPsO8hIReP20iDjiVBC4qVtGKvOgAq7zA
	VzlG45KebSh6HL5QLDqD2pjnofyLBr6hTW/DslhwLyxrgK5TgEgBC05eKNAuj5NWuRZ6BB
	TdXrukHsYWbyaCJE2rCJi9AkS4343Q9Lec/GXs/N9YOjXdJe5GOw0XOURI1fhQCqt7FfvC
	4UKvRaZ2p3K4H2bV+KfaNN8R1GMa16fMEVwhkhRLjVOKqTYbGPLzFGTpX0lP/A==
From: Diederik de Haas <diederik@cknow-tech.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Dragan Simic <dsimic@manjaro.org>,
	Johan Jonker <jbx6244@gmail.com>,
	Diederik de Haas <diederik@cknow-tech.com>,
	stable@vger.kernel.org
Subject: [PATCH v2] arm64: dts: rockchip: Fix vccio4-supply on rk3566-pinetab2
Date: Mon, 27 Oct 2025 16:54:28 +0100
Message-ID: <20251027155724.138096-1-diederik@cknow-tech.com>
MIME-Version: 1.0
X-Migadu-Flow: FLOW_OUT
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251027_085757_457276_A84FF66D 
X-CRM114-Status: UNSURE (   9.03  )
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

Page 13 of the PineTab2 v2 schematic dd 20230417 shows VCCIO4's power
source is VCCIO_WL. Page 19 shows that VCCIO_WL is connected to
VCCA1V8_PMU, so fix the PineTab2 dtsi to reflect that.

Fixes: 1b7e19448f8f ("arm64: dts: rockchip: Add devicetree for Pine64 PineTab2")
Cc: stable@vger.kernel.org
Reviewed-by: Dragan Simic <dsimic@manjaro.org>
Signed-off-by: Diederik de Haas <diederik@cknow-tech.com>
---
Changes since v1:
- Added Fixes tag (Dragan)
- Added R-b tag

 arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
index d0e38412d56a..08bf40de17ea 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3566-pinetab2.dtsi
@@ -789,7 +789,7 @@ &pmu_io_domains {
 	vccio1-supply = <&vccio_acodec>;
 	vccio2-supply = <&vcc_1v8>;
 	vccio3-supply = <&vccio_sd>;
-	vccio4-supply = <&vcc_1v8>;
+	vccio4-supply = <&vcca1v8_pmu>;
 	vccio5-supply = <&vcc_1v8>;
 	vccio6-supply = <&vcc1v8_dvp>;
 	vccio7-supply = <&vcc_3v3>;
-- 
2.51.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
