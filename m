Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id EDDA3C88E40
	for <linux-rockchip@archiver.kernel.org>; Thu, 10 Sep 2026 13:35:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References:Message-Id
	:MIME-Version:Subject:Date:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5oGkjkFC7e92EL4jesZOZZxzsXkbf/BnhmxBZrNpALE=; b=Ubg2+VJbu6WRm7
	Iwa/evCu63PSl59rU9vreTUYeivOOPRkCv5JDjo0yXaLnwoPXXvlYtsOjZdB9K4XcssGlgf5yOOgW
	wYRZjg9NFNM2zkjyrkHRV8gyAnS/+zcvrI3Jre8BtiFoNqFaoF0Wo5xPOGmhWGguPOeqnkY3IYaOi
	Jx2tEaqBLYgEWgwImlLQSeXx/bSZTLAV12lEQwUC/g9QVDQyp5IPKqpI5zbVwrdbw9DfyOhEmHVGn
	Pm0+gYCmCZ5jmOGLUCtnlGlGfwRThBvJNBBAtuCjZZkr/Ci40H24SuSu/FtS8nm/8ZOYCQ+eSqxez
	f/E9Fttd2ZGdFfmbDAUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ewM-0000000EURw-01UX;
	Thu, 10 Sep 2026 13:35:46 +0000
Received: from bali.collaboradmins.com ([148.251.105.195])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x4ewB-0000000EUDW-3Fwn;
	Thu, 10 Sep 2026 13:35:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1789047333;
	bh=K3GaWrXHjf2WYX8MKuiARabxEZrrwlOOoHt64IJplh0=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bF2WXemdZp8jQR07k+8iTE1cRzxyGbzgkZ0JeK6pyL1T4ntVQNPb5ADKg7ll5EOiX
	 F2DOeqJpflMo9BNf0/K9yviqyilyGRkHttIj9CxRQ1vIDyLcxwTpjt0BqIJ+pphYna
	 DRvBFLkVem59zKL7+FyIFVzuEDGmRZHfAPwjLvfGjqpxHQT2DumrE+PkgyMLm14kar
	 gINy4jWWQDt2YAznIL9fWDkk2cWxsHGORvWGZgIpZa3S0BkQdl8/DNDsUtFmvrot/L
	 /kFBEj8R8LMUKOxXxhfi99L70sl8xYQhVOZ7YeWvSPlAILkzc3tDmn4wKo9qx9nlOd
	 kn6eBhQF/RmmA==
Received: from [192.168.0.15] (unknown [100.64.0.170])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange x25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: detlev)
	by bali.collaboradmins.com (Postfix) with ESMTPSA id 8ACB317E120F;
	Thu, 10 Sep 2026 15:35:31 +0200 (CEST)
From: Detlev Casanova <detlev.casanova@collabora.com>
Date: Thu, 10 Sep 2026 09:34:45 -0400
Subject: [PATCH v2 3/8] ARM: dts: rockchip: Rename rk3288-tinker HDMI audio
 card
MIME-Version: 1.0
Message-Id: <20260910-fix-rockchip-hdmi-audio-names-v2-3-1396a6168e20@collabora.com>
References: <20260910-fix-rockchip-hdmi-audio-names-v2-0-1396a6168e20@collabora.com>
In-Reply-To: <20260910-fix-rockchip-hdmi-audio-names-v2-0-1396a6168e20@collabora.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 Johan Jonker <jbx6244@gmail.com>, Alex Bee <knaerzche@gmail.com>, 
 Christian Hewitt <christianshewitt@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, 
 Nicolas Frattaroli <frattaroli.nicolas@gmail.com>, 
 Nicolas Frattaroli <nicolas.frattaroli@collabora.com>, 
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>, 
 David Summers <beagleboard@davidjohnsummers.uk>
Cc: kernel@collabora.com, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org, 
 Detlev Casanova <detlev.casanova@collabora.com>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260910_063536_037540_76D603A3 
X-CRM114-Status: GOOD (  12.58  )
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

Rename the audio card to "RK3288 HDMI" so it can be identified
user-visible ALSA fields and match the naming scheme used across
the rest of the Rockchip family.

It gets the same name as the rk3288-miqi, making the sound node
identical in both device trees, but won't be moved to rk3288.dtsi as
tinker and miqi are the only rk3288 boards with HDMI sound.

Fixes: e58c5e739d6f ("ARM: dts: rockchip: move shared tinker-board nodes to a common dtsi")
Signed-off-by: Detlev Casanova <detlev.casanova@collabora.com>
---
 arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi b/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
index 7e16022c7d9e..1caf49579ae3 100644
--- a/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk3288-tinker.dtsi
@@ -73,7 +73,7 @@ sdio_pwrseq: sdio-pwrseq {
 	sound {
 		compatible = "simple-audio-card";
 		simple-audio-card,format = "i2s";
-		simple-audio-card,name = "rockchip,tinker-codec";
+		simple-audio-card,name = "RK3288 HDMI";
 		simple-audio-card,mclk-fs = <512>;
 
 		simple-audio-card,codec {

-- 
2.55.0


_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
