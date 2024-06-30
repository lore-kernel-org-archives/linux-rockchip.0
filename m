Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 0099DC3065A
	for <linux-rockchip@archiver.kernel.org>; Sun, 30 Jun 2024 16:01:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q4eBhPJvU7Fcm/OhRGgpW78VK3pjvYrhHv88Zx6gfHo=; b=aEmCqHpbc2dNhW
	8gr9q7Pcr6FKK9WbudvqksMDmD7EZcXEZeuAkKOcQx9erSzsuChAEg3KnVoAfxQqdLASEForZIJjI
	znLS/SX0ToYcs0z9aKF5sV2aH6kcfGsmTRJPGnHw98jnguttjQwH83eTPKID2Yu3nCDIDDMT8wmu+
	wWZCBE8oHCnZbDMnucCH4sJwGHxFPv18MloaQk5LmF7fmaLnst0+AMaOGQxkV64zmCtJ1mEugDTWF
	ZWCNGx9KXDHSIXM3kE2NDeMdES7inUwx7HKbpZhUT3mH3+14h59lqaembGqdNfjldM8Tpm2DK4VYN
	5NNDOeB3o+LfDDDcqu0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwzM-00000000f4M-04Fm;
	Sun, 30 Jun 2024 16:01:16 +0000
Received: from mail.manjaro.org ([116.203.91.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sNwyu-00000000ern-1n0i;
	Sun, 30 Jun 2024 16:00:50 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1719763246;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Guv1sE7D+9DIv1Ejtj1tQsUSVZc3puEsRvEvnQebVMM=;
	b=UNNtXGRc4LwBEU3X/kQ1BtSCnp6NZxC8faJEiyINdG8haStOfiAW+kHXJo8pvo0THTEFb6
	9BX5+/HdxOX/AokQUqQ8q93xef5QKVG8i53ZzJuB/wfzG6YHO/6Tg7OZ6qKgExk9Z/xw0Q
	oHDCPIIictYkSM5V8atUmi2cDiv0O+qUsVDpNSfLDi6eAWWAIJsr0jkawJP42PIyrNJQX5
	UxGqRWGSHADptp6iqRJ/4yeegnU5kYk+0V6SROa3DV8WldAkZtqmX6VzolIU7LrNfMgr41
	lfCbx0RnbucyTT9X9R2El4jqllrce+woVXrC4gXNUMWQ794LwyFNwd7lRKFVKw==
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
Subject: [PATCH v3 2/2] arm64: dts: rockchip: Update GPU OPP voltages in RK356x SoC dtsi
Date: Sun, 30 Jun 2024 18:00:41 +0200
Message-Id: <80301764e8983c8410c806ed2256403823709897.1719763100.git.dsimic@manjaro.org>
In-Reply-To: <cover.1719763100.git.dsimic@manjaro.org>
References: <cover.1719763100.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240630_090048_750374_D3A860E1 
X-CRM114-Status: UNSURE (   9.62  )
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

Update the values for the exact Rockchip RK356x GPU OPP voltages and the
lower limits for the GPU OPP voltage ranges, using the most conservative
values (i.e. the highest per-OPP voltages) found in the vendor kernel source
(cf. downstream commit f8b9431ee38e ("arm64: dts: rockchip: rk3568: support
adjust opp-table by otp")). [1][2]

Using the most conservative per-OPP voltages ensures reliable GPU operation
regardless of the actual GPU binning, with the downside of possibly using
a bit more power than absolutely needed.

[1] https://github.com/rockchip-linux/kernel/commit/f8b9431ee38ed561650be7092ab93f564598daa9
[2] https://raw.githubusercontent.com/rockchip-linux/kernel/f8b9431ee38ed561650be7092ab93f564598daa9/arch/arm64/boot/dts/rockchip/rk3568.dtsi

Suggested-by: Diederik de Haas <didi.debian@cknow.org>
Helped-by: Jonas Karlman <jonas@kwiboo.se>
Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk356x.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x.dtsi b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
index ec772bce359a..e3c77dabc72b 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x.dtsi
@@ -195,27 +195,27 @@ gpu_opp_table: opp-table-1 {
 
 		opp-200000000 {
 			opp-hz = /bits/ 64 <200000000>;
-			opp-microvolt = <825000 825000 1000000>;
+			opp-microvolt = <850000 850000 1000000>;
 		};
 
 		opp-300000000 {
 			opp-hz = /bits/ 64 <300000000>;
-			opp-microvolt = <825000 825000 1000000>;
+			opp-microvolt = <850000 850000 1000000>;
 		};
 
 		opp-400000000 {
 			opp-hz = /bits/ 64 <400000000>;
-			opp-microvolt = <825000 825000 1000000>;
+			opp-microvolt = <850000 850000 1000000>;
 		};
 
 		opp-600000000 {
 			opp-hz = /bits/ 64 <600000000>;
-			opp-microvolt = <825000 825000 1000000>;
+			opp-microvolt = <900000 900000 1000000>;
 		};
 
 		opp-700000000 {
 			opp-hz = /bits/ 64 <700000000>;
-			opp-microvolt = <900000 900000 1000000>;
+			opp-microvolt = <950000 950000 1000000>;
 		};
 
 		opp-800000000 {

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
