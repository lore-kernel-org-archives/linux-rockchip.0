Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5D983C36002
	for <linux-rockchip@archiver.kernel.org>; Wed,  9 Apr 2025 21:45:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6js3uaL2VGjnfLvXVvqYXEGF3ucogZMTG4xigSIRa9E=; b=Dgl87knQaNCZ9x
	keSTkP0wstBFkUfrbGp+xQb1GRYKFLpABniWbEixcSwbqkfvXPStWT7Qw+su9IkcumlY1iabzm+Sj
	XD4znzNX6LSYlPErGn6qnA9qzP8zEgCASevfUb3ERcPBP+yx94Sv20tgFdRgivt65VIPIOPkNCiJB
	gOFwpKSBNdVureQFBuYUJ4JYHRAzAMLZPCeVuyiDuEyCJTkEydon5Eg2j9urrnwX55Lh0ZwIyptI6
	MGGxaz1VtDAiYF4dC3j4QRrhL+gRJ80mS7fjPHzdG/PXIe0b5vCWak7+DZVKmykwRm6707hG6NIQK
	K8o9cVcamJTTnE2hwfVg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2dEk-00000008cQR-0NHc;
	Wed, 09 Apr 2025 21:45:34 +0000
Received: from tor.source.kernel.org ([2600:3c04:e001:324:0:1991:8:25])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2cNh-00000008V0H-3E6j;
	Wed, 09 Apr 2025 20:50:45 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by tor.source.kernel.org (Postfix) with ESMTP id 01DE361127;
	Wed,  9 Apr 2025 20:50:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3E8BDC4CEE2;
	Wed,  9 Apr 2025 20:50:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744231844;
	bh=Wqa2f3x1lOF/ugiGuTwsKbMT387qF5klTG4m2uLqmRE=;
	h=From:To:Cc:Subject:Date:From;
	b=JlxrWCjWuSXOIr6nM9F2Oxh1+hASbgsgKhL3N03TDhBIWDb0P5ZqwMgloDE2m7Mox
	 QDwJvcA8L7pT6pcjdYq1MOJiE6h+w6/yBtG2T9u/i4K8ioUN9/7ISooymsnOhV6HbM
	 jr11ivgHswWJ0bZSufsFUPJdp8VvLthDNqswmlx/rz/BY+z2H7pwG8tkxQnuaG0gAB
	 Yn4et6TZonBYz2wAs8EbncMhIUa5+nsaY+jd9vHl7RCyMqwfEvqYHkOu6p8wosqYn7
	 Y2ivXhzMP0OdJ+5VHd/Zyv5jxhN9dR+uf2Z1f8LgSUJYeBb8XFloX7IW8wORPBN3vj
	 kk7CimkM9D2eQ==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rock-pi-4: Fix mmc-pwrseq clock name
Date: Wed,  9 Apr 2025 15:50:39 -0500
Message-ID: <20250409205040.1522754-1-robh@kernel.org>
X-Mailer: git-send-email 2.47.2
MIME-Version: 1.0
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

The defined name for "mmc-pwrseq-simple" clock is "ext_clock".

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
index 541dca12bf1a..046dbe329017 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-rock-pi-4.dtsi
@@ -43,7 +43,7 @@ led-0 {
 	sdio_pwrseq: sdio-pwrseq {
 		compatible = "mmc-pwrseq-simple";
 		clocks = <&rk808 1>;
-		clock-names = "lpo";
+		clock-names = "ext_clock";
 		pinctrl-names = "default";
 		pinctrl-0 = <&wifi_enable_h>;
 		reset-gpios = <&gpio0 RK_PB2 GPIO_ACTIVE_LOW>;
-- 
2.47.2


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
