Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 04473E7718B
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 15:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:From:MIME-Version:Date:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rP7wl50oln8j7JlSFC6XbNJFcgG7Fwx1gWSqy6lqPxw=; b=E7YQRi5WYEgIbI
	rApaDo5POIg9ILlE7+IuetoveLw+zeH/OK86QGP2Ha+L5QejB0VWTpdCtrGxE4omXF+U1FJz6IZOS
	0KI9ZVfMqXXB/TvkBpI22U99A/5Maf8edemDE7BxJo0BegrdibVFoQYYuPIRCGMBqHILd1O3mK8RT
	dBNOLLxq1Dxwmxnh+lI9mWcSj728IvVQKfOAhUYMRe9EaIZmoEgLCVaHEMotd/k6Mq9uBkqQPw0Ui
	lAhhXHXhqPMtCfBkxT+ZIIxZpOWvumQ6Q9N/9ugM0vb9iroIMtTBSjkRyc9l6Q66jdoPeUjoKydCZ
	jgtYG2BzGBGn2Ud/h3eQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRC8v-00000000W9t-1CCa;
	Fri, 27 Dec 2024 15:20:49 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRC70-00000000Vk2-1d1U
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 15:18:51 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 4EAC75C61FC;
	Fri, 27 Dec 2024 15:18:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 40479C4CED0;
	Fri, 27 Dec 2024 15:18:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312729;
	bh=wVxyvbnFJZJpZORXATHZaQIcy63/CTEGuy++U49qP0E=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=ImqICU/+xtaEuyrHD24eI/xTjIFwgs+oAxI80yKUqS0ig+V0gaN9LVudFMt6YeDM0
	 sx6m+Gzpmurdv5N0Dau9ixAisAANqbPXiOTqpZnUYOadZ1ac86MfdwiZl/tbOxsi4S
	 fWiWJ/jc5VKOrjUxpQNBU+X0wtgZB+WRDmfbaw5BbiYY14J8Wo1f+P5UZwvFsaE7jb
	 +79Q0OqMpIGMkvcnSrKuBSOxjDlHCHRsazQAGgW/xRos2sylQoiISk2WXBknTMaZUL
	 +P8GYthL8H3FZgvnaMoR79QxIi5fjBly6PSttLOTEVI0sAOBtOL9YEXDwfoBG/1PAP
	 bf4k/MYjq2VfQ==
Date: Fri, 27 Dec 2024 09:18:47 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241224210912.2121-1-naoki@radxa.com>
References: <20241224210912.2121-1-naoki@radxa.com>
Message-Id: <173531253192.3886371.4374836627027233294.robh@kernel.org>
Subject: Re: [PATCH 0/3] arm64: dts: rockchip: Add Radxa ROCK 5B+ and
 rebase Radxa ROCK 5B
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_071850_513691_AA432D23 
X-CRM114-Status: GOOD (  13.37  )
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
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, inindev@gmail.com, liujianfeng1994@gmail.com, jonas@kwiboo.se, dmt.yashin@gmail.com, kever.yang@rock-chips.com, tim@feathertop.org, sebastian.reichel@collabora.com, marcin.juszkiewicz@linaro.org, linux-rockchip@lists.infradead.org, alchark@gmail.com, michael.riesch@wolfvision.net, macromorgan@hotmail.com, krzk+dt@kernel.org, dsimic@manjaro.org, heiko@sntech.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "Linux-rockchip" <linux-rockchip-bounces@lists.infradead.org>
Errors-To: linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org


On Tue, 24 Dec 2024 21:09:09 +0000, FUKAUMI Naoki wrote:
> The Radxa ROCK 5B+ is an upgraded version of the Radxa ROCK 5B.
> 
> This patch series introduces a shared .dtsi that can be used on the
> new Radxa ROCK 5B+, the existing Radxa ROCK 5B, and the upcoming Radxa
> ROCK 5T.
> 
> This patch series includes "arm64: dts: rockchip: Add USB-C support to
> ROCK 5B" by Sebastian Reichel[1].
> 
> [1] https://patchwork.kernel.org/project/linux-rockchip/patch/20241210163615.120594-1-sebastian.reichel@collabora.com/
> 
> FUKAUMI Naoki (3):
>   dt-bindings: arm: rockchip: Add Radxa ROCK 5B+
>   arm64: dts: rockchip: Add Radxa ROCK 5B+
>   arm64: dts: rockchip: Convert Radxa ROCK 5B to use shared .dtsi
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |    5 +
>  arch/arm64/boot/dts/rockchip/Makefile         |    1 +
>  ...{rk3588-rock-5b.dts => rk3588-rock-5.dtsi} |  555 +++++----
>  .../boot/dts/rockchip/rk3588-rock-5b-plus.dts |   97 ++
>  .../boot/dts/rockchip/rk3588-rock-5b.dts      | 1026 ++---------------
>  5 files changed, 549 insertions(+), 1135 deletions(-)
>  copy arch/arm64/boot/dts/rockchip/{rk3588-rock-5b.dts => rk3588-rock-5.dtsi} (71%)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dts
>  rewrite arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts (93%)
> 
> --
> 2.43.0
> 
> 
> 


My bot found new DTB warnings on the .dts files added or changed in this
series.

Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
are fixed by another series. Ultimately, it is up to the platform
maintainer whether these warnings are acceptable or not. No need to reply
unless the platform maintainer has comments.

If you already ran DT checks and didn't see these error(s), then
make sure dt-schema is up to date:

  pip3 install dtschema --upgrade


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-rock-5b-plus.dtb rockchip/rk3588-rock-5b.dtb' for 20241224210912.2121-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dtb: phy@fee80000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#
arch/arm64/boot/dts/rockchip/rk3588-rock-5b-plus.dtb: phy@fee80000: 'phy-supply' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/phy/rockchip,pcie3-phy.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
