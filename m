Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id A6863D17122
	for <linux-rockchip@archiver.kernel.org>; Mon, 21 Oct 2024 18:04:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eSHUNJDxfJ0JNdk1fsagqk3VPlaKXTvVikloBxIoP5c=; b=uVfzIDpBEcXxF6Clt8nZZnezQ7
	uKEQZwRIWwsUl+gVf9dpJgV4e1UDsePedzaRyKRUeiSIR+80bzpotbSMGQkw5VyNcZWeRM+uRsKZe
	06+kyyk+V+oxRffdMTHOwZ52sAmZiwlXNd3TmAEeU+jfO73/1wxKbRPpyjn5uE5qWc7xUtAPl8ZfB
	AsJv/SNG3MOhyU8uP9S4ZjEJPd8AVu+shAfFiLhbRtbc6k4dWm80rP5Zd5+z47ghZOozaNG3rHbQe
	4ik4I9Bu/IaCrUhfidubfyrO849OjKcmqsEjiam461jLrTPAezoPqb7GyKRi6BUjcu+7g2G9S3SaW
	qrORgFxg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t2wls-00000008EF9-00o1;
	Mon, 21 Oct 2024 18:04:48 +0000
Received: from dfw.source.kernel.org ([2604:1380:4641:c500::1])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t2wfr-00000008Ckh-3mg3;
	Mon, 21 Oct 2024 17:58:37 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 8E20E5C59DB;
	Mon, 21 Oct 2024 17:58:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 882ABC4CEC7;
	Mon, 21 Oct 2024 17:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729533514;
	bh=SeZBemYZZhTNxyr/LOMazMdpTm+fOGWkcQuVffgsxns=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=LsFv8Tc0W6xCIgK9qc6lV8cno1yELjGaJjVU6QiMnqWaCptVjXx1nnxoXY7vbRDnu
	 8I6CGKzQcoJi8qk/sFZiX3QImidaKk1NoZE/6yIZE9FTxahFI+U4qWtJcQbgrBHvqR
	 Q9wpr+KE4pT1BvWxMDWTVkqZ0gaTDaFZODP0tlYAKEtr/5mF0Jf9EuBux/7t3QZ/0b
	 SJjJdLTJhtARZ6nG1uB9zVKkr1+C3/XxLszb6HOf1MJhTy3zQ89uyPu6dP3CHqjmlo
	 ABMcbukv4EwUEB5J5S5WFy38mj7gm2CG95Tze39+MAJWpDLC290CFJaqSpTpIcCHpU
	 y75z9WVdyVeLQ==
Date: Mon, 21 Oct 2024 12:58:33 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Cc: kernel@collabora.com, linux-arm-kernel@lists.infradead.org, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
 Heiko Stuebner <heiko@sntech.de>, linux-rockchip@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20241019-es8328-dt-fixes-v1-1-ca77d5ce21ad@collabora.com>
References: <20241019-es8328-dt-fixes-v1-1-ca77d5ce21ad@collabora.com>
Message-Id: <172953337556.748331.14779753664880128918.robh@kernel.org>
Subject: Re: [PATCH] arm64: dts: rockchip: Drop invalid clock-names from
 es8388 codec nodes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241021_105836_015829_8EF28E2F 
X-CRM114-Status: GOOD (  12.48  )
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


On Sat, 19 Oct 2024 03:38:10 +0300, Cristian Ciocaltea wrote:
> The binding for Everest ES8328/ES8388 audio CODEC doesn't support the
> 'clock-names' property:
> 
>   rk3588-orangepi-5-plus.dtb: audio-codec@11: 'clock-names' does not match any of the regexes: 'pinctrl-[0-9]+'
>     from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#
> 
> Since the related audio driver is also not making use of it, drop the
> invalid property from all es8388 codec nodes.
> 
> Signed-off-by: Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
> ---
> Several DT fixes involving the usage of the Everest ES8328/ES8388 audio
> CODEC.
> ---
>  arch/arm64/boot/dts/rockchip/rk3399-roc-pc-plus.dts      | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588-orangepi-5-plus.dts  | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588-quartzpro64.dts      | 1 -
>  arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dts | 1 -
>  4 files changed, 4 deletions(-)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3399-roc-pc-plus.dtb rockchip/rk3588-orangepi-5-plus.dtb rockchip/rk3588-quartzpro64.dtb rockchip/rk3588s-indiedroid-nova.dtb' for 20241019-es8328-dt-fixes-v1-1-ca77d5ce21ad@collabora.com:

arch/arm64/boot/dts/rockchip/rk3588s-indiedroid-nova.dtb: audio-codec@11: 'port' does not match any of the regexes: 'pinctrl-[0-9]+'
	from schema $id: http://devicetree.org/schemas/sound/everest,es8328.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
