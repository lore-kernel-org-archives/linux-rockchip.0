Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 5FFF7C00145
	for <linux-rockchip@archiver.kernel.org>; Thu, 15 Dec 2022 10:20:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=l57L7kGqbtIkHJ62V1IPxJ12hZ73ETWkFd9Fjh775XY=; b=Jva0bJNrH0rsd2
	wkBWcA3XRrOP0AhuXKGRlClJzCx0D62O9fvk01fBxj64l34+NFOGhf5AL++OOugjVola3weUf0Sib
	vrKEugvoSTlJW7HSrFp8DUvGrcWO0cKQ3mBo0yx6FmW4xhNAAhuFEM1zXVMcooTtr7Q9vRIu6DNRo
	E7PQIkadgXaZE/QiQGEe4+gUrZWc1QJXEFdtBlEyYaDZQQOIehstv7JtNcLxDrZ+WuuXcdkU4mTvU
	ckCuylPTFcO8dP0j7nhPWyUSETQz9BNBssC01vkH3d2dLf2jNBQ0uG3Cg0PLA8SfNR8jYTfCJg1jW
	reL96M8//fnQblMxqnGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5lLg-008jbM-LL; Thu, 15 Dec 2022 10:20:20 +0000
Received: from madras.collabora.co.uk ([46.235.227.172])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p5lLV-008jXb-M3; Thu, 15 Dec 2022 10:20:11 +0000
Received: from xps.home (82-65-172-229.subs.proxad.net [82.65.172.229])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: aferraris)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 17D716602C5F;
	Thu, 15 Dec 2022 10:20:06 +0000 (GMT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1671099606;
	bh=WLY57/vsBcQcsEyV40fycSi6IdmeLYRjKEbqIxSuVAE=;
	h=From:To:Cc:Subject:Date:From;
	b=L4Z7LHOP1m/pl9kidybLzd95BeF3YuK9yATRCRR4ZcXNjaSFVYLRe181UFXJXFwFN
	 lPWMylYVLsX3qzBscLwrhwGTB+wtWerzfx6cIiYsX4cE4HT+eIjBrQRPs6tqsUBZac
	 T3PAIPwE1fuJEL1AZ+QWSJar6g4ed5Ynx+KOmYeHgyjVdwnp9KAso2VYTBTdg9m9JC
	 qJfcCjPNj+UXyo2Fh0cRbYBZWsmarMFrYoNzsZuu/TPu19NXve+4WOGGb8DWGbm18G
	 +yAuQMRM1LcwE1cWE0SQjzimBAMpwtE/h+OQ9ag5DyZ/ceWA6DrjVhSzqlemMcgzDx
	 ImC/Ev/aZV72w==
From: Arnaud Ferraris <arnaud.ferraris@collabora.com>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Heiko Stuebner <heiko@sntech.de>,
	Caleb Connolly <kc@postmarketos.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: kernel@collabora.com,
	Arnaud Ferraris <arnaud.ferraris@collabora.com>
Subject: [PATCH] arm64: dts: rockchip: fix input enable pinconf on rk3399
Date: Thu, 15 Dec 2022 11:19:47 +0100
Message-Id: <20221215101947.254896-1-arnaud.ferraris@collabora.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221215_022009_883359_BAFD4E0E 
X-CRM114-Status: GOOD (  10.88  )
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

When the input enable pinconf was introduced, a default drive-strength
value of 2 was set for the pull up/down configs. However, this parameter
is unneeded when configuring the pin as input, and having a single
hardcoded value here is actually harmful: GPIOs on the RK3399 have
various same drive-strength capabilities depending on the bank and port
they belong to.

As an example, trying to configure the GPIO4_PD3 pin as an input with
pull-up enabled fails with the following output:

  [   10.706542] rockchip-pinctrl pinctrl: unsupported driver strength 2
  [   10.713661] rockchip-pinctrl pinctrl: pin_config_set op failed for pin 155

(acceptable drive-strength values for this pin being 3, 6, 9 and 12)

Let's drop the drive-strength property from all input pinconfs in order
to solve this issue.

Fixes: ec48c3e82ca3 ("arm64: dts: rockchip: add an input enable pinconf to rk3399")
Signed-off-by: Arnaud Ferraris <arnaud.ferraris@collabora.com>
---
 arch/arm64/boot/dts/rockchip/rk3399.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399.dtsi b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
index 92c2207e686c..59858f2dc8b9 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399.dtsi
@@ -2221,13 +2221,11 @@ pcfg_input_enable: pcfg-input-enable {
 		pcfg_input_pull_up: pcfg-input-pull-up {
 			input-enable;
 			bias-pull-up;
-			drive-strength = <2>;
 		};
 
 		pcfg_input_pull_down: pcfg-input-pull-down {
 			input-enable;
 			bias-pull-down;
-			drive-strength = <2>;
 		};
 
 		clock {
-- 
2.35.1


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
