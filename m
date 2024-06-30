Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id B5699C27C4F
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 16:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1tYo33iNxgKsahxY43evzQ06UkQsdiepuJvqOjKB8Mg=; b=b8/MGy9ef6mx6v
	MjHLA2PpyVgAy5s6/HCFd5k04W+YeA5F0i44Wv0eSNLlwtRDpeS03yV35Z971JTjWtrC9WZuoq0Kj
	PTBczyJrcgvmOv/ZQzHLR1Z0I6kYGt5c+phzCHyCA7vnKlrD0klKqaQeJlETEFmDwte8ynZOO/eYM
	YRaBDEq1HbaJSv9/BIiw0FycU3SRwat3TEfUpiBHftek77635rkoARohlkyeG9aF5IgZQP6KODFj0
	Ui8T3b9crTVHfQ55mnj2yALqRpByjh0pjm6xe2T7+wTao489USGCqtxwrtoxwI1zs6IBLIlUstYxe
	2bV4f/fkjbzVsEH+cWBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwzC-00000000exo-3KRc;
	Sun, 30 Jun 2024 16:01:06 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwyt-00000000erk-3YYd;
	Sun, 30 Jun 2024 16:00:49 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719763245;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vf64E0kNlbgeCg1YuEunVC6IdAgC+52ElMh5y13hzkU=;
	b=FmPBVSk3Jw1in4Cz0sCkplCERgOplzAF2U/gtA7OgHD5Qq+ql2aI5yj8p/5JxRUZLUPiKX
	0JQ7Lcjk1AZj61wMi9lu9dZz8IGeonxvirs52/uJ9PQeJj2hYGVN5G2oh9sK6vBEm4RnbS
	2SenhLqZC+3qQBqIKP0Df7zTxpVwQxoFISGZRHsmT8xuunDj+bnNTvvd9ukt/yXYirK7ni
	/Z3B/jpb1S9P9z3idpnMMhBll/7KOzEkxvoMMv5pZcnsViS/N0OUkIVwyjJpkXhm4xf3gc
	wNjbAiXsXsDKAOFma/Ii8sp7DDmKKQYbbJIdJuChfPcOykfZzMybmlUoxDj9sg==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-kernel@vger.kernel.org,
	didi.debian@cknow.org,
	jonas@kwiboo.se
Subject: [PATCH v3 1/2] arm64: dts: rockchip: Add GPU OPP voltage ranges to RK356x SoC dtsi
Date: Sun, 30 Jun 2024 18:00:40 +0200
Message-Id: <7e9ba70fd54a21d6f1f267df11e0acabff8d24e0.1719763100.git.dsimic@manjaro.org>
In-Reply-To: <cover.1719763100.git.dsimic@manjaro.org>
References: <cover.1719763100.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_090048_059090_5378F806 
X-CRM114-Status: GOOD (  11.11  )
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
Rockchip RK356x.  This is, for example, useful for RK356x-based boards that
are designed to use the same power supply for the GPU and NPU portions of
the SoC, which is described further in the following documents:

  - Rockchip RK3566 Hardware Design Guide, version 1.1.0, page 37
  - Rockchip RK3568 Hardware Design Guide, version 1.2, page 78

The values for the exact GPU OPP voltages and the lower limits for the GPU
OPP voltage ranges differ from the values found in the vendor kernel source
(cf. downstream commit f8b9431ee38e ("arm64: dts: rockchip: rk3568: support
adjust opp-table by otp")), [1][2] and present the exact GPU OPP voltage
values that have served us well so far.

[1] https://github.com/rockchip-linux/kernel/commit/f8b9431ee38ed561650be7092ab93f564598daa9
[2] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi

Suggested-by: Diederik de Haas <didi.debian@cknow.org>
Helped-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
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
