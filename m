Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 7D80DC27C4F
	for <linux-rockchip@archiver.kernel.org>; Sat, 29 Jun 2024 16:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bCzPTYhOl7LwF6nRLNhFpu3nwG0lQi/p+HK8KDL+ykI=; b=yCwm8BedN4/DbS
	5jyMIluDpwCfC5Qy5LqjJlVB1jzWTC8CoueXopiflNXJ7LABwXCrVL0Im/X9ynhjKxUCjactw0apw
	HM5aDyTmdAKRy+Ryaakuudg3TStgs0KJR4WtrHHyQvg1AgSlJf+uLLvT7n3nRfSeYjcLNV71xNcbk
	ca+3DTaqnqN/3uqb3fL2e7CEe5P8iSkKOdDwCADRFKN5d0Z80Ztu7Mw4Nzm9bIrZQAN19ghZzAa/0
	sGH3emR7p+hcLyx4E6OA00mt/Ti0AaFPdzQAiAPJxvQCr0YfZXsn+wDFkwlhzxkTr5mhBr/Py3+XZ
	ng6SJ2NCA+i6aZ1wUVAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNb6d-0000000Gf3m-3SO7;
	Sat, 29 Jun 2024 16:39:19 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNb6S-0000000Gf2q-0mbd;
	Sat, 29 Jun 2024 16:39:10 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719679146;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=XD2ROucdrug5HlrYnko9mz+aWaTwM0vQIU29PZm8nNw=;
	b=mHsrmg7RpdUSIgVRYZJHGUNTukimbIyMl8gFF5FzuG2N3FEMqGJVqQ9CI3upWWoXjK5tgv
	3OkwBUtKdZPeglqFjUG91QU1gveIhQjby0m3Es8cK6WNQAJCBRY/NfK4TlnITf4dTXqck3
	foy+ZFii+GtS4/uTy7hNjPLg7BgXnkU09OquAhOF3IhS+1Tpu5YL2a14UUvs9uSPjI6hPE
	qS1mYzWCnPIHt4VdSFDqqrdTwQPTDkX2Ai8Crcm86xNIPFFCKvSPSlJfhpQ/PlidhdwhiS
	4ycQxa8nSKlWkG5YlBBbyjIA1zB7MVEs9ej9m7ZAqCqyoy6yHppWKR65hNC8Fw==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	Diederik de Haas <didi.debian@cknow.org>,
	Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2] arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC dtsi
Date: Sat, 29 Jun 2024 18:39:02 +0200
Message-Id: <bdb60f1f793166cd65f58ab7aea025347076019c.1719679068.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240629_093908_682200_3D022A7C 
X-CRM114-Status: GOOD (  13.12  )
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

Add support for voltage ranges to the GPU OPPs defined in the SoC dtsi for
RK356x.  These voltage ranges are useful for RK356x-based boards that are
designed to use the same power supply for the GPU and NPU portions of the
SoC, which is described further in the following documents:

  - Rockchip RK3566 Hardware Design Guide, version 1.1.0, page 37
  - Rockchip RK3568 Hardware Design Guide, version 1.2, page 78

The values for the exact GPU OPP voltages and the lower limits for the GPU
OPP voltage ranges differ from the values found in the vendor kernel source
(cf. downstream commit f8b9431ee38e ("arm64: dts: rockchip: rk3568: support
adjust opp-table by otp")). [1][2]  However, our values have served us well
so far, so let's keep them for now, until we actually start supporting the
CPU and GPU binning, together with the related voltage adjustments.

[1] https://github.com/rockchip-linux/kernel/commit/f8b9431ee38ed561650be7092ab93f564598daa9
[2] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi

Suggested-by: Diederik de Haas <didi.debian@cknow.org>
Helped-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---

Notes:
    Changes in v2:
      - Dropped support for optional GPU OPP voltage ranges, which may
        actually hide some misconfiguration issues in board dts files, [3]
        but that will be covered by other debugging patches [4]
    
    Link to v1: https://lore.kernel.org/linux-rockchip/446399362bd2dbeeaecd8351f68811165429749a.1719637113.git.dsimic@manjaro.org/T/#u
    
    [3] https://lore.kernel.org/linux-rockchip/f10d5a3c425c2c4312512c20bd35073c@manjaro.org/
    [4] https://lore.kernel.org/linux-rockchip/36170f8485293b336106e92346478daa@manjaro.org/

 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index d8543b5557ee..ec772bce359a 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -195,32 +195,32 @@ gpu_opp_table: opp-table-1 {
 
 		opp-200000000 {
 			opp-hz = /bits/ 64 <200000000>;
-			opp-microvolt = <825000>;
+			opp-microvolt = <825000 825000 1000000>;
 		};
 
 		opp-300000000 {
 			opp-hz = /bits/ 64 <300000000>;
-			opp-microvolt = <825000>;
+			opp-microvolt = <825000 825000 1000000>;
 		};
 
 		opp-400000000 {
 			opp-hz = /bits/ 64 <400000000>;
-			opp-microvolt = <825000>;
+			opp-microvolt = <825000 825000 1000000>;
 		};
 
 		opp-600000000 {
 			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <825000>;
+			opp-microvolt = <825000 825000 1000000>;
 		};
 
 		opp-700000000 {
 			opp-hz = /bits/ 64 <700000000>;
-			opp-microvolt = <900000>;
+			opp-microvolt = <900000 900000 1000000>;
 		};
 
 		opp-800000000 {
 			opp-hz = /bits/ 64 <800000000>;
-			opp-microvolt = <1000000>;
+			opp-microvolt = <1000000 1000000 1000000>;
 		};
 	};
 

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
