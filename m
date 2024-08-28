Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 06FF1C54FAA
	for <linux-rockchip@archiver.kernel.org>; Wed, 28 Aug 2024 12:59:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:Cc:To:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hC2lqjjvotF8CXqRfAfMGVANbWGmN+/HeScgbJxnC+w=; b=lKcosLQGxQG9CaBN6heq7cUXLM
	ejM3qmPkF30IdDOMdsbwSNhMBgO4YgJjMyNoukqI5ror6YQ9vf1aEZR+cR7u1xUgq8QyAOTHHMfBg
	valqprm1JGUIBmKRxhorpxu4KLqBpUG0UfgSXynYy5JiX3s9KuqRJYtLOhfvQJaEYK6u6z/Gf9p5H
	a5OilT8iEWIE3E5iiLs8eBczJBk/3yCkHtO/PMW5T57IjagNePiP+fIYpksAAbAdMhus6ts7OpWlQ
	I2F68jc9GJ4UScRBIG39Z2apS//pCCO8XWNniFwDkDxzJmdXuuE8Jb9vh5u6lpOhLP91ktceDcGOz
	oItS60jA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIGa-0000000FQz4-1mMK;
	Wed, 28 Aug 2024 12:59:16 +0000
Received: from nyc.source.kernel.org ([147.75.193.91])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sjIEr-0000000FQGB-2m8H;
	Wed, 28 Aug 2024 12:57:31 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by nyc.source.kernel.org (Postfix) with ESMTP id 97C58A40946;
	Wed, 28 Aug 2024 12:57:21 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 78742C4FEFA;
	Wed, 28 Aug 2024 12:51:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724849474;
	bh=Xj3q54Xs8pJypq3V2jbLTbUBopo2sjq2zYTrO+Fvrh8=;
	h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
	b=KCrY8jpvMbbIitPFuw6LTwsNwwOTO9mGyzvA58CCJtU1zjfI9tIfItgQFNTceWoZx
	 fOsJs/GrhafzzQAm+4wG/xOh6g3HOCUwioE3jp6JGWX2M1uHGVsUFgsDiGlId/fr2k
	 RoWviw0SjpZeW0I74wBvKYDdTOF+y2/6wqFWvuSeEJ4oIQMFmlCuhi4zhfxI6xVr/7
	 yrgeOMyaJo6T4qbUe6HevXRNKshF5AERp4ZJWTvMZ5DT/+Bv+DAMAx1Zr1l6ELOyfx
	 FQDHgr+fJtR37b6RvQ8Uw5D7JDm+njb2eAAFDrMmkGKN+gnKR310R2UGr+xGNHU23Z
	 NpuhWsF5Ee5Rg==
Date: Wed, 28 Aug 2024 07:51:12 -0500
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Jonathan Liu <net147@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 FUKAUMI Naoki <naoki@radxa.com>, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org
In-Reply-To: <20240828074755.1320692-1-net147@gmail.com>
References: <20240828074755.1320692-1-net147@gmail.com>
Message-Id: <172484936512.3462690.18423493121475512611.robh@kernel.org>
Subject: Re: [PATCH v2] arm64: dts: rockchip: Enable RK809 audio codec for
 Radxa ROCK 4C+
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240828_055729_773879_102A8E12 
X-CRM114-Status: GOOD (  11.03  )
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


On Wed, 28 Aug 2024 17:47:53 +1000, Jonathan Liu wrote:
> This adds the necessary device tree changes to enable analog audio
> output for the 3.5 mm TRS headphone jack on the Radxa ROCK 4C+ with
> its RK809 audio codec.
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  .../boot/dts/rockchip/rk3399-rock-4c-plus.dts | 46 ++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3399-rock-4c-plus.dtb' for 20240828074755.1320692-1-net147@gmail.com:

arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: pmic: vsel1-gpio: {'rockchip,pins': [[1, 17, 0, 194]], 'phandle': 138} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
arch/arm64/boot/dts/rockchip/rk3399-rock-4c-plus.dtb: pmic: vsel2-gpio: {'rockchip,pins': [[1, 14, 0, 194]], 'phandle': 139} is not of type 'array'
	from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
