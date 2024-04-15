Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id D7785C04FF9
	for <linux-rockchip@archiver.kernel.org>; Mon, 15 Apr 2024 18:47:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fEU6QEqOlLw9cAulJQ1r2HZu3w4UkPzNOhiW7cqHXxQ=; b=t44Qf2A4w/8ilBjpL9PBgwASZt
	kZSsr3VQj+EqxukG8Vp10AWBeGP3vcQYdvuZVGDAY3uZ0YIx2avCIttIc8UoL4u6PxZNWtmVQPpKs
	hwS18uzHc8LsxKTH66qHUp4EVJ/Sno5yqfdjnoTsQPxyqdhGOkciVXCNn+aDPhJPIMR51iXM6+LMq
	vpPAnnvelg9i5laTmCHwwVgwpcuuFr4lTDZJwL4kj16oQp0eF/zksqvNGreFyzAYHmLzqvG25a9E3
	I1gvlIRxTFAb1HA0BO3yVyPIhKOP/KTw13ox8/znm+FejTUGzuRoafhkj3+9AgRzr5ljbtPDd2oW+
	gpv/tLJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwRMB-00000009US4-3MXY;
	Mon, 15 Apr 2024 18:47:07 +0000
Received: from sin.source.kernel.org ([2604:1380:40e1:4800::1])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwRM3-00000009UNg-0CXK;
	Mon, 15 Apr 2024 18:47:00 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by sin.source.kernel.org (Postfix) with ESMTP id 19F07CE0E5A;
	Mon, 15 Apr 2024 18:46:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 75A29C2BD11;
	Mon, 15 Apr 2024 18:46:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713206816;
	bh=VYwFK93QWXnZOcZLYRf1I9Noj1pc0NPj5LchFP/04ew=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=ozmr5t7/BCBCWudh8SkridVru1QV8uBd9kDymgyP7D7km1kql9ofW0akhJyqCE+/5
	 hHiRkrQ6AuP6xTa4MXNge6H+IZ+wro7obz0xbHsVakx+wsvBlSVb0LhTeNplZZFfea
	 TCpinkVY8HR3Tx//EETbkwHJn5Yz3tw3PaKQxtO1tRg4aceLD7ENwsmNmVNOpRwDvq
	 ApyEOfkXXJ6GvL7nLVnD2B8UAJ3jIC1uksx9fiCycAFBu+toCj9sd2LWAREj9GSwQZ
	 60XUw5uJjTzxN7b/VpUOgPlwUH7E8U1SqzZ1Bh+7BcmRcXdToeQOUAroQRh0Qdq3Rm
	 vcJAMZ/arIbvg==
Date: Mon, 15 Apr 2024 13:46:53 -0500
MIME-Version: 1.0
From: Rob Herring <robh@kernel.org>
To: Jianfeng Liu <liujianfeng1994@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
 krzk+dt@kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, sfr@canb.auug.org.au, heiko@sntech.de, 
 weizhao.ouyang@arm.com, conor+dt@kernel.org
In-Reply-To: <20240413153633.801759-1-liujianfeng1994@gmail.com>
References: <20240413153633.801759-1-liujianfeng1994@gmail.com>
Message-Id: <171320634254.4749.2865905152184927129.robh@kernel.org>
Subject: Re: [PATCH v2 0/3] Add ArmSom Sige7 board
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240415_114659_322142_E1C4567B 
X-CRM114-Status: GOOD (  12.08  )
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


On Sat, 13 Apr 2024 23:36:30 +0800, Jianfeng Liu wrote:
> Changes in v2:
>  - Add ArmSoM to vendor-prefixes
>  - Commit dt-bindings change first
>  - Fix commit message for dt-bindings
>  - Fix wrong devicetree node name "led_rgb_g" and "led_rgb_r"
>  - Link to v1: https://lore.kernel.org/all/20240413032328.784142-1-liujianfeng1994@gmail.com/
> 
> Jianfeng Liu (3):
>   dt-bindings: vendor-prefixes: add ArmSoM
>   dt-bindings: arm: rockchip: Add ArmSoM Sige7
>   arm64: dts: rockchip: Add ArmSom Sige7 board
> 
>  .../devicetree/bindings/arm/rockchip.yaml     |   5 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm64/boot/dts/rockchip/Makefile         |   1 +
>  .../boot/dts/rockchip/rk3588-armsom-sige7.dts | 725 ++++++++++++++++++
>  4 files changed, 733 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts
> 
> --
> 2.34.1
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588-armsom-sige7.dtb' for 20240413153633.801759-1-liujianfeng1994@gmail.com:

arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts:44.20-49.5: ERROR (duplicate_label): /leds/led-0: Duplicate label 'led_rgb_g' on /leds/led-0 and /pinctrl/leds/led-rgb-g
arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dts:51.20-56.5: ERROR (duplicate_label): /leds/led-1: Duplicate label 'led_rgb_r' on /leds/led-1 and /pinctrl/leds/led-rgb-r
ERROR: Input tree has errors, aborting (use -f to force output)
make[3]: *** [scripts/Makefile.lib:427: arch/arm64/boot/dts/rockchip/rk3588-armsom-sige7.dtb] Error 2






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
