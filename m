Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 611E6D78326
	for <linux-rockchip@archiver.kernel.org>; Mon,  2 Dec 2024 14:46:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5tLGcXddyPLTJ8MhtKQJo/dqAhP1P6MZHwP42N+6Vs4=; b=1Z/+b27RiUlcxu
	Q4i6abEwTiHTtcNQkaH6qHxNSnF6x4U+4LiiceZOxznlKG/+oSe0X2ehCt3dUO/GlgVPhoIYeMRFi
	vxQfoirJu74uOO2k7gHRYm+K/e/qKjISa3l2SUmn9YLK8q2coIxVNgqCw8eE5ub55RwbFEioL15pC
	KscNQAamVGE/YYFooBTA8Q90iNwxVHiJcxJCjZHIVqTffi1XSS6BQN1GNIB4MNIxrl2u9SSUUyqVk
	QJF3z6ctTXqIl7GjkzlD1xZUVbNawZmmGJ2eVbQZSRY/9Ie3jg9+eueGW3jR7LHwOMceW+PuloNdi
	msSq53oJpRcvpgSuhF2Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7h1-00000006Vsy-3qx9;
	Mon, 02 Dec 2024 14:46:31 +0000
Received: from mail.manjaro.org ([2a01:4f8:c0c:51f3::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tI7es-00000006VKg-00CA;
	Mon, 02 Dec 2024 14:44:19 +0000
From: Dragan Simic <dsimic@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
	t=1733150655;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=yRJZlOcms6c9rbeZYvsX5MTDNXpRGMuOjccJ3gJk83o=;
	b=PUkoZ0sICV8QIm+TzgZgwT/vqL+UjIf3NGBGb4D6j6pG4v29Wgv3b4n0uv1BsxglBCNmIH
	uODreYlZFOZvBu6Bla55ay6k7a88JO2vegl7w/C1uKNt6atCe4rGTesKRxdMw1lf3ErBdZ
	SwZY/UPtaJtvmqUt0kSNhPAXX+KO5XvfrbS2EyKPYjw4IOKqcOtGR8FRvKqNT/X9F45v9z
	pCf63WuI1kut/xi52Pq4ZAZ/L8upFLkVLyChu8t/Es9LeaBkIPoioS66Z/PzSHaGNuSBbd
	UHXh4KwW+ec1Yq/jgzU8Pfrs1HSxEykI6tlI7PtH2l4+kKPJo3e497eV4UfaWQ==
To: linux-rockchip@lists.infradead.org
Cc: heiko@sntech.de,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	didi.debian@cknow.org,
	marcin.juszkiewicz@linaro.org
Subject: [PATCH] arm64: dts: rockchip: Describe why is HWRNG disabled in RK356x base dtsi
Date: Mon,  2 Dec 2024 15:44:06 +0100
Message-Id: <6b272e2f8f916c04b05db50df621659a5a7f29ab.1733149874.git.dsimic@manjaro.org>
MIME-Version: 1.0
Authentication-Results: ORIGINATING;
	auth=pass smtp.auth=dsimic@manjaro.org smtp.mailfrom=dsimic@manjaro.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241202_064418_188776_CF84E397 
X-CRM114-Status: UNSURE (   9.35  )
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

Despite the presence of the hardware random number generator (HWRNG) in the
different Rockchip RK356x SoC variants, it remains disabled for the RK3566
SoC because testing showed [1] that it produces unacceptably low quality of
random data, for some yet unknown reason.  The HWRNG is enabled for the RK3568
SoC, on which the testing showed good quality of the generated random data.

To avoid possible confusion in the future, [2] let's have this described
briefly in the RK356x base SoC dtsi.

[1] https://lore.kernel.org/linux-rockchip/cover.1720969799.git.daniel@makrotopia.org/T/#u
[2] https://lore.kernel.org/linux-rockchip/20241201234613.52322-1-pbrobinson@gmail.com/T/#u

Signed-off-by: Dragan Simic <dsimic@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index 62be06f3b863..ab8f42c0a843 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -1032,6 +1032,11 @@ sdhci: mmc@fe310000 {
 		status = "disabled";
 	};
 
+	/*
+	 * Testing showed that the HWRNG found in RK3566 produces unacceptably
+	 * low quality of random data, so the HWRNG isn't enabled for all RK356x
+	 * SoC variants despite its presence.
+	 */
 	rng: rng@fe388000 {
 		compatible = "rockchip,rk3568-rng";
 		reg = <0x0 0xfe388000 0x0 0x4000>;

_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
