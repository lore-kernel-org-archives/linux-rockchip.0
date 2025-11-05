Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 32672CCFA0D
	for <linux-rockchip@archiver.kernel.org>; Wed,  5 Nov 2025 23:54:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=7kpljPRi91ebxMMkzB+RdICzyNOu8Gjm7XF7iI1QWHo=; b=M8cFAxi2E1xVcW
	Zh2/1D083DPM7byD/pqZ7XVCpKWVa2r69xOPBjvosSmN+CljV3zJmSBl6e0qv5QvfTcD2Zt70rLOU
	p7kPTyKkJJpL2zZdFhPsZTKr+EfDkAzpIeS3CpsV3DZOSeuebLWv6VYWjnVsptRDt2klNnunDPCB6
	MACjtfV4PPdikjZXE1tnMuTSZOUrbzdmcxUoJ+Oh2ajxuTKhkdAbtp/cPfn6uUJDZNmSNbXIomoeE
	UyS1kMPlJwAExkJ9rworeQrzaWgTv1c9N+5fp2W/89erGJiOGnog6V1I8oZWvPUdQP5cxmqJLJS1h
	AfjN+vEyoPbsyE3z9M+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGnKR-0000000EdCm-1IGc;
	Wed, 05 Nov 2025 23:54:15 +0000
Received: from gloria.sntech.de ([185.11.138.130])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vGnKO-0000000EdC7-2HcM;
	Wed, 05 Nov 2025 23:54:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sntech.de;
	s=gloria202408; h=Content-Transfer-Encoding:MIME-Version:Message-ID:Date:
	Subject:Cc:To:From:Reply-To:Content-Type:In-Reply-To:References;
	bh=W85a3Bth4H+0PuSuOPezMPOuhSZAa3dLiOvxgBT/vp8=; b=qHKe0AkoxPIo5gNP1bjl3ETDrE
	5k8Jknr78aZ3Yy2BlIAyTxULspppywWTy7rCKF471AcyqXFhrwvjGoTqmWYuAg7WvEkUs8FZUFIYy
	33rm/qGvFOoMAvsYwThcZke9XF8/P3+VXWz9tp3UR/bGTc+PYDeAPVdQls6kmTw/YKWgJd4w9au7s
	yq6N/5hJdQbv+xeJR/F9yGOrkoBDd7diawFiBsVpw8SiXQunr1NR99Oem/0m5RUy/yedt+ntjjHLY
	QP2dfkjSpSkzjg18ZlSCKzAn8D69BBWOoKVj7mlYV7qKjVaxEN78/s+SAx2zDn3LJK8yGQcTTzK14
	r6sVfttw==;
Received: from i53875bde.versanet.de ([83.135.91.222] helo=phil.fritz.box)
	by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <heiko@sntech.de>)
	id 1vGnKM-0001Qu-Gh; Thu, 06 Nov 2025 00:54:10 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: heiko@sntech.de
Cc: linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	diederik@cknow-tech.com
Subject: [PATCH] arm64: dts: rockchip: use SCMI clock id for gpu clock on rk356x
Date: Thu,  6 Nov 2025 00:54:08 +0100
Message-ID: <20251105235408.163282-1-heiko@sntech.de>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251105_155412_585525_3A321F3D 
X-CRM114-Status: GOOD (  13.40  )
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

Instead of hard-coding 1, use the more descriptive ID from the binding
to reference the SCMI clock for the gpu on rk356x.

Signed-off-by: Heiko Stuebner <heiko@sntech.de>
---
 arch/arm64/boot/dts/rockchip/rk356x-base.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
index a1815f8a96e1..16773904ff66 100644
--- a/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk356x-base.dtsi
@@ -616,7 +616,7 @@ gpu: gpu@fde60000 {
 			     <GIC_SPI 41 IRQ_TYPE_LEVEL_HIGH>,
 			     <GIC_SPI 39 IRQ_TYPE_LEVEL_HIGH>;
 		interrupt-names = "job", "mmu", "gpu";
-		clocks = <&scmi_clk 1>, <&cru CLK_GPU>;
+		clocks = <&scmi_clk SCMI_CLK_GPU>, <&cru CLK_GPU>;
 		clock-names = "gpu", "bus";
 		#cooling-cells = <2>;
 		power-domains = <&power RK3568_PD_GPU>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
