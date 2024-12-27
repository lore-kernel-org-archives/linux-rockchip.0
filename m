Return-Path: <linux-rockchip-bounces+linux-rockchip=archiver.kernel.org@lists.infradead.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.lore.kernel.org (Postfix) with ESMTPS id 96B9BE7718F
	for <linux-rockchip@archiver.kernel.org>; Fri, 27 Dec 2024 15:19:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:Message-Id:References:
	In-Reply-To:To:Cc:From:MIME-Version:Date:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6hB2/id8pumkkN0CbawPfh0JGvHZlpLSwobl6QXW4Jk=; b=cxKroioHyuThpZ+M8fOrbTd8l9
	3BYJmtpzw2hLlnCMAf6DRH1kc2uaLKy1gc3aSqaHfk0RvC/EogQZvM1sEXfUL8KCT9GJVquc4mXgg
	jYkR5y87Tf2BTSVjB6qrXdcz4D51T8WeP6K2atIbN2CFVFHpIMMV0vkJ47tqiNBbTHWFbiIl4DQla
	RPeXptJSzKlchmkH95aZIlPXZ89gUokN87hbnVJcoxvsqelgSYDef/s/whCfm9brSiEDxwhFH9oFG
	nE/xE0Rf/NLl5hbkC+waSEgSbrVLCSqoxETN4GRPPeEUOPr0mVy9oUdrVk4MbQP4bJLi++iqw0wjY
	XhOeJ4YA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tRC7l-00000000Vut-3CnS;
	Fri, 27 Dec 2024 15:19:37 +0000
Received: from dfw.source.kernel.org ([139.178.84.217])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tRC6w-00000000Vif-0bjA
	for linux-rockchip@lists.infradead.org;
	Fri, 27 Dec 2024 15:18:47 +0000
Received: from smtp.kernel.org (transwarp.subspace.kernel.org [100.75.92.58])
	by dfw.source.kernel.org (Postfix) with ESMTP id 0F96D5C6126;
	Fri, 27 Dec 2024 15:18:04 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0A51BC4CED0;
	Fri, 27 Dec 2024 15:18:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735312725;
	bh=7MZK9pGM0C6a9RgTon/RXiHnSmnoT6GggO0jezi5nUI=;
	h=Date:From:Cc:To:In-Reply-To:References:Subject:From;
	b=rIKZPbLco4M7mx3R21yzC3KOqqlZTJvuQymfjU71PPBlP+7oAXlkPyqii3fwgVFlu
	 JB1UTEY2wqgCBXIpiVnYjWuqTej46CNi7N2+QnpujM7LAJC881cycFtR3xGZpMwYe8
	 gWozI5gRSqXaSqpUm47gYTH0WysBYMajIJZoeU5uzzxUdU+WmF+jL4gnaYONKJ9U6e
	 mcCnIiPOoD1eVQdzZ09+oxEhT+sIPJxeP4E5Xy7kzf2TKN64QXB1cOWRzGK+P7rNWG
	 GpmfsBODpDWuJW58gGTDzpdDfFhOa+FYs8mp7UIpankuez9lCEDhYBLufXH/Vrdzfy
	 +BdmO7vzrAP7g==
Date: Fri, 27 Dec 2024 09:18:43 -0600
MIME-Version: 1.0
From: "Rob Herring (Arm)" <robh@kernel.org>
Cc: dsimic@manjaro.org, heiko@sntech.de, linux-rockchip@lists.infradead.org, 
 krzk+dt@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
To: FUKAUMI Naoki <naoki@radxa.com>
In-Reply-To: <20241223013926.1134-1-naoki@radxa.com>
References: <20241223013926.1134-1-naoki@radxa.com>
Message-Id: <173531252904.3886220.13460367625900532878.robh@kernel.org>
Subject: Re: [PATCH v6 0/7] arm64: dts: rockchip: Refine dts for Radxa ROCK
 5C
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241227_071846_228092_8EB2F9D0 
X-CRM114-Status: GOOD (  11.63  )
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


On Mon, 23 Dec 2024 01:39:19 +0000, FUKAUMI Naoki wrote:
> This patch series includes fixes for improvements, trivial changes,
> etc for Radxa ROCK 5C.
> 
> FUKAUMI Naoki (7):
>   arm64: dts: rockchip: Change the function of the blue LED for Radxa
>     ROCK 5C
>   arm64: dts: rockchip: Use a longer PWM period for the fan on Radxa
>     ROCK 5C
>   arm64: dts: rockchip: Remove the RTC and related nodes for Radxa ROCK
>     5C
>   arm64: dts: rockchip: Add cd-gpios for sdmmc for Radxa ROCK 5C
>   arm64: dts: rockchip: Fix the properties of the PMIC regulators for
>     Radxa ROCK 5C
>   arm64: dts: rockchip: Trivial changes for Radxa ROCK 5C
>   arm64: dts: rockchip: Sort nodes for Radxa ROCK 5C
> 
>  .../boot/dts/rockchip/rk3588s-rock-5c.dts     | 239 ++++++++----------
>  1 file changed, 107 insertions(+), 132 deletions(-)
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


New warnings running 'make CHECK_DTBS=y rockchip/rk3588s-rock-5c.dtb' for 20241223013926.1134-1-naoki@radxa.com:

arch/arm64/boot/dts/rockchip/rk3588s-rock-5c.dtb: ethernet-phy: 'reg' is a required property
	from schema $id: http://devicetree.org/schemas/net/ethernet-phy.yaml#






_______________________________________________
Linux-rockchip mailing list
Linux-rockchip@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-rockchip
